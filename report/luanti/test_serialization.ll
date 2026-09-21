Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_serialization?download=true
inline.NumInlined: 1600
inline.NumDeleted: 536
begin_hunk_0_@_ZN17TestSerialization23testSerializeJsonStringEv:bb.a
  %i.bfa = load i64, ptr %i.bez, align 8
  %i.bfb = getelementptr inbounds i8, ptr %1, i64 %i.bfa
  store ptr %i.bey, ptr %i.bfb, align 8, !tbaa !19
  %i.bfc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.bfc, align 8, !tbaa !46
  %i.bfd = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bfd) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084: ; preds = %bb.jk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1082
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #27
  %i.bfe = load ptr, ptr %82, align 8, !tbaa !27  ; 2 uses
  %i.bff = icmp eq ptr %i.bfe, %i.bbq
  br i1 %i.bff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084
  %i.bfg = load i64, ptr %i.bbq, align 8, !tbaa !17
  %i.bfh = add i64 %i.bfg, 1
  call void @_ZdlPvm(ptr noundef %i.bfe, i64 noundef %i.bfh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1103, %bb.je
  %.pn248.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bde, %bb.je ], [ %.pn248.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1103 ], [ %.pn248.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1084 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #27
  br label %bb.jl

bb.jl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1078, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1039, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1036, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit988, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit949, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit946, %bb.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859
  %.pn248.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn248.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1105 ], [ %i.asg, %bb.hh ], [ %.pn242.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1078 ], [ %i.bas, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1039 ], [ %.pn234.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1036 ], [ %.pn228.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit988 ], [ %i.avc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit949 ], [ %.pn220.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit946 ], [ %.pn214.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit898 ], [ %i.apl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit859 ]
  %i.bfi = load ptr, ptr %58, align 8, !tbaa !27  ; 2 uses
  %i.bfj = icmp eq ptr %i.bfi, %i.anj
  br i1 %i.bfj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1106: ; preds = %bb.jl
  %i.bfk = load i64, ptr %i.anj, align 8, !tbaa !17
  %i.bfl = add i64 %i.bfk, 1
  call void @_ZdlPvm(ptr noundef %i.bfi, i64 noundef %i.bfl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1108: ; preds = %bb.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1106
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  br label %bb.jm

bb.jm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i821, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit823, %bb.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820, %bb.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805
  %.pn255.pn = phi { ptr, i32 } [ %.pn2551182, %bb.go ], [ %i.and, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit823 ], [ %.pn248.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1108 ], [ %i.alq, %bb.gb ], [ %.pn206.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820 ], [ %.pn200.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit805 ], [ %i.and, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i821 ] ; 2 uses
  %i.bfm = load ptr, ptr %47, align 8, !tbaa !27  ; 2 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.bfo = icmp eq ptr %i.bfm, %i.bfn
  br i1 %i.bfo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1109: ; preds = %bb.jm
  %i.bfp = load i64, ptr %i.bfn, align 8, !tbaa !17
  %i.bfq = add i64 %i.bfp, 1
  call void @_ZdlPvm(ptr noundef %i.bfm, i64 noundef %i.bfq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1111: ; preds = %bb.jm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1109, %bb.fk
  %.pn255.pn.pn = phi { ptr, i32 } [ %i.aix, %bb.fk ], [ %.pn255.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1109 ], [ %.pn255.pn, %bb.jm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  %i.bfr = load ptr, ptr %31, align 8, !tbaa !27  ; 2 uses
  %i.bfs = icmp eq ptr %i.bfr, %i.abh
  br i1 %i.bfs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1111
  %i.bft = load i64, ptr %i.abh, align 8, !tbaa !17
  %i.bfu = add i64 %i.bft, 1
  call void @_ZdlPvm(ptr noundef %i.bfr, i64 noundef %i.bfu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit764
  %.pn255.pn.pn.pn = phi { ptr, i32 } [ %.pn184.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit764 ], [ %.pn255.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1112 ], [ %.pn255.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1111 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  %i.bfv = load ptr, ptr %30, align 8, !tbaa !27  ; 2 uses
  %i.bfw = icmp eq ptr %i.bfv, %i.jm
  br i1 %i.bfw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1114
  %i.bfx = load i64, ptr %i.jm, align 8, !tbaa !17
  %i.bfy = add i64 %i.bfx, 1
  call void @_ZdlPvm(ptr noundef %i.bfv, i64 noundef %i.bfy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1115
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  br label %bb.jn

bb.jn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534, %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1117
  %.pn275.pn = phi { ptr, i32 } [ %.pn255.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1117 ], [ %i.pi, %bb.ci ], [ %.pn269.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534 ], [ %.pn267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519 ], [ %.pn261.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit516 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337
  %.pn275.pn.pn = phi { ptr, i32 } [ %.pn275.pn, %bb.jn ], [ %i.fc, %bb.aa ], [ %.pn178.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445 ], [ %i.ia, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426 ], [ %.pn170.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423 ], [ %.pn164.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit375 ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337 ]
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn275.pn.pn

bb.jp:                                            ; preds = %bb.jd, %bb.ip, %bb.if, %bb.hr, %bb.hg, %bb.gs, %bb.gm, %bb.ga, %bb.eu, %bb.bw, %bb.be, %bb.ak, %bb.z, %bb.n, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef) unnamed_addr #0 align 2

declare void @_Z19serializeJsonStringB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

declare void @_Z21deSerializeJsonStringB5cxx11RSi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN17TestSerialization23testSerializeJsonStringEvENK3$_1clERSi"(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 0 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !19
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !44
  %i.h = and i32 %i.g, 2
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 72) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.i, ptr noundef nonnull align 8 %1, ptr noundef nonnull @.str.11, i32 noundef 181)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #29
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !tbaa !17
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn4 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.i) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn3 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn4, %bb.f ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn3

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_Z27serializeJsonStringIfNeededB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #3

declare void @_Z29deSerializeJsonStringIfNeededB5cxx11RSi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17TestSerialization14testStreamReadEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [12 x i8], align 8                ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [6 x i8], align 2                 ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 6 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = alloca [4 x i8], align 4                 ; 5 uses
  %i.j = alloca [4 x i8], align 4                 ; 5 uses
  %i.k = alloca [4 x i8], align 4                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [4 x i8], align 4                 ; 5 uses
  %i.n = alloca [2 x i8], align 2                 ; 5 uses
  %i.o = alloca [1 x i8], align 1                 ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [4 x i8], align 4                 ; 5 uses
  %i.r = alloca [2 x i8], align 2                 ; 5 uses
  %i.s = alloca [1 x i8], align 1                 ; 5 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 76 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %12 = alloca %"class.std::allocator", align 1   ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %14 = alloca %"class.std::allocator", align 1   ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %16 = alloca %"class.std::allocator", align 1   ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %18 = alloca %"class.std::allocator", align 1   ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %20 = alloca %"class.std::allocator", align 1   ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %22 = alloca %"class.std::allocator", align 1   ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %24 = alloca %"class.std::allocator", align 1   ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %26 = alloca %"class.std::allocator", align 1   ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %29 = alloca %"class.std::allocator", align 1   ; 5 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %31 = alloca %"class.std::allocator", align 1   ; 5 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %33 = alloca %"class.std::allocator", align 1   ; 5 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %35 = alloca %"class.std::allocator", align 1   ; 5 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %37 = alloca %"class.std::allocator", align 1   ; 5 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %39 = alloca %"class.std::allocator", align 1   ; 5 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %41 = alloca %"class.std::allocator", align 1   ; 5 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %44 = alloca %"class.std::allocator", align 1   ; 5 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %46 = alloca %"class.std::allocator", align 1   ; 5 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %48 = alloca %"class.std::allocator", align 1   ; 5 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %50 = alloca %"class.std::allocator", align 1   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.u, ptr %1, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #27
  store i64 130, ptr %i.t, align 8, !tbaa !43
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef 0) ; 3 uses
  store ptr %i.v, ptr %1, align 8, !tbaa !27
  %i.w = load i64, ptr %i.t, align 8, !tbaa !43   ; 3 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(130) %i.v, ptr noundef nonnull align 16 dereferenceable(130) @_ZN17TestSerialization20test_serialized_dataE, i64 130, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  store i8 0, ptr %i.y, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 4)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #27
  store i8 0, ptr %i.s, align 1
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.s, i64 noundef 1)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %bb.b
  %i.aa = load ptr, ptr %2, align 8, !tbaa !19
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !44
  %i.ag = and i32 %i.af, 2
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.c, label %.invoke

