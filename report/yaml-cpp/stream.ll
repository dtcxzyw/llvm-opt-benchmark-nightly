Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/stream?download=true
inline.NumInlined: 349
inline.NumDeleted: 185
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.YAML::Mark" = type { i32, i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.2 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.2 = type { i64, [8 x i8] }
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

$_ZN4YAML9BadStreamC2Ev = comdat any

$_ZNSt5dequeIcSaIcEED2Ev = comdat any

$_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm = comdat any

$__clang_call_terminate = comdat any

$_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm = comdat any

$_ZN4YAML9ExceptionC2ERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN4YAML9Exception10build_whatERKNS_4MarkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJcEEEvDpOT_ = comdat any

$_ZNSt5dequeIcSaIcEE17_M_reallocate_mapEmb = comdat any

@_ZTIN4YAML9BadStreamE = external constant ptr
@_ZN4YAMLL17s_introFinalStateE = internal unnamed_addr constant [19 x i8] c"\00\00\00\00\01\01\00\00\00\00\01\01\00\00\00\00\00\01\01", align 16
@_ZN4YAMLL18s_introTransitionsE = internal unnamed_addr constant [18 x [8 x i32]] [[8 x i32] [i32 1, i32 17, i32 17, i32 15, i32 6, i32 7, i32 12, i32 17], [8 x i32] [i32 2, i32 17, i32 17, i32 17, i32 17, i32 17, i32 5, i32 17], [8 x i32] [i32 4, i32 17, i32 17, i32 17, i32 3, i32 17, i32 17, i32 17], [8 x i32] [i32 17, i32 17, i32 17, i32 17, i32 17, i32 4, i32 17, i32 17], [8 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], [8 x i32] [i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5], [8 x i32] [i32 17, i32 17, i32 17, i32 17, i32 17, i32 5, i32 17, i32 17], [8 x i32] [i32 17, i32 17, i32 17, i32 17, i32 8, i32 17, i32 17, i32 17], [8 x i32] [i32 9, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10], [8 x i32] [i32 11, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10], [8 x i32] [i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10], [8 x i32] [i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11], [8 x i32] [i32 13, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17], [8 x i32] [i32 14, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10], [8 x i32] [i32 11, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10], [8 x i32] [i32 17, i32 16, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17], [8 x i32] [i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17], [8 x i32] [i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17, i32 17]], align 16
@_ZN4YAMLL17s_introUngetCountE = internal unnamed_addr constant [18 x [8 x i8]] [[8 x i8] c"\00\01\01\00\00\00\00\01", [8 x i8] c"\00\02\02\02\02\02\02\02", [8 x i8] c"\03\03\03\03\00\03\03\03", [8 x i8] c"\04\04\04\04\04\00\04\04", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\02\02\02\02\02\00\02\02", [8 x i8] c"\02\02\02\02\00\02\02\02", [8 x i8] c"\00\01\01\01\01\01\01\01", [8 x i8] c"\00\02\02\02\02\02\02\02", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\00\02\02\02\02\02\02\02", [8 x i8] c"\00\03\03\03\03\03\03\03", [8 x i8] c"\04\04\04\04\04\04\04\04", [8 x i8] c"\02\00\02\02\02\02\02\02", [8 x i8] c"\03\03\00\03\03\03\03\03", [8 x i8] c"\01\01\01\01\01\01\01\01"], align 16
@_ZTINSt8ios_base7failureB5cxx11E = external constant ptr
@.str = private unnamed_addr constant [11 x i8] c"bad stream\00", align 1
@_ZTVN4YAML9BadStreamE = external constant { [5 x ptr] }, align 8
@_ZTVN4YAML9ExceptionE = external constant { [5 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"yaml-cpp: error at line \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c", column \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@switch.table._ZN4YAML6StreamC2ERSi = private unnamed_addr constant [8 x i8] c"\04\02\00\00\00\00\01\03", align 4

@_ZN4YAML6StreamC1ERSi = unnamed_addr alias void (ptr, ptr), ptr @_ZN4YAML6StreamC2ERSi
@_ZN4YAML6StreamD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4YAML6StreamD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML6StreamC2ERSi(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 25), (32, 112)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 6 uses
  store ptr %1, ptr %0, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.b, i8 0, i64 17, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseIcSaIcEE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #18
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  store ptr %i.f, ptr %i.e, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %1, align 8, !tbaa !14
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %1, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %i.n = and i32 %i.m, 5
  %.not42 = icmp eq i32 %i.n, 0
  br i1 %.not42, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call ptr @__cxa_allocate_exception(i64 64) #19 ; 3 uses
  invoke void @_ZN4YAML9BadStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.o)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN4YAML9BadStreamE, ptr nonnull @_ZN4YAML9BadStreamD1Ev) #20
          to label %bb.ad unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.g:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.o) #19
  br label %bb.ac

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %i.s = phi i64 [ 0, %bb.h ], [ %i.ay, %.loopexit ] ; 2 uses
  %.02657 = phi i32 [ 0, %bb.h ], [ %.2, %.loopexit ] ; 2 uses
  %i.t = invoke noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.j unwind label %.loopexit45 ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %1, align 8, !tbaa !14
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !24   ; 2 uses
  %i.aa = trunc i32 %i.z to i1
  %i.ab = and i32 %i.z, 6
  %or.cond.not = icmp eq i32 %i.ab, 4
  %or.cond = or i1 %or.cond.not, %i.aa
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 64) #19 ; 3 uses
  invoke void @_ZN4YAML9BadStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ac)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTIN4YAML9BadStreamE, ptr nonnull @_ZN4YAML9BadStreamD1Ev) #20
          to label %bb.ad unwind label %.loopexit.split-lp46

