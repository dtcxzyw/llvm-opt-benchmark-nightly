Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/LzoDecompressor?download=true
inline.NumInlined: 244
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0

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
  %.1213452 = phi ptr [ %i.nc, %bb.bv ], [ %i.my, %bb.bq ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.1213452, i64 1 ; 3 uses
  %i.s = load i8, ptr %.1213452, align 1, !tbaa !10 ; 2 uses
  %i.t = icmp eq i8 %i.s, 17
  br i1 %i.t, label %bb.br, label %.loopexit929

.loopexit929:                                     ; preds = %.preheader356, %.preheader356.outer
  %.1213452.lcssa = phi ptr [ %.1213452.ph, %.preheader356.outer ], [ %.1213452, %.preheader356 ] ; 7 uses
  %.0244451.lcssa = phi i32 [ %.0244451.ph, %.preheader356.outer ], [ 0, %.preheader356 ] ; 2 uses
  %.0246450.lcssa = phi i1 [ %.0246450.ph, %.preheader356.outer ], [ true, %.preheader356 ]
  %.lcssa876 = phi ptr [ %i.mv, %.preheader356.outer ], [ %i.r, %.preheader356 ] ; 22 uses
  %.lcssa865 = phi i8 [ %i.mw, %.preheader356.outer ], [ %i.s, %.preheader356 ] ; 4 uses
  %.lcssa = zext i8 %.lcssa865 to i32             ; 14 uses
  %.1213452521.lcssa = ptrtoaddr ptr %.1213452.lcssa to i64 ; 6 uses
  %.1249449526.lcssa = ptrtoaddr ptr %.1249449.ph to i64 ; 13 uses
  %i.u = and i32 %.lcssa, 240                     ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.u

bb.f:                                             ; preds = %.loopexit929
  %i.w = icmp eq i32 %.0244451.lcssa, 0
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq i8 %.lcssa865, 0
  br i1 %i.x, label %.preheader347, label %bb.i

.preheader347:                                    ; preds = %bb.g
  %i.y = icmp ult ptr %.lcssa876, %1
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
  %.2214444 = phi ptr [ %i.ac, %bb.h ], [ %.lcssa876, %.lr.ph445.preheader ] ; 2 uses
  %.0223443 = phi i32 [ %i.af, %bb.h ], [ 15, %.lr.ph445.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.2214444, i64 1 ; 3 uses
  %i.ad = load i8, ptr %.2214444, align 1, !tbaa !10 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %.critedge.split.loop.exit438

bb.h:                                             ; preds = %.lr.ph445
  %i.af = add i32 %.0223443, 255
  %exitcond532.not = icmp eq ptr %i.ac, %scevgep531
  br i1 %exitcond532.not, label %.critedge, label %.lr.ph445, !llvm.loop !28

.critedge.split.loop.exit438:                     ; preds = %.lr.ph445
  %i.ag = zext i8 %i.ad to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %.preheader347, %.critedge.split.loop.exit438
  %.0223.lcssa = phi i32 [ %.0223443, %.critedge.split.loop.exit438 ], [ 15, %.preheader347 ], [ %i.aa, %bb.h ]
  %.1222 = phi i32 [ %i.ag, %.critedge.split.loop.exit438 ], [ 0, %.preheader347 ], [ 0, %bb.h ]
  %.3215 = phi ptr [ %i.ac, %.critedge.split.loop.exit438 ], [ %.lcssa876, %.preheader347 ], [ %scevgep531, %bb.h ]
  %i.ah = add i32 %.1222, %.0223.lcssa
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.g
  %.1224 = phi i32 [ %i.ah, %.critedge ], [ %.lcssa, %bb.g ]
  %.4216 = phi ptr [ %.3215, %.critedge ], [ %.lcssa876, %bb.g ]
  %i.ai = add i32 %.1224, 3
  br label %.thread331

bb.j:                                             ; preds = %bb.f
  %i.aj = icmp ult i32 %.0244451.lcssa, 4
  %.not291 = icmp ult ptr %.lcssa876, %1          ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  br i1 %.not291, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  %i.al = ptrtoint ptr %.lcssa876 to i64
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
  %i.ar = load i8, ptr %.lcssa876, align 1, !tbaa !10
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 2
  %i.au = or disjoint i32 %i.at, %i.ap
  %i.av = or disjoint i32 %i.au, 2048
  %6 = and i32 %.lcssa, 3
  br label %.thread

bb.p:                                             ; preds = %bb.j
  br i1 %.not291, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  %i.ax = ptrtoint ptr %.lcssa876 to i64
  %i.ay = ptrtoint ptr %0 to i64
  %i.az = sub i64 %i.ax, %i.ay
  invoke fastcc void @_ZN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionC2El(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 noundef %i.az)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ba = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aw) #16
  br label %bb.bw

bb.t:                                             ; preds = %bb.p
  %i.bb = lshr i32 %.lcssa, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.1213452.lcssa, i64 2
  %i.bd = load i8, ptr %.lcssa876, align 1, !tbaa !10
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 2
  %i.bg = or disjoint i32 %i.bf, %i.bb
  %7 = and i32 %.lcssa, 3
  br label %.thread

bb.u:                                             ; preds = %.loopexit929
  br i1 %.0246450.lcssa, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bh = add nsw i32 %.lcssa, -17
  br label %.thread331

bb.w:                                             ; preds = %bb.u
  %i.bi = icmp eq i32 %i.u, 16
  br i1 %i.bi, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.bj = and i32 %.lcssa, 7                      ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %.preheader354, label %bb.z

.preheader354:                                    ; preds = %bb.x
  %i.bl = icmp ult ptr %.lcssa876, %1
  br i1 %i.bl, label %.lr.ph420.preheader, label %.critedge2

.lr.ph420.preheader:                              ; preds = %.preheader354
  %i.bm = trunc i64 %.1213452521.lcssa to i32
  %.neg568 = mul i32 %i.bm, -255
  %i.bn = add i32 %.neg568, %i.j
  %scevgep523 = getelementptr i8, ptr %.1213452.lcssa, i64 %i.b
  %i.bo = sub i64 0, %.1213452521.lcssa
  %scevgep524 = getelementptr i8, ptr %scevgep523, i64 %i.bo ; 2 uses
  br label %.lr.ph420

.lr.ph420:                                        ; preds = %.lr.ph420.preheader, %bb.y
  %.5419 = phi ptr [ %i.bp, %bb.y ], [ %.lcssa876, %.lr.ph420.preheader ] ; 2 uses
  %.0228418 = phi i32 [ %i.bs, %bb.y ], [ 7, %.lr.ph420.preheader ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.5419, i64 1 ; 3 uses
  %i.bq = load i8, ptr %.5419, align 1, !tbaa !10 ; 2 uses
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.y, label %.critedge2.split.loop.exit413

bb.y:                                             ; preds = %.lr.ph420
  %i.bs = add nuw nsw i32 %.0228418, 255
  %exitcond525.not = icmp eq ptr %i.bp, %scevgep524
  br i1 %exitcond525.not, label %.critedge2, label %.lr.ph420, !llvm.loop !29

.critedge2.split.loop.exit413:                    ; preds = %.lr.ph420
  %i.bt = zext i8 %i.bq to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.y, %.preheader354, %.critedge2.split.loop.exit413
  %.0228.lcssa = phi i32 [ %.0228418, %.critedge2.split.loop.exit413 ], [ 7, %.preheader354 ], [ %i.bn, %bb.y ]
  %.1220 = phi i32 [ %i.bt, %.critedge2.split.loop.exit413 ], [ 0, %.preheader354 ], [ 0, %bb.y ]
  %.6 = phi ptr [ %i.bp, %.critedge2.split.loop.exit413 ], [ %.lcssa876, %.preheader354 ], [ %scevgep524, %bb.y ]
  %i.bu = add nuw nsw i32 %.1220, %.0228.lcssa
  br label %bb.z

bb.z:                                             ; preds = %.critedge2, %bb.x
  %.1229 = phi i32 [ %i.bu, %.critedge2 ], [ %i.bj, %bb.x ]
  %.7 = phi ptr [ %.6, %.critedge2 ], [ %.lcssa876, %bb.x ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.7, i64 2 ; 2 uses
  %i.bw = icmp ugt ptr %i.bv, %1
  br i1 %i.bw, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.bx = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  %i.by = ptrtoint ptr %.7 to i64
  %i.bz = ptrtoint ptr %0 to i64
  %i.ca = sub i64 %i.by, %i.bz
  invoke fastcc void @_ZN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionC2El(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 noundef %i.ca)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTIN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cb = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bx) #16
  br label %bb.bw

bb.ad:                                            ; preds = %bb.z
  %i.cc = load i16, ptr %.7, align 2, !tbaa !13
  %i.cd = zext i16 %i.cc to i32                   ; 2 uses
  %i.ce = lshr i32 %i.cd, 2
  %i.cf = and i32 %.lcssa, 8
  %i.cg = icmp eq i32 %i.cf, 0
  %.0226 = select i1 %i.cg, i32 16383, i32 32767
  %i.ch = add nuw nsw i32 %.0226, %i.ce
  br label %bb.ay

bb.ae:                                            ; preds = %bb.w
  %i.ci = and i32 %.lcssa, 224
  %i.cj = icmp eq i32 %i.ci, 32
  br i1 %i.cj, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
  %i.ck = and i32 %.lcssa, 31                     ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.preheader355, label %bb.ah

.preheader355:                                    ; preds = %bb.af
  %i.cm = icmp ult ptr %.lcssa876, %1
  br i1 %i.cm, label %.lr.ph.preheader, label %.critedge4

.lr.ph.preheader:                                 ; preds = %.preheader355
  %i.cn = trunc i64 %.1213452521.lcssa to i32
  %.neg567 = mul i32 %i.cn, -255
  %i.co = add i32 %.neg567, %i.i
  %scevgep = getelementptr i8, ptr %.1213452.lcssa, i64 %i.b
  %i.cp = sub i64 0, %.1213452521.lcssa
  %scevgep522 = getelementptr i8, ptr %scevgep, i64 %i.cp ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ag
  %.8410 = phi ptr [ %i.cq, %bb.ag ], [ %.lcssa876, %.lr.ph.preheader ] ; 2 uses
  %.2230409 = phi i32 [ %i.ct, %bb.ag ], [ 31, %.lr.ph.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.8410, i64 1 ; 3 uses
  %i.cr = load i8, ptr %.8410, align 1, !tbaa !10 ; 2 uses
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.ag, label %.critedge4.split.loop.exit404

bb.ag:                                            ; preds = %.lr.ph
  %i.ct = add nuw nsw i32 %.2230409, 255
  %exitcond.not = icmp eq ptr %i.cq, %scevgep522
  br i1 %exitcond.not, label %.critedge4, label %.lr.ph, !llvm.loop !30

.critedge4.split.loop.exit404:                    ; preds = %.lr.ph
  %i.cu = zext i8 %i.cr to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.ag, %.preheader355, %.critedge4.split.loop.exit404
  %.2230.lcssa = phi i32 [ %.2230409, %.critedge4.split.loop.exit404 ], [ 31, %.preheader355 ], [ %i.co, %bb.ag ]
  %.1218 = phi i32 [ %i.cu, %.critedge4.split.loop.exit404 ], [ 0, %.preheader355 ], [ 0, %bb.ag ]
  %.9 = phi ptr [ %i.cq, %.critedge4.split.loop.exit404 ], [ %.lcssa876, %.preheader355 ], [ %scevgep522, %bb.ag ]
  %i.cv = add nuw nsw i32 %.1218, %.2230.lcssa
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge4, %bb.af
  %.3231 = phi i32 [ %i.cv, %.critedge4 ], [ %i.ck, %bb.af ]
  %.10 = phi ptr [ %.9, %.critedge4 ], [ %.lcssa876, %bb.af ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.10, i64 2 ; 2 uses
  %i.cx = icmp ugt ptr %i.cw, %1
  br i1 %i.cx, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.cy = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  %i.cz = ptrtoint ptr %.10 to i64
  %i.da = ptrtoint ptr %0 to i64
  %i.db = sub i64 %i.cz, %i.da
  invoke fastcc void @_ZN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionC2El(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i64 noundef %i.db)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTIN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.dc = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cy) #16
  br label %bb.bw

bb.al:                                            ; preds = %bb.ah
  %i.dd = load i16, ptr %.10, align 2, !tbaa !13
  %i.de = zext i16 %i.dd to i32                   ; 2 uses
  %i.df = lshr i32 %i.de, 2
  br label %bb.ay

bb.am:                                            ; preds = %bb.ae
  %.not286 = icmp ult i8 %.lcssa865, 64
  br i1 %.not286, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not289 = icmp ult ptr %.lcssa876, %1
  br i1 %.not289, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dg = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  %i.dh = ptrtoint ptr %.lcssa876 to i64
  %i.di = ptrtoint ptr %0 to i64
  %i.dj = sub i64 %i.dh, %i.di
  invoke fastcc void @_ZN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionC2El(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i64 noundef %i.dj)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call void @__cxa_throw(ptr nonnull %i.dg, ptr nonnull @_ZTIN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.dk = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.dg) #16
  br label %bb.bw

bb.ar:                                            ; preds = %bb.an
  %i.dl = lshr i32 %.lcssa, 5
  %i.dm = add nuw nsw i32 %i.dl, 1
  %i.dn = lshr i32 %.lcssa, 2
  %i.do = and i32 %i.dn, 7
  %i.dp = getelementptr inbounds nuw i8, ptr %.1213452.lcssa, i64 2
  %i.dq = load i8, ptr %.lcssa876, align 1, !tbaa !10
  %i.dr = zext i8 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 3
  %i.dt = or disjoint i32 %i.ds, %i.do
  %8 = and i32 %.lcssa, 3
  br label %.thread

bb.as:                                            ; preds = %bb.am
  %i.du = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  %i.dv = ptrtoint ptr %.lcssa876 to i64
  %i.dw = ptrtoint ptr %0 to i64
  %i.dx = xor i64 %i.dw, -1
  %i.dy = add i64 %i.dv, %i.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.dz = zext nneg i8 %.lcssa865 to i64
  invoke fastcc void @_ZN8facebook5velox6common11compressionL5toHexB5cxx11Em(ptr dead_on_unwind noalias writable align 8 %5, i64 noundef %i.dz)
          to label %bb.at unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304.thread

bb.at:                                            ; preds = %bb.as
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.au unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.au:                                            ; preds = %bb.at
  %.val = load ptr, ptr %4, align 8, !tbaa !19, !noalias !20
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val301 = load i64, ptr %i.ea, align 8, !tbaa !21, !noalias !20
  invoke fastcc void @_ZN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionC2ElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 noundef %i.dy, ptr %.val, i64 %.val301)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTIN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
          to label %bb.by unwind label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304.thread: ; preds = %bb.as
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.aw:                                            ; preds = %bb.au, %bb.av
  %.0209 = phi i1 [ false, %bb.av ], [ true, %bb.au ] ; 2 uses
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ed = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aw
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !10
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ei = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.at
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !10
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #18
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.er = load i64, ptr %i.ej, align 8, !tbaa !10
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.es) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br i1 %.0209, label %bb.ax, label %bb.bw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br i1 %.0209, label %bb.ax, label %bb.bw

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302.thread
  %.pn.pn307.ph = phi { ptr, i32 } [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302.thread ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304.thread ], [ %i.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304
  %.pn.pn307 = phi { ptr, i32 } [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302 ], [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304 ], [ %.pn.pn307.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.du) #16
  br label %bb.bw

bb.ay:                                            ; preds = %bb.al, %bb.ad
  %.4232.in = phi i32 [ %.3231, %bb.al ], [ %.1229, %bb.ad ]
  %.1227 = phi i32 [ %i.df, %bb.al ], [ %i.ch, %bb.ad ]
  %.2225.in = phi i32 [ %i.de, %bb.al ], [ %i.cd, %bb.ad ]
  %.11 = phi ptr [ %i.cw, %bb.al ], [ %i.bv, %bb.ad ] ; 2 uses
  %.2225 = and i32 %.2225.in, 3                   ; 2 uses
  %.4232 = add nsw i32 %.4232.in, 2               ; 2 uses
  %.not292 = icmp eq i32 %.4232, 0
  br i1 %.not292, label %.thread331, label %.thread

.thread:                                          ; preds = %bb.ar, %bb.t, %bb.o, %bb.ay
  %.11326 = phi ptr [ %.11, %bb.ay ], [ %i.dp, %bb.ar ], [ %i.bc, %bb.t ], [ %i.aq, %bb.o ] ; 14 uses
  %.2225324.a = phi i32 [ %.2225, %bb.ay ], [ %8, %bb.ar ], [ %7, %bb.t ], [ %6, %bb.o ] ; 13 uses
  %.1227323 = phi i32 [ %.1227, %bb.ay ], [ %i.dt, %bb.ar ], [ %i.bg, %bb.t ], [ %i.av, %bb.o ] ; 3 uses
  %.4232322 = phi i32 [ %.4232, %bb.ay ], [ %i.dm, %bb.ar ], [ 2, %bb.t ], [ 3, %bb.o ] ; 3 uses
  %i.et = add nuw nsw i32 %.1227323, 1
  %i.eu = zext nneg i32 %i.et to i64              ; 3 uses
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = getelementptr inbounds i8, ptr %.1249449.ph, i64 %i.ev ; 13 uses
  %i.ex = icmp ult ptr %i.ew, %2
  br i1 %i.ex, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.thread
  %i.ey = sext i32 %.4232322 to i64               ; 6 uses
  %i.ez = getelementptr inbounds i8, ptr %.1249449.ph, i64 %i.ey ; 18 uses
  %i.fa = icmp ugt ptr %i.ez, %3
  br i1 %i.fa, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az, %.thread
  %i.fb = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  %i.fc = ptrtoint ptr %.11326 to i64
  %i.fd = ptrtoint ptr %0 to i64
  %i.fe = sub i64 %i.fc, %i.fd
  invoke fastcc void @_ZN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionC2El(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i64 noundef %i.fe)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void @__cxa_throw(ptr nonnull %i.fb, ptr nonnull @_ZTIN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.ff = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.fb) #16
  br label %bb.bw

bb.bd:                                            ; preds = %bb.az
  %i.fg = icmp ugt ptr %.1249449.ph, %i.d
  br i1 %i.fg, label %.preheader348, label %bb.be

.preheader348:                                    ; preds = %bb.bd
  %i.fh = icmp sgt i32 %.4232322, 0
  br i1 %i.fh, label %iter.check730, label %.thread331

iter.check730:                                    ; preds = %.preheader348
  %i.fi = add i64 %.1249449526.lcssa, %i.ey
  %i.fj = add i64 %.1249449526.lcssa, 1
  %umax711 = tail call i64 @llvm.umax.i64(i64 %i.fi, i64 %i.fj)
  %i.fk = sub i64 %umax711, %.1249449526.lcssa    ; 7 uses
  %min.iters.check712 = icmp ult i64 %i.fk, 16
  %diff.check710 = icmp ult i32 %.1227323, 127
  %or.cond858 = or i1 %min.iters.check712, %diff.check710
  br i1 %or.cond858, label %.lr.ph437.preheader, label %vector.main.loop.iter.check713

vector.main.loop.iter.check713:                   ; preds = %iter.check730
  %min.iters.check714 = icmp ult i64 %i.fk, 128
  br i1 %min.iters.check714, label %vec.epilog.ph734, label %vector.ph715

vector.ph715:                                     ; preds = %vector.main.loop.iter.check713
  %i.fl = and i64 %i.fk, 112
  %n.vec716 = and i64 %i.fk, -128                 ; 5 uses
  %i.fm = getelementptr i8, ptr %i.ew, i64 %n.vec716
  %i.fn = getelementptr i8, ptr %.1249449.ph, i64 %n.vec716
  br label %vector.body717

vector.body717:                                   ; preds = %vector.body717, %vector.ph715
  %index718 = phi i64 [ 0, %vector.ph715 ], [ %index.next725, %vector.body717 ] ; 3 uses
  %next.gep719 = getelementptr i8, ptr %i.ew, i64 %index718 ; 4 uses
  %next.gep720 = getelementptr i8, ptr %.1249449.ph, i64 %index718 ; 4 uses
  %i.fo = getelementptr i8, ptr %next.gep719, i64 32
  %i.fp = getelementptr i8, ptr %next.gep719, i64 64
  %i.fq = getelementptr i8, ptr %next.gep719, i64 96
  %wide.load721 = load <32 x i8>, ptr %next.gep719, align 1, !tbaa !10
  %wide.load722 = load <32 x i8>, ptr %i.fo, align 1, !tbaa !10
  %wide.load723 = load <32 x i8>, ptr %i.fp, align 1, !tbaa !10
  %wide.load724 = load <32 x i8>, ptr %i.fq, align 1, !tbaa !10
  %i.fr = getelementptr i8, ptr %next.gep720, i64 32
  %i.fs = getelementptr i8, ptr %next.gep720, i64 64
  %i.ft = getelementptr i8, ptr %next.gep720, i64 96
  store <32 x i8> %wide.load721, ptr %next.gep720, align 1, !tbaa !10
  store <32 x i8> %wide.load722, ptr %i.fr, align 1, !tbaa !10
  store <32 x i8> %wide.load723, ptr %i.fs, align 1, !tbaa !10
  store <32 x i8> %wide.load724, ptr %i.ft, align 1, !tbaa !10
  %index.next725 = add nuw i64 %index718, 128     ; 2 uses
  %i.fu = icmp eq i64 %index.next725, %n.vec716
  br i1 %i.fu, label %middle.block726, label %vector.body717, !llvm.loop !31

middle.block726:                                  ; preds = %vector.body717
  %cmp.n727 = icmp eq i64 %i.fk, %n.vec716
  br i1 %cmp.n727, label %.thread331, label %vec.epilog.iter.check732

vec.epilog.iter.check732:                         ; preds = %middle.block726
  %min.epilog.iters.check733 = icmp eq i64 %i.fl, 0
  br i1 %min.epilog.iters.check733, label %.lr.ph437.preheader, label %vec.epilog.ph734, !prof !50

vec.epilog.ph734:                                 ; preds = %vector.main.loop.iter.check713, %vec.epilog.iter.check732
  %vec.epilog.resume.val728 = phi i64 [ %n.vec716, %vec.epilog.iter.check732 ], [ 0, %vector.main.loop.iter.check713 ]
  %n.vec735 = and i64 %i.fk, -16                  ; 4 uses
  %i.fv = getelementptr i8, ptr %i.ew, i64 %n.vec735
  %i.fw = getelementptr i8, ptr %.1249449.ph, i64 %n.vec735
  br label %vec.epilog.vector.body736

vec.epilog.vector.body736:                        ; preds = %vec.epilog.vector.body736, %vec.epilog.ph734
  %index737 = phi i64 [ %vec.epilog.resume.val728, %vec.epilog.ph734 ], [ %index.next741, %vec.epilog.vector.body736 ] ; 3 uses
  %next.gep738 = getelementptr i8, ptr %i.ew, i64 %index737
  %next.gep739 = getelementptr i8, ptr %.1249449.ph, i64 %index737
  %wide.load740 = load <16 x i8>, ptr %next.gep738, align 1, !tbaa !10
  store <16 x i8> %wide.load740, ptr %next.gep739, align 1, !tbaa !10
  %index.next741 = add nuw i64 %index737, 16      ; 2 uses
  %i.fx = icmp eq i64 %index.next741, %n.vec735
  br i1 %i.fx, label %vec.epilog.middle.block742, label %vec.epilog.vector.body736, !llvm.loop !32

vec.epilog.middle.block742:                       ; preds = %vec.epilog.vector.body736
  %cmp.n743 = icmp eq i64 %i.fk, %n.vec735
  br i1 %cmp.n743, label %.thread331, label %.lr.ph437.preheader

.lr.ph437.preheader:                              ; preds = %iter.check730, %vec.epilog.iter.check732, %vec.epilog.middle.block742
  %.0208436.ph = phi ptr [ %i.ew, %iter.check730 ], [ %i.fm, %vec.epilog.iter.check732 ], [ %i.fv, %vec.epilog.middle.block742 ]
  %.2250435.ph = phi ptr [ %.1249449.ph, %iter.check730 ], [ %i.fn, %vec.epilog.iter.check732 ], [ %i.fw, %vec.epilog.middle.block742 ]
  br label %.lr.ph437

.lr.ph437:                                        ; preds = %.lr.ph437.preheader, %.lr.ph437
  %.0208436 = phi ptr [ %i.fy, %.lr.ph437 ], [ %.0208436.ph, %.lr.ph437.preheader ] ; 2 uses
  %.2250435 = phi ptr [ %i.ga, %.lr.ph437 ], [ %.2250435.ph, %.lr.ph437.preheader ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0208436, i64 1
  %i.fz = load i8, ptr %.0208436, align 1, !tbaa !10
  %i.ga = getelementptr inbounds nuw i8, ptr %.2250435, i64 1 ; 2 uses
  store i8 %i.fz, ptr %.2250435, align 1, !tbaa !10
  %i.gb = icmp ult ptr %i.ga, %i.ez
  br i1 %i.gb, label %.lr.ph437, label %.thread331, !llvm.loop !33

bb.be:                                            ; preds = %bb.bd
  %i.gc = icmp samesign ult i32 %.1227323, 7
  br i1 %i.gc, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr @_ZN8facebook5velox6common11compressionL12DEC_32_TABLEE, i64 %i.eu
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !51
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr @_ZN8facebook5velox6common11compressionL12DEC_64_TABLEE, i64 %i.eu
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !51
  %i.gh = load i8, ptr %i.ew, align 1, !tbaa !10
  store i8 %i.gh, ptr %.1249449.ph, align 1, !tbaa !10
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !10
  %i.gk = getelementptr inbounds nuw i8, ptr %.1249449.ph, i64 1
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !10
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !10
  %i.gn = getelementptr inbounds nuw i8, ptr %.1249449.ph, i64 2
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !10
  %i.go = getelementptr inbounds nuw i8, ptr %i.ew, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !10
  %i.gq = getelementptr inbounds nuw i8, ptr %.1249449.ph, i64 3
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !10
  %i.gr = getelementptr inbounds nuw i8, ptr %.1249449.ph, i64 4
  %i.gs = sext i32 %i.ge to i64
  %i.gt = getelementptr inbounds i8, ptr %i.ew, i64 %i.gs ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !51
  store i32 %i.gu, ptr %i.gr, align 4, !tbaa !51
  %i.gv = sext i32 %i.gg to i64
  %i.gw = sub nsw i64 0, %i.gv
  %i.gx = getelementptr inbounds i8, ptr %i.gt, i64 %i.gw
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.gy = load i64, ptr %i.ew, align 8, !tbaa !22
  store i64 %i.gy, ptr %.1249449.ph, align 8, !tbaa !22
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.1 = phi ptr [ %i.gx, %bb.bf ], [ %i.gz, %bb.bg ] ; 14 uses
  %.1747 = ptrtoaddr ptr %.1 to i64               ; 2 uses
  %.3251 = getelementptr inbounds nuw i8, ptr %.1249449.ph, i64 8 ; 14 uses
  %.not293 = icmp ult ptr %i.ez, %i.d
  br i1 %.not293, label %.preheader349, label %.preheader353

.preheader353:                                    ; preds = %bb.bh
  %i.ha = icmp ult ptr %.3251, %i.d
  br i1 %i.ha, label %iter.check842, label %.preheader351

iter.check842:                                    ; preds = %.preheader353
  %i.hb = add i64 %.1249449526.lcssa, 16
  %umax823 = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %i.hb)
  %i.hc = add i64 %umax823, -9
  %i.hd = sub i64 %i.hc, %.1249449526.lcssa       ; 3 uses
  %i.he = lshr i64 %i.hd, 3
  %i.hf = add nuw nsw i64 %i.he, 1                ; 5 uses
  %min.iters.check824 = icmp ult i64 %i.hd, 24
  br i1 %min.iters.check824, label %.lr.ph426.preheader, label %vector.memcheck821

vector.memcheck821:                               ; preds = %iter.check842
  %i.hg = sub i64 %.1249449526.lcssa, %.1747
  %i.hh = add i64 %i.hg, 7
  %diff.check822 = icmp ult i64 %i.hh, 127
  br i1 %diff.check822, label %.lr.ph426.preheader, label %vector.main.loop.iter.check825

vector.main.loop.iter.check825:                   ; preds = %vector.memcheck821
  %min.iters.check826 = icmp ult i64 %i.hd, 120
  br i1 %min.iters.check826, label %vec.epilog.ph846, label %vector.ph827

vector.ph827:                                     ; preds = %vector.main.loop.iter.check825
  %i.hi = and i64 %i.hf, 12
  %n.vec828 = and i64 %i.hf, 4611686018427387888  ; 4 uses
  %i.hj = shl i64 %n.vec828, 3                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6common11compression13lzoDecompressEPKcS4_PcS5_:bb.a
  %min.epilog.iters.check771 = icmp eq i64 %i.ii, 0
  br i1 %min.epilog.iters.check771, label %.lr.ph434.preheader, label %vec.epilog.ph772, !prof !52

vec.epilog.ph772:                                 ; preds = %vector.main.loop.iter.check751, %vec.epilog.iter.check770
  %vec.epilog.resume.val766 = phi i64 [ %n.vec754, %vec.epilog.iter.check770 ], [ 0, %vector.main.loop.iter.check751 ]
  %n.vec773 = and i64 %i.if, 4611686018427387900  ; 3 uses
  %i.iu = shl i64 %n.vec773, 3                    ; 2 uses
  %i.iv = getelementptr i8, ptr %.1, i64 %i.iu
  %i.iw = getelementptr i8, ptr %.3251, i64 %i.iu
  br label %vec.epilog.vector.body774

vec.epilog.vector.body774:                        ; preds = %vec.epilog.vector.body774, %vec.epilog.ph772
  %index775 = phi i64 [ %vec.epilog.resume.val766, %vec.epilog.ph772 ], [ %index.next779, %vec.epilog.vector.body774 ] ; 2 uses
  %i.ix = shl i64 %index775, 3                    ; 2 uses
  %next.gep776 = getelementptr i8, ptr %.1, i64 %i.ix
  %next.gep777 = getelementptr i8, ptr %.3251, i64 %i.ix
  %wide.load778 = load <4 x i64>, ptr %next.gep776, align 8, !tbaa !22
  store <4 x i64> %wide.load778, ptr %next.gep777, align 8, !tbaa !22
  %index.next779 = add nuw i64 %index775, 4       ; 2 uses
  %i.iy = icmp eq i64 %index.next779, %n.vec773
  br i1 %i.iy, label %vec.epilog.middle.block780, label %vec.epilog.vector.body774, !llvm.loop !37

vec.epilog.middle.block780:                       ; preds = %vec.epilog.vector.body774
  %cmp.n781 = icmp eq i64 %i.if, %n.vec773
  br i1 %cmp.n781, label %.thread331, label %.lr.ph434.preheader

.lr.ph434.preheader:                              ; preds = %vector.memcheck746, %iter.check768, %vec.epilog.iter.check770, %vec.epilog.middle.block780
  %.4433.ph = phi ptr [ %.1, %iter.check768 ], [ %.1, %vector.memcheck746 ], [ %i.ik, %vec.epilog.iter.check770 ], [ %i.iv, %vec.epilog.middle.block780 ]
  %.6254432.ph = phi ptr [ %.3251, %iter.check768 ], [ %.3251, %vector.memcheck746 ], [ %i.il, %vec.epilog.iter.check770 ], [ %i.iw, %vec.epilog.middle.block780 ]
  br label %.lr.ph434

.preheader351:                                    ; preds = %.lr.ph426, %middle.block838, %vec.epilog.middle.block854, %.preheader353
  %.4252.lcssa = phi ptr [ %.3251, %.preheader353 ], [ %i.hw, %vec.epilog.middle.block854 ], [ %i.hl, %middle.block838 ], [ %i.kb, %.lr.ph426 ] ; 8 uses
  %.2.lcssa = phi ptr [ %.1, %.preheader353 ], [ %i.hv, %vec.epilog.middle.block854 ], [ %i.hk, %middle.block838 ], [ %i.ka, %.lr.ph426 ] ; 6 uses
  %i.iz = icmp ult ptr %.4252.lcssa, %i.ez
  br i1 %i.iz, label %iter.check805, label %.thread331

iter.check805:                                    ; preds = %.preheader351
  %.2.lcssa785 = ptrtoaddr ptr %.2.lcssa to i64
  %.4252.lcssa527 = ptrtoaddr ptr %.4252.lcssa to i64 ; 2 uses
  %i.ja = add i64 %.1249449526.lcssa, %i.ey
  %i.jb = sub i64 %i.ja, %.4252.lcssa527          ; 8 uses
  %scevgep528 = getelementptr i8, ptr %.4252.lcssa, i64 %i.jb
  %min.iters.check787 = icmp ult i64 %i.jb, 16
  %i.jc = sub i64 %.2.lcssa785, %.4252.lcssa527
  %diff.check786 = icmp ugt i64 %i.jc, -128
  %or.cond859 = select i1 %min.iters.check787, i1 true, i1 %diff.check786
  br i1 %or.cond859, label %.lr.ph431.preheader, label %vector.main.loop.iter.check788

vector.main.loop.iter.check788:                   ; preds = %iter.check805
  %min.iters.check789 = icmp ult i64 %i.jb, 128
  br i1 %min.iters.check789, label %vec.epilog.ph809, label %vector.ph790

vector.ph790:                                     ; preds = %vector.main.loop.iter.check788
  %i.jd = and i64 %i.jb, 112
  %n.vec791 = and i64 %i.jb, -128                 ; 5 uses
  %i.je = getelementptr i8, ptr %.2.lcssa, i64 %n.vec791
  %i.jf = getelementptr i8, ptr %.4252.lcssa, i64 %n.vec791
  br label %vector.body792

vector.body792:                                   ; preds = %vector.body792, %vector.ph790
  %index793 = phi i64 [ 0, %vector.ph790 ], [ %index.next800, %vector.body792 ] ; 3 uses
  %next.gep794 = getelementptr i8, ptr %.2.lcssa, i64 %index793 ; 4 uses
  %next.gep795 = getelementptr i8, ptr %.4252.lcssa, i64 %index793 ; 4 uses
  %i.jg = getelementptr i8, ptr %next.gep794, i64 32
  %i.jh = getelementptr i8, ptr %next.gep794, i64 64
  %i.ji = getelementptr i8, ptr %next.gep794, i64 96
  %wide.load796 = load <32 x i8>, ptr %next.gep794, align 1, !tbaa !10
  %wide.load797 = load <32 x i8>, ptr %i.jg, align 1, !tbaa !10
  %wide.load798 = load <32 x i8>, ptr %i.jh, align 1, !tbaa !10
  %wide.load799 = load <32 x i8>, ptr %i.ji, align 1, !tbaa !10
  %i.jj = getelementptr i8, ptr %next.gep795, i64 32
  %i.jk = getelementptr i8, ptr %next.gep795, i64 64
  %i.jl = getelementptr i8, ptr %next.gep795, i64 96
  store <32 x i8> %wide.load796, ptr %next.gep795, align 1, !tbaa !10
  store <32 x i8> %wide.load797, ptr %i.jj, align 1, !tbaa !10
  store <32 x i8> %wide.load798, ptr %i.jk, align 1, !tbaa !10
  store <32 x i8> %wide.load799, ptr %i.jl, align 1, !tbaa !10
  %index.next800 = add nuw i64 %index793, 128     ; 2 uses
  %i.jm = icmp eq i64 %index.next800, %n.vec791
  br i1 %i.jm, label %middle.block801, label %vector.body792, !llvm.loop !38

middle.block801:                                  ; preds = %vector.body792
  %cmp.n802 = icmp eq i64 %i.jb, %n.vec791
  br i1 %cmp.n802, label %.thread331, label %vec.epilog.iter.check807

vec.epilog.iter.check807:                         ; preds = %middle.block801
  %min.epilog.iters.check808 = icmp eq i64 %i.jd, 0
  br i1 %min.epilog.iters.check808, label %.lr.ph431.preheader, label %vec.epilog.ph809, !prof !50

vec.epilog.ph809:                                 ; preds = %vector.main.loop.iter.check788, %vec.epilog.iter.check807
  %vec.epilog.resume.val803 = phi i64 [ %n.vec791, %vec.epilog.iter.check807 ], [ 0, %vector.main.loop.iter.check788 ]
  %n.vec810 = and i64 %i.jb, -16                  ; 4 uses
  %i.jn = getelementptr i8, ptr %.2.lcssa, i64 %n.vec810
  %i.jo = getelementptr i8, ptr %.4252.lcssa, i64 %n.vec810
  br label %vec.epilog.vector.body811

vec.epilog.vector.body811:                        ; preds = %vec.epilog.vector.body811, %vec.epilog.ph809
  %index812 = phi i64 [ %vec.epilog.resume.val803, %vec.epilog.ph809 ], [ %index.next816, %vec.epilog.vector.body811 ] ; 3 uses
  %next.gep813 = getelementptr i8, ptr %.2.lcssa, i64 %index812
  %next.gep814 = getelementptr i8, ptr %.4252.lcssa, i64 %index812
  %wide.load815 = load <16 x i8>, ptr %next.gep813, align 1, !tbaa !10
  store <16 x i8> %wide.load815, ptr %next.gep814, align 1, !tbaa !10
  %index.next816 = add nuw i64 %index812, 16      ; 2 uses
  %i.jp = icmp eq i64 %index.next816, %n.vec810
  br i1 %i.jp, label %vec.epilog.middle.block817, label %vec.epilog.vector.body811, !llvm.loop !39

vec.epilog.middle.block817:                       ; preds = %vec.epilog.vector.body811
  %cmp.n818 = icmp eq i64 %i.jb, %n.vec810
  br i1 %cmp.n818, label %.thread331, label %.lr.ph431.preheader

.lr.ph431.preheader:                              ; preds = %iter.check805, %vec.epilog.iter.check807, %vec.epilog.middle.block817
  %.3430.ph = phi ptr [ %.2.lcssa, %iter.check805 ], [ %i.je, %vec.epilog.iter.check807 ], [ %i.jn, %vec.epilog.middle.block817 ] ; 2 uses
  %.5253429.ph = phi ptr [ %.4252.lcssa, %iter.check805 ], [ %i.jf, %vec.epilog.iter.check807 ], [ %i.jo, %vec.epilog.middle.block817 ] ; 3 uses
  %i.jq = add i64 %.1249449526.lcssa, %i.ey
  %.5253429.ph935 = ptrtoaddr ptr %.5253429.ph to i64 ; 2 uses
  %i.jr = sub i64 %i.jq, %.5253429.ph935
  %i.js = add i64 %.1249449526.lcssa, -1
  %i.jt = add i64 %i.js, %i.ey
  %i.ju = sub i64 %i.jt, %.5253429.ph935
  %xtraiter = and i64 %i.jr, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph431.prol.loopexit, label %.lr.ph431.prol

.lr.ph431.prol:                                   ; preds = %.lr.ph431.preheader, %.lr.ph431.prol
  %.3430.prol = phi ptr [ %i.jv, %.lr.ph431.prol ], [ %.3430.ph, %.lr.ph431.preheader ] ; 2 uses
  %.5253429.prol = phi ptr [ %i.jx, %.lr.ph431.prol ], [ %.5253429.ph, %.lr.ph431.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph431.prol ], [ 0, %.lr.ph431.preheader ]
  %i.jv = getelementptr inbounds nuw i8, ptr %.3430.prol, i64 1 ; 2 uses
  %i.jw = load i8, ptr %.3430.prol, align 1, !tbaa !10
  %i.jx = getelementptr inbounds nuw i8, ptr %.5253429.prol, i64 1 ; 2 uses
  store i8 %i.jw, ptr %.5253429.prol, align 1, !tbaa !10
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph431.prol.loopexit, label %.lr.ph431.prol, !llvm.loop !40

.lr.ph431.prol.loopexit:                          ; preds = %.lr.ph431.prol, %.lr.ph431.preheader
  %.3430.unr = phi ptr [ %.3430.ph, %.lr.ph431.preheader ], [ %i.jv, %.lr.ph431.prol ]
  %.5253429.unr = phi ptr [ %.5253429.ph, %.lr.ph431.preheader ], [ %i.jx, %.lr.ph431.prol ]
  %i.jy = icmp ult i64 %i.ju, 7
  br i1 %i.jy, label %.thread331, label %.lr.ph431

.lr.ph426:                                        ; preds = %.lr.ph426.preheader, %.lr.ph426
  %.2425 = phi ptr [ %i.ka, %.lr.ph426 ], [ %.2425.ph, %.lr.ph426.preheader ] ; 2 uses
  %.4252424 = phi ptr [ %i.kb, %.lr.ph426 ], [ %.4252424.ph, %.lr.ph426.preheader ] ; 2 uses
  %i.jz = load i64, ptr %.2425, align 8, !tbaa !22
  store i64 %i.jz, ptr %.4252424, align 8, !tbaa !22
  %i.ka = getelementptr inbounds nuw i8, ptr %.2425, i64 8 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.4252424, i64 8 ; 3 uses
  %i.kc = icmp ult ptr %i.kb, %i.d
  br i1 %i.kc, label %.lr.ph426, label %.preheader351, !llvm.loop !41

.lr.ph431:                                        ; preds = %.lr.ph431.prol.loopexit, %.lr.ph431
  %.3430 = phi ptr [ %i.ky, %.lr.ph431 ], [ %.3430.unr, %.lr.ph431.prol.loopexit ] ; 9 uses
  %.5253429 = phi ptr [ %i.la, %.lr.ph431 ], [ %.5253429.unr, %.lr.ph431.prol.loopexit ] ; 9 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.3430, i64 1
  %i.ke = load i8, ptr %.3430, align 1, !tbaa !10
  %i.kf = getelementptr inbounds nuw i8, ptr %.5253429, i64 1
  store i8 %i.ke, ptr %.5253429, align 1, !tbaa !10
  %i.kg = getelementptr inbounds nuw i8, ptr %.3430, i64 2
  %i.kh = load i8, ptr %i.kd, align 1, !tbaa !10
  %i.ki = getelementptr inbounds nuw i8, ptr %.5253429, i64 2
  store i8 %i.kh, ptr %i.kf, align 1, !tbaa !10
  %i.kj = getelementptr inbounds nuw i8, ptr %.3430, i64 3
  %i.kk = load i8, ptr %i.kg, align 1, !tbaa !10
  %i.kl = getelementptr inbounds nuw i8, ptr %.5253429, i64 3
  store i8 %i.kk, ptr %i.ki, align 1, !tbaa !10
  %i.km = getelementptr inbounds nuw i8, ptr %.3430, i64 4
  %i.kn = load i8, ptr %i.kj, align 1, !tbaa !10
  %i.ko = getelementptr inbounds nuw i8, ptr %.5253429, i64 4
  store i8 %i.kn, ptr %i.kl, align 1, !tbaa !10
  %i.kp = getelementptr inbounds nuw i8, ptr %.3430, i64 5
  %i.kq = load i8, ptr %i.km, align 1, !tbaa !10
  %i.kr = getelementptr inbounds nuw i8, ptr %.5253429, i64 5
  store i8 %i.kq, ptr %i.ko, align 1, !tbaa !10
  %i.ks = getelementptr inbounds nuw i8, ptr %.3430, i64 6
  %i.kt = load i8, ptr %i.kp, align 1, !tbaa !10
  %i.ku = getelementptr inbounds nuw i8, ptr %.5253429, i64 6
  store i8 %i.kt, ptr %i.kr, align 1, !tbaa !10
  %i.kv = getelementptr inbounds nuw i8, ptr %.3430, i64 7
  %i.kw = load i8, ptr %i.ks, align 1, !tbaa !10
  %i.kx = getelementptr inbounds nuw i8, ptr %.5253429, i64 7
  store i8 %i.kw, ptr %i.ku, align 1, !tbaa !10
  %i.ky = getelementptr inbounds nuw i8, ptr %.3430, i64 8
  %i.kz = load i8, ptr %i.kv, align 1, !tbaa !10
  %i.la = getelementptr inbounds nuw i8, ptr %.5253429, i64 8 ; 2 uses
  store i8 %i.kz, ptr %i.kx, align 1, !tbaa !10
  %exitcond529.not.7 = icmp eq ptr %i.la, %scevgep528
  br i1 %exitcond529.not.7, label %.thread331, label %.lr.ph431, !llvm.loop !42

.lr.ph434:                                        ; preds = %.lr.ph434.preheader, %.lr.ph434
  %.4433 = phi ptr [ %i.lc, %.lr.ph434 ], [ %.4433.ph, %.lr.ph434.preheader ] ; 2 uses
  %.6254432 = phi ptr [ %i.ld, %.lr.ph434 ], [ %.6254432.ph, %.lr.ph434.preheader ] ; 2 uses
  %i.lb = load i64, ptr %.4433, align 8, !tbaa !22
  store i64 %i.lb, ptr %.6254432, align 8, !tbaa !22
  %i.lc = getelementptr inbounds nuw i8, ptr %.4433, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %.6254432, i64 8 ; 2 uses
  %i.le = icmp ult ptr %i.ld, %i.ez
  br i1 %i.le, label %.lr.ph434, label %.thread331, !llvm.loop !43

.thread331:                                       ; preds = %.lr.ph431.prol.loopexit, %.lr.ph431, %.lr.ph434, %.lr.ph437, %middle.block801, %vec.epilog.middle.block817, %middle.block764, %vec.epilog.middle.block780, %middle.block726, %vec.epilog.middle.block742, %.preheader351, %.preheader349, %.preheader348, %bb.v, %bb.i, %bb.ay
  %.11327 = phi ptr [ %.11, %bb.ay ], [ %.11326, %.preheader348 ], [ %.11326, %.preheader349 ], [ %.4216, %bb.i ], [ %.lcssa876, %bb.v ], [ %.11326, %.preheader351 ], [ %.11326, %middle.block764 ], [ %.11326, %middle.block726 ], [ %.11326, %middle.block801 ], [ %.11326, %vec.epilog.middle.block742 ], [ %.11326, %.lr.ph434 ], [ %.11326, %vec.epilog.middle.block780 ], [ %.11326, %.lr.ph437 ], [ %.11326, %vec.epilog.middle.block817 ], [ %.11326, %.lr.ph431 ], [ %.11326, %.lr.ph431.prol.loopexit ] ; 9 uses
  %.2225325 = phi i32 [ %.2225, %bb.ay ], [ %.2225324.a, %.preheader348 ], [ %.2225324.a, %.preheader349 ], [ %i.ai, %bb.i ], [ %i.bh, %bb.v ], [ %.2225324.a, %.preheader351 ], [ %.2225324.a, %middle.block764 ], [ %.2225324.a, %middle.block726 ], [ %.2225324.a, %middle.block801 ], [ %.2225324.a, %vec.epilog.middle.block742 ], [ %.2225324.a, %.lr.ph434 ], [ %.2225324.a, %vec.epilog.middle.block780 ], [ %.2225324.a, %.lr.ph437 ], [ %.2225324.a, %vec.epilog.middle.block817 ], [ %.2225324.a, %.lr.ph431 ], [ %.2225324.a, %.lr.ph431.prol.loopexit ] ; 2 uses
  %.7255 = phi ptr [ %.1249449.ph, %bb.ay ], [ %i.ez, %.preheader348 ], [ %i.ez, %.preheader349 ], [ %.1249449.ph, %bb.i ], [ %.1249449.ph, %bb.v ], [ %i.ez, %.preheader351 ], [ %i.ez, %middle.block764 ], [ %i.ez, %middle.block726 ], [ %i.ez, %middle.block801 ], [ %i.ez, %vec.epilog.middle.block742 ], [ %i.ez, %.lr.ph434 ], [ %i.ez, %vec.epilog.middle.block780 ], [ %i.ez, %.lr.ph437 ], [ %i.ez, %vec.epilog.middle.block817 ], [ %i.ez, %.lr.ph431 ], [ %i.ez, %.lr.ph431.prol.loopexit ] ; 8 uses
  %i.lf = zext i32 %.2225325 to i64               ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.7255, i64 %i.lf ; 5 uses
  %i.lh = icmp ugt ptr %i.lg, %i.d
  %i.li = getelementptr inbounds nuw i8, ptr %.11327, i64 %i.lf ; 2 uses
  %i.lj = icmp ugt ptr %i.li, %i.f
  %or.cond = select i1 %i.lh, i1 true, i1 %i.lj
  br i1 %or.cond, label %bb.bi, label %iter.check

iter.check:                                       ; preds = %.thread331
  %.11327693 = ptrtoaddr ptr %.11327 to i64
  %.7255692 = ptrtoaddr ptr %.7255 to i64         ; 4 uses
  %i.lk = add nuw i64 %.7255692, %i.lf
  %i.ll = add i64 %.7255692, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.lk, i64 %i.ll)
  %i.lm = xor i64 %.7255692, -1
  %i.ln = add i64 %umax, %i.lm                    ; 3 uses
  %i.lo = lshr i64 %i.ln, 3
  %i.lp = add nuw nsw i64 %i.lo, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ln, 24
  %i.lq = sub i64 %.11327693, %.7255692
  %diff.check = icmp ugt i64 %i.lq, -128
  %or.cond860 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond860, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check694 = icmp ult i64 %i.ln, 120
  br i1 %min.iters.check694, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lr = and i64 %i.lp, 12
  %n.vec = and i64 %i.lp, 4611686018427387888     ; 4 uses
  %i.ls = shl i64 %n.vec, 3                       ; 2 uses
  %i.lt = getelementptr i8, ptr %.7255, i64 %i.ls ; 2 uses
  %i.lu = getelementptr i8, ptr %.11327, i64 %i.ls ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.7255, i64 %i.lv ; 4 uses
  %next.gep695 = getelementptr i8, ptr %.11327, i64 %i.lv ; 4 uses
  %i.lw = getelementptr i8, ptr %next.gep695, i64 32
  %i.lx = getelementptr i8, ptr %next.gep695, i64 64
  %i.ly = getelementptr i8, ptr %next.gep695, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep695, align 8, !tbaa !22
  %wide.load696 = load <4 x i64>, ptr %i.lw, align 8, !tbaa !22
  %wide.load697 = load <4 x i64>, ptr %i.lx, align 8, !tbaa !22
  %wide.load698 = load <4 x i64>, ptr %i.ly, align 8, !tbaa !22
  %i.lz = getelementptr i8, ptr %next.gep, i64 32
  %i.ma = getelementptr i8, ptr %next.gep, i64 64
  %i.mb = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !22
  store <4 x i64> %wide.load696, ptr %i.lz, align 8, !tbaa !22
  store <4 x i64> %wide.load697, ptr %i.ma, align 8, !tbaa !22
  store <4 x i64> %wide.load698, ptr %i.mb, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mc = icmp eq i64 %index.next, %n.vec
  br i1 %i.mc, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lp, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.lr, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec700 = and i64 %i.lp, 4611686018427387900  ; 3 uses
  %i.md = shl i64 %n.vec700, 3                    ; 2 uses
  %i.me = getelementptr i8, ptr %.7255, i64 %i.md ; 2 uses
  %i.mf = getelementptr i8, ptr %.11327, i64 %i.md ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index701 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next705, %vec.epilog.vector.body ] ; 2 uses
  %i.mg = shl i64 %index701, 3                    ; 2 uses
  %next.gep702 = getelementptr i8, ptr %.7255, i64 %i.mg
  %next.gep703 = getelementptr i8, ptr %.11327, i64 %i.mg
  %wide.load704 = load <4 x i64>, ptr %next.gep703, align 8, !tbaa !22
  store <4 x i64> %wide.load704, ptr %next.gep702, align 8, !tbaa !22
  %index.next705 = add nuw i64 %index701, 4       ; 2 uses
  %i.mh = icmp eq i64 %index.next705, %n.vec700
  br i1 %i.mh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n706 = icmp eq i64 %i.lp, %n.vec700
  br i1 %cmp.n706, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.8256.ph = phi ptr [ %.7255, %iter.check ], [ %i.lt, %vec.epilog.iter.check ], [ %i.me, %vec.epilog.middle.block ]
  %.12.ph = phi ptr [ %.11327, %iter.check ], [ %i.lu, %vec.epilog.iter.check ], [ %i.mf, %vec.epilog.middle.block ]
  br label %.preheader