bb.c:                                             ; preds = %.noexc
  %i.ah = load i8, ptr %i.s, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #27
  %i.ai = icmp eq i8 %i.ah, 17
  br i1 %i.ai, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = call ptr @__cxa_allocate_exception(i64 72) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.73, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.aj, ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.11, i32 noundef 253)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #29
          to label %bb.fx unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.h:                                             ; preds = %.invoke, %bb.fp, %bb.fh, %bb.fb, %bb.cc, %bb.bv, %bb.bo, %bb.bh, %bb.ba, %bb.at, %bb.am, %bb.af, %bb.y, %bb.r, %bb.k, %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.e
  %.070 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !17
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.070, label %bb.j, label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.070, label %bb.j, label %bb.fv

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn350 = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.aj) #27
  br label %bb.fv

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #27
  store i16 0, ptr %i.r, align 2
  %i.at = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.r, i64 noundef 2)
          to label %.noexc156 unwind label %bb.h  ; 0 uses

.noexc156:                                        ; preds = %bb.k
  %i.au = load ptr, ptr %2, align 8, !tbaa !19
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %2, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !44
  %i.ba = and i32 %i.az, 2
  %.not.i155 = icmp eq i32 %i.ba, 0
  br i1 %.not.i155, label %bb.l, label %.invoke

