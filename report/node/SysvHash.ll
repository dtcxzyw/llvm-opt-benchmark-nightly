inline.NumInlined: 277
inline.NumDeleted: 130
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

$_ZNK4LIEF6ObjectneERKS0_ = comdat any

$_ZN4LIEF3ELF8SysvHashD2Ev = comdat any

$_ZN4LIEF3ELF8SysvHashD0Ev = comdat any

@.str = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Number of buckets:\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Buckets:\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Number of chains:\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Chains:\00", align 1
@_ZTVN4LIEF3ELF8SysvHashE = hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNK4LIEF6ObjecteqERKS0_, ptr @_ZNK4LIEF6ObjectneERKS0_, ptr @_ZN4LIEF3ELF8SysvHashD2Ev, ptr @_ZN4LIEF3ELF8SysvHashD0Ev, ptr @_ZNK4LIEF3ELF8SysvHash6acceptERNS_7VisitorE] }, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external unnamed_addr constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF3ELF8SysvHash6acceptERNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %0) #9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3ELFlsERSoRKNS0_8SysvHashE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 16 ; 29 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 16 ; 29 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, -75
  %i.l = or disjoint i32 %i.k, 8
  store i32 %i.l, ptr %i.i, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, -177
  %i.t = or disjoint i32 %i.s, 32
  store i32 %i.t, ptr %i.q, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.w = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 10 uses
  store ptr %i.z, ptr %13, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 10 uses
  store i64 0, ptr %i.aa, align 8
  store i8 0, ptr %i.z, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4)
  %.not8.i = icmp eq ptr %i.w, %i.y
  br i1 %.not8.i, label %._crit_edge.i.thread, label %.lr.ph.i

