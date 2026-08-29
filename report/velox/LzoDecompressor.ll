Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/LzoDecompressor?download=true
inline.NumInlined: 244
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.folly::c_array" = type { [20 x i64] }
%"struct.folly::c_array.2" = type { [100 x i16] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.0 = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::allocator" = type { i8 }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_ = comdat any

$_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZN5folly13to_ascii_sizeILm10EEEmm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm = comdat any

$_ZN8facebook5velox4dwio6common10ParseErrorD0Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE = comdat any

$_ZTIN8facebook5velox4dwio6common10ParseErrorE = comdat any

$_ZTSN8facebook5velox4dwio6common10ParseErrorE = comdat any

$_ZTVN8facebook5velox4dwio6common10ParseErrorE = comdat any

@_ZTIN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE, ptr @_ZTIN8facebook5velox4dwio6common10ParseErrorE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE = internal constant [77 x i8] c"N8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE\00", align 1
@_ZTIN8facebook5velox4dwio6common10ParseErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8facebook5velox4dwio6common10ParseErrorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN8facebook5velox4dwio6common10ParseErrorE = linkonce_odr constant [42 x i8] c"N8facebook5velox4dwio6common10ParseErrorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str = private unnamed_addr constant [21 x i8] c"Invalid LZO command \00", align 1
@_ZN8facebook5velox6common11compressionL12DEC_32_TABLEE = internal unnamed_addr constant [8 x i32] [i32 4, i32 1, i32 2, i32 1, i32 4, i32 4, i32 4, i32 4], align 16
@_ZN8facebook5velox6common11compressionL12DEC_64_TABLEE = internal unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 0, i32 1, i32 2, i32 3], align 16
@.str.1 = private unnamed_addr constant [28 x i8] c"MalformedInputException at \00", align 1
@_ZTVN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZN5folly6detail15to_ascii_powersILm10EmE4dataE = external local_unnamed_addr global %"struct.folly::c_array", align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE = external local_unnamed_addr global %"struct.folly::c_array.2", align 2
@_ZTVN8facebook5velox4dwio6common10ParseErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN8facebook5velox4dwio6common10ParseErrorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN8facebook5velox4dwio6common10ParseErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"MalformedInputException \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" at \00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN8facebook5velox6common11compression13lzoDecompressEPKcS4_PcS5_(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.bx, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %3, i64 -8 ; 5 uses
  %i.e = icmp ult ptr %0, %1
  br i1 %i.e, label %.preheader356.lr.ph, label %._crit_edge

.preheader356.lr.ph:                              ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %1, i64 -8
  %i.g = trunc i64 %i.b to i32
  %i.h = mul i32 %i.g, 255                        ; 3 uses
  %i.i = add i32 %i.h, -224
  %i.j = add i32 %i.h, -248
  %i.k = add i32 %i.h, -240
  %i.l = add i64 %i.a, -8
  br label %.preheader356.outer

bb.c:                                             ; preds = %bb.bn
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  %i.n = ptrtoint ptr %.14 to i64
  %i.o = ptrtoint ptr %0 to i64
  %i.p = sub i64 %i.n, %i.o
  invoke fastcc void @_ZN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionC2El(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef %i.p)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.m) #16
  br label %bb.bw