bb.l:                                             ; preds = %.noexc156
  %.0.copyload.i.i = load i16, ptr %i.r, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #27
  %i.bb = icmp eq i16 %.0.copyload.i.i, 13090
  br i1 %i.bb, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = call ptr @__cxa_allocate_exception(i64 72) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.74, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160.thread

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.bc, ptr noundef nonnull align 8 %5, ptr noundef nonnull @.str.11, i32 noundef 254)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #29
          to label %bb.fx unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160.thread: ; preds = %bb.m
  %i.bd = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN17TestSerialization14testStreamReadEv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.ch
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !17
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br i1 %.082, label %bb.ci, label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br i1 %.082, label %bb.ci, label %bb.fv

bb.ci:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  %.pn123383 = phi { ptr, i32 } [ %i.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.thread ], [ %i.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228 ]
  call void @__cxa_free_exception(ptr %i.id) #27
  br label %bb.fv

bb.cj:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  invoke void @_Z19deSerializeString16B5cxx11RSi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.ck unwind label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  %i.il = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.im = load i64, ptr %i.il, align 8, !tbaa !16 ; 2 uses
  %i.in = icmp eq i64 %i.im, 7
  %.pre = load ptr, ptr %27, align 8, !tbaa !27   ; 4 uses
  br i1 %i.in, label %bb.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.cl:                                            ; preds = %bb.ck
  %i.io = load i32, ptr %.pre, align 1
  %i.ip = xor i32 %i.io, 1651470182
  %i.iq = getelementptr i8, ptr %.pre, i64 3
  %i.ir = load i32, ptr %i.iq, align 1
  %i.is = xor i32 %i.ir, 561144162
  %i.it = or i32 %i.ip, %i.is
  %i.iu = icmp ne i32 %i.it, 0
  %i.iv = zext i1 %i.iu to i32
  %i.iw = icmp eq i32 %i.iv, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.cl, %bb.ck
  %i.ix = phi i1 [ false, %bb.ck ], [ %i.iw, %bb.cl ]
  %i.iy = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.iz = icmp eq ptr %.pre, %i.iy
  br i1 %i.iz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i232: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ja = icmp ult i64 %i.im, 16
  call void @llvm.assume(i1 %i.ja)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.jb = load i64, ptr %i.iy, align 8, !tbaa !17
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.jc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br i1 %i.ix, label %bb.cs, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
  %i.jd = call ptr @__cxa_allocate_exception(i64 72) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.86, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.cn unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.thread

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.jd, ptr noundef nonnull align 8 %28, ptr noundef nonnull @.str.11, i32 noundef 268)
          to label %bb.co unwind label %bb.cq