._crit_edge.i.thread:                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.ab, ptr %12, align 8, !alias.scope !4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 328
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 336
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 337
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 344
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8, !noalias !4 ; 2 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !4
  %i.aj = getelementptr i8, ptr %i.ah, i64 -24
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 15 uses
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bc = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !4 ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !4
  %i.be = getelementptr i8, ptr %i.bc, i64 -24
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.lr.ph.i
  %.sroa.05.09.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.gg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9, !noalias !4
  %i.bf = load i32, ptr %.sroa.05.09.i, align 4, !noalias !4
  call void @llvm.experimental.noalias.scope.decl(metadata !7)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9, !noalias !10
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ac) #9, !noalias !10
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 16, !noalias !10
  store ptr null, ptr %i.ad, align 8, !noalias !10
  store i8 0, ptr %i.ae, align 16, !noalias !10
  store i8 0, ptr %i.af, align 1, !noalias !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i8 0, i64 32, i1 false), !noalias !10
  store ptr %i.ah, ptr %7, align 16, !noalias !10
  %i.bg = load i64, ptr %i.aj, align 8, !noalias !10
  %i.bh = getelementptr inbounds i8, ptr %7, i64 %i.bg
  store ptr %i.ai, ptr %i.bh, align 8, !noalias !10
  %i.bi = load ptr, ptr %7, align 16, !noalias !10
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !10
  %i.bl = getelementptr inbounds i8, ptr %7, i64 %i.bk
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bl, ptr noundef null) #9, !noalias !10
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.ac, align 16, !noalias !10
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %7, align 16, !noalias !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, i8 0, i64 48, i1 false), !noalias !10
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #9, !noalias !10
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ak, align 8, !noalias !10
  store i32 16, ptr %i.an, align 8, !noalias !10
  store ptr %i.ap, ptr %i.ao, align 16, !noalias !10
  store i64 0, ptr %i.aq, align 8, !noalias !10
  store i8 0, ptr %i.ap, align 16, !noalias !10
  %i.bm = load ptr, ptr %7, align 16, !noalias !10
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !10
  %i.bp = getelementptr inbounds i8, ptr %7, i64 %i.bo
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.bp, ptr noundef nonnull %i.ak) #9, !noalias !10
  %i.bq = load ptr, ptr %7, align 16, !noalias !10
  %i.br = getelementptr i8, ptr %i.bq, i64 -24
  %i.bs = load i64, ptr %i.br, align 8, !noalias !10
  %i.bt = getelementptr inbounds i8, ptr %7, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !noalias !10
  %i.bw = and i32 %i.bv, -75
  %i.bx = or disjoint i32 %i.bw, 2
  store i32 %i.bx, ptr %i.bu, align 8, !noalias !10
  %i.by = zext i32 %i.bf to i64
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.by) #9, !noalias !10 ; 0 uses
  %i.ca = load i64, ptr %i.aa, align 8, !noalias !10 ; 4 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9, !noalias !10
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  store ptr %i.ba, ptr %8, align 8, !alias.scope !17, !noalias !10
  store i64 0, ptr %i.bb, align 8, !alias.scope !17, !noalias !10
  store i8 0, ptr %i.ba, align 8, !alias.scope !17, !noalias !10
  %i.cc = load ptr, ptr %i.av, align 16, !noalias !18 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not4.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %16 = load ptr, ptr %i.aw, align 16, !noalias !18 ; 2 uses
  %17 = icmp ugt ptr %i.cc, %16
  %.08.i.i.i.i.i = select i1 %17, ptr %i.cc, ptr %16
  %i.cd = load ptr, ptr %i.ax, align 8, !noalias !18 ; 2 uses
  %i.ce = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.cd, i64 noundef %i.cg) #9, !noalias !10 ; 0 uses
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #9, !noalias !10
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.ci = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 1) #9, !noalias !22 ; 6 uses
  store ptr %i.ay, ptr %11, align 8, !alias.scope !23, !noalias !4
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 5 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !4 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.co)
  %i.cp = add nuw nsw i64 %i.cn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ck, i64 %i.cp, i1 false), !noalias !4
  br label %.critedge18.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
  store ptr %i.cj, ptr %11, align 8, !alias.scope !23, !noalias !4
  %i.cq = load i64, ptr %i.ck, align 8, !noalias !4
  store i64 %i.cq, ptr %i.ay, align 8, !alias.scope !23, !noalias !4
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !4
  br label %.critedge18.i.i

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9, !noalias !10
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.cr = load ptr, ptr %13, align 8, !noalias !27
  store ptr %i.ar, ptr %9, align 8, !alias.scope !28, !noalias !10
  store i64 0, ptr %i.as, align 8, !alias.scope !28, !noalias !10
  store i8 0, ptr %i.ar, align 8, !alias.scope !28, !noalias !10
  %i.cs = add i64 %i.ca, 2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.cs) #9, !noalias !10
  %i.ct = load i64, ptr %i.as, align 8, !alias.scope !28, !noalias !10
  %i.cu = sub i64 4611686018427387903, %i.ct
  %i.cv = icmp ult i64 %i.cu, %i.ca
  br i1 %i.cv, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #10, !noalias !10
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i: ; preds = %bb.g
  %i.cw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.cr, i64 noundef %i.ca) #9, !noalias !10 ; 0 uses
  %i.cx = load i64, ptr %i.as, align 8, !alias.scope !28, !noalias !10
  %i.cy = and i64 %i.cx, -2
  %i.cz = icmp eq i64 %i.cy, 4611686018427387902
  br i1 %i.cz, label %bb.i, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #10, !noalias !10
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i
  %i.da = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.6, i64 noundef 2) #9, !noalias !10 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9, !noalias !10
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  store ptr %i.at, ptr %10, align 8, !alias.scope !37, !noalias !10
  store i64 0, ptr %i.au, align 8, !alias.scope !37, !noalias !10
  store i8 0, ptr %i.at, align 8, !alias.scope !37, !noalias !10
  %i.db = load ptr, ptr %i.av, align 16, !noalias !38 ; 3 uses
  %.not4.i.i21.i.i = icmp eq ptr %i.db, null
  br i1 %.not4.i.i21.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i
  %18 = load ptr, ptr %i.aw, align 16, !noalias !38 ; 2 uses
  %19 = icmp ugt ptr %i.db, %18
  %.08.i.i.i20.i.i = select i1 %19, ptr %i.db, ptr %18
  %i.dc = load ptr, ptr %i.ax, align 8, !noalias !38 ; 2 uses
  %i.dd = ptrtoint ptr %.08.i.i.i20.i.i to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.dc, i64 noundef %i.df) #9, !noalias !10 ; 0 uses
  br label %.critedge.i.i

