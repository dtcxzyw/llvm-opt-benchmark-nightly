Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpSumMatrix?download=true
inline.NumInlined: 395
inline.NumDeleted: 216
begin_hunk_0
$_ZN5Ipopt7SubjectD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN5Ipopt14IpoptExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iS8_ = comdat any

$_ZN5Ipopt34UNIMPLEMENTED_LINALG_METHOD_CALLEDD0Ev = comdat any

$_ZN5Ipopt14IpoptExceptionD0Ev = comdat any

$_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_11MatrixSpaceEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_ = comdat any

$_ZTIN5Ipopt34UNIMPLEMENTED_LINALG_METHOD_CALLEDE = comdat any

$_ZTSN5Ipopt34UNIMPLEMENTED_LINALG_METHOD_CALLEDE = comdat any

$_ZTIN5Ipopt14IpoptExceptionE = comdat any

$_ZTSN5Ipopt14IpoptExceptionE = comdat any

$_ZTIN5Ipopt11MatrixSpaceE = comdat any

$_ZTSN5Ipopt11MatrixSpaceE = comdat any

$_ZTIN5Ipopt16ReferencedObjectE = comdat any

$_ZTSN5Ipopt16ReferencedObjectE = comdat any

$_ZTVN5Ipopt12TaggedObjectE = comdat any

$_ZTIN5Ipopt12TaggedObjectE = comdat any

$_ZTSN5Ipopt12TaggedObjectE = comdat any

$_ZTIN5Ipopt7SubjectE = comdat any

$_ZTSN5Ipopt7SubjectE = comdat any

$_ZTVN5Ipopt7SubjectE = comdat any

$_ZTVN5Ipopt34UNIMPLEMENTED_LINALG_METHOD_CALLEDE = comdat any

$_ZTVN5Ipopt14IpoptExceptionE = comdat any