bb.bi:                                            ; preds = %.thread331
  %i.mi = icmp ugt ptr %i.lg, %3
  br i1 %i.mi, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.mj = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  %i.mk = ptrtoint ptr %.11327 to i64
  %i.ml = ptrtoint ptr %0 to i64
  %i.mm = sub i64 %i.mk, %i.ml
  invoke fastcc void @_ZN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionC2El(ptr noundef nonnull align 8 dereferenceable(16) %i.mj, i64 noundef %i.mm)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  tail call void @__cxa_throw(ptr nonnull %i.mj, ptr nonnull @_ZTIN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.mn = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.mj) #16
  br label %bb.bw

bb.bm:                                            ; preds = %bb.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.7255, ptr align 1 %.11327, i64 %i.lf, i1 false)
  br label %bb.bn

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.8256 = phi ptr [ %i.mq, %.preheader ], [ %.8256.ph, %.preheader.preheader ] ; 2 uses
  %.12 = phi ptr [ %i.mp, %.preheader ], [ %.12.ph, %.preheader.preheader ] ; 2 uses
  %i.mo = load i64, ptr %.12, align 8, !tbaa !22
  store i64 %i.mo, ptr %.8256, align 8, !tbaa !22
  %i.mp = getelementptr inbounds nuw i8, ptr %.12, i64 8 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.8256, i64 8 ; 3 uses
  %i.mr = icmp ult ptr %i.mq, %i.lg
  br i1 %i.mr, label %.preheader, label %.loopexit, !llvm.loop !46