.preheader356:                                    ; preds = %bb.bq, %bb.bv
  %.1213452 = phi ptr [ %i.nd, %bb.bv ], [ %i.mz, %bb.bq ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.1213452, i64 1 ; 3 uses
  %i.s = load i8, ptr %.1213452, align 1, !tbaa !8 ; 2 uses
  %i.t = icmp eq i8 %i.s, 17
  br i1 %i.t, label %bb.br, label %.loopexit929.a

.loopexit929.a:                                   ; preds = %.preheader356, %.preheader356.outer
  %.1213452.lcssa = phi ptr [ %.1213452.ph, %.preheader356.outer ], [ %.1213452, %.preheader356 ] ; 7 uses
  %.0244451.lcssa = phi i32 [ %.0244451.ph, %.preheader356.outer ], [ 0, %.preheader356 ] ; 2 uses
  %.0246450.lcssa = phi i1 [ %.0246450.ph, %.preheader356.outer ], [ true, %.preheader356 ]
  %.lcssa876.a = phi ptr [ %i.mw, %.preheader356.outer ], [ %i.r, %.preheader356 ] ; 22 uses
  %.lcssa865 = phi i8 [ %i.mx, %.preheader356.outer ], [ %i.s, %.preheader356 ] ; 4 uses
  %.lcssa = zext i8 %.lcssa865 to i32             ; 14 uses
  %.1213452521.lcssa = ptrtoaddr ptr %.1213452.lcssa to i64 ; 6 uses
  %.1249449526.lcssa = ptrtoaddr ptr %.1249449.ph to i64 ; 13 uses
  %i.u = and i32 %.lcssa, 240                     ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.u

bb.f:                                             ; preds = %.loopexit929.a
  %i.w = icmp eq i32 %.0244451.lcssa, 0
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq i8 %.lcssa865, 0
  br i1 %i.x, label %.preheader347, label %bb.i

.preheader347:                                    ; preds = %bb.g
  %i.y = icmp ult ptr %.lcssa876.a, %1
  br i1 %i.y, label %.lr.ph445.preheader, label %.critedge

.lr.ph445.preheader:                              ; preds = %.preheader347
  %i.z = trunc i64 %.1213452521.lcssa to i32
  %.neg569 = mul i32 %i.z, -255
  %i.aa = add i32 %.neg569, %i.k
  %scevgep530 = getelementptr i8, ptr %.1213452.lcssa, i64 %i.b
  %i.ab = sub i64 0, %.1213452521.lcssa
  %scevgep531 = getelementptr i8, ptr %scevgep530, i64 %i.ab ; 2 uses
  br label %.lr.ph445

.lr.ph445:                                        ; preds = %.lr.ph445.preheader, %bb.h
  %.2214444 = phi ptr [ %i.ac, %bb.h ], [ %.lcssa876.a, %.lr.ph445.preheader ] ; 2 uses
  %.0223443 = phi i32 [ %i.af, %bb.h ], [ 15, %.lr.ph445.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.2214444, i64 1 ; 3 uses
  %i.ad = load i8, ptr %.2214444, align 1, !tbaa !8 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %.critedge.split.loop.exit438

bb.h:                                             ; preds = %.lr.ph445
  %i.af = add i32 %.0223443, 255
  %exitcond532.not = icmp eq ptr %i.ac, %scevgep531
  br i1 %exitcond532.not, label %.critedge, label %.lr.ph445, !llvm.loop !9

.critedge.split.loop.exit438:                     ; preds = %.lr.ph445
  %i.ag = zext i8 %i.ad to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %.preheader347, %.critedge.split.loop.exit438
  %.0223.lcssa = phi i32 [ %.0223443, %.critedge.split.loop.exit438 ], [ 15, %.preheader347 ], [ %i.aa, %bb.h ]
  %.1222 = phi i32 [ %i.ag, %.critedge.split.loop.exit438 ], [ 0, %.preheader347 ], [ 0, %bb.h ]
  %.3215 = phi ptr [ %i.ac, %.critedge.split.loop.exit438 ], [ %.lcssa876.a, %.preheader347 ], [ %scevgep531, %bb.h ]
  %i.ah = add i32 %.1222, %.0223.lcssa
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.g
  %.1224 = phi i32 [ %i.ah, %.critedge ], [ %.lcssa, %bb.g ]
  %.4216 = phi ptr [ %.3215, %.critedge ], [ %.lcssa876.a, %bb.g ]
  %i.ai = add i32 %.1224, 3
  br label %.thread331

bb.j:                                             ; preds = %bb.f
  %i.aj = icmp ult i32 %.0244451.lcssa, 4
  %.not291 = icmp ult ptr %.lcssa876.a, %1        ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  br i1 %.not291, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  %i.al = ptrtoint ptr %.lcssa876.a to i64
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.al, %i.am
  invoke fastcc void @_ZN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionC2El(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 noundef %i.an)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTIN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ak) #16
  br label %bb.bw

bb.o:                                             ; preds = %bb.k
  %i.ap = lshr i32 %.lcssa, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.1213452.lcssa, i64 2
  %i.ar = load i8, ptr %.lcssa876.a, align 1, !tbaa !8
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 2
  %i.au = or disjoint i32 %i.at, %i.ap
  %i.av = or disjoint i32 %i.au, 2048
  %i.aw = and i32 %.lcssa, 3
  br label %.thread

bb.p:                                             ; preds = %bb.j
  br i1 %.not291, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  %i.ay = ptrtoint ptr %.lcssa876.a to i64
  %i.az = ptrtoint ptr %0 to i64
  %i.ba = sub i64 %i.ay, %i.az
  invoke fastcc void @_ZN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionC2El(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 noundef %i.ba)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTIN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bb = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ax) #16
  br label %bb.bw

bb.t:                                             ; preds = %bb.p
  %i.bc = lshr i32 %.lcssa, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.1213452.lcssa, i64 2
  %i.be = load i8, ptr %.lcssa876.a, align 1, !tbaa !8
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 2
  %i.bh = or disjoint i32 %i.bg, %i.bc
  %i.bi = and i32 %.lcssa, 3
  br label %.thread

bb.u:                                             ; preds = %.loopexit929.a
  br i1 %.0246450.lcssa, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bj = add nsw i32 %.lcssa, -17
  br label %.thread331

bb.w:                                             ; preds = %bb.u
  %i.bk = icmp eq i32 %i.u, 16
  br i1 %i.bk, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bl = and i32 %.lcssa, 7                      ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.preheader354, label %bb.z

.preheader354:                                    ; preds = %bb.x
  %i.bn = icmp ult ptr %.lcssa876.a, %1
  br i1 %i.bn, label %.lr.ph420.preheader, label %.critedge2

.lr.ph420.preheader:                              ; preds = %.preheader354
  %i.bo = trunc i64 %.1213452521.lcssa to i32
  %.neg568 = mul i32 %i.bo, -255
  %i.bp = add i32 %.neg568, %i.j
  %scevgep523 = getelementptr i8, ptr %.1213452.lcssa, i64 %i.b
  %i.bq = sub i64 0, %.1213452521.lcssa
  %scevgep524 = getelementptr i8, ptr %scevgep523, i64 %i.bq ; 2 uses
  br label %.lr.ph420