.loopexit45:                                      ; preds = %bb.i
  %lpad.loopexit47 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp46:                             ; preds = %bb.l
  %lpad.loopexit.split-lp48 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.m:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ac) #19
  br label %bb.ab

bb.n:                                             ; preds = %bb.j
  %i.ae = add i32 %.02657, 1                      ; 2 uses
  %i.af = sext i32 %.02657 to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.af
  store i32 %i.t, ptr %i.ag, align 4, !tbaa !25
  switch i32 %i.t, label %bb.t [
    i32 -1, label %_ZN4YAML15IntroCharTypeOfEi.exit
    i32 0, label %.fold.split.i
    i32 187, label %bb.o
    i32 191, label %bb.p
    i32 239, label %bb.q
    i32 254, label %bb.r
    i32 255, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  br label %_ZN4YAML15IntroCharTypeOfEi.exit

bb.p:                                             ; preds = %bb.n
  br label %_ZN4YAML15IntroCharTypeOfEi.exit

bb.q:                                             ; preds = %bb.n
  br label %_ZN4YAML15IntroCharTypeOfEi.exit

bb.r:                                             ; preds = %bb.n
  br label %_ZN4YAML15IntroCharTypeOfEi.exit

bb.s:                                             ; preds = %bb.n
  br label %_ZN4YAML15IntroCharTypeOfEi.exit

bb.t:                                             ; preds = %bb.n
  %i.ah = add i32 %i.t, -1
  %or.cond.i = icmp ult i32 %i.ah, 254
  %..i = select i1 %or.cond.i, i64 6, i64 7
  br label %_ZN4YAML15IntroCharTypeOfEi.exit

.fold.split.i:                                    ; preds = %bb.n
  br label %_ZN4YAML15IntroCharTypeOfEi.exit

_ZN4YAML15IntroCharTypeOfEi.exit:                 ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %.fold.split.i
  %.0.i = phi i64 [ 5, %bb.s ], [ %..i, %bb.t ], [ 4, %bb.r ], [ 7, %bb.n ], [ 1, %bb.o ], [ 2, %bb.p ], [ 3, %bb.q ], [ 0, %.fold.split.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr @_ZN4YAMLL18s_introTransitionsE, i64 %i.s
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.0.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !71 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_ZN4YAMLL17s_introUngetCountE, i64 %i.s
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !26  ; 2 uses
  %i.ao = icmp sgt i8 %i.an, 0
  br i1 %i.ao, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %_ZN4YAML15IntroCharTypeOfEi.exit
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.x, i32 noundef 0)
          to label %.preheader.preheader unwind label %.loopexit.split-lp

.preheader.preheader:                             ; preds = %bb.u
  %i.ap = zext nneg i8 %i.an to i32
  %i.aq = sext i32 %i.ae to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.w
  %indvars.iv = phi i64 [ %i.aq, %.preheader.preheader ], [ %indvars.iv.next, %bb.w ]
  %.056 = phi i32 [ %i.ap, %.preheader.preheader ], [ %i.av, %bb.w ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !25 ; 2 uses
  %.not = icmp eq i32 %i.as, -1
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.preheader
  %i.at = trunc i32 %i.as to i8
  %i.au = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7putbackEc(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef signext %i.at)
          to label %bb.w unwind label %.loopexit44 ; 0 uses

.loopexit44:                                      ; preds = %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab
end_hunk_0
begin_hunk_1_@_ZNK4YAML6Stream12_ReadAheadToEm:bb.a
  %.pre24 = ptrtoint ptr %.pre9 to i64
  %.pre26 = ptrtoint ptr %.pre11 to i64
  %.pre28 = ptrtoint ptr %.pre13 to i64
  %.pre30 = ptrtoint ptr %.pre15 to i64
  %.pre32 = sub i64 %.pre24, %.pre26
  %.pre34 = add i64 %.pre32, %.pre28
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %_ZNSt5dequeIcSaIcEE9push_backEOc.exit
  %.pre-phi35 = phi i64 [ %.pre34, %_ZNSt5dequeIcSaIcEE9push_backEOc.exit ], [ %i.al, %bb.b ]
  %.pre-phi31 = phi i64 [ %.pre30, %_ZNSt5dequeIcSaIcEE9push_backEOc.exit ], [ %i.aj, %bb.b ]
  %.pre-phi23 = phi i64 [ %.pre22, %_ZNSt5dequeIcSaIcEE9push_backEOc.exit ], [ %i.y, %bb.b ]
  %i.bt = phi ptr [ %.pre, %_ZNSt5dequeIcSaIcEE9push_backEOc.exit ], [ %i.t, %bb.b ]
  %i.bu = icmp ne ptr %i.bt, null
  %.neg.i.i2 = sext i1 %i.bu to i64
  %i.bv = add nsw i64 %.pre-phi23, %.neg.i.i2
  %i.bw = shl nsw i64 %i.bv, 9
  %i.bx = add i64 %.pre-phi35, %i.bw
  %i.by = sub i64 %i.bx, %.pre-phi31
  %i.bz = icmp ugt i64 %i.by, %1
  ret i1 %i.bz
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4YAML6Stream12StreamInUtf8Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call noundef zeroext i8 @_ZNK4YAML6Stream11GetNextByteEv(ptr noundef nonnull align 8 dereferenceable(136) %0) ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !29, !align !60 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i8 %i.b, ptr %i.a, align 1, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -1
  %.not.i.i = icmp eq ptr %i.l, %i.o
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.b, ptr %i.l, align 1, !tbaa !26
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.q, ptr %i.k, align 8, !tbaa !63
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit

_ZNSt5dequeIcSaIcEE9push_backEOc.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIcSaIcEE9push_backEOc.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4YAML6Stream13StreamInUtf16Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46
  %i.c = tail call noundef zeroext i8 @_ZNK4YAML6Stream11GetNextByteEv(ptr noundef nonnull align 8 dereferenceable(136) %0) ; 2 uses
  %i.d = tail call noundef zeroext i8 @_ZNK4YAML6Stream11GetNextByteEv(ptr noundef nonnull align 8 dereferenceable(136) %0) ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !29, !align !60 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !24
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.fr = freeze i32 %i.b
  %.not = icmp eq i32 %.fr, 2                     ; 3 uses
  %.sroa.speculated44 = select i1 %.not, i8 %i.c, i8 %i.d ; 2 uses
  %i.m = and i8 %.sroa.speculated44, -4           ; 2 uses
  %or.cond = icmp eq i8 %i.m, -36
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm(ptr noundef nonnull align 8 dereferenceable(80) %i.n, i64 noundef 65533)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.o = zext i8 %.sroa.speculated44 to i64
  %i.p = shl nuw nsw i64 %i.o, 8
  %.sroa.speculated38 = select i1 %.not, i8 %i.d, i8 %i.c
  %i.q = zext i8 %.sroa.speculated38 to i64
  %i.r = or disjoint i64 %i.p, %i.q               ; 3 uses
  %or.cond3 = icmp eq i8 %i.m, -40
  br i1 %or.cond3, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br i1 %.not, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.f
  %.028.us = phi i64 [ %i.ag, %bb.f ], [ %i.r, %.preheader ] ; 2 uses
  %i.t = tail call noundef zeroext i8 @_ZNK4YAML6Stream11GetNextByteEv(ptr noundef nonnull align 8 dereferenceable(136) %0) ; 2 uses
  %i.u = tail call noundef zeroext i8 @_ZNK4YAML6Stream11GetNextByteEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  %i.v = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !29, !align !60 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !24
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.split.us

bb.e:                                             ; preds = %.preheader.split.us
  %i.ad = zext i8 %i.t to i64
  %i.ae = shl nuw nsw i64 %i.ad, 8
  %i.af = zext i8 %i.u to i64
  %i.ag = or disjoint i64 %i.ae, %i.af            ; 2 uses
  %i.ah = add i8 %i.t, 32                         ; 2 uses
  %or.cond5.us = icmp ult i8 %i.ah, -4
  br i1 %or.cond5.us, label %bb.f, label %.thread53

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm(ptr noundef nonnull align 8 dereferenceable(80) %i.s, i64 noundef 65533)
  %or.cond7.us = icmp ult i8 %i.ah, -8
  br i1 %or.cond7.us, label %.thread, label %.preheader.split.us, !llvm.loop !93

.preheader.split:                                 ; preds = %.preheader, %bb.h
  %.028 = phi i64 [ %i.av, %bb.h ], [ %i.r, %.preheader ] ; 2 uses
  %i.ai = tail call noundef zeroext i8 @_ZNK4YAML6Stream11GetNextByteEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
  %i.aj = tail call noundef zeroext i8 @_ZNK4YAML6Stream11GetNextByteEv(ptr noundef nonnull align 8 dereferenceable(136) %0) ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !29, !align !60 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !14
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !24
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.g, label %.split.us

.split.us:                                        ; preds = %.preheader.split, %.preheader.split.us
  tail call void @_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm(ptr noundef nonnull align 8 dereferenceable(80) %i.s, i64 noundef 65533)
  br label %bb.j

bb.g:                                             ; preds = %.preheader.split
  %i.as = zext i8 %i.aj to i64
  %i.at = shl nuw nsw i64 %i.as, 8
  %i.au = zext i8 %i.ai to i64
  %i.av = or disjoint i64 %i.at, %i.au            ; 2 uses
  %i.aw = add i8 %i.aj, 32                        ; 2 uses
  %or.cond5 = icmp ult i8 %i.aw, -4
  br i1 %or.cond5, label %bb.h, label %.thread53

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm(ptr noundef nonnull align 8 dereferenceable(80) %i.s, i64 noundef 65533)
  %or.cond7 = icmp ult i8 %i.aw, -8
  br i1 %or.cond7, label %.thread, label %.preheader.split, !llvm.loop !93

.thread:                                          ; preds = %bb.h, %bb.f
  %.us-phi60 = phi i64 [ %.028.us, %bb.f ], [ %.028, %bb.h ]
  tail call void @_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm(ptr noundef nonnull align 8 dereferenceable(80) %i.s, i64 noundef %.us-phi60)
  br label %bb.j

.thread53:                                        ; preds = %bb.g, %bb.e
  %.us-phi61 = phi i64 [ %i.ag, %bb.e ], [ %i.av, %bb.g ]
  %.us-phi62 = phi i64 [ %.028.us, %bb.e ], [ %.028, %bb.g ]
  %i.ax = shl nuw nsw i64 %.us-phi62, 10
  %i.ay = and i64 %i.ax, 1047552
  %i.az = and i64 %.us-phi61, 1023
  %i.ba = add nuw nsw i64 %i.ay, 65536
  %i.bb = or disjoint i64 %i.ba, %i.az
  br label %bb.i

bb.i:                                             ; preds = %.thread53, %bb.d
  %.2 = phi i64 [ %i.bb, %.thread53 ], [ %i.r, %bb.d ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm(ptr noundef nonnull align 8 dereferenceable(80) %i.bc, i64 noundef %.2)
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.a, %bb.i, %.split.us, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4YAML6Stream13StreamInUtf32Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46
  %i.c = tail call noundef zeroext i8 @_ZNK4YAML6Stream11GetNextByteEv(ptr noundef nonnull align 8 dereferenceable(136) %0) ; 2 uses
  %i.d = tail call noundef zeroext i8 @_ZNK4YAML6Stream11GetNextByteEv(ptr noundef nonnull align 8 dereferenceable(136) %0) ; 2 uses
  %i.e = tail call noundef zeroext i8 @_ZNK4YAML6Stream11GetNextByteEv(ptr noundef nonnull align 8 dereferenceable(136) %0) ; 2 uses
  %i.f = tail call noundef zeroext i8 @_ZNK4YAML6Stream11GetNextByteEv(ptr noundef nonnull align 8 dereferenceable(136) %0) ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !29, !align !60 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %i.o = icmp eq i32 %i.b, 4                      ; 4 uses
  %.sroa.speculated32 = select i1 %i.o, i8 %i.c, i8 %i.f
  %i.p = zext i8 %.sroa.speculated32 to i64
  %.sroa.speculated26 = select i1 %i.o, i8 %i.d, i8 %i.e
  %i.q = zext i8 %.sroa.speculated26 to i64
  %i.r = shl nuw nsw i64 %i.p, 16
  %i.s = shl nuw nsw i64 %i.q, 8
  %i.t = or disjoint i64 %i.r, %i.s
  %.sroa.speculated = select i1 %i.o, i8 %i.e, i8 %i.d
  %i.u = zext i8 %.sroa.speculated to i64
  %i.v = or disjoint i64 %i.t, %i.u
  %i.w = shl nuw nsw i64 %i.v, 8
  %.sroa.speculated29 = select i1 %i.o, i8 %i.f, i8 %i.c
  %i.x = zext i8 %.sroa.speculated29 to i64
  %i.y = or disjoint i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm(ptr noundef nonnull align 8 dereferenceable(80) %i.z, i64 noundef %i.y)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK4YAML6Stream11GetNextByteEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !96
  %.not = icmp ult i64 %i.b, %i.d
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !29, !align !60 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !103  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef %i.m, i64 noundef 2048)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetnEPcl.exit unwind label %bb.c, !inline_history !94 ; 2 uses

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetnEPcl.exit: ; preds = %bb.b
  store i64 %i.q, ptr %i.c, align 8, !tbaa !96
  store i64 0, ptr %i.a, align 8, !tbaa !95
  %i.r = load ptr, ptr %0, align 8, !tbaa !59, !nonnull !29, !align !60 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !24   ; 2 uses
  %i.y = and i32 %i.x, 5
  %.not15 = icmp eq i32 %i.y, 0
  br i1 %.not15, label %bb.l, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTINSt8ios_base7failureB5cxx11E ; 3 uses
  %i.aa = extractvalue { ptr, i32 } %i.z, 1
  %i.ab = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTINSt8ios_base7failureB5cxx11E) #19
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.ad = extractvalue { ptr, i32 } %i.z, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #19 ; 0 uses
  %i.af = tail call ptr @__cxa_allocate_exception(i64 64) #19 ; 3 uses
  invoke void @_ZN4YAML9BadStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN4YAML9BadStreamE, ptr nonnull @_ZN4YAML9BadStreamD1Ev) #20
          to label %bb.r unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #19
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.ag, %bb.f ]
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.q