.loopexit:                                        ; preds = %.preheader, %vec.epilog.middle.block, %middle.block
  %.lcssa650 = phi ptr [ %i.mf, %vec.epilog.middle.block ], [ %i.lu, %middle.block ], [ %i.mp, %.preheader ]
  %.lcssa649 = phi ptr [ %i.me, %vec.epilog.middle.block ], [ %i.lt, %middle.block ], [ %i.mq, %.preheader ]
  %i.ms = ptrtoint ptr %.lcssa649 to i64
  %i.mt = ptrtoint ptr %i.lg to i64
  %.neg = sub i64 %i.mt, %i.ms
  %i.mu = getelementptr inbounds i8, ptr %.lcssa650, i64 %.neg
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.loopexit
  %.14 = phi ptr [ %i.mu, %.loopexit ], [ %i.li, %bb.bm ] ; 3 uses
  %.not = icmp ult ptr %.14, %1
  br i1 %.not, label %.preheader356.outer, label %bb.c

.preheader356.outer:                              ; preds = %.preheader356.lr.ph, %bb.bn
  %.1213452.ph = phi ptr [ %0, %.preheader356.lr.ph ], [ %.14, %bb.bn ] ; 4 uses
  %.0244451.ph = phi i32 [ 0, %.preheader356.lr.ph ], [ %.2225325, %bb.bn ]
  %.0246450.ph = phi i1 [ true, %.preheader356.lr.ph ], [ false, %bb.bn ]
  %.1249449.ph = phi ptr [ %2, %.preheader356.lr.ph ], [ %i.lg, %bb.bn ] ; 21 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.1213452.ph, i64 1 ; 3 uses
  %i.mw = load i8, ptr %.1213452.ph, align 1, !tbaa !10 ; 2 uses
  %i.mx = icmp eq i8 %i.mw, 17
  br i1 %i.mx, label %bb.bo, label %.loopexit929