@_ZTVN5Ipopt9SumMatrixE = constant { [14 x ptr], [4 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN5Ipopt9SumMatrixE, ptr @_ZN5Ipopt9SumMatrixD1Ev, ptr @_ZN5Ipopt9SumMatrixD0Ev, ptr @_ZNK5Ipopt6Matrix5PrintENS_8SmartPtrIKNS_10JournalistEEENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSE_, ptr @_ZNK5Ipopt6Matrix5PrintERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_, ptr @_ZNK5Ipopt9SumMatrix14MultVectorImplEdRKNS_6VectorEdRS1_, ptr @_ZNK5Ipopt9SumMatrix19TransMultVectorImplEdRKNS_6VectorEdRS1_, ptr @_ZNK5Ipopt6Matrix13AddMSinvZImplEdRKNS_6VectorES3_RS1_, ptr @_ZNK5Ipopt6Matrix18SinvBlrmZMTdBrImplEdRKNS_6VectorES3_S3_S3_RS1_, ptr @_ZNK5Ipopt9SumMatrix19HasValidNumbersImplEv, ptr @_ZNK5Ipopt9SumMatrix18ComputeRowAMaxImplERNS_6VectorEb, ptr @_ZNK5Ipopt9SumMatrix18ComputeColAMaxImplERNS_6VectorEb, ptr @_ZNK5Ipopt9SumMatrix9PrintImplERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN5Ipopt9SumMatrixE, ptr @_ZThn16_N5Ipopt9SumMatrixD1Ev, ptr @_ZThn16_N5Ipopt9SumMatrixD0Ev] }, align 8
@.str = private unnamed_addr constant [46 x i8] c"SumMatrix::ComputeRowAMaxImpl not implemented\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"LinAlg/IpSumMatrix.cpp\00", align 1
@_ZTIN5Ipopt34UNIMPLEMENTED_LINALG_METHOD_CALLEDE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt34UNIMPLEMENTED_LINALG_METHOD_CALLEDE, ptr @_ZTIN5Ipopt14IpoptExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5Ipopt34UNIMPLEMENTED_LINALG_METHOD_CALLEDE = linkonce_odr constant [45 x i8] c"N5Ipopt34UNIMPLEMENTED_LINALG_METHOD_CALLEDE\00", comdat, align 1
@_ZTIN5Ipopt14IpoptExceptionE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5Ipopt14IpoptExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5Ipopt14IpoptExceptionE = linkonce_odr constant [25 x i8] c"N5Ipopt14IpoptExceptionE\00", comdat, align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"SumMatrix::ComputeColAMaxImpl not implemented\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"%sSumMatrix \22%s\22 of dimension %d x %d with %d terms:\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"%sTerm %d with factor %23.16e and the following matrix:\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Term: %d\00", align 1
@_ZTVN5Ipopt14SumMatrixSpaceE = constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5Ipopt14SumMatrixSpaceE, ptr @_ZN5Ipopt14SumMatrixSpaceD2Ev, ptr @_ZN5Ipopt14SumMatrixSpaceD0Ev, ptr @_ZNK5Ipopt14SumMatrixSpace7MakeNewEv] }, align 8
@_ZTIN5Ipopt14SumMatrixSpaceE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt14SumMatrixSpaceE, ptr @_ZTIN5Ipopt11MatrixSpaceE }, align 8
@_ZTSN5Ipopt14SumMatrixSpaceE = constant [25 x i8] c"N5Ipopt14SumMatrixSpaceE\00", align 1
@_ZTIN5Ipopt11MatrixSpaceE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt11MatrixSpaceE, ptr @_ZTIN5Ipopt16ReferencedObjectE }, comdat, align 8
@_ZTSN5Ipopt11MatrixSpaceE = linkonce_odr constant [22 x i8] c"N5Ipopt11MatrixSpaceE\00", comdat, align 1
@_ZTIN5Ipopt16ReferencedObjectE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5Ipopt16ReferencedObjectE }, comdat, align 8
@_ZTSN5Ipopt16ReferencedObjectE = linkonce_odr constant [27 x i8] c"N5Ipopt16ReferencedObjectE\00", comdat, align 1
@_ZTIN5Ipopt9SumMatrixE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt9SumMatrixE, ptr @_ZTIN5Ipopt6MatrixE }, align 8
@_ZTSN5Ipopt9SumMatrixE = constant [19 x i8] c"N5Ipopt9SumMatrixE\00", align 1
@_ZTIN5Ipopt6MatrixE = external constant ptr
@_ZTVN5Ipopt6MatrixE = external constant { [14 x ptr], [4 x ptr] }, align 8
@_ZTVN5Ipopt12TaggedObjectE = linkonce_odr constant { [4 x ptr], [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5Ipopt12TaggedObjectE, ptr @_ZN5Ipopt12TaggedObjectD2Ev, ptr @_ZN5Ipopt12TaggedObjectD0Ev], [4 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN5Ipopt12TaggedObjectE, ptr @_ZThn16_N5Ipopt12TaggedObjectD1Ev, ptr @_ZThn16_N5Ipopt12TaggedObjectD0Ev] }, comdat, align 8
@_ZTIN5Ipopt12TaggedObjectE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5Ipopt12TaggedObjectE, i32 0, i32 2, ptr @_ZTIN5Ipopt16ReferencedObjectE, i64 2, ptr @_ZTIN5Ipopt7SubjectE, i64 4098 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN5Ipopt12TaggedObjectE = linkonce_odr constant [23 x i8] c"N5Ipopt12TaggedObjectE\00", comdat, align 1
@_ZTIN5Ipopt7SubjectE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5Ipopt7SubjectE }, comdat, align 8
@_ZTSN5Ipopt7SubjectE = linkonce_odr constant [17 x i8] c"N5Ipopt7SubjectE\00", comdat, align 1
@_ZTVN5Ipopt7SubjectE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5Ipopt7SubjectE, ptr @_ZN5Ipopt7SubjectD2Ev, ptr @_ZN5Ipopt7SubjectD0Ev] }, comdat, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"UNIMPLEMENTED_LINALG_METHOD_CALLED\00", align 1
@_ZTVN5Ipopt34UNIMPLEMENTED_LINALG_METHOD_CALLEDE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5Ipopt34UNIMPLEMENTED_LINALG_METHOD_CALLEDE, ptr @_ZN5Ipopt14IpoptExceptionD2Ev, ptr @_ZN5Ipopt34UNIMPLEMENTED_LINALG_METHOD_CALLEDD0Ev] }, comdat, align 8
@_ZTVN5Ipopt14IpoptExceptionE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5Ipopt14IpoptExceptionE, ptr @_ZN5Ipopt14IpoptExceptionD2Ev, ptr @_ZN5Ipopt14IpoptExceptionD0Ev] }, comdat, align 8
@.str.9 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN5Ipopt9SumMatrixC1EPKNS_14SumMatrixSpaceE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5Ipopt9SumMatrixC2EPKNS_14SumMatrixSpaceE
@_ZN5Ipopt9SumMatrixD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5Ipopt9SumMatrixD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt9SumMatrixC2EPKNS_14SumMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 12), (16, 48)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt12TaggedObjectE, i64 16), ptr %0, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt12TaggedObjectE, i64 48), ptr %i.b, align 8, !tbaa !14
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(69) %0)
          to label %_ZN5Ipopt12TaggedObjectC2Ev.exit.i unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.b ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.b) #19
  br label %common.resume

_ZN5Ipopt12TaggedObjectC2Ev.exit.i:               ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5Ipopt6MatrixE, i64 16), ptr %0, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt6MatrixE, i64 128), ptr %i.b, align 8, !tbaa !14
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt6MatrixC2EPKNS_11MatrixSpaceE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5Ipopt12TaggedObjectC2Ev.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !12
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !12
  br label %_ZN5Ipopt6MatrixC2EPKNS_11MatrixSpaceE.exit