bb.k:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #9, !noalias !10
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.k, %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.dh = load i64, ptr %i.as, align 8, !noalias !42 ; 4 uses
  %i.di = load i64, ptr %i.au, align 8, !noalias !42 ; 4 uses
  %i.dj = add i64 %i.di, %i.dh                    ; 2 uses
  %i.dk = load ptr, ptr %9, align 8, !noalias !42 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.ar                ; 2 uses
  br i1 %i.dl, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.l:                                             ; preds = %.critedge.i.i
  %i.dm = icmp ult i64 %i.dh, 16
  call void @llvm.assume(i1 %i.dm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.l, %.critedge.i.i
  %i.dn = load i64, ptr %i.ar, align 8, !noalias !42
  %i.do = select i1 %i.dl, i64 15, i64 %i.dn
  %i.dp = icmp ugt i64 %i.dj, %i.do
  br i1 %i.dp, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.dq = load ptr, ptr %10, align 8, !noalias !42
  %i.dr = icmp eq ptr %i.dq, %i.at                ; 2 uses
  br i1 %i.dr, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i

bb.n:                                             ; preds = %bb.m
  %i.ds = icmp ult i64 %i.di, 16
  call void @llvm.assume(i1 %i.ds)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i: ; preds = %bb.n, %bb.m
  %i.dt = load i64, ptr %i.at, align 8, !noalias !42
  %i.du = select i1 %i.dr, i64 15, i64 %i.dt
  %.not.i2.i = icmp ugt i64 %i.dj, %i.du
  br i1 %.not.i2.i, label %bb.p, label %.critedge.i3.i

.critedge.i3.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i
  %i.dv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.dk, i64 noundef %i.dh) #9, !noalias !42 ; 5 uses
  store ptr %i.ay, ptr %11, align 8, !alias.scope !39, !noalias !4
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !4 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 5 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

bb.o:                                             ; preds = %.critedge.i3.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !4 ; 2 uses
  %i.eb = icmp ult i64 %i.ea, 16
  call void @llvm.assume(i1 %i.eb)
  %i.ec = add nuw nsw i64 %i.ea, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.dx, i64 %i.ec, i1 false), !noalias !4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %.critedge.i3.i
  store ptr %i.dw, ptr %11, align 8, !alias.scope !39, !noalias !4
  %i.ed = load i64, ptr %i.dx, align 8, !noalias !4
  store i64 %i.ed, ptr %i.ay, align 8, !alias.scope !39, !noalias !4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i, %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !4
  store i64 %i.ef, ptr %i.az, align 8, !alias.scope !39, !noalias !4
  store ptr %i.dx, ptr %i.dv, align 8, !noalias !4
  store i64 0, ptr %i.ee, align 8, !noalias !4
  store i8 0, ptr %i.dx, align 8, !noalias !4
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.eg = sub i64 4611686018427387903, %i.dh
  %i.eh = icmp ult i64 %i.eg, %i.di
  br i1 %i.eh, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #10, !noalias !42
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %bb.p
  %i.ei = load ptr, ptr %10, align 8, !noalias !42
  %i.ej = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.ei, i64 noundef %i.di) #9, !noalias !42 ; 5 uses
  store ptr %i.ay, ptr %11, align 8, !alias.scope !39, !noalias !4
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !4 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 5 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !noalias !4 ; 2 uses
  %i.ep = icmp ult i64 %i.eo, 16
  call void @llvm.assume(i1 %i.ep)
  %i.eq = add nuw nsw i64 %i.eo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.el, i64 %i.eq, i1 false), !noalias !4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  store ptr %i.ek, ptr %11, align 8, !alias.scope !39, !noalias !4
  %i.er = load i64, ptr %i.el, align 8, !noalias !4
  store i64 %i.er, ptr %i.ay, align 8, !alias.scope !39, !noalias !4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i, %bb.r
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !noalias !4
  store i64 %i.et, ptr %i.az, align 8, !alias.scope !39, !noalias !4
  store ptr %i.el, ptr %i.ej, align 8, !noalias !4
  store i64 0, ptr %i.es, align 8, !noalias !4
  store i8 0, ptr %i.el, align 8, !noalias !4
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.eu = load ptr, ptr %10, align 8, !noalias !10 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.at
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i
  %i.ew = load i64, ptr %i.at, align 8, !noalias !10
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #11, !noalias !4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9, !noalias !10
  %i.ey = load ptr, ptr %9, align 8, !noalias !10 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.ar
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.fa = load i64, ptr %i.ar, align 8, !noalias !10
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #11, !noalias !4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9, !noalias !10
  br label %.critedge17.i.i