bb.bo:                                            ; preds = %.preheader356.outer
  %i.my = getelementptr inbounds nuw i8, ptr %.1213452.ph, i64 3 ; 3 uses
  %i.mz = icmp ugt ptr %i.my, %1
  br i1 %i.mz, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.na = load i16, ptr %i.mv, align 2, !tbaa !13
  %.not296.peel = icmp eq i16 %i.na, 0
  br i1 %.not296.peel, label %bb.bq, label %.loopexit930

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.nb = icmp ult ptr %i.my, %1
  br i1 %i.nb, label %.preheader356, label %._crit_edge

bb.br:                                            ; preds = %.preheader356
  %i.nc = getelementptr inbounds nuw i8, ptr %.1213452, i64 3 ; 3 uses
  %i.nd = icmp ugt ptr %i.nc, %1
  br i1 %i.nd, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.ne = load i16, ptr %i.r, align 2, !tbaa !13
  %.not296 = icmp eq i16 %i.ne, 0
  br i1 %.not296, label %bb.bv, label %.loopexit930

.loopexit930:                                     ; preds = %bb.bp, %bb.bs
  %.lcssa877 = phi ptr [ %i.r, %bb.bs ], [ %i.mv, %bb.bp ]
  %i.nf = tail call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  %i.ng = ptrtoint ptr %.lcssa877 to i64
  %i.nh = ptrtoint ptr %0 to i64
  %i.ni = sub i64 %i.ng, %i.nh
  invoke fastcc void @_ZN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionC2El(ptr noundef nonnull align 8 dereferenceable(16) %i.nf, i64 noundef %i.ni)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %.loopexit930
  tail call void @__cxa_throw(ptr nonnull %i.nf, ptr nonnull @_ZTIN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.bu:                                            ; preds = %.loopexit930
  %i.nj = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.nf) #16
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bs, %bb.br
  %i.nk = icmp ult ptr %i.nc, %1
  br i1 %i.nk, label %.preheader356, label %._crit_edge, !llvm.loop !47

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302, %bb.n, %bb.s, %bb.ac, %bb.ak, %bb.aq, %bb.bc, %bb.bl, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304, %bb.bu, %bb.e
  %.pn297 = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.nj, %bb.bu ], [ %i.ff, %bb.bc ], [ %i.mn, %bb.bl ], [ %i.ao, %bb.n ], [ %i.ba, %bb.s ], [ %i.cb, %bb.ac ], [ %i.dc, %bb.ak ], [ %i.dk, %bb.aq ], [ %.pn.pn307, %bb.ax ], [ %i.ec, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304 ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i302 ]
  resume { ptr, i32 } %.pn297

