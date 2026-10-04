Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXUtil?download=true
inline.NumInlined: 156
inline.NumDeleted: 84
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

@.str = private unnamed_addr constant [17 x i8] c"TOK_OPEN_BRACKET\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"TOK_CLOSE_BRACKET\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"TOK_DATA\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"TOK_COMMA\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"TOK_KEY\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"TOK_BINARY_DATA\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" (offset 0x\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c" (line \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c" <<  col \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c", offset 0x\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c", line \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c", col \00", align 1
@_ZN6Assimp3FBX4UtilL17base64DecodeTableE = internal unnamed_addr constant [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF", align 16
@_ZN6Assimp3FBX4UtilL16to_base64_stringE = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@switch.table._ZN6Assimp3FBX4Util12GetTokenTextB5cxx11EPKNS0_5TokenE.1 = private unnamed_addr constant [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @.str.3, ptr @.str.4], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN6Assimp3FBX4Util15TokenTypeStringENS0_9TokenTypeE(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 6
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6Assimp3FBX4Util12GetTokenTextB5cxx11EPKNS0_5TokenE.1, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.6, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX4Util13GetOffsetTextB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull @.str.7, i64 noundef 11)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, -75
  %i.i = or disjoint i32 %i.h, 8
  store i32 %i.i, ptr %i.f, align 8
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %2, i64 noundef %1)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsImTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit unwind label %bb.f ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsImTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit unwind label %bb.f ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit: ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsImTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !10)
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !alias.scope !13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !alias.scope !13
  store i8 0, ptr %i.l, align 8, !alias.scope !13
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !13 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !noalias !13 ; 2 uses
  %i.r = icmp ugt ptr %i.o, %i.q
  %.08.i.i.i.i = select i1 %i.r, ptr %i.o, ptr %i.q ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !noalias !13 ; 2 uses
  %i.u = ptrtoint ptr %.08.i.i.i.i to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.t, i64 noundef %i.w)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !alias.scope !13 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.l
  br i1 %i.aa, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ab = load i64, ptr %i.l, align 8, !alias.scope !13
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #15
  br label %.body

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.d

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.e, %bb.c
  %i.ae = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ae, ptr %2, align 8
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ag = getelementptr i8, ptr %i.ae, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.ah
  store ptr %i.af, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #15
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aj, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #14
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ar) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void

bb.f:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsImTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit, %bb.b, %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.f ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.y, %bb.d ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #15
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX4Util20GetLineAndColumnTextB5cxx11Ejj(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull @.str.9, i64 noundef 7)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA8_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit unwind label %bb.e ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA8_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit: ; preds = %bb.a
  %i.b = zext i32 %1 to i64
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %3, i64 noundef %i.b)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit unwind label %bb.e ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit: ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA8_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull @.str.10, i64 noundef 9)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA10_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit unwind label %bb.e ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA10_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit: ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit
  %i.e = zext i32 %2 to i64
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %3, i64 noundef %i.e)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit1 unwind label %bb.e ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit1: ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA10_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit unwind label %bb.e ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit: ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit1
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !alias.scope !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !alias.scope !23
  store i8 0, ptr %i.h, align 8, !alias.scope !23
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !23 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !noalias !23 ; 2 uses
  %i.n = icmp ugt ptr %i.k, %i.m
  %.08.i.i.i.i = select i1 %i.n, ptr %i.k, ptr %i.m ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !noalias !23 ; 2 uses
  %i.q = ptrtoint ptr %.08.i.i.i.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.p, i64 noundef %i.s)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !alias.scope !23 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.h
  br i1 %i.w, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.x = load i64, ptr %i.h, align 8, !alias.scope !23
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #15
  br label %.body

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.aa = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aa, ptr %3, align 8
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ac = getelementptr i8, ptr %i.aa, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %3, i64 %i.ad
  store ptr %i.ab, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #15
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.af, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #14
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.an) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit1, %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA10_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit, %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit, %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA8_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit, %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.e ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.u, %bb.c ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX4Util12GetTokenTextB5cxx11EPKNS0_5TokenE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 23 uses
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 23 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit unwind label %bb.g ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i32 %i.f, 6
  br i1 %i.g, label %switch.lookup, label %_ZN6Assimp3FBX4Util15TokenTypeStringENS0_9TokenTypeE.exit