_ZN5Ipopt6MatrixC2EPKNS_11MatrixSpaceE.exit:      ; preds = %_ZN5Ipopt12TaggedObjectC2Ev.exit.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.i, align 8, !tbaa !76
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5Ipopt9SumMatrixE, i64 16), ptr %0, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt9SumMatrixE, i64 128), ptr %i.b, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36   ; 3 uses
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = icmp slt i32 %i.l, 0
  br i1 %i.n, label %bb.d, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.d:                                             ; preds = %_ZN5Ipopt6MatrixC2EPKNS_11MatrixSpaceE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN5Ipopt6MatrixC2EPKNS_11MatrixSpaceE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.o = shl nuw nsw i64 %i.m, 3                  ; 3 uses
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21
          to label %.noexc8 unwind label %bb.h    ; 6 uses

.noexc8:                                          ; preds = %bb.e
  store ptr %i.p, ptr %i.j, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.q, ptr %i.r, align 8, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 3 uses
  %i.t = add nsw i64 %i.o, -8                     ; 2 uses
  %i.u = lshr exact i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc8
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %next.gep, align 8, !tbaa !42
  store <2 x double> splat (double 1.000000e+00), ptr %i.z, align 8, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc8, %middle.block
  %.07.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %.noexc8 ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store double 1.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i, align 8, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.s
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !75

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.s, %middle.block ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !79
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ae = load i32, ptr %i.k, align 4, !tbaa !36  ; 3 uses
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = icmp slt i32 %i.ae, 0
  br i1 %i.ag, label %bb.f, label %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

bb.f:                                             ; preds = %.loopexit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #20
          to label %.noexc10 unwind label %bb.i

.noexc10:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %.not.i.i.i.i9 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i9, label %bb.g, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.ah = shl nuw nsw i64 %i.af, 3                ; 3 uses
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #21
          to label %.noexc11 unwind label %bb.i   ; 4 uses

.noexc11:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !46
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.af
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ai, i8 0, i64 %i.ah, i1 false), !tbaa !49
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ai, i64 %i.ah
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i, %.noexc11
  %.sink.i = phi ptr [ %i.aj, %.noexc11 ], [ null, %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.noexc11 ], [ null, %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sink.i, ptr %i.al, align 8, !tbaa !50
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.am, align 8, !tbaa !60
  ret void

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.i:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !39  ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !40
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.an, %bb.h ], [ %i.ao, %bb.i ], [ %i.ao, %bb.j ]
  tail call void @_ZN5Ipopt6MatrixD2Ev(ptr noundef nonnull align 8 dead_on_return(69) dereferenceable(69) %0) #19
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt6MatrixD2Ev(ptr noundef nonnull align 8 dead_on_return(69) dereferenceable(69) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5Ipopt6MatrixE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt6MatrixE, i64 128), ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !12
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !12
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(20) %i.c) #19, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_11MatrixSpaceEED2Ev.exit:  ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Ipopt9SumMatrixD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) initializes((0, 8), (16, 24)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5Ipopt9SumMatrixE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt9SumMatrixE, i64 128), ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6MatrixEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6MatrixEEEEvPT_.exit.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.05.i.i.i, align 8, !tbaa !49 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6MatrixEEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !12
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !12
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6MatrixEEEEvPT_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(69) %i.f) #19, !inline_history !80
  br label %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6MatrixEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6MatrixEEEEvPT_.exit.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.e
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !81

_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5Ipopt8SmartPtrIKNS0_6MatrixEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !46
  br label %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.o = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #22
  br label %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5Ipopt8SmartPtrIKNS0_6MatrixEEES4_EvT_S6_RSaIT0_E.exit.i, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN5Ipopt8SmartPtrIKNS0_6MatrixEEESaIS4_EED2Ev.exit, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5Ipopt6MatrixE, i64 16), ptr %0, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt6MatrixE, i64 128), ptr %i.a, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18 ; 4 uses
  %.not.i.i.i2 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i2, label %_ZN5Ipopt6MatrixD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !12
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !12
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %_ZN5Ipopt6MatrixD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(20) %i.ac) #19, !inline_history !82
  br label %_ZN5Ipopt6MatrixD2Ev.exit

_ZN5Ipopt6MatrixD2Ev.exit:                        ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.f, %bb.g
  tail call void @_ZN5Ipopt7SubjectD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #19
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn16_N5Ipopt9SumMatrixD1Ev(ptr noundef %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN5Ipopt9SumMatrixD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.a) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Ipopt9SumMatrixD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN5Ipopt9SumMatrixD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #22
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @_ZThn16_N5Ipopt9SumMatrixD0Ev(ptr noundef %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN5Ipopt9SumMatrixD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.a) #19, !inline_history !83
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 noundef 128) #22, !inline_history !83
  ret void
end_hunk_0