._crit_edge:                                      ; preds = %bb.bv, %bb.bq, %bb.b
  %.0248.lcssa = phi ptr [ %2, %bb.b ], [ %.1249449.ph, %bb.bq ], [ %.1249449.ph, %bb.bv ]
  %i.nl = ptrtoint ptr %.0248.lcssa to i64
  %i.nm = ptrtoint ptr %2 to i64
  %i.nn = sub i64 %i.nl, %i.nm
  br label %bb.bx

bb.bx:                                            ; preds = %bb.a, %._crit_edge
  %.0 = phi i64 [ %i.nn, %._crit_edge ], [ 0, %bb.a ]
  ret i64 %.0

bb.by:                                            ; preds = %bb.av
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox6common11compression12_GLOBAL__N_123MalformedInputExceptionC2El(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !23, !alias.scope !61
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !21, !alias.scope !61
  store i8 0, ptr %i.a, align 8, !tbaa !10, !alias.scope !61
  %i.c = call i64 @llvm.abs.i64(i64 %1, i1 false)
  %i.d = invoke noundef i64 @_ZN5folly13to_ascii_sizeILm10EEEmm(i64 noundef %i.c)
          to label %.noexc.i.i unwind label %bb.h

.noexc.i.i:                                       ; preds = %bb.a
  %.lobit.i.i.i.i.i = lshr i64 %1, 63
  %i.e = add i64 %i.d, %.lobit.i.i.i.i.i          ; 4 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !19
  %i.g = icmp eq ptr %i.f, %i.a
  %i.h = load i64, ptr %i.a, align 8
  %i.i = select i1 %i.g, i64 15, i64 %i.h         ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.i
  br i1 %.not.i, label %bb.b, label %.noexc3.i.i

bb.b:                                             ; preds = %.noexc.i.i
  %i.j = icmp slt i64 %i.e, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
          to label %.noexc18 unwind label %bb.h

.noexc18:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = shl nuw i64 %i.i, 1                      ; 2 uses
  %i.l = icmp ult i64 %i.e, %i.k
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.k, i64 9223372036854775807)
  %.0.i = select i1 %i.l, i64 %spec.store.select.i.i, i64 %i.e ; 2 uses
  %i.m = add nuw i64 %.0.i, 1                     ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !24

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #17
          to label %.noexc19 unwind label %bb.h