switch.lookup:                                    ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit
  %i.h = zext nneg i32 %i.f to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6Assimp3FBX4Util12GetTokenTextB5cxx11EPKNS0_5TokenE.1, i64 %i.h
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN6Assimp3FBX4Util15TokenTypeStringENS0_9TokenTypeE.exit

_ZN6Assimp3FBX4Util15TokenTypeStringENS0_9TokenTypeE.exit: ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.6, %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit ] ; 2 uses
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #14
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull %.0.i, i64 noundef %i.i)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit unwind label %bb.h ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %_ZN6Assimp3FBX4Util15TokenTypeStringENS0_9TokenTypeE.exit
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull @.str.12, i64 noundef 11)
          to label %bb.c unwind label %bb.h       ; 0 uses

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.l = load ptr, ptr %2, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, -75
  %i.s = or disjoint i32 %i.r, 8
  store i32 %i.s, ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %2, i64 noundef %i.u)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsImTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit unwind label %bb.i ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsImTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit: ; preds = %bb.c
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit25 unwind label %bb.i ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit25: ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsImTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.x, ptr %0, align 8, !alias.scope !39
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.y, align 8, !alias.scope !39
  store i8 0, ptr %i.x, align 8, !alias.scope !39
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !39 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !39 ; 2 uses
  %i.ad = icmp ugt ptr %i.aa, %i.ac
  %.08.i.i.i.i = select i1 %i.ad, ptr %i.aa, ptr %i.ac ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit25
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !39 ; 2 uses
  %i.ag = ptrtoint ptr %.08.i.i.i.i to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.af, i64 noundef %i.ai)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !alias.scope !39 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.x
  br i1 %i.am, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.an = load i64, ptr %i.x, align 8, !alias.scope !39
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #15
  br label %.body

bb.f:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit25
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.e

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.f, %bb.d
  %i.aq = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aq, ptr %2, align 8
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.as = getelementptr i8, ptr %i.aq, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %2, i64 %i.at
  store ptr %i.ar, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.ba = load i64, ptr %i.ay, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #15
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.av, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bc) #14
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bd) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.r

bb.g:                                             ; preds = %bb.b
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit, %_ZN6Assimp3FBX4Util15TokenTypeStringENS0_9TokenTypeE.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsImTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit, %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.i, %bb.g
  %.pn16.pn = phi { ptr, i32 } [ %i.be, %bb.g ], [ %i.bf, %bb.h ], [ %i.bg, %bb.i ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ak, %bb.e ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.s

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit27 unwind label %bb.n ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit27: ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8            ; 2 uses
  %i.bk = icmp ult i32 %i.bj, 6
  br i1 %i.bk, label %switch.lookup64, label %_ZN6Assimp3FBX4Util15TokenTypeStringENS0_9TokenTypeE.exit29

switch.lookup64:                                  ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit27
  %i.bl = zext nneg i32 %i.bj to i64
  %switch.gep65 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6Assimp3FBX4Util12GetTokenTextB5cxx11EPKNS0_5TokenE.1, i64 %i.bl
  %switch.load66 = load ptr, ptr %switch.gep65, align 8
  br label %_ZN6Assimp3FBX4Util15TokenTypeStringENS0_9TokenTypeE.exit29

_ZN6Assimp3FBX4Util15TokenTypeStringENS0_9TokenTypeE.exit29: ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit27, %switch.lookup64
  %.0.i28 = phi ptr [ %switch.load66, %switch.lookup64 ], [ @.str.6, %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit27 ] ; 2 uses
  %i.bm = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i28) #14
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull %.0.i28, i64 noundef %i.bm)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit33 unwind label %bb.o ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit33: ; preds = %_ZN6Assimp3FBX4Util15TokenTypeStringENS0_9TokenTypeE.exit29
  %i.bo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull @.str.13, i64 noundef 7)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA8_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit unwind label %bb.o ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA8_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit: ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit33
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = and i64 %i.bq, 4294967295
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %3, i64 noundef %i.br)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit unwind label %bb.p ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit: ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA8_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull @.str.14, i64 noundef 6)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA7_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit unwind label %bb.p ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA7_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit: ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit
  %i.bu = load i32, ptr %i.a, align 8
  %i.bv = zext i32 %i.bu to i64
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %3, i64 noundef %i.bv)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit38 unwind label %bb.q ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit38: ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA7_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit
  %i.bx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit40 unwind label %bb.q ; 0 uses

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit40: ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit38
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.by, ptr %0, align 8, !alias.scope !43
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bz, align 8, !alias.scope !43
  store i8 0, ptr %i.by, align 8, !alias.scope !43
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !43 ; 3 uses
  %.not.i.not.i.i.i41 = icmp eq ptr %i.cb, null
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !43 ; 2 uses
  %i.ce = icmp ugt ptr %i.cb, %i.cd
  %.08.i.i.i.i42 = select i1 %i.ce, ptr %i.cb, ptr %i.cd ; 2 uses
  %.not5.i.i.i43 = icmp eq ptr %.08.i.i.i.i42, null
  %.not.i.i.i44 = select i1 %.not.i.not.i.i.i41, i1 true, i1 %.not5.i.i.i43
  br i1 %.not.i.i.i44, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit40
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !43 ; 2 uses
  %i.ch = ptrtoint ptr %.08.i.i.i.i42 to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.cg, i64 noundef %i.cj)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit50 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = load ptr, ptr %0, align 8, !alias.scope !43 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.by
  br i1 %i.cn, label %.body48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i45: ; preds = %bb.l
  %i.co = load i64, ptr %i.by, align 8, !alias.scope !43
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #15
  br label %.body48