.critedge18.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %i.fc = phi i64 [ %i.cn, %bb.f ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.fc, ptr %i.az, align 8, !alias.scope !23, !noalias !4
  store ptr %i.ck, ptr %i.ci, align 8, !noalias !4
  store i64 0, ptr %i.fd, align 8, !noalias !4
  store i8 0, ptr %i.ck, align 8, !noalias !4
  %i.fe = load ptr, ptr %8, align 8, !noalias !10 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ba
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i: ; preds = %.critedge18.i.i
  %i.fg = load i64, ptr %i.ba, align 8, !noalias !10
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #11, !noalias !4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i: ; preds = %.critedge18.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9, !noalias !10
  br label %.critedge17.i.i

.critedge17.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i
  store ptr %i.bc, ptr %7, align 16, !noalias !10
  %i.fi = load i64, ptr %i.be, align 8, !noalias !4
  %i.fj = getelementptr inbounds i8, ptr %7, i64 %i.fi
  store ptr %i.bd, ptr %i.fj, align 8, !noalias !10
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ak, align 8, !noalias !10
  %i.fk = load ptr, ptr %i.ao, align 16, !noalias !10 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.ap
  br i1 %i.fl, label %"_ZZN4LIEF3ELFlsERSoRKNS0_8SysvHashEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.critedge17.i.i
  %i.fm = load i64, ptr %i.ap, align 16, !noalias !10
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #11, !noalias !4
  br label %"_ZZN4LIEF3ELFlsERSoRKNS0_8SysvHashEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i"

"_ZZN4LIEF3ELFlsERSoRKNS0_8SysvHashEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i": ; preds = %.critedge17.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ak, align 8, !noalias !10
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #9, !noalias !4
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ac) #9, !noalias !4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9, !noalias !10
  %i.fo = load ptr, ptr %13, align 8, !noalias !4 ; 6 uses
  %i.fp = icmp eq ptr %i.fo, %i.z
  %i.fq = load ptr, ptr %11, align 8, !noalias !4 ; 5 uses
  %i.fr = icmp eq ptr %i.fq, %i.ay                ; 2 uses
  br i1 %i.fp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %"_ZZN4LIEF3ELFlsERSoRKNS0_8SysvHashEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i"
  br i1 %i.fr, label %bb.s, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %"_ZZN4LIEF3ELFlsERSoRKNS0_8SysvHashEENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i"
