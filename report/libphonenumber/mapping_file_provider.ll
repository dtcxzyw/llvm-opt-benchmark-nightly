Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/mapping_file_provider?download=true
inline.NumInlined: 228
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

@.str = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"zh_TW\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"zh_Hant\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"zh_HK\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"zh_MO\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8

@_ZN4i18n12phonenumbers19MappingFileProviderC1EPKiiPFPKNS0_16CountryLanguagesEiE = unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN4i18n12phonenumbers19MappingFileProviderC2EPKiiPFPKNS0_16CountryLanguagesEiE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4i18n12phonenumbers19MappingFileProviderC2EPKiiPFPKNS0_16CountryLanguagesEiE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 12), (16, 24)) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4i18n12phonenumbers19MappingFileProvider11GetFileNameEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_PS7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef returned captures(address, ret: address, provenance) initializes((8, 16)) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %i.b = load ptr, ptr %5, align 8, !tbaa !19
  store i8 0, ptr %i.b, align 1, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !12   ; 2 uses
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.i
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = icmp sgt i32 %i.h, 0
  br i1 %i.l, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit

_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.b, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %.01116.i.i = phi ptr [ %.112.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.m = lshr i64 %.017.i.i, 1                    ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.01116.i.i, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !32
  %i.p = icmp slt i32 %i.o, %1                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = xor i64 %i.m, -1
  %i.s = add nsw i64 %.017.i.i, %i.r
  %.112.i.i = select i1 %i.p, ptr %i.q, ptr %.01116.i.i ; 2 uses
  %.1.i.i = select i1 %i.p, i64 %i.s, i64 %i.m    ; 2 uses
  %i.t = icmp sgt i64 %.1.i.i, 0
  br i1 %i.t, label %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit, !llvm.loop !27

_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit:        ; preds = %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.b
  %.011.lcssa.i.i = phi ptr [ %i.f, %bb.b ], [ %.112.i.i, %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 3 uses
  %i.u = icmp eq ptr %.011.lcssa.i.i, %i.j
  br i1 %i.u, label %bb.z, label %bb.c

bb.c:                                             ; preds = %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit
  %i.v = load i32, ptr %.011.lcssa.i.i, align 4, !tbaa !32
  %.not = icmp eq i32 %i.v, %1
  br i1 %.not, label %bb.d, label %bb.z

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13
  %i.y = ptrtoint ptr %.011.lcssa.i.i to i64
  %i.z = sub i64 %i.y, %i.k
  %i.aa = lshr exact i64 %i.z, 2
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = tail call noundef ptr %i.x(i32 noundef %i.ab) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !25
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.z

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ag, ptr %6, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !18
  store i8 0, ptr %i.ag, align 8, !tbaa !20
  invoke void @_ZNK4i18n12phonenumbers19MappingFileProvider28FindBestMatchingLanguageCodeEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_SC_PSA_(ptr nonnull align 8 poison, ptr noundef nonnull %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.h unwind label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i32 noundef %1)
          to label %bb.i unwind label %bb.u       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %i.an = load ptr, ptr %6, align 8, !tbaa !19
  %i.ao = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef %i.an, i64 noundef %i.ao)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.u ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  store ptr %i.aq, ptr %8, align 8, !tbaa !26, !alias.scope !35
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !18, !alias.scope !35
  store i8 0, ptr %i.aq, align 8, !tbaa !20, !alias.scope !35
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39, !noalias !35 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.at, null
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !noalias !35 ; 2 uses
  %i.aw = icmp ugt ptr %i.at, %i.av
  %.08.i.i.i = select i1 %i.aw, ptr %i.at, ptr %i.av ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !40, !noalias !35 ; 2 uses
  %i.az = ptrtoint ptr %.08.i.i.i to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.ay, i64 noundef %i.bb)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %8, align 8, !tbaa !19, !alias.scope !35 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.aq
  br i1 %i.bf, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.bg = load i64, ptr %i.aq, align 8, !tbaa !20, !alias.scope !35
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #14
  br label %.body

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.bi)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.bj = load ptr, ptr %5, align 8, !tbaa !19    ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %9 = icmp eq ptr %i.bj, %i.bk
  %i.bl = load ptr, ptr %8, align 8, !tbaa !19    ; 6 uses
  %i.bm = icmp eq ptr %i.bl, %i.aq                ; 2 uses
  br i1 %9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.bm, label %bb.m, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.bm, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bn = load i64, ptr %i.ar, align 8, !tbaa !18 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bo)
  %.not21.i = icmp eq ptr %8, %5
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.n, !prof !41