bb.co:                                            ; preds = %bb.cn
  invoke void @__cxa_throw(ptr nonnull %i.jd, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #29
          to label %bb.fx unwind label %bb.cq

bb.cp:                                            ; preds = %bb.cj
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.thread: ; preds = %bb.cm
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co, %bb.cn
  %.080 = phi i1 [ false, %bb.co ], [ true, %bb.cn ] ; 2 uses
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jh = load ptr, ptr %28, align 8, !tbaa !27   ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.cq
  %i.jk = load i64, ptr %i.ji, align 8, !tbaa !17
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br i1 %.080, label %bb.cr, label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br i1 %.080, label %bb.cr, label %bb.fv

bb.cr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239
  %.pn149386 = phi { ptr, i32 } [ %i.jf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.thread ], [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237 ]
  call void @__cxa_free_exception(ptr %i.jd) #27
  br label %bb.fv

bb.cs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i32 0, ptr %i.g, align 4
  %i.jm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.g, i64 noundef 4)
          to label %.noexc242 unwind label %bb.cy ; 0 uses

.noexc242:                                        ; preds = %bb.cs
  %i.jn = load ptr, ptr %2, align 8, !tbaa !19
  %i.jo = getelementptr i8, ptr %i.jn, i64 -24
  %i.jp = load i64, ptr %i.jo, align 8
  %i.jq = getelementptr inbounds i8, ptr %2, i64 %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !44
  %i.jt = and i32 %i.js, 2
  %.not.i240 = icmp eq i32 %i.jt, 0
  br i1 %.not.i240, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.noexc242
  invoke fastcc void @_ZL19serialize_throw_eofv()
          to label %.noexc243 unwind label %bb.cy

.noexc243:                                        ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %.noexc242
  %.0.copyload.i.i.i.i241 = load i16, ptr %i.g, align 4
  %i.ju = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.0.copyload.i.i2.i.i = load i16, ptr %i.ju, align 2
  %i.jv = zext i16 %.0.copyload.i.i2.i.i to i32
  %i.jw = zext i16 %.0.copyload.i.i.i.i241 to i32
  %i.jx = shl nuw i32 %i.jw, 16
  %i.jy = or disjoint i32 %i.jx, %i.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %i.jz = icmp eq i32 %i.jy, -201198591
  br i1 %i.jz, label %bb.db, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ka = call ptr @__cxa_allocate_exception(i64 72) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.87, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.cw unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.thread

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.ka, ptr noundef nonnull align 8 %30, ptr noundef nonnull @.str.11, i32 noundef 270)
          to label %bb.cx unwind label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  invoke void @__cxa_throw(ptr nonnull %i.ka, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #29
          to label %bb.fx unwind label %bb.cz

bb.cy:                                            ; preds = %bb.ct, %bb.cs
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.thread: ; preds = %bb.cv
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx, %bb.cw
  %.078 = phi i1 [ false, %bb.cx ], [ true, %bb.cw ] ; 2 uses
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ke = load ptr, ptr %30, align 8, !tbaa !27   ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %bb.cz
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !17
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.ki) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br i1 %.078, label %bb.da, label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br i1 %.078, label %bb.da, label %bb.fv

bb.da:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246
  %.pn147389 = phi { ptr, i32 } [ %i.kc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.thread ], [ %i.kd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ], [ %i.kd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244 ]
  call void @__cxa_free_exception(ptr %i.ka) #27
  br label %bb.fv

bb.db:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.f, i8 0, i64 6, i1 false)
  %i.kj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.f, i64 noundef 6)
          to label %.noexc250 unwind label %bb.dg ; 0 uses

.noexc250:                                        ; preds = %bb.db
  %i.kk = load ptr, ptr %2, align 8, !tbaa !19
  %i.kl = getelementptr i8, ptr %i.kk, i64 -24
  %i.km = load i64, ptr %i.kl, align 8
  %i.kn = getelementptr inbounds i8, ptr %2, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !44
  %i.kq = and i32 %i.kp, 2
  %.not.i247 = icmp eq i32 %i.kq, 0
  br i1 %.not.i247, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %.noexc250
  invoke fastcc void @_ZL19serialize_throw_eofv()
          to label %.noexc251 unwind label %bb.dg