end_hunk_0
begin_hunk_1_@_ZN4LIEF3ELFlsERSoRKNS0_8SysvHashE:bb.a
  %i.fv = load i64, ptr %i.az, align 8, !noalias !4 ; 2 uses
  store i64 %i.fv, ptr %i.aa, align 8, !noalias !4
  %i.fw = load ptr, ptr %13, align 8, !noalias !4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fv
  store i8 0, ptr %i.fx, align 1, !noalias !4
  %.pre.i.i = load ptr, ptr %11, align 8, !noalias !4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.fq, ptr %13, align 8, !noalias !4
  %i.fy = load <2 x i64>, ptr %i.az, align 8, !noalias !4
  store <2 x i64> %i.fy, ptr %i.aa, align 8, !noalias !4
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.fz = load i64, ptr %i.z, align 8, !noalias !4
  store ptr %i.fq, ptr %13, align 8, !noalias !4
  %i.ga = load <2 x i64>, ptr %i.az, align 8, !noalias !4
  store <2 x i64> %i.ga, ptr %i.aa, align 8, !noalias !4
  %.not.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.fo, ptr %11, align 8, !noalias !4
  store i64 %i.fz, ptr %i.ay, align 8, !noalias !4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ay, ptr %11, align 8, !noalias !4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.w, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.gb = phi ptr [ %i.fo, %bb.v ], [ %i.ay, %bb.w ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.az, align 8, !noalias !4
  store i8 0, ptr %i.gb, align 1, !noalias !4
  %i.gc = load ptr, ptr %11, align 8, !noalias !4 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.ay
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.ge = load i64, ptr %i.ay, align 8, !noalias !4
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #11, !noalias !4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9, !noalias !4
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.gg, %i.y
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !43

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pre = load ptr, ptr %13, align 8, !noalias !4 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.gh, ptr %12, align 8, !alias.scope !4
  %i.gi = icmp eq ptr %.pre, %i.z
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %._crit_edge.i, %._crit_edge.i.thread
  %i.gj = phi ptr [ %i.ab, %._crit_edge.i.thread ], [ %i.gh, %._crit_edge.i ] ; 2 uses
  %i.gk = load i64, ptr %i.aa, align 8, !noalias !4 ; 3 uses
  %i.gl = icmp ult i64 %i.gk, 16
  call void @llvm.assume(i1 %i.gl)
  %i.gm = add nuw nsw i64 %i.gk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gj, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.gm, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.gk, ptr %i.gn, align 8, !alias.scope !4
  store ptr %i.z, ptr %13, align 8, !noalias !4
  store i64 0, ptr %i.aa, align 8, !noalias !4
  store i8 0, ptr %i.z, align 8, !noalias !4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i
  store ptr %.pre, ptr %12, align 8, !alias.scope !4
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.gp = load <2 x i64>, ptr %i.aa, align 8, !noalias !4
  %.pre.i = load i64, ptr %i.aa, align 8, !noalias !4
  store <2 x i64> %i.gp, ptr %i.go, align 8, !alias.scope !4
  store ptr %i.z, ptr %13, align 8, !noalias !4
  store i64 0, ptr %i.aa, align 8, !noalias !4
  store i8 0, ptr %i.z, align 8, !noalias !4
  %i.gq = icmp eq i64 %.pre.i, 4611686018427387903
  br i1 %i.gq, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #10
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gr = phi ptr [ %i.gn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.gs = phi ptr [ %i.gj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.gt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str, i64 noundef 1) #9 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #9
  %i.gu = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8            ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  store ptr %i.gx, ptr %15, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 8 uses
  store i64 0, ptr %i.gy, align 8
  store i8 0, ptr %i.gx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %.not8.i27 = icmp eq ptr %i.gu, %i.gw
  br i1 %.not8.i27, label %._crit_edge.i55.thread, label %.lr.ph.i28

._crit_edge.i55.thread:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.gz, ptr %14, align 8, !alias.scope !45
  br label %bb.au

.lr.ph.i28:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 337
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.hf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8, !noalias !45 ; 2 uses
  %i.hg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !45
  %i.hh = getelementptr i8, ptr %i.hf, i64 -24
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.hp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 15 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ia = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !45 ; 2 uses
  %i.ib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !45
  %i.ic = getelementptr i8, ptr %i.ia, i64 -24
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53, %.lr.ph.i28
  %.sroa.05.09.i29 = phi ptr [ %i.gu, %.lr.ph.i28 ], [ %i.ne, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i53 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9, !noalias !45
  %i.id = load i32, ptr %.sroa.05.09.i29, align 4, !noalias !45
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9, !noalias !51
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ha) #9, !noalias !51
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.ha, align 16, !noalias !51
  store ptr null, ptr %i.hb, align 8, !noalias !51
  store i8 0, ptr %i.hc, align 16, !noalias !51
  store i8 0, ptr %i.hd, align 1, !noalias !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.he, i8 0, i64 32, i1 false), !noalias !51
  store ptr %i.hf, ptr %2, align 16, !noalias !51
  %i.ie = load i64, ptr %i.hh, align 8, !noalias !51
  %i.if = getelementptr inbounds i8, ptr %2, i64 %i.ie
  store ptr %i.hg, ptr %i.if, align 8, !noalias !51
  %i.ig = load ptr, ptr %2, align 16, !noalias !51
  %i.ih = getelementptr i8, ptr %i.ig, i64 -24
  %i.ii = load i64, ptr %i.ih, align 8, !noalias !51
  %i.ij = getelementptr inbounds i8, ptr %2, i64 %i.ii
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ij, ptr noundef null) #9, !noalias !51
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.ha, align 16, !noalias !51
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %2, align 16, !noalias !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hj, i8 0, i64 48, i1 false), !noalias !51
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.hk) #9, !noalias !51
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hi, align 8, !noalias !51
  store i32 16, ptr %i.hl, align 8, !noalias !51
  store ptr %i.hn, ptr %i.hm, align 16, !noalias !51
  store i64 0, ptr %i.ho, align 8, !noalias !51
  store i8 0, ptr %i.hn, align 16, !noalias !51
  %i.ik = load ptr, ptr %2, align 16, !noalias !51
  %i.il = getelementptr i8, ptr %i.ik, i64 -24
  %i.im = load i64, ptr %i.il, align 8, !noalias !51
  %i.in = getelementptr inbounds i8, ptr %2, i64 %i.im
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.in, ptr noundef nonnull %i.hi) #9, !noalias !51
  %i.io = load ptr, ptr %2, align 16, !noalias !51
  %i.ip = getelementptr i8, ptr %i.io, i64 -24
  %i.iq = load i64, ptr %i.ip, align 8, !noalias !51
  %i.ir = getelementptr inbounds i8, ptr %2, i64 %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !noalias !51
  %i.iu = and i32 %i.it, -75
  %i.iv = or disjoint i32 %i.iu, 2
  store i32 %i.iv, ptr %i.is, align 8, !noalias !51
  %i.iw = zext i32 %i.id to i64
  %i.ix = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.iw) #9, !noalias !51 ; 0 uses
  %i.iy = load i64, ptr %i.gy, align 8, !noalias !51 ; 4 uses
  %i.iz = icmp eq i64 %i.iy, 0
  br i1 %i.iz, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9, !noalias !51
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  store ptr %i.hy, ptr %3, align 8, !alias.scope !58, !noalias !51
  store i64 0, ptr %i.hz, align 8, !alias.scope !58, !noalias !51
  store i8 0, ptr %i.hy, align 8, !alias.scope !58, !noalias !51
  %i.ja = load ptr, ptr %i.ht, align 16, !noalias !59 ; 3 uses
  %.not4.i.i.i.i74 = icmp eq ptr %i.ja, null
  br i1 %.not4.i.i.i.i74, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %20 = load ptr, ptr %i.hu, align 16, !noalias !59 ; 2 uses
  %21 = icmp ugt ptr %i.ja, %20
  %.08.i.i.i.i.i71 = select i1 %21, ptr %i.ja, ptr %20
  %i.jb = load ptr, ptr %i.hv, align 8, !noalias !59 ; 2 uses
  %i.jc = ptrtoint ptr %.08.i.i.i.i.i71 to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %i.jb, i64 noundef %i.je) #9, !noalias !51 ; 0 uses
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i76