bb.n:                                             ; preds = %bb.m
  switch i64 %i.bn, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !20
  store i8 %i.bp, ptr %i.bj, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bl, i64 %i.bn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.bq = load i64, ptr %i.ar, align 8, !tbaa !18 ; 2 uses
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !18
  %i.br = load ptr, ptr %5, align 8, !tbaa !19
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 0, ptr %i.bs, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bl, ptr %5, align 8, !tbaa !19
  %i.bt = load <2 x i64>, ptr %i.ar, align 8, !tbaa !20
  store <2 x i64> %i.bt, ptr %i.a, align 8, !tbaa !20
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bu = load i64, ptr %i.bk, align 8, !tbaa !20
  store ptr %i.bl, ptr %5, align 8, !tbaa !19
  %i.bv = load <2 x i64>, ptr %i.ar, align 8, !tbaa !20
  store <2 x i64> %i.bv, ptr %i.a, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bj, ptr %8, align 8, !tbaa !19
  store i64 %i.bu, ptr %i.aq, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aq, ptr %8, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.q, %bb.r
  %i.bw = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bj, %bb.q ], [ %i.aq, %bb.r ], [ %i.bl, %bb.m ]
  store i64 0, ptr %i.ar, align 8, !tbaa !18
  store i8 0, ptr %i.bw, align 1, !tbaa !20
  %i.bx = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.aq
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bz = load i64, ptr %i.aq, align 8, !tbaa !20
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.cb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cb, ptr %7, align 8, !tbaa !43
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.cd = getelementptr i8, ptr %i.cb, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %7, i64 %i.ce
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !43
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.cg, ptr %i.ak, align 8, !tbaa !43
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ch, align 8, !tbaa !43
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !19 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !20
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #14
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ch, align 8, !tbaa !43
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.co) #13
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cp, ptr %7, align 8, !tbaa !43
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cr = getelementptr i8, ptr %i.cp, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr %7, i64 %i.cs
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !43
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cu, align 8, !tbaa !45
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cv) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.x

bb.s:                                             ; preds = %bb.e
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.t:                                             ; preds = %bb.g
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.i, %bb.h
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.body:                                            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.v

bb.v:                                             ; preds = %.body, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bd, %.body ], [ %i.cy, %bb.u ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.cx, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.y

bb.x:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.f
  %i.cz = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.ag
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.x
  %i.db = load i64, ptr %i.ag, align 8, !tbaa !20
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.cw, %bb.s ]
  %i.dd = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.ag
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.y
  %i.df = load i64, ptr %i.ag, align 8, !tbaa !20
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  resume { ptr, i32 } %.pn.pn.pn

bb.z:                                             ; preds = %bb.c, %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %bb.d, %bb.a
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZNK4i18n12phonenumbers19MappingFileProvider28FindBestMatchingLanguageCodeEPKNS0_16CountryLanguagesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_SC_PSA_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 0, ptr %i.d, align 8, !tbaa !18
  store i8 0, ptr %i.c, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN4i18n12phonenumbers12_GLOBAL__N_116AppendLocalePartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_.exit.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.h = load i64, ptr %i.d, align 8, !tbaa !18
  %i.i = icmp eq i64 %i.h, 4611686018427387903
  br i1 %i.i, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc73 unwind label %bb.e   ; 0 uses

.noexc73:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.l = load i64, ptr %i.d, align 8, !tbaa !18
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %.noexc73
  %i.o = load ptr, ptr %3, align 8, !tbaa !19
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.o, i64 noundef %i.k)
          to label %_ZN4i18n12phonenumbers12_GLOBAL__N_116AppendLocalePartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_.exit.i unwind label %bb.e ; 0 uses

_ZN4i18n12phonenumbers12_GLOBAL__N_116AppendLocalePartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i, %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZN4i18n12phonenumbers12_GLOBAL__N_119ConstructFullLocaleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_PS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4i18n12phonenumbers12_GLOBAL__N_116AppendLocalePartERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_.exit.i
  %i.t = load i64, ptr %i.d, align 8, !tbaa !18
  %i.u = icmp eq i64 %i.t, 4611686018427387903
end_hunk_0