.lr.ph420:                                        ; preds = %.lr.ph420.preheader, %bb.y
  %.5419 = phi ptr [ %i.br, %bb.y ], [ %.lcssa876.a, %.lr.ph420.preheader ] ; 2 uses
  %.0228418 = phi i32 [ %i.bu, %bb.y ], [ 7, %.lr.ph420.preheader ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.5419, i64 1 ; 3 uses
  %i.bs = load i8, ptr %.5419, align 1, !tbaa !8  ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.y, label %.critedge2.split.loop.exit413

bb.y:                                             ; preds = %.lr.ph420
  %i.bu = add nuw nsw i32 %.0228418, 255
  %exitcond525.not = icmp eq ptr %i.br, %scevgep524
  br i1 %exitcond525.not, label %.critedge2, label %.lr.ph420, !llvm.loop !11

.critedge2.split.loop.exit413:                    ; preds = %.lr.ph420
  %i.bv = zext i8 %i.bs to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.y, %.preheader354, %.critedge2.split.loop.exit413
  %.0228.lcssa = phi i32 [ %.0228418, %.critedge2.split.loop.exit413 ], [ 7, %.preheader354 ], [ %i.bp, %bb.y ]
  %.1220 = phi i32 [ %i.bv, %.critedge2.split.loop.exit413 ], [ 0, %.preheader354 ], [ 0, %bb.y ]
  %.6 = phi ptr [ %i.br, %.critedge2.split.loop.exit413 ], [ %.lcssa876.a, %.preheader354 ], [ %scevgep524, %bb.y ]
  %i.bw = add nuw nsw i32 %.1220, %.0228.lcssa
  br label %bb.z

bb.z:                                             ; preds = %.critedge2, %bb.x
  %.1229 = phi i32 [ %i.bw, %.critedge2 ], [ %i.bl, %bb.x ]
  %.7 = phi ptr [ %.6, %.critedge2 ], [ %.lcssa876.a, %bb.x ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.7, i64 2 ; 2 uses
  %i.by = icmp ugt ptr %i.bx, %1
  br i1 %i.by, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.bz = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  %i.ca = ptrtoint ptr %.7 to i64
  %i.cb = ptrtoint ptr %0 to i64
  %i.cc = sub i64 %i.ca, %i.cb
  invoke fastcc void @_ZN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionC2El(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 noundef %i.cc)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @__cxa_throw(ptr nonnull %i.bz, ptr nonnull @_ZTIN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cd = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bz) #16
  br label %bb.bw
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6common11compression13lzoDecompressEPKcS4_PcS5_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304
  %.pn.pn307 = phi { ptr, i32 } [ %i.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302 ], [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304 ], [ %.pn.pn307.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.dx) #16
  br label %bb.bw

bb.ay:                                            ; preds = %bb.al, %bb.ad
  %.4232.in = phi i32 [ %.3231, %bb.al ], [ %.1229, %bb.ad ]
  %.1227 = phi i32 [ %i.dh, %bb.al ], [ %i.cj, %bb.ad ]
  %.2225.in = phi i32 [ %i.dg, %bb.al ], [ %i.cf, %bb.ad ]
  %.11 = phi ptr [ %i.cy, %bb.al ], [ %i.bx, %bb.ad ] ; 2 uses
  %.2225 = and i32 %.2225.in, 3                   ; 2 uses
  %.4232 = add nsw i32 %.4232.in, 2               ; 2 uses
  %.not292 = icmp eq i32 %.4232, 0
  br i1 %.not292, label %.thread331, label %.thread

.thread:                                          ; preds = %bb.ar, %bb.t, %bb.o, %bb.ay
  %.11326 = phi ptr [ %.11, %bb.ay ], [ %i.dr, %bb.ar ], [ %i.bd, %bb.t ], [ %i.aq, %bb.o ] ; 14 uses
  %.2225324 = phi i32 [ %.2225, %bb.ay ], [ %i.dw, %bb.ar ], [ %i.bi, %bb.t ], [ %i.aw, %bb.o ] ; 13 uses
  %.1227323 = phi i32 [ %.1227, %bb.ay ], [ %i.dv, %bb.ar ], [ %i.bh, %bb.t ], [ %i.av, %bb.o ] ; 3 uses
  %.4232322 = phi i32 [ %.4232, %bb.ay ], [ %i.do, %bb.ar ], [ 2, %bb.t ], [ 3, %bb.o ] ; 3 uses
  %i.ew = add nuw nsw i32 %.1227323, 1
  %i.ex = zext nneg i32 %i.ew to i64              ; 3 uses
  %i.ey = sub nsw i64 0, %i.ex
  %i.ez = getelementptr inbounds i8, ptr %.1249449.ph, i64 %i.ey ; 13 uses
  %i.fa = icmp ult ptr %i.ez, %2
  br i1 %i.fa, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.thread
  %i.fb = sext i32 %.4232322 to i64               ; 6 uses
  %i.fc = getelementptr inbounds i8, ptr %.1249449.ph, i64 %i.fb ; 18 uses
  %i.fd = icmp ugt ptr %i.fc, %3
  br i1 %i.fd, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az, %.thread
  %i.fe = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  %i.ff = ptrtoint ptr %.11326 to i64
  %i.fg = ptrtoint ptr %0 to i64
  %i.fh = sub i64 %i.ff, %i.fg
  invoke fastcc void @_ZN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionC2El(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i64 noundef %i.fh)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void @__cxa_throw(ptr nonnull %i.fe, ptr nonnull @_ZTIN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.fi = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.fe) #16
  br label %bb.bw

bb.bd:                                            ; preds = %bb.az
  %i.fj = icmp ugt ptr %.1249449.ph, %i.d
  br i1 %i.fj, label %.preheader348, label %bb.be

.preheader348:                                    ; preds = %bb.bd
  %i.fk = icmp sgt i32 %.4232322, 0
  br i1 %i.fk, label %iter.check730, label %.thread331

iter.check730:                                    ; preds = %.preheader348
  %i.fl = add i64 %.1249449526.lcssa, %i.fb
  %i.fm = add i64 %.1249449526.lcssa, 1
  %umax711 = tail call i64 @llvm.umax.i64(i64 %i.fl, i64 %i.fm)
  %i.fn = sub i64 %umax711, %.1249449526.lcssa    ; 7 uses
  %min.iters.check712 = icmp ult i64 %i.fn, 8
  %diff.check710 = icmp ult i32 %.1227323, 127
  %or.cond858.a = or i1 %min.iters.check712, %diff.check710
  br i1 %or.cond858.a, label %.lr.ph437.preheader, label %vector.main.loop.iter.check713

vector.main.loop.iter.check713:                   ; preds = %iter.check730
  %min.iters.check714 = icmp ult i64 %i.fn, 128
  br i1 %min.iters.check714, label %vec.epilog.ph734, label %vector.ph715

vector.ph715:                                     ; preds = %vector.main.loop.iter.check713
  %i.fo = and i64 %i.fn, 120
  %n.vec716 = and i64 %i.fn, -128                 ; 5 uses
  %i.fp = getelementptr i8, ptr %i.ez, i64 %n.vec716
  %i.fq = getelementptr i8, ptr %.1249449.ph, i64 %n.vec716
  br label %vector.body717

vector.body717:                                   ; preds = %vector.body717, %vector.ph715
  %index718 = phi i64 [ 0, %vector.ph715 ], [ %index.next725, %vector.body717 ] ; 3 uses
  %next.gep719 = getelementptr i8, ptr %i.ez, i64 %index718 ; 4 uses
  %next.gep720 = getelementptr i8, ptr %.1249449.ph, i64 %index718 ; 4 uses
  %i.fr = getelementptr i8, ptr %next.gep719, i64 32
  %i.fs = getelementptr i8, ptr %next.gep719, i64 64
  %i.ft = getelementptr i8, ptr %next.gep719, i64 96
  %wide.load721 = load <32 x i8>, ptr %next.gep719, align 1, !tbaa !8
  %wide.load722 = load <32 x i8>, ptr %i.fr, align 1, !tbaa !8
  %wide.load723 = load <32 x i8>, ptr %i.fs, align 1, !tbaa !8
  %wide.load724 = load <32 x i8>, ptr %i.ft, align 1, !tbaa !8
  %i.fu = getelementptr i8, ptr %next.gep720, i64 32
  %i.fv = getelementptr i8, ptr %next.gep720, i64 64
  %i.fw = getelementptr i8, ptr %next.gep720, i64 96
  store <32 x i8> %wide.load721, ptr %next.gep720, align 1, !tbaa !8
  store <32 x i8> %wide.load722, ptr %i.fu, align 1, !tbaa !8
  store <32 x i8> %wide.load723, ptr %i.fv, align 1, !tbaa !8
  store <32 x i8> %wide.load724, ptr %i.fw, align 1, !tbaa !8
  %index.next725 = add nuw i64 %index718, 128     ; 2 uses
  %i.fx = icmp eq i64 %index.next725, %n.vec716
  br i1 %i.fx, label %middle.block726, label %vector.body717, !llvm.loop !25

middle.block726:                                  ; preds = %vector.body717
  %cmp.n727 = icmp eq i64 %i.fn, %n.vec716
  br i1 %cmp.n727, label %.thread331, label %vec.epilog.iter.check732

vec.epilog.iter.check732:                         ; preds = %middle.block726
  %min.epilog.iters.check733 = icmp eq i64 %i.fo, 0
  br i1 %min.epilog.iters.check733, label %.lr.ph437.preheader, label %vec.epilog.ph734, !prof !28

vec.epilog.ph734:                                 ; preds = %vector.main.loop.iter.check713, %vec.epilog.iter.check732
  %vec.epilog.resume.val728 = phi i64 [ %n.vec716, %vec.epilog.iter.check732 ], [ 0, %vector.main.loop.iter.check713 ]
  %n.vec735 = and i64 %i.fn, -8                   ; 4 uses
  %i.fy = getelementptr i8, ptr %i.ez, i64 %n.vec735
  %i.fz = getelementptr i8, ptr %.1249449.ph, i64 %n.vec735
  br label %vec.epilog.vector.body736

vec.epilog.vector.body736:                        ; preds = %vec.epilog.vector.body736, %vec.epilog.ph734
  %index737 = phi i64 [ %vec.epilog.resume.val728, %vec.epilog.ph734 ], [ %index.next741, %vec.epilog.vector.body736 ] ; 3 uses
  %next.gep738 = getelementptr i8, ptr %i.ez, i64 %index737
  %next.gep739 = getelementptr i8, ptr %.1249449.ph, i64 %index737
  %wide.load740 = load <8 x i8>, ptr %next.gep738, align 1, !tbaa !8
  store <8 x i8> %wide.load740, ptr %next.gep739, align 1, !tbaa !8
  %index.next741 = add nuw i64 %index737, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next741, %n.vec735
  br i1 %i.ga, label %vec.epilog.middle.block742, label %vec.epilog.vector.body736, !llvm.loop !29

vec.epilog.middle.block742:                       ; preds = %vec.epilog.vector.body736
  %cmp.n743 = icmp eq i64 %i.fn, %n.vec735
  br i1 %cmp.n743, label %.thread331, label %.lr.ph437.preheader

.lr.ph437.preheader:                              ; preds = %iter.check730, %vec.epilog.iter.check732, %vec.epilog.middle.block742
  %.0208436.ph = phi ptr [ %i.ez, %iter.check730 ], [ %i.fp, %vec.epilog.iter.check732 ], [ %i.fy, %vec.epilog.middle.block742 ]
  %.2250435.ph = phi ptr [ %.1249449.ph, %iter.check730 ], [ %i.fq, %vec.epilog.iter.check732 ], [ %i.fz, %vec.epilog.middle.block742 ]
  br label %.lr.ph437

.lr.ph437:                                        ; preds = %.lr.ph437.preheader, %.lr.ph437
  %.0208436 = phi ptr [ %i.gb, %.lr.ph437 ], [ %.0208436.ph, %.lr.ph437.preheader ] ; 2 uses
  %.2250435 = phi ptr [ %i.gd, %.lr.ph437 ], [ %.2250435.ph, %.lr.ph437.preheader ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0208436, i64 1
  %i.gc = load i8, ptr %.0208436, align 1, !tbaa !8
  %i.gd = getelementptr inbounds nuw i8, ptr %.2250435, i64 1 ; 2 uses
  store i8 %i.gc, ptr %.2250435, align 1, !tbaa !8
  %i.ge = icmp ult ptr %i.gd, %i.fc
  br i1 %i.ge, label %.lr.ph437, label %.thread331, !llvm.loop !30

bb.be:                                            ; preds = %bb.bd
  %i.gf = icmp samesign ult i32 %.1227323, 7
  br i1 %i.gf, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr @_ZN8facebook5velox6common11compressionL12DEC_32_TABLEE, i64 %i.ex
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !31
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr @_ZN8facebook5velox6common11compressionL12DEC_64_TABLEE, i64 %i.ex
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !31
  %i.gk = load i8, ptr %i.ez, align 1, !tbaa !8
  store i8 %i.gk, ptr %.1249449.ph, align 1, !tbaa !8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !8
  %i.gn = getelementptr inbounds nuw i8, ptr %.1249449.ph, i64 1
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !8
  %i.go = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !8
  %i.gq = getelementptr inbounds nuw i8, ptr %.1249449.ph, i64 2
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ez, i64 3
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !8
  %i.gt = getelementptr inbounds nuw i8, ptr %.1249449.ph, i64 3
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !8
  %i.gu = getelementptr inbounds nuw i8, ptr %.1249449.ph, i64 4
  %i.gv = sext i32 %i.gh to i64
  %i.gw = getelementptr inbounds i8, ptr %i.ez, i64 %i.gv ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !31
  store i32 %i.gx, ptr %i.gu, align 4, !tbaa !31
  %i.gy = sext i32 %i.gj to i64
  %i.gz = sub nsw i64 0, %i.gy
  %i.ha = getelementptr inbounds i8, ptr %i.gw, i64 %i.gz
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.hb = load i64, ptr %i.ez, align 8, !tbaa !32
  store i64 %i.hb, ptr %.1249449.ph, align 8, !tbaa !32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.1 = phi ptr [ %i.ha, %bb.bf ], [ %i.hc, %bb.bg ] ; 14 uses
  %.1747 = ptrtoaddr ptr %.1 to i64               ; 2 uses
  %.3251 = getelementptr inbounds nuw i8, ptr %.1249449.ph, i64 8 ; 14 uses
  %.not293 = icmp ult ptr %i.fc, %i.d
  br i1 %.not293, label %.preheader349, label %.preheader353

.preheader353:                                    ; preds = %bb.bh
  %i.hd = icmp ult ptr %.3251, %i.d
  br i1 %i.hd, label %iter.check842, label %.preheader351

iter.check842:                                    ; preds = %.preheader353
  %6 = add i64 %.1249449526.lcssa, 16
  %umax823 = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %6)
  %7 = add i64 %umax823, -9
  %i.he = sub i64 %7, %.1249449526.lcssa          ; 3 uses
  %i.hf = lshr i64 %i.he, 3
  %i.hg = add nuw nsw i64 %i.hf, 1                ; 5 uses
  %min.iters.check824 = icmp ult i64 %i.he, 24
  br i1 %min.iters.check824, label %.lr.ph426.preheader, label %vector.memcheck821

vector.memcheck821:                               ; preds = %iter.check842
  %i.hh = sub i64 %.1249449526.lcssa, %.1747
  %i.hi = add i64 %i.hh, 7
  %diff.check822 = icmp ult i64 %i.hi, 127
  br i1 %diff.check822, label %.lr.ph426.preheader, label %vector.main.loop.iter.check825

vector.main.loop.iter.check825:                   ; preds = %vector.memcheck821
  %min.iters.check826 = icmp ult i64 %i.he, 120
  br i1 %min.iters.check826, label %vec.epilog.ph846, label %vector.ph827

vector.ph827:                                     ; preds = %vector.main.loop.iter.check825
  %i.hj = and i64 %i.hg, 12
  %n.vec828 = and i64 %i.hg, 4611686018427387888  ; 4 uses
  %i.hk = shl i64 %n.vec828, 3                    ; 2 uses
  %i.hl = getelementptr i8, ptr %.1, i64 %i.hk    ; 2 uses
  %i.hm = getelementptr i8, ptr %.3251, i64 %i.hk ; 2 uses
  br label %vector.body829

vector.body829:                                   ; preds = %vector.body829, %vector.ph827
  %index830 = phi i64 [ 0, %vector.ph827 ], [ %index.next837, %vector.body829 ] ; 2 uses
  %i.hn = shl i64 %index830, 3                    ; 2 uses
  %next.gep831.a = getelementptr i8, ptr %.1, i64 %i.hn ; 4 uses
  %next.gep832 = getelementptr i8, ptr %.3251, i64 %i.hn ; 4 uses
  %i.ho = getelementptr i8, ptr %next.gep831.a, i64 32
  %i.hp = getelementptr i8, ptr %next.gep831.a, i64 64
  %i.hq = getelementptr i8, ptr %next.gep831.a, i64 96
  %wide.load833.a = load <4 x i64>, ptr %next.gep831.a, align 8, !tbaa !32
  %wide.load834.a = load <4 x i64>, ptr %i.ho, align 8, !tbaa !32
  %wide.load835.a = load <4 x i64>, ptr %i.hp, align 8, !tbaa !32
  %wide.load836 = load <4 x i64>, ptr %i.hq, align 8, !tbaa !32
  %i.hr = getelementptr i8, ptr %next.gep832, i64 32
  %i.hs = getelementptr i8, ptr %next.gep832, i64 64
  %i.ht = getelementptr i8, ptr %next.gep832, i64 96
  store <4 x i64> %wide.load833.a, ptr %next.gep832, align 8, !tbaa !32
  store <4 x i64> %wide.load834.a, ptr %i.hr, align 8, !tbaa !32
  store <4 x i64> %wide.load835.a, ptr %i.hs, align 8, !tbaa !32
  store <4 x i64> %wide.load836, ptr %i.ht, align 8, !tbaa !32
  %index.next837 = add nuw i64 %index830, 16      ; 2 uses
  %i.hu = icmp eq i64 %index.next837, %n.vec828
  br i1 %i.hu, label %middle.block838, label %vector.body829, !llvm.loop !33

middle.block838:                                  ; preds = %vector.body829
  %cmp.n839 = icmp eq i64 %i.hg, %n.vec828
  br i1 %cmp.n839, label %.preheader351, label %vec.epilog.iter.check844

vec.epilog.iter.check844:                         ; preds = %middle.block838
  %min.epilog.iters.check845 = icmp eq i64 %i.hj, 0
  br i1 %min.epilog.iters.check845, label %.lr.ph426.preheader, label %vec.epilog.ph846, !prof !34

vec.epilog.ph846:                                 ; preds = %vector.main.loop.iter.check825, %vec.epilog.iter.check844
  %vec.epilog.resume.val840 = phi i64 [ %n.vec828, %vec.epilog.iter.check844 ], [ 0, %vector.main.loop.iter.check825 ]
  %n.vec847 = and i64 %i.hg, 4611686018427387900  ; 3 uses
  %i.hv = shl i64 %n.vec847, 3                    ; 2 uses
  %i.hw = getelementptr i8, ptr %.1, i64 %i.hv    ; 2 uses
  %i.hx = getelementptr i8, ptr %.3251, i64 %i.hv ; 2 uses
  br label %vec.epilog.vector.body848

vec.epilog.vector.body848:                        ; preds = %vec.epilog.vector.body848, %vec.epilog.ph846
  %index849 = phi i64 [ %vec.epilog.resume.val840, %vec.epilog.ph846 ], [ %index.next853, %vec.epilog.vector.body848 ] ; 2 uses
  %i.hy = shl i64 %index849, 3                    ; 2 uses
  %next.gep850.a = getelementptr i8, ptr %.1, i64 %i.hy
  %next.gep851 = getelementptr i8, ptr %.3251, i64 %i.hy
  %wide.load852 = load <4 x i64>, ptr %next.gep850.a, align 8, !tbaa !32
  store <4 x i64> %wide.load852, ptr %next.gep851, align 8, !tbaa !32
  %index.next853 = add nuw i64 %index849, 4       ; 2 uses
  %i.hz = icmp eq i64 %index.next853, %n.vec847
  br i1 %i.hz, label %vec.epilog.middle.block854, label %vec.epilog.vector.body848, !llvm.loop !35

vec.epilog.middle.block854:                       ; preds = %vec.epilog.vector.body848
  %cmp.n855 = icmp eq i64 %i.hg, %n.vec847
  br i1 %cmp.n855, label %.preheader351, label %.lr.ph426.preheader

.lr.ph426.preheader:                              ; preds = %vector.memcheck821, %iter.check842, %vec.epilog.iter.check844, %vec.epilog.middle.block854
  %.2425.ph = phi ptr [ %.1, %iter.check842 ], [ %.1, %vector.memcheck821 ], [ %i.hl, %vec.epilog.iter.check844 ], [ %i.hw, %vec.epilog.middle.block854 ]
  %.4252424.ph = phi ptr [ %.3251, %iter.check842 ], [ %.3251, %vector.memcheck821 ], [ %i.hm, %vec.epilog.iter.check844 ], [ %i.hx, %vec.epilog.middle.block854 ]
  br label %.lr.ph426

.preheader349:                                    ; preds = %bb.bh
  %i.ia = icmp sgt i32 %.4232322, 8
  br i1 %i.ia, label %iter.check768, label %.thread331

iter.check768:                                    ; preds = %.preheader349
  %i.ib = add i64 %.1249449526.lcssa, %i.fb
  %i.ic = add i64 %.1249449526.lcssa, 16
  %umax749 = tail call i64 @llvm.umax.i64(i64 %i.ib, i64 %i.ic)
  %i.id = add i64 %umax749, -9
  %i.ie = sub i64 %i.id, %.1249449526.lcssa       ; 3 uses
  %i.if = lshr i64 %i.ie, 3
  %i.ig = add nuw nsw i64 %i.if, 1                ; 5 uses
  %min.iters.check750 = icmp ult i64 %i.ie, 24
  br i1 %min.iters.check750, label %.lr.ph434.preheader, label %vector.memcheck746

vector.memcheck746:                               ; preds = %iter.check768
  %i.ih = sub i64 %.1249449526.lcssa, %.1747
  %i.ii = add i64 %i.ih, 7
  %diff.check748 = icmp ult i64 %i.ii, 127
  br i1 %diff.check748, label %.lr.ph434.preheader, label %vector.main.loop.iter.check751

vector.main.loop.iter.check751:                   ; preds = %vector.memcheck746
  %min.iters.check752 = icmp ult i64 %i.ie, 120
  br i1 %min.iters.check752, label %vec.epilog.ph772, label %vector.ph753

vector.ph753:                                     ; preds = %vector.main.loop.iter.check751
  %i.ij = and i64 %i.ig, 12
  %n.vec754 = and i64 %i.ig, 4611686018427387888  ; 4 uses
  %i.ik = shl i64 %n.vec754, 3                    ; 2 uses
  %i.il = getelementptr i8, ptr %.1, i64 %i.ik
  %i.im = getelementptr i8, ptr %.3251, i64 %i.ik
  br label %vector.body755

vector.body755:                                   ; preds = %vector.body755, %vector.ph753
  %index756 = phi i64 [ 0, %vector.ph753 ], [ %index.next763, %vector.body755 ] ; 2 uses
  %i.in = shl i64 %index756, 3                    ; 2 uses
  %next.gep757 = getelementptr i8, ptr %.1, i64 %i.in ; 4 uses
  %next.gep758 = getelementptr i8, ptr %.3251, i64 %i.in ; 4 uses
  %i.io = getelementptr i8, ptr %next.gep757, i64 32
  %i.ip = getelementptr i8, ptr %next.gep757, i64 64
  %i.iq = getelementptr i8, ptr %next.gep757, i64 96
  %wide.load759 = load <4 x i64>, ptr %next.gep757, align 8, !tbaa !32
  %wide.load760 = load <4 x i64>, ptr %i.io, align 8, !tbaa !32
  %wide.load761 = load <4 x i64>, ptr %i.ip, align 8, !tbaa !32
  %wide.load762 = load <4 x i64>, ptr %i.iq, align 8, !tbaa !32
  %i.ir = getelementptr i8, ptr %next.gep758, i64 32
  %i.is = getelementptr i8, ptr %next.gep758, i64 64
  %i.it = getelementptr i8, ptr %next.gep758, i64 96
  store <4 x i64> %wide.load759, ptr %next.gep758, align 8, !tbaa !32
  store <4 x i64> %wide.load760, ptr %i.ir, align 8, !tbaa !32
  store <4 x i64> %wide.load761, ptr %i.is, align 8, !tbaa !32
  store <4 x i64> %wide.load762, ptr %i.it, align 8, !tbaa !32
  %index.next763 = add nuw i64 %index756, 16      ; 2 uses
  %i.iu = icmp eq i64 %index.next763, %n.vec754
  br i1 %i.iu, label %middle.block764, label %vector.body755, !llvm.loop !36

middle.block764:                                  ; preds = %vector.body755
  %cmp.n765 = icmp eq i64 %i.ig, %n.vec754
  br i1 %cmp.n765, label %.thread331, label %vec.epilog.iter.check770

vec.epilog.iter.check770:                         ; preds = %middle.block764
  %min.epilog.iters.check771 = icmp eq i64 %i.ij, 0
  br i1 %min.epilog.iters.check771, label %.lr.ph434.preheader, label %vec.epilog.ph772, !prof !34

vec.epilog.ph772:                                 ; preds = %vector.main.loop.iter.check751, %vec.epilog.iter.check770
  %vec.epilog.resume.val766 = phi i64 [ %n.vec754, %vec.epilog.iter.check770 ], [ 0, %vector.main.loop.iter.check751 ]
  %n.vec773 = and i64 %i.ig, 4611686018427387900  ; 3 uses
  %i.iv = shl i64 %n.vec773, 3                    ; 2 uses
  %i.iw = getelementptr i8, ptr %.1, i64 %i.iv
  %i.ix = getelementptr i8, ptr %.3251, i64 %i.iv
  br label %vec.epilog.vector.body774

vec.epilog.vector.body774:                        ; preds = %vec.epilog.vector.body774, %vec.epilog.ph772
  %index775 = phi i64 [ %vec.epilog.resume.val766, %vec.epilog.ph772 ], [ %index.next779, %vec.epilog.vector.body774 ] ; 2 uses
  %i.iy = shl i64 %index775, 3                    ; 2 uses
  %next.gep776 = getelementptr i8, ptr %.1, i64 %i.iy
  %next.gep777 = getelementptr i8, ptr %.3251, i64 %i.iy
  %wide.load778 = load <4 x i64>, ptr %next.gep776, align 8, !tbaa !32
  store <4 x i64> %wide.load778, ptr %next.gep777, align 8, !tbaa !32
  %index.next779 = add nuw i64 %index775, 4       ; 2 uses
  %i.iz = icmp eq i64 %index.next779, %n.vec773
  br i1 %i.iz, label %vec.epilog.middle.block780, label %vec.epilog.vector.body774, !llvm.loop !37

vec.epilog.middle.block780:                       ; preds = %vec.epilog.vector.body774
  %cmp.n781 = icmp eq i64 %i.ig, %n.vec773
  br i1 %cmp.n781, label %.thread331, label %.lr.ph434.preheader

.lr.ph434.preheader:                              ; preds = %vector.memcheck746, %iter.check768, %vec.epilog.iter.check770, %vec.epilog.middle.block780
  %.4433.ph = phi ptr [ %.1, %iter.check768 ], [ %.1, %vector.memcheck746 ], [ %i.il, %vec.epilog.iter.check770 ], [ %i.iw, %vec.epilog.middle.block780 ]
  %.6254432.ph = phi ptr [ %.3251, %iter.check768 ], [ %.3251, %vector.memcheck746 ], [ %i.im, %vec.epilog.iter.check770 ], [ %i.ix, %vec.epilog.middle.block780 ]
  br label %.lr.ph434

.preheader351:                                    ; preds = %.lr.ph426, %middle.block838, %vec.epilog.middle.block854, %.preheader353
  %.4252.lcssa = phi ptr [ %.3251, %.preheader353 ], [ %i.hx, %vec.epilog.middle.block854 ], [ %i.hm, %middle.block838 ], [ %i.kc, %.lr.ph426 ] ; 8 uses
  %.2.lcssa = phi ptr [ %.1, %.preheader353 ], [ %i.hw, %vec.epilog.middle.block854 ], [ %i.hl, %middle.block838 ], [ %i.kb, %.lr.ph426 ] ; 6 uses
  %i.ja = icmp ult ptr %.4252.lcssa, %i.fc
  br i1 %i.ja, label %iter.check805, label %.thread331

iter.check805:                                    ; preds = %.preheader351
  %.2.lcssa785 = ptrtoaddr ptr %.2.lcssa to i64
  %.4252.lcssa527 = ptrtoaddr ptr %.4252.lcssa to i64 ; 2 uses
  %i.jb = add i64 %.1249449526.lcssa, %i.fb
  %i.jc = sub i64 %i.jb, %.4252.lcssa527          ; 8 uses
  %scevgep528 = getelementptr i8, ptr %.4252.lcssa, i64 %i.jc
  %min.iters.check787 = icmp ult i64 %i.jc, 8
  %i.jd = sub i64 %.2.lcssa785, %.4252.lcssa527
  %diff.check786 = icmp ugt i64 %i.jd, -128
  %or.cond859.a = select i1 %min.iters.check787, i1 true, i1 %diff.check786
  br i1 %or.cond859.a, label %.lr.ph431.preheader, label %vector.main.loop.iter.check788

vector.main.loop.iter.check788:                   ; preds = %iter.check805
  %min.iters.check789 = icmp ult i64 %i.jc, 128
  br i1 %min.iters.check789, label %vec.epilog.ph809, label %vector.ph790

vector.ph790:                                     ; preds = %vector.main.loop.iter.check788
  %i.je = and i64 %i.jc, 120
  %n.vec791 = and i64 %i.jc, -128                 ; 5 uses
  %i.jf = getelementptr i8, ptr %.2.lcssa, i64 %n.vec791
end_hunk_1