.noexc19:                                         ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.d
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #19
          to label %.noexc20 unwind label %bb.h   ; 3 uses

.noexc20:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.p = load ptr, ptr %3, align 8, !tbaa !19     ; 4 uses
  %i.q = load i64, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 2 uses
  switch i64 %i.r, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  ]

bb.f:                                             ; preds = %.noexc20
  %i.s = load i8, ptr %i.p, align 1, !tbaa !10
  store i8 %i.s, ptr %i.o, align 1, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %.noexc20
  %i.t = icmp eq ptr %i.p, %i.a
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.u = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.u)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !10
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.w) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5.i
  store ptr %i.o, ptr %3, align 8, !tbaa !19
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !10
  br label %.noexc3.i.i

.noexc3.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i, %.noexc.i.i
  invoke void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %1, ptr noundef nonnull align 8 %3)
          to label %_ZN8facebook5velox6common11compressionL8toStringB5cxx11El.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.e, %bb.c, %.noexc3.i.i, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !19, !alias.scope !61 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.a
  br i1 %i.z, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !10, !alias.scope !61
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #18
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.x, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook5velox6common11compressionL8toStringB5cxx11El.exit: ; preds = %.noexc3.i.i
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 27)
          to label %.noexc unwind label %bb.l     ; 6 uses

.noexc:                                           ; preds = %_ZN8facebook5velox6common11compressionL8toStringB5cxx11El.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.ad, ptr %2, align 8, !tbaa !23, !alias.scope !62
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
end_hunk_1