.noexc251:                                        ; preds = %bb.dc
  unreachable

bb.dd:                                            ; preds = %.noexc250
  %.0.copyload.i.i.i.i248 = load i16, ptr %i.f, align 2
  %i.kr = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.0.copyload.i.i3.i.i = load i16, ptr %i.kr, align 2
  %51 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.0.copyload.i.i5.i.i = load i16, ptr %51, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %52 = icmp eq i16 %.0.copyload.i.i.i.i248, 28432
  %i.ks = icmp eq i16 %.0.copyload.i.i3.i.i, 23554
  %or.cond = and i1 %52, %i.ks
  %i.kt = icmp eq i16 %.0.copyload.i.i5.i.i, -7425
  %or.cond417 = select i1 %or.cond, i1 %i.kt, i1 false
  br i1 %or.cond417, label %bb.dj, label %_ZNK4core8vector3dIsEeqERKS1_.exit.thread

_ZNK4core8vector3dIsEeqERKS1_.exit.thread:        ; preds = %bb.dd
  %i.ku = call ptr @__cxa_allocate_exception(i64 72) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.88, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.de unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.thread

bb.de:                                            ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit.thread
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.ku, ptr noundef nonnull align 8 %32, ptr noundef nonnull @.str.11, i32 noundef 271)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %bb.de
  invoke void @__cxa_throw(ptr nonnull %i.ku, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #29
          to label %bb.fx unwind label %bb.dh

bb.dg:                                            ; preds = %bb.dc, %bb.db
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.thread: ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit.thread
  %i.kw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %bb.di

bb.dh:                                            ; preds = %bb.df, %bb.de
  %.076 = phi i1 [ false, %bb.df ], [ true, %bb.de ] ; 2 uses
  %i.kx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ky = load ptr, ptr %32, align 8, !tbaa !27   ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.la = icmp eq ptr %i.ky, %i.kz
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %bb.dh
  %i.lb = load i64, ptr %i.kz, align 8, !tbaa !17
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lc) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br i1 %.076, label %bb.di, label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br i1 %.076, label %bb.di, label %bb.fv

bb.di:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  %.pn145392 = phi { ptr, i32 } [ %i.kw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.thread ], [ %i.kx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %i.kx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252 ]
  call void @__cxa_free_exception(ptr %i.ku) #27
  br label %bb.fv

bb.dj:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i64 0, ptr %i.e, align 8
  %i.ld = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.e, i64 noundef 8)
          to label %.noexc259 unwind label %bb.dp ; 0 uses

.noexc259:                                        ; preds = %bb.dj
  %i.le = load ptr, ptr %2, align 8, !tbaa !19
  %i.lf = getelementptr i8, ptr %i.le, i64 -24
  %i.lg = load i64, ptr %i.lf, align 8
  %i.lh = getelementptr inbounds i8, ptr %2, i64 %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  %i.lj = load i32, ptr %i.li, align 8, !tbaa !44
  %i.lk = and i32 %i.lj, 2
  %.not.i255 = icmp eq i32 %i.lk, 0
  br i1 %.not.i255, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.noexc259
  invoke fastcc void @_ZL19serialize_throw_eofv()
          to label %.noexc260 unwind label %bb.dp

.noexc260:                                        ; preds = %bb.dk
  unreachable

bb.dl:                                            ; preds = %.noexc259
  %.0.copyload.i.i.i.i256 = load i32, ptr %i.e, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.0.copyload.i.i2.i.i257 = load i32, ptr %i.ll, align 4
  %i.lm = zext i32 %.0.copyload.i.i2.i.i257 to i64
  %i.ln = zext i32 %.0.copyload.i.i.i.i256 to i64
  %i.lo = shl nuw i64 %i.ln, 32
  %i.lp = or disjoint i64 %i.lo, %i.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.lq = icmp eq i64 %i.lp, -9221401711078014976
  br i1 %i.lq, label %bb.ds, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.lr = call ptr @__cxa_allocate_exception(i64 72) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.89, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.dn unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.thread

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.lr, ptr noundef nonnull align 8 %34, ptr noundef nonnull @.str.11, i32 noundef 272)
          to label %bb.do unwind label %bb.dq

