Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/elf_section_rename?download=true
inline.NumInlined: 110
inline.NumDeleted: 78
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.LIEF::ELF::ParserConfig" = type { i8, i8, i8, i8, i8, i8, i32, i64 }
%"struct.LIEF::ELF::Builder::config_t" = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZZN4LIEF3ELF12ParserConfig3allEvE7DEFAULT = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [19 x i8] c"ELF Section rename\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Usage: \00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c" <Original Binary> <Output Binary>\00", align 1
@_ZZN4LIEF3ELF12ParserConfig3allEvE7DEFAULT = linkonce_odr dso_local local_unnamed_addr constant %"struct.LIEF::ELF::ParserConfig" { i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i32 0, i64 0 }, comdat, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef range(i32 -1, 1) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.LIEF::ELF::Builder::config_t", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"struct.LIEF::ELF::ParserConfig", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 18) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1, !tbaa !12
  %i.f = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !25
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq i32 %0, 3
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 7) ; 0 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  %.not.i20 = icmp eq ptr %i.o, null
  br i1 %.not.i20, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !14
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !28
  %i.v = or i32 %i.u, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.s, i32 noundef %i.v)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.f:                                             ; preds = %bb.d
  %i.w = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #7
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.o, i64 noundef %i.w) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e, %bb.f
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2, i64 noundef 34) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 10, ptr %i.c, align 1, !tbaa !12
  %i.z = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !14
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !25
  %.not.i21 = icmp eq i64 %i.ae, 0
  br i1 %.not.i21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ab

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.aj, ptr %4, align 8, !tbaa !30
  %i.ak = icmp eq ptr %i.ai, null
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #8
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.al = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i64 %i.al, ptr %i.b, align 8, !tbaa !31
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.k
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc24 unwind label %bb.w   ; 2 uses

.noexc24:                                         ; preds = %.noexc.i
  store ptr %i.an, ptr %4, align 8, !tbaa !33
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !31
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !12
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc24, %bb.k
  %i.ap = phi ptr [ %i.an, %.noexc24 ], [ %i.aj, %bb.k ] ; 2 uses
  switch i64 %i.al, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.aq = load i8, ptr %i.ai, align 1, !tbaa !12
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !12
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 1 %i.ai, i64 %i.al, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !34
  %i.at = load ptr, ptr %4, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4LIEF3ELF12ParserConfig3allEvE7DEFAULT, i64 24, i1 false), !tbaa.struct !39
  invoke void @_ZN4LIEF3ELF6Parser5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_12ParserConfigE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.av = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.aj
  br i1 %i.aw, label %._crit_edge.i.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.av) #9
  br label %._crit_edge.i.i25

._crit_edge.i.i25:                                ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.ax = load ptr, ptr %3, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 192
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !43, !noalias !54
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !46 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.bb, ptr %6, align 8, !tbaa !30
  store i32 1869901684, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 4, ptr %i.bc, align 8, !tbaa !34
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i8 0, ptr %i.bd, align 4, !tbaa !12
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr noundef nonnull align 8 %6)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %._crit_edge.i.i25
  %i.bh = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.bb
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.p
  call void @_ZdlPv(ptr noundef %i.bh) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.bj = load ptr, ptr %3, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !27 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.bm, ptr %7, align 8, !tbaa !30
  %i.bn = icmp eq ptr %i.bl, null
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #8
          to label %.noexc34 unwind label %bb.z

.noexc34:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.bo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !31
  %i.bp = icmp ugt i64 %i.bo, 15
  br i1 %i.bp, label %.noexc.i33, label %._crit_edge.i.i32

.noexc.i33:                                       ; preds = %bb.r
  %i.bq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc35 unwind label %bb.z   ; 2 uses

.noexc35:                                         ; preds = %.noexc.i33
  store ptr %i.bq, ptr %7, align 8, !tbaa !33
  %i.br = load i64, ptr %i.a, align 8, !tbaa !31
  store i64 %i.br, ptr %i.bm, align 8, !tbaa !12
  br label %._crit_edge.i.i32

._crit_edge.i.i32:                                ; preds = %.noexc35, %bb.r
  %i.bs = phi ptr [ %i.bq, %.noexc35 ], [ %i.bm, %bb.r ] ; 2 uses
  switch i64 %i.bo, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i32
  %i.bt = load i8, ptr %i.bl, align 1, !tbaa !12
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !12
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr nonnull align 1 %i.bl, i64 %i.bo, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i32
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !34
  %i.bw = load ptr, ptr %7, align 8, !tbaa !33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu
  store i8 0, ptr %i.bx, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 72340172838076673, ptr %2, align 8
  store i8 0, ptr %i.by, align 8, !tbaa !48
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.bz, i8 1, i64 10, i1 false)
  store i8 0, ptr %i.ca, align 1, !tbaa !49
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 0, ptr %i.cb, align 4, !tbaa !50
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 0, ptr %i.cc, align 1, !tbaa !51
  invoke void @_ZN4LIEF3ELF6Binary5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7Builder8config_tE(ptr noundef nonnull align 8 dereferenceable(545) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(22) %2)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.cd = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.bm
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.cd) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  %i.cf = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i41 = icmp eq ptr %i.cf, null
  br i1 %.not.i41, label %_ZNSt10unique_ptrIN4LIEF3ELF6BinaryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3ELF6BinaryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4LIEF3ELF6BinaryEEclEPS2_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(545) %i.cf) #7, !inline_history !11
  br label %_ZNSt10unique_ptrIN4LIEF3ELF6BinaryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3ELF6BinaryESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt14default_deleteIN4LIEF3ELF6BinaryEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.ab