bb.ab:                                            ; preds = %bb.z
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.hm) #9, !noalias !51
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i76

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i76: ; preds = %bb.ab, %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.jg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.5, i64 noundef 1) #9, !noalias !63 ; 6 uses
  store ptr %i.hw, ptr %6, align 8, !alias.scope !64, !noalias !45
  %i.jh = load ptr, ptr %i.jg, align 8, !noalias !45 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 16 ; 5 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77

bb.ac:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i76
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jl = load i64, ptr %i.jk, align 8, !noalias !45 ; 3 uses
  %i.jm = icmp ult i64 %i.jl, 16
  call void @llvm.assume(i1 %i.jm)
  %i.jn = add nuw nsw i64 %i.jl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hw, ptr noundef nonnull align 8 dereferenceable(1) %i.ji, i64 %i.jn, i1 false), !noalias !45
  br label %.critedge18.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i76
  store ptr %i.jh, ptr %6, align 8, !alias.scope !64, !noalias !45
  %i.jo = load i64, ptr %i.ji, align 8, !noalias !45
  store i64 %i.jo, ptr %i.hw, align 8, !alias.scope !64, !noalias !45
  %.phi.trans.insert.i.i.i78 = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %.pre.i.i.i79 = load i64, ptr %.phi.trans.insert.i.i.i78, align 8, !noalias !45
  br label %.critedge18.i.i80

bb.ad:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9, !noalias !51
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.jp = load ptr, ptr %15, align 8, !noalias !68
  store ptr %i.hp, ptr %4, align 8, !alias.scope !69, !noalias !51
  store i64 0, ptr %i.hq, align 8, !alias.scope !69, !noalias !51
  store i8 0, ptr %i.hp, align 8, !alias.scope !69, !noalias !51
  %i.jq = add i64 %i.iy, 2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.jq) #9, !noalias !51
  %i.jr = load i64, ptr %i.hq, align 8, !alias.scope !69, !noalias !51
  %i.js = sub i64 4611686018427387903, %i.jr
  %i.jt = icmp ult i64 %i.js, %i.iy
  br i1 %i.jt, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i30

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #10, !noalias !51
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i30: ; preds = %bb.ad
  %i.ju = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.jp, i64 noundef %i.iy) #9, !noalias !51 ; 0 uses
  %i.jv = load i64, ptr %i.hq, align 8, !alias.scope !69, !noalias !51
  %i.jw = and i64 %i.jv, -2
  %i.jx = icmp eq i64 %i.jw, 4611686018427387902
  br i1 %i.jx, label %bb.af, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i31

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i30
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #10, !noalias !51
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i30
  %i.jy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.6, i64 noundef 2) #9, !noalias !51 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9, !noalias !51
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  store ptr %i.hr, ptr %5, align 8, !alias.scope !78, !noalias !51
  store i64 0, ptr %i.hs, align 8, !alias.scope !78, !noalias !51
  store i8 0, ptr %i.hr, align 8, !alias.scope !78, !noalias !51
  %i.jz = load ptr, ptr %i.ht, align 16, !noalias !79 ; 3 uses
  %.not4.i.i21.i.i34 = icmp eq ptr %i.jz, null
  br i1 %.not4.i.i21.i.i34, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i31
  %22 = load ptr, ptr %i.hu, align 16, !noalias !79 ; 2 uses
  %23 = icmp ugt ptr %i.jz, %22
  %.08.i.i.i20.i.i33 = select i1 %23, ptr %i.jz, ptr %22
  %i.ka = load ptr, ptr %i.hv, align 8, !noalias !79 ; 2 uses
  %i.kb = ptrtoint ptr %.08.i.i.i20.i.i33 to i64
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = sub i64 %i.kb, %i.kc
  %i.ke = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ka, i64 noundef %i.kd) #9, !noalias !51 ; 0 uses
  br label %.critedge.i.i36