bb.do:                                            ; preds = %bb.dn
  invoke void @__cxa_throw(ptr nonnull %i.lr, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #29
          to label %bb.fx unwind label %bb.dq

bb.dp:                                            ; preds = %bb.dk, %bb.dj
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.thread: ; preds = %bb.dm
  %i.lt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do, %bb.dn
  %.074 = phi i1 [ false, %bb.do ], [ true, %bb.dn ] ; 2 uses
  %i.lu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lv = load ptr, ptr %34, align 8, !tbaa !27   ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.lx = icmp eq ptr %i.lv, %i.lw
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %bb.dq
  %i.ly = load i64, ptr %i.lw, align 8, !tbaa !17
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.lz) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br i1 %.074, label %bb.dr, label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br i1 %.074, label %bb.dr, label %bb.fv

bb.dr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263
  %.pn143395 = phi { ptr, i32 } [ %i.lt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.thread ], [ %i.lu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263 ], [ %i.lu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261 ]
  call void @__cxa_free_exception(ptr %i.lr) #27
  br label %bb.fv

bb.ds:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, i8 0, i64 12, i1 false)
  %i.ma = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.d, i64 noundef 12)
          to label %.noexc268 unwind label %bb.dx ; 0 uses

.noexc268:                                        ; preds = %bb.ds
  %i.mb = load ptr, ptr %2, align 8, !tbaa !19
  %i.mc = getelementptr i8, ptr %i.mb, i64 -24
  %i.md = load i64, ptr %i.mc, align 8
  %i.me = getelementptr inbounds i8, ptr %2, i64 %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !44
  %i.mh = and i32 %i.mg, 2
  %.not.i264 = icmp eq i32 %i.mh, 0
  br i1 %.not.i264, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %.noexc268
  invoke fastcc void @_ZL19serialize_throw_eofv()
          to label %.noexc269 unwind label %bb.dx

.noexc269:                                        ; preds = %bb.dt
  unreachable

bb.du:                                            ; preds = %.noexc268
  %.0.copyload.i.i.i.i265 = load i32, ptr %i.d, align 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.0.copyload.i.i3.i.i266 = load i32, ptr %i.mi, align 4
  %i.mj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.0.copyload.i.i4.i.i = load i32, ptr %i.mj, align 4
  %i.mk = zext i32 %.0.copyload.i.i3.i.i266 to i64
  %i.ml = zext i32 %.0.copyload.i.i.i.i265 to i64
  %i.mm = shl nuw i64 %i.ml, 32
  %i.mn = or disjoint i64 %i.mm, %i.mk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %or.cond418 = icmp eq i64 %i.mn, 8142226647931183360
  %i.mo = icmp eq i32 %.0.copyload.i.i4.i.i, 1601196305
  %or.cond419 = and i1 %i.mo, %or.cond418
  br i1 %or.cond419, label %bb.ea, label %_ZNK4core8vector3dIiEeqERKS1_.exit.thread

_ZNK4core8vector3dIiEeqERKS1_.exit.thread:        ; preds = %bb.du
  %i.mp = call ptr @__cxa_allocate_exception(i64 72) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.90, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.dv unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.thread

bb.dv:                                            ; preds = %_ZNK4core8vector3dIiEeqERKS1_.exit.thread
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.mp, ptr noundef nonnull align 8 %36, ptr noundef nonnull @.str.11, i32 noundef 273)
          to label %bb.dw unwind label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  invoke void @__cxa_throw(ptr nonnull %i.mp, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #29
          to label %bb.fx unwind label %bb.dy

bb.dx:                                            ; preds = %bb.dt, %bb.ds
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.thread: ; preds = %_ZNK4core8vector3dIiEeqERKS1_.exit.thread
  %i.mr = landingpad { ptr, i32 }
          cleanup
end_hunk_1