bb.i:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetnEPcl.exit
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 64) #19 ; 3 uses
  invoke void @_ZN4YAML9BadStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ai)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN4YAML9BadStreamE, ptr nonnull @_ZN4YAML9BadStreamD1Ev) #20
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ai) #19
  br label %bb.n

bb.l:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetnEPcl.exit
  %.not14 = icmp eq i64 %i.q, 0
  br i1 %.not14, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %i.ak = or i32 %i.x, 2
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.v, i32 noundef %i.ak)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !96
  %i.al = icmp eq i64 %.pre, 0
  br i1 %i.al, label %bb.p, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.m
  %.pre17 = load i64, ptr %i.a, align 8, !tbaa !95
  br label %bb.o

bb.n:                                             ; preds = %bb.h, %bb.k, %bb.c
  %.merged = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %i.z, %bb.c ], [ %.pn, %bb.h ]
  resume { ptr, i32 } %.merged

bb.o:                                             ; preds = %._crit_edge, %bb.a
  %i.am = phi i64 [ %.pre17, %._crit_edge ], [ %i.b, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ao = add i64 %i.am, 1
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !95
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.am
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o
  %.111 = phi i8 [ %i.ar, %bb.o ], [ 0, %bb.m ]
  ret i8 %.111

bb.q:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #22
  unreachable

bb.r:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN4YAML21QueueUnicodeCodepointERSt5dequeIcSaIcEEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = icmp eq i64 %1, 4
  %spec.store.select = select i1 %i.k, i64 65533, i64 %1 ; 13 uses
  %i.l = icmp ult i64 %spec.store.select, 128
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.m = trunc nuw nsw i64 %spec.store.select to i8 ; 2 uses
  store i8 %i.m, ptr %i.a, align 1, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1
  %.not.i.i = icmp eq ptr %i.o, %i.r
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %i.m, ptr %i.o, align 1, !tbaa !26
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.n, align 8, !tbaa !63
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt5dequeIcSaIcEE16_M_push_back_auxIJcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br label %_ZNSt5dequeIcSaIcEE9push_backEOc.exit

_ZNSt5dequeIcSaIcEE9push_backEOc.exit:            ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.ab

bb.e:                                             ; preds = %bb.a
  %i.u = icmp ult i64 %spec.store.select, 2048
  br i1 %i.u, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.v = lshr i64 %spec.store.select, 6
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = or disjoint i8 %i.w, -64                 ; 2 uses
  store i8 %i.x, ptr %i.b, align 1, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -1
  %.not.i.i23 = icmp eq ptr %i.z, %i.ac
  br i1 %.not.i.i23, label %bb.h, label %bb.g
end_hunk_1