bb.ah:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i.i31
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.hm) #9, !noalias !51
  br label %.critedge.i.i36

.critedge.i.i36:                                  ; preds = %bb.ah, %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.kf = load i64, ptr %i.hq, align 8, !noalias !83 ; 4 uses
  %i.kg = load i64, ptr %i.hs, align 8, !noalias !83 ; 4 uses
  %i.kh = add i64 %i.kg, %i.kf                    ; 2 uses
  %i.ki = load ptr, ptr %4, align 8, !noalias !83 ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.hp                ; 2 uses
  br i1 %i.kj, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i37

bb.ai:                                            ; preds = %.critedge.i.i36
  %i.kk = icmp ult i64 %i.kf, 16
  call void @llvm.assume(i1 %i.kk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i37: ; preds = %bb.ai, %.critedge.i.i36
  %i.kl = load i64, ptr %i.hp, align 8, !noalias !83
  %i.km = select i1 %i.kj, i64 15, i64 %i.kl
  %i.kn = icmp ugt i64 %i.kh, %i.km
  br i1 %i.kn, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i37
  %i.ko = load ptr, ptr %5, align 8, !noalias !83
  %i.kp = icmp eq ptr %i.ko, %i.hr                ; 2 uses
  br i1 %i.kp, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i67

bb.ak:                                            ; preds = %bb.aj
  %i.kq = icmp ult i64 %i.kg, 16
  call void @llvm.assume(i1 %i.kq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i67: ; preds = %bb.ak, %bb.aj
  %i.kr = load i64, ptr %i.hr, align 8, !noalias !83
  %i.ks = select i1 %i.kp, i64 15, i64 %i.kr
  %.not.i2.i68 = icmp ugt i64 %i.kh, %i.ks
  br i1 %.not.i2.i68, label %bb.am, label %.critedge.i3.i69

.critedge.i3.i69:                                 ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i67
  %i.kt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ki, i64 noundef %i.kf) #9, !noalias !83 ; 5 uses
  store ptr %i.hw, ptr %6, align 8, !alias.scope !80, !noalias !45
  %i.ku = load ptr, ptr %i.kt, align 8, !noalias !45 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 5 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i70

bb.al:                                            ; preds = %.critedge.i3.i69
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.ky = load i64, ptr %i.kx, align 8, !noalias !45 ; 2 uses
  %i.kz = icmp ult i64 %i.ky, 16
  call void @llvm.assume(i1 %i.kz)
  %i.la = add nuw nsw i64 %i.ky, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hw, ptr noundef nonnull align 8 dereferenceable(1) %i.kv, i64 %i.la, i1 false), !noalias !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i70: ; preds = %.critedge.i3.i69
  store ptr %i.ku, ptr %6, align 8, !alias.scope !80, !noalias !45
  %i.lb = load i64, ptr %i.kv, align 8, !noalias !45
  store i64 %i.lb, ptr %i.hw, align 8, !alias.scope !80, !noalias !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i71: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i70, %bb.al
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  %i.ld = load i64, ptr %i.lc, align 8, !noalias !45
  store i64 %i.ld, ptr %i.hx, align 8, !alias.scope !80, !noalias !45
  store ptr %i.kv, ptr %i.kt, align 8, !noalias !45
  store i64 0, ptr %i.lc, align 8, !noalias !45
  store i8 0, ptr %i.kv, align 8, !noalias !45
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i41

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12.i.i67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i37
  %i.le = sub i64 4611686018427387903, %i.kf
  %i.lf = icmp ult i64 %i.le, %i.kg
  br i1 %i.lf, label %bb.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i38

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #10, !noalias !83
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i38: ; preds = %bb.am
  %i.lg = load ptr, ptr %5, align 8, !noalias !83
  %i.lh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.lg, i64 noundef %i.kg) #9, !noalias !83 ; 5 uses
  store ptr %i.hw, ptr %6, align 8, !alias.scope !80, !noalias !45
  %i.li = load ptr, ptr %i.lh, align 8, !noalias !45 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 16 ; 5 uses
  %i.lk = icmp eq ptr %i.li, %i.lj
  br i1 %i.lk, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i39

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i38
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lm = load i64, ptr %i.ll, align 8, !noalias !45 ; 2 uses
  %i.ln = icmp ult i64 %i.lm, 16
  call void @llvm.assume(i1 %i.ln)
  %i.lo = add nuw nsw i64 %i.lm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hw, ptr noundef nonnull align 8 dereferenceable(1) %i.lj, i64 %i.lo, i1 false), !noalias !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i38
  store ptr %i.li, ptr %6, align 8, !alias.scope !80, !noalias !45
  %i.lp = load i64, ptr %i.lj, align 8, !noalias !45
  store i64 %i.lp, ptr %i.hw, align 8, !alias.scope !80, !noalias !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13.i.i39, %bb.ao
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 2 uses
  %i.lr = load i64, ptr %i.lq, align 8, !noalias !45
  store i64 %i.lr, ptr %i.hx, align 8, !alias.scope !80, !noalias !45
  store ptr %i.lj, ptr %i.lh, align 8, !noalias !45
  store i64 0, ptr %i.lq, align 8, !noalias !45
  store i8 0, ptr %i.lj, align 8, !noalias !45
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i41

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14.i.i40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i71
  %i.ls = load ptr, ptr %5, align 8, !noalias !51 ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.hr
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i42: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i41
  %i.lu = load i64, ptr %i.hr, align 8, !noalias !51
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #11, !noalias !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i43: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit.i41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9, !noalias !51
  %i.lw = load ptr, ptr %4, align 8, !noalias !51 ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.hp
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i43
  %i.ly = load i64, ptr %i.hp, align 8, !noalias !51
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.lz) #11, !noalias !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9, !noalias !51
  br label %.critedge17.i.i46