bb.m:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA3_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit40
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cq)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit50 unwind label %bb.l

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit50: ; preds = %bb.m, %bb.k
  %i.cr = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cr, ptr %3, align 8
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ct = getelementptr i8, ptr %i.cr, i64 -24
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds i8, ptr %3, i64 %i.cu
  store ptr %i.cs, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i51: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit50
  %i.db = load i64, ptr %i.cz, align 8
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #15
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i51
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cw, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dd) #14
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.de) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.r

bb.n:                                             ; preds = %bb.j
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body48

bb.o:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit33, %_ZN6Assimp3FBX4Util15TokenTypeStringENS0_9TokenTypeE.exit29
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body48

bb.p:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit, %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA8_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body48

bb.q:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIjTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKS9_.exit38, %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIA7_cTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSA_.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.body48

.body48:                                          ; preds = %bb.l, %bb.o, %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i45, %bb.p, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %i.df, %bb.n ], [ %i.dg, %bb.o ], [ %i.dh, %bb.p ], [ %i.di, %bb.q ], [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i45 ], [ %i.cl, %bb.l ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.s

bb.r:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.s:                                             ; preds = %.body48, %.body
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn16.pn, %.body ], [ %.pn.pn.pn, %.body48 ]
  resume { ptr, i32 } %.pn16.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i8 @_ZN6Assimp3FBX4Util12DecodeBase64Ec(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i8 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i8 %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZN6Assimp3FBX4UtilL17base64DecodeTableE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.d, %bb.b ], [ -1, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 4611686018427387904) i64 @_ZN6Assimp3FBX4Util24ComputeDecodedSizeBase64EPKcm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 61
  %i.f = zext i1 %i.e to i64
  %i.g = getelementptr i8, ptr %i.b, i64 -2
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 61
  %i.j = zext i1 %i.i to i64
  %i.k = add nuw nsw i64 %i.j, %i.f
  %i.l = mul i64 %1, 3
  %i.m = lshr i64 %i.l, 2
  %.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.m, i64 %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i64 [ %.0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZN6Assimp3FBX4Util12DecodeBase64EPKcmPhm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp ult i64 %1, 2
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 61
  %.neg = sext i1 %i.f to i64
  %i.g = add i64 %1, %.neg
  %i.h = getelementptr i8, ptr %i.c, i64 -2
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 61
  %.neg48 = sext i1 %i.j to i64
  %i.k = add i64 %i.g, %.neg48                    ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.03062 = phi i64 [ %i.ad, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %.03161 = phi i32 [ %.2, %bb.e ], [ -8, %bb.b ] ; 3 uses
  %.03360 = phi i32 [ %.235, %bb.e ], [ 0, %bb.b ]
  %.03659 = phi i64 [ %.238, %bb.e ], [ 0, %bb.b ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.03062
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %i.o = icmp slt i8 %i.n, 0
  br i1 %i.o, label %.thread, label %_ZN6Assimp3FBX4Util12DecodeBase64Ec.exit

_ZN6Assimp3FBX4Util12DecodeBase64Ec.exit:         ; preds = %.lr.ph
  %i.p = zext nneg i8 %i.n to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN6Assimp3FBX4UtilL17base64DecodeTableE, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %.not = icmp eq i8 %i.r, -1
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp3FBX4Util12DecodeBase64Ec.exit
  %i.s = zext i8 %i.r to i32
  %i.t = shl i32 %.03360, 6
  %i.u = add nsw i32 %i.t, %i.s                   ; 3 uses
  %i.v = add nsw i32 %.03161, 6                   ; 2 uses
  %i.w = icmp sgt i32 %.03161, -7
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = ashr i32 %i.u, %i.v
  %i.y = trunc i32 %i.x to i8
  %i.z = add nuw i64 %.03659, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.03659
  store i8 %i.y, ptr %i.aa, align 1
  %i.ab = add nsw i32 %.03161, -2
  %i.ac = and i32 %i.u, 4095
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.238 = phi i64 [ %.03659, %bb.c ], [ %i.z, %bb.d ] ; 3 uses
  %.235 = phi i32 [ %i.u, %bb.c ], [ %i.ac, %bb.d ]
  %.2 = phi i32 [ %i.v, %bb.c ], [ %i.ab, %bb.d ]
  %i.ad = add nuw i64 %.03062, 1                  ; 2 uses
  %i.ae = icmp uge i64 %i.ad, %i.k
  %i.af = icmp uge i64 %.238, %3
  %.not51 = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %.not51, label %.thread, label %.lr.ph, !llvm.loop !44

.thread:                                          ; preds = %.lr.ph, %_ZN6Assimp3FBX4Util12DecodeBase64Ec.exit, %bb.e, %bb.b, %bb.a
  %.4 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %_ZN6Assimp3FBX4Util12DecodeBase64Ec.exit ], [ 0, %.lr.ph ], [ %.238, %bb.e ]
  ret i64 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef signext i8 @_ZN6Assimp3FBX4Util12EncodeBase64Ec(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i8 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN6Assimp3FBX4UtilL16to_base64_stringE, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  ret i8 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3FBX4Util15EncodeByteBlockEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = lshr i8 %i.a, 2
  %i.c = shl i8 %i.a, 4
  %i.d = and i8 %i.c, 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = lshr i8 %i.f, 4
  %i.h = or disjoint i8 %i.g, %i.d
  %i.i = shl i8 %i.f, 2
  %i.j = and i8 %i.i, 60
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = lshr i8 %i.l, 6
  %i.n = or disjoint i8 %i.m, %i.j
  %i.o = and i8 %i.l, 63
  %i.p = zext nneg i8 %i.b to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN6Assimp3FBX4UtilL16to_base64_stringE, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %i.s = load ptr, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %2
  store i8 %i.r, ptr %i.t, align 1
  %i.u = zext nneg i8 %i.h to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZN6Assimp3FBX4UtilL16to_base64_stringE, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1
  %i.x = load ptr, ptr %1, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 %2
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %i.w, ptr %i.z, align 1
  %i.aa = zext nneg i8 %i.n to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN6Assimp3FBX4UtilL16to_base64_stringE, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = load ptr, ptr %1, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 %2
  %i.af = getelementptr i8, ptr %i.ae, i64 2
  store i8 %i.ac, ptr %i.af, align 1
  %i.ag = zext nneg i8 %i.o to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZN6Assimp3FBX4UtilL16to_base64_stringE, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = load ptr, ptr %1, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 %2
  %i.al = getelementptr i8, ptr %i.ak, i64 3
  store i8 %i.ai, ptr %i.al, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX4Util12EncodeBase64B5cxx11EPKcm(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 7 uses
  %i.a = urem i64 %2, 3                           ; 3 uses
  %i.b = xor i64 %i.a, 3                          ; 2 uses
  %i.c = add i64 %i.b, %2
  %i.d = shl i64 %i.c, 2
  %i.e = udiv i64 %i.d, 3                         ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %0, align 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e, i8 noundef signext 61)
  %i.g = udiv i64 %2, 3
  %.not = icmp ult i64 %2, 3
  br i1 %.not, label %.lr.ph39.preheader, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %.02737 = phi i64 [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit ], [ 0, %bb.a ] ; 3 uses
  %i.h = mul nuw i64 %.02737, 3
  %i.i = shl i64 %.02737, 2                       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.h ; 3 uses
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = lshr i8 %i.k, 2
  %i.m = shl i8 %i.k, 4
  %i.n = and i8 %i.m, 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %i.q = lshr i8 %i.p, 4
  %i.r = or disjoint i8 %i.q, %i.n
  %i.s = shl i8 %i.p, 2
  %i.t = and i8 %i.s, 60
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = lshr i8 %i.v, 6
  %i.x = or disjoint i8 %i.w, %i.t
  %i.y = and i8 %i.v, 63
  %i.z = zext nneg i8 %i.l to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN6Assimp3FBX4UtilL16to_base64_stringE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.i
  store i8 %i.ab, ptr %i.ad, align 1
  %i.ae = zext nneg i8 %i.r to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZN6Assimp3FBX4UtilL16to_base64_stringE, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 1
  store i8 %i.ag, ptr %i.aj, align 1
  %i.ak = zext nneg i8 %i.x to i64
  %i.al = getelementptr inbounds nuw i8, ptr @_ZN6Assimp3FBX4UtilL16to_base64_stringE, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = load ptr, ptr %0, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 2
  store i8 %i.am, ptr %i.ap, align 1
  %i.aq = zext nneg i8 %i.y to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZN6Assimp3FBX4UtilL16to_base64_stringE, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = load ptr, ptr %0, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 %i.i
  %i.av = getelementptr i8, ptr %i.au, i64 3
  store i8 %i.as, ptr %i.av, align 1
  %i.aw = add nuw nsw i64 %.02737, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.g
  br i1 %exitcond.not, label %.lr.ph39.preheader, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, !llvm.loop !45

.lr.ph39.preheader:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i32 0, ptr %.sroa.0, align 4
  %i.ax = sub nuw i64 %2, %i.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0, ptr align 1 %i.ay, i64 %i.a, i1 false)
  %i.az = add nsw i64 %i.e, -4                    ; 4 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load i8, ptr %.sroa.0, align 4 ; 2 uses
  %i.ba = lshr i8 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., 2
  %i.bb = shl i8 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., 4
  %i.bc = and i8 %i.bb, 48
  %.sroa.0.1..sroa_idx43 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  %.sroa.0.1..sroa.0.1..sroa.0.1..sroa.0.1. = load i8, ptr %.sroa.0.1..sroa_idx43, align 1 ; 2 uses
  %i.bd = lshr i8 %.sroa.0.1..sroa.0.1..sroa.0.1..sroa.0.1., 4
  %i.be = or disjoint i8 %i.bd, %i.bc
  %i.bf = shl i8 %.sroa.0.1..sroa.0.1..sroa.0.1..sroa.0.1., 2
  %i.bg = and i8 %i.bf, 60
  %.sroa.0.2..sroa_idx44 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.2..sroa.0.2..sroa.0.2..sroa.0.2. = load i8, ptr %.sroa.0.2..sroa_idx44, align 2 ; 2 uses
  %i.bh = lshr i8 %.sroa.0.2..sroa.0.2..sroa.0.2..sroa.0.2., 6
  %i.bi = or disjoint i8 %i.bh, %i.bg
  %i.bj = and i8 %.sroa.0.2..sroa.0.2..sroa.0.2..sroa.0.2., 63
  %i.bk = zext nneg i8 %i.ba to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @_ZN6Assimp3FBX4UtilL16to_base64_stringE, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = load ptr, ptr %0, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.az
  store i8 %i.bm, ptr %i.bo, align 1
  %i.bp = zext nneg i8 %i.be to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @_ZN6Assimp3FBX4UtilL16to_base64_stringE, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = load ptr, ptr %0, align 8
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.az
  %i.bu = getelementptr i8, ptr %i.bt, i64 1
  store i8 %i.br, ptr %i.bu, align 1
  %i.bv = zext nneg i8 %i.bi to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZN6Assimp3FBX4UtilL16to_base64_stringE, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = load ptr, ptr %0, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.az
  %i.ca = getelementptr i8, ptr %i.bz, i64 2
  store i8 %i.bx, ptr %i.ca, align 1
  %i.cb = zext nneg i8 %i.bj to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @_ZN6Assimp3FBX4UtilL16to_base64_stringE, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = load ptr, ptr %0, align 8
  %i.cf = getelementptr i8, ptr %i.ce, i64 %i.az
  %i.cg = getelementptr i8, ptr %i.cf, i64 3
  store i8 %i.cd, ptr %i.cg, align 1
  %.tr = trunc nuw nsw i64 %i.b to i8
  %.lhs.trunc = shl nuw nsw i8 %.tr, 2
  %3 = udiv i8 %.lhs.trunc, 3                     ; 2 uses
  %.zext = zext nneg i8 %3 to i64                 ; 2 uses
  %xtraiter = and i64 %.zext, 3                   ; 3 uses
  %i.ch = add nsw i8 %3, -1
  %i.ci = icmp ult i8 %i.ch, 3
  br i1 %i.ci, label %.lr.ph39.epil.preheader, label %.lr.ph39.preheader.new

.lr.ph39.preheader.new:                           ; preds = %.lr.ph39.preheader
  %unroll_iter = and i64 %.zext, 60
  br label %.lr.ph39

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph39
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph39.epil.preheader

.lr.ph39.epil.preheader:                          ; preds = %._crit_edge.unr-lcssa, %.lr.ph39.preheader
  %.038.epil.init = phi i64 [ 0, %.lr.ph39.preheader ], [ %16, %._crit_edge.unr-lcssa ]
  %lcmp.mod42 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %.lr.ph39.epil

.lr.ph39.epil:                                    ; preds = %.lr.ph39.epil, %.lr.ph39.epil.preheader
  %.038.epil = phi i64 [ %5, %.lr.ph39.epil ], [ %.038.epil.init, %.lr.ph39.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph39.epil ], [ 0, %.lr.ph39.epil.preheader ]
  %4 = xor i64 %.038.epil, -1
  %i.cj = load ptr, ptr %0, align 8
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.e
  %i.cl = getelementptr i8, ptr %i.ck, i64 %4
  store i8 61, ptr %i.cl, align 1
  %5 = add nuw nsw i64 %.038.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph39.epil, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph39.epil, %._crit_edge.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void

.lr.ph39:                                         ; preds = %.lr.ph39, %.lr.ph39.preheader.new
  %.038 = phi i64 [ 0, %.lr.ph39.preheader.new ], [ %16, %.lr.ph39 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph39.preheader.new ], [ %niter.next.3, %.lr.ph39 ]
  %6 = xor i64 %.038, -1
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr i8, ptr %7, i64 %i.e
  %9 = getelementptr i8, ptr %8, i64 %6
  store i8 61, ptr %9, align 1
  %10 = xor i64 %.038, -2
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr i8, ptr %11, i64 %i.e
  %13 = getelementptr i8, ptr %12, i64 %10
  store i8 61, ptr %13, align 1
  %14 = xor i64 %.038, -3
  %i.cm = load ptr, ptr %0, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.e
  %i.co = getelementptr i8, ptr %i.cn, i64 %14
  store i8 61, ptr %i.co, align 1
  %15 = xor i64 %.038, -4
  %i.cp = load ptr, ptr %0, align 8
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.e
  %i.cr = getelementptr i8, ptr %i.cq, i64 %15
  store i8 61, ptr %i.cr, align 1
  %16 = add nuw nsw i64 %.038, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph39, !llvm.loop !47
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, i1 false, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!5 = distinct !{!5, !4, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!6 = distinct !{!6, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!7 = distinct !{!7, !6, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!8 = distinct !{!8, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!9 = distinct !{!9, !8, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!10 = !{!5}
!11 = !{!7}
!12 = !{!9}
!13 = !{!9, !7, !5}
!14 = distinct !{!14, i1 false, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!15 = distinct !{!15, !14, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!16 = distinct !{!16, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!17 = distinct !{!17, !16, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!18 = distinct !{!18, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!19 = distinct !{!19, !18, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!20 = !{!15}
!21 = !{!17}
!22 = !{!19}
!23 = !{!19, !17, !15}
!24 = distinct !{!24, i1 false, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!25 = distinct !{!25, !24, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!26 = distinct !{!26, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!27 = distinct !{!27, !26, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!28 = distinct !{!28, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!29 = distinct !{!29, !28, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!30 = distinct !{!30, i1 false, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!31 = distinct !{!31, !30, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!32 = distinct !{!32, i1 false, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!33 = distinct !{!33, !32, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!34 = distinct !{!34, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!35 = distinct !{!35, !34, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!36 = !{!25}
!37 = !{!27}
!38 = !{!29}
!39 = !{!29, !27, !25}
!40 = !{!31}
!41 = !{!33}
!42 = !{!35}
!43 = !{!35, !33, !31}
!44 = distinct !{!44, !3}
!45 = distinct !{!45, !3}
!46 = distinct !{!46, !48}
!47 = distinct !{!47, !3}
!48 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