bb.w:                                             ; preds = %.noexc.i, %bb.j
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.x:                                             ; preds = %bb.n
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.cl = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.aj
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.cl) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.w
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.w ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.ck, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %_ZNSt10unique_ptrIN4LIEF3ELF6BinaryESt14default_deleteIS2_EED2Ev.exit53

bb.y:                                             ; preds = %._crit_edge.i.i25
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bb
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.co) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

bb.z:                                             ; preds = %.noexc.i33, %bb.q
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.aa:                                            ; preds = %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bm
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.cs) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.z
  %.pn16 = phi { ptr, i32 } [ %i.cq, %bb.z ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %i.cr, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.cn, %bb.y ] ; 2 uses
  %i.cu = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  %.not.i51 = icmp eq ptr %i.cu, null
  br i1 %.not.i51, label %_ZNSt10unique_ptrIN4LIEF3ELF6BinaryESt14default_deleteIS2_EED2Ev.exit53, label %_ZNKSt14default_deleteIN4LIEF3ELF6BinaryEEclEPS2_.exit.i52

_ZNKSt14default_deleteIN4LIEF3ELF6BinaryEEclEPS2_.exit.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !14
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(545) %i.cu) #7, !inline_history !11
  br label %_ZNSt10unique_ptrIN4LIEF3ELF6BinaryESt14default_deleteIS2_EED2Ev.exit53

_ZNSt10unique_ptrIN4LIEF3ELF6BinaryESt14default_deleteIS2_EED2Ev.exit53: ; preds = %_ZNKSt14default_deleteIN4LIEF3ELF6BinaryEEclEPS2_.exit.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %.pn16.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn16.pn, %_ZNKSt14default_deleteIN4LIEF3ELF6BinaryEEclEPS2_.exit.i52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  resume { ptr, i32 } %.pn16.pn.pn

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN4LIEF3ELF6BinaryESt14default_deleteIS2_EED2Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23
  %.012 = phi i32 [ -1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit23 ], [ 0, %_ZNSt10unique_ptrIN4LIEF3ELF6BinaryESt14default_deleteIS2_EED2Ev.exit ]
  ret i32 %.012
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4LIEF3ELF6Parser5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_12ParserConfigE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4LIEF3ELF6Binary5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_7Builder8config_tE(ptr noundef nonnull align 8 dereferenceable(545), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1 dereferenceable(22)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!11 = distinct !{null, null}
!12 = !{!5, !5, i64 0}
!13 = !{!"vtable pointer", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!17 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!20 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !15, i64 8}
!21 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!22 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!23 = !{!"_ZTSSt6locale", !22, i64 0}
!24 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !16, i64 24, !17, i64 28, !17, i64 32, !19, i64 40, !20, i64 48, !5, i64 64, !6, i64 192, !21, i64 200, !23, i64 208}
!25 = !{!24, !15, i64 16}
!26 = !{!"p1 omnipotent char", !18, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!24, !17, i64 32}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!30 = !{!29, !26, i64 0}
!31 = !{!15, !15, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !15, i64 8, !5, i64 16}
!33 = !{!32, !26, i64 0}
!34 = !{!32, !15, i64 8}
!35 = !{!"bool", !5, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"_ZTSN4LIEF3ELF12ParserConfig12DYNSYM_COUNTE", !5, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{i64 0, i64 1, !36, i64 1, i64 1, !36, i64 2, i64 1, !36, i64 3, i64 1, !36, i64 4, i64 1, !36, i64 5, i64 1, !36, i64 8, i64 4, !38, i64 16, i64 8, !31}
!40 = !{!"p1 _ZTSN4LIEF3ELF6BinaryE", !18, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"p1 _ZTSSt10unique_ptrIN4LIEF3ELF7SectionESt14default_deleteIS2_EE", !18, i64 0}
!43 = !{!42, !42, i64 0}
!45 = !{!"p1 _ZTSN4LIEF3ELF7SectionE", !18, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"_ZTSN4LIEF3ELF7Builder8config_tE", !35, i64 0, !35, i64 1, !35, i64 2, !35, i64 3, !35, i64 4, !35, i64 5, !35, i64 6, !35, i64 7, !35, i64 8, !35, i64 9, !35, i64 10, !35, i64 11, !35, i64 12, !35, i64 13, !35, i64 14, !35, i64 15, !35, i64 16, !35, i64 17, !35, i64 18, !35, i64 19, !35, i64 20, !35, i64 21}
!48 = !{!47, !35, i64 8}
!49 = !{!47, !35, i64 19}
!50 = !{!47, !35, i64 20}
!51 = !{!47, !35, i64 21}
!52 = distinct !{!52, i1 false, !"_ZN4LIEF3ELF6Binary8sectionsEv"}
!53 = distinct !{!53, !52, !"_ZN4LIEF3ELF6Binary8sectionsEv: argument 0"}
!54 = !{!53}
end_hunk_0