.critedge18.i.i80:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77, %bb.ac
  %i.ma = phi i64 [ %i.jl, %bb.ac ], [ %.pre.i.i.i79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77 ]
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store i64 %i.ma, ptr %i.hx, align 8, !alias.scope !64, !noalias !45
  store ptr %i.ji, ptr %i.jg, align 8, !noalias !45
  store i64 0, ptr %i.mb, align 8, !noalias !45
  store i8 0, ptr %i.ji, align 8, !noalias !45
  %i.mc = load ptr, ptr %3, align 8, !noalias !51 ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.hy
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i81: ; preds = %.critedge18.i.i80
  %i.me = load i64, ptr %i.hy, align 8, !noalias !51
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #11, !noalias !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i82: ; preds = %.critedge18.i.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9, !noalias !51
  br label %.critedge17.i.i46

.critedge17.i.i46:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i45
  store ptr %i.ia, ptr %2, align 16, !noalias !51
  %i.mg = load i64, ptr %i.ic, align 8, !noalias !45
  %i.mh = getelementptr inbounds i8, ptr %2, i64 %i.mg
  store ptr %i.ib, ptr %i.mh, align 8, !noalias !51
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hi, align 8, !noalias !51
  %i.mi = load ptr, ptr %i.hm, align 16, !noalias !51 ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.hn
  br i1 %i.mj, label %"_ZZN4LIEF3ELFlsERSoRKNS0_8SysvHashEENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i47: ; preds = %.critedge17.i.i46
  %i.mk = load i64, ptr %i.hn, align 16, !noalias !51
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.ml) #11, !noalias !45
  br label %"_ZZN4LIEF3ELFlsERSoRKNS0_8SysvHashEENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i"

"_ZZN4LIEF3ELFlsERSoRKNS0_8SysvHashEENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i": ; preds = %.critedge17.i.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i47
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.hi, align 8, !noalias !51
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hk) #9, !noalias !45
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ha) #9, !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9, !noalias !51
  %i.mm = load ptr, ptr %15, align 8, !noalias !45 ; 6 uses
  %i.mn = icmp eq ptr %i.mm, %i.gx
  %i.mo = load ptr, ptr %6, align 8, !noalias !45 ; 5 uses
  %i.mp = icmp eq ptr %i.mo, %i.hw                ; 2 uses
  br i1 %i.mn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %"_ZZN4LIEF3ELFlsERSoRKNS0_8SysvHashEENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i"
  br i1 %i.mp, label %bb.ap, label %.thread.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i48: ; preds = %"_ZZN4LIEF3ELFlsERSoRKNS0_8SysvHashEENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj.exit.i"
end_hunk_1
