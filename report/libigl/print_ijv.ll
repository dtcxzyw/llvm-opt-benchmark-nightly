Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/print_ijv?download=true
inline.NumInlined: 555
inline.NumDeleted: 330
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { ptr, i64 }
%"class.Eigen::Matrix.3" = type { %"class.Eigen::PlainObjectBase.4" }
%"class.Eigen::PlainObjectBase.4" = type { %"class.Eigen::DenseStorage.11" }
%"class.Eigen::DenseStorage.11" = type { ptr, i64 }
%"class.Eigen::Matrix.13" = type { %"class.Eigen::PlainObjectBase.14" }
%"class.Eigen::PlainObjectBase.14" = type { %"class.Eigen::DenseStorage.21" }
%"class.Eigen::DenseStorage.21" = type { ptr, i64, i64 }
%"struct.Eigen::IOFormat" = type <{ %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, [3 x i8], i32, i32, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }

$_ZN3igl9print_ijvIdEEvRKN5Eigen12SparseMatrixIT_Li0EiEEi = comdat any

$_ZN5EigenlsINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEERSoS3_RKNS_9DenseBaseIT_EE = comdat any

$_ZN5Eigen8internal12print_matrixINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEERSoS4_RKT_RKNS_8IOFormatE = comdat any

$_ZN5Eigen8IOFormatC2EiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_S8_S8_c = comdat any

$_ZN5Eigen8IOFormatD2Ev = comdat any

$_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev = comdat any

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external constant { [5 x ptr], [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl9print_ijvIdEEvRKN5Eigen12SparseMatrixIT_Li0EiEEi(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %3 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %4 = alloca %"class.Eigen::Matrix.3", align 8   ; 8 uses
  %5 = alloca %"class.Eigen::Matrix.13", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl4findIdN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_12SparseMatrixIT_Li0EiEERNS1_9DenseBaseIT0_EERNSA_IT1_EERNSA_IT2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !56   ; 24 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.c = icmp sgt i64 %i.b, 3074457345618258602
  br i1 %i.c, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.f = icmp sgt i64 %i.b, 0
  br i1 %i.f, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.g = icmp ugt i64 %i.b, 768614336404564650
  br i1 %i.g, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.c
  %i.h = mul nuw i64 %i.b, 24
  %i.i = call noalias ptr @malloc(i64 noundef %i.h) #17 ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.invoke, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.c, %bb.b
  %i.k = call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !13
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
          to label %.cont unwind label %bb.d

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %.invoke
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.i, ptr %5, align 8, !tbaa !16
  store i64 %i.b, ptr %i.d, align 8, !tbaa !17
  store i64 3, ptr %i.e, align 8, !tbaa !18
  %i.m = load ptr, ptr %2, align 8, !tbaa !57     ; 2 uses
  %min.iters.check = icmp ult i64 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader203, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.b, 1152921504606846972      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %wide.load = load <2 x i32>, ptr %i.o, align 4, !tbaa !58
  %wide.load103 = load <2 x i32>, ptr %i.p, align 4, !tbaa !58
  %i.q = sitofp <2 x i32> %wide.load to <2 x double>
  %i.r = sitofp <2 x i32> %wide.load103 to <2 x double>
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x double> %i.q, ptr %i.n, align 8, !tbaa !20
  store <2 x double> %i.r, ptr %i.s, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %.loopexit196, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader203

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader203:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader203, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader203 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !58
  %i.x = sitofp i32 %i.w to double
  store double %i.x, ptr %i.u, align 8, !tbaa !20
  %i.y = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.y, %i.b
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit196, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !34

.loopexit196:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.b ; 2 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !57    ; 2 uses
  %min.iters.check105 = icmp ult i64 %i.b, 4
  br i1 %min.iters.check105, label %.lr.ph.i.i.i.i.i.i.i.i.i.i22.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %.loopexit196
  %n.vec107 = and i64 %i.b, 1152921504606846972   ; 3 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next112, %vector.body108 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index109 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index109 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %wide.load110 = load <2 x i32>, ptr %i.ac, align 4, !tbaa !58
  %wide.load111 = load <2 x i32>, ptr %i.ad, align 4, !tbaa !58
  %i.ae = sitofp <2 x i32> %wide.load110 to <2 x double>
  %i.af = sitofp <2 x i32> %wide.load111 to <2 x double>
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x double> %i.ae, ptr %i.ab, align 8, !tbaa !20
  store <2 x double> %i.af, ptr %i.ag, align 8, !tbaa !20
  %index.next112 = add nuw i64 %index109, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next112, %n.vec107
  br i1 %i.ah, label %middle.block113, label %vector.body108, !llvm.loop !35

middle.block113:                                  ; preds = %vector.body108
  %cmp.n114 = icmp eq i64 %i.b, %n.vec107
  br i1 %cmp.n114, label %.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i22.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i22.preheader:           ; preds = %.loopexit196, %middle.block113
  %.05.i.i.i.i.i.i.i.i.i.i23.ph = phi i64 [ 0, %.loopexit196 ], [ %n.vec107, %middle.block113 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i22

.lr.ph.i.i.i.i.i.i.i.i.i.i22:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i22.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i22
  %.05.i.i.i.i.i.i.i.i.i.i23 = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.i22 ], [ %.05.i.i.i.i.i.i.i.i.i.i23.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i22.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05.i.i.i.i.i.i.i.i.i.i23
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.05.i.i.i.i.i.i.i.i.i.i23
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !58
  %i.al = sitofp i32 %i.ak to double
  store double %i.al, ptr %i.ai, align 8, !tbaa !20
  %i.am = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i23, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i24 = icmp eq i64 %i.am, %i.b
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i24, label %.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i22, !llvm.loop !36

.thread.sink.split:                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.b, ptr %i.d, align 8, !tbaa !17
  store i64 3, ptr %i.e, align 8, !tbaa !18
  br label %.thread

.thread:                                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i22, %middle.block113, %.thread.sink.split
  %i.an = phi ptr [ null, %.thread.sink.split ], [ %i.i, %middle.block113 ], [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i22 ] ; 2 uses
  %6 = ptrtoaddr ptr %i.an to i64                 ; 2 uses
  %.idx = shl nsw i64 %i.b, 4                     ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %.idx ; 14 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !62    ; 14 uses
  %7 = ptrtoaddr ptr %i.ap to i64                 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = and i64 %i.aq, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.thread
  %i.as = lshr exact i64 %i.aq, 3
  %i.at = and i64 %i.as, 1
  %i.au = call i64 @llvm.smin.i64(i64 %i.at, i64 %i.b)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %.thread
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %bb.e ], [ %i.b, %.thread ] ; 11 uses
  %i.av = sub nsw i64 %i.b, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aw = sdiv i64 %i.av, 2
  %i.ax = shl nsw i64 %i.aw, 1                    ; 2 uses
  %i.ay = add nsw i64 %i.ax, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.az = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.az, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check117 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 10
  br i1 %min.iters.check117, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader202, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ba = add i64 %.idx, %6
  %i.bb = sub i64 %7, %i.ba
  %diff.check = icmp ugt i64 %i.bb, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader202, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck
  %n.vec119 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next124, %vector.body120 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index121 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %index121 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load122 = load <2 x double>, ptr %i.bd, align 8, !tbaa !20
  %wide.load123 = load <2 x double>, ptr %i.be, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <2 x double> %wide.load122, ptr %i.bc, align 8, !tbaa !20
  store <2 x double> %wide.load123, ptr %i.bf, align 8, !tbaa !20
  %index.next124 = add nuw i64 %index121, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next124, %n.vec119
  br i1 %i.bg, label %middle.block125, label %vector.body120, !llvm.loop !37

middle.block125:                                  ; preds = %vector.body120
  %cmp.n126 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec119
  br i1 %cmp.n126, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader202

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader202:        ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block125
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec119, %middle.block125 ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader202, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader202 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader202 ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !20
  store double %i.bj, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !38

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader202
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader202 ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bl = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !20
  store double %i.bp, ptr %i.bn, align 8, !tbaa !20
  %i.bq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bq
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !20
  store double %i.bt, ptr %i.br, align 8, !tbaa !20
  %i.bu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bu
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !20
  store double %i.bx, ptr %i.bv, align 8, !tbaa !20
  %i.by = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.by
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.by
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !20
  store double %i.cb, ptr %i.bz, align 8, !tbaa !20
  %i.cc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cc, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !39

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block125, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.cd = icmp sgt i64 %i.av, 1
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i26, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ce = icmp slt i64 %i.ay, %i.b
  br i1 %i.ce, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.cf = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %i.ax
  %i.cg = sub i64 %i.b, %i.cf                     ; 3 uses
  %min.iters.check131 = icmp ult i64 %i.cg, 10
  br i1 %min.iters.check131, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader201, label %vector.memcheck128

vector.memcheck128:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ch = add i64 %.idx, %6
  %i.ci = sub i64 %7, %i.ch
  %diff.check129 = icmp ugt i64 %i.ci, -32
  br i1 %diff.check129, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader201, label %vector.ph132

vector.ph132:                                     ; preds = %vector.memcheck128
  %n.vec133 = and i64 %i.cg, -4                   ; 3 uses
  %i.cj = add i64 %i.ay, %n.vec133
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next138, %vector.body134 ] ; 2 uses
  %i.ck = add i64 %i.ay, %index135                ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ck ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load136 = load <2 x double>, ptr %i.cm, align 8, !tbaa !20
  %wide.load137 = load <2 x double>, ptr %i.cn, align 8, !tbaa !20
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <2 x double> %wide.load136, ptr %i.cl, align 8, !tbaa !20
  store <2 x double> %wide.load137, ptr %i.co, align 8, !tbaa !20
  %index.next138 = add nuw i64 %index135, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.cp, label %middle.block139, label %vector.body134, !llvm.loop !40

middle.block139:                                  ; preds = %vector.body134
  %cmp.n140 = icmp eq i64 %i.cg, %n.vec133
  br i1 %cmp.n140, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader201

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader201:      ; preds = %vector.memcheck128, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block139
  %.05.i18.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ay, %vector.memcheck128 ], [ %i.ay, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cj, %middle.block139 ] ; 4 uses
  %i.cq = sub i64 %i.b, %.05.i18.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter204 = and i64 %i.cq, 3                 ; 2 uses
  %lcmp.mod205.not = icmp eq i64 %xtraiter204, 0
  br i1 %lcmp.mod205.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader201, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cu, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader201 ] ; 3 uses
  %prol.iter206 = phi i64 [ %prol.iter206.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader201 ]
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !20
  store double %i.ct, ptr %i.cr, align 8, !tbaa !20
  %i.cu = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter206.next = add i64 %prol.iter206, 1   ; 2 uses
  %prol.iter206.cmp.not = icmp eq i64 %prol.iter206.next, %xtraiter204
  br i1 %prol.iter206.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !41

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader201
  %.05.i18.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader201 ], [ %i.cu, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.cv = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.ph, %i.b
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dm, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !20
  store double %i.cz, ptr %i.cx, align 8, !tbaa !20
  %i.da = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.da
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.da
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !20
  store double %i.dd, ptr %i.db, align 8, !tbaa !20
  %i.de = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.de
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.de
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !20
  store double %i.dh, ptr %i.df, align 8, !tbaa !20
  %i.di = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.di
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.di
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !20
  store double %i.dl, ptr %i.dj, align 8, !tbaa !20
  %i.dm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dm, %i.b
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, !llvm.loop !42

.lr.ph.i.i.i.i.i.i.i.i.i.i26:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i26
  %.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.i.i26 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS7_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.do = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %.021.i.i.i.i.i.i.i.i.i.i
  %i.dp = load <2 x double>, ptr %i.do, align 1, !tbaa !22
  store <2 x double> %i.dp, ptr %i.dn, align 16, !tbaa !22
  %i.dq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dr = icmp slt i64 %i.dq, %i.ay
  br i1 %i.dr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i26, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !43

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block139, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %_ZN5Eigen9ArrayBaseINS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEpLERKd.exit41, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS1_IdLin1ELi1ELi0ELin1ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.ds = sitofp i32 %1 to double                 ; 10 uses
  %i.dt = load ptr, ptr %5, align 8, !tbaa !16, !noalias !64 ; 7 uses
  %i.du = load i64, ptr %i.d, align 8, !tbaa !17, !noalias !64 ; 13 uses
  %i.dv = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dw = and i64 %i.dv, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.dx = lshr exact i64 %i.dv, 3
  %i.dy = and i64 %i.dx, 1
  %i.dz = call i64 @llvm.smin.i64(i64 %i.dy, i64 %i.du)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.dz, %bb.g ], [ %i.du, %bb.f ] ; 9 uses
  %i.ea = sub nsw i64 %i.du, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.eb = sdiv i64 %i.ea, 2
  %i.ec = shl nsw i64 %i.eb, 1                    ; 2 uses
  %i.ed = add nsw i64 %i.ec, %.0.i.i.i.i.i.i.i    ; 5 uses
  %i.ee = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check143 = icmp ult i64 %.0.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check143, label %.lr.ph.i.i.i.i.i.i.i.preheader200, label %vector.ph144

vector.ph144:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec145 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ds, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next150, %vector.body146 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %index147 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %wide.load148 = load <2 x double>, ptr %i.ef, align 8, !tbaa !20
  %wide.load149 = load <2 x double>, ptr %i.eg, align 8, !tbaa !20
  %i.eh = fadd <2 x double> %wide.load148, %broadcast.splat
  %i.ei = fadd <2 x double> %wide.load149, %broadcast.splat
  store <2 x double> %i.eh, ptr %i.ef, align 8, !tbaa !20
  store <2 x double> %i.ei, ptr %i.eg, align 8, !tbaa !20
  %index.next150 = add nuw i64 %index147, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next150, %n.vec145
  br i1 %i.ej, label %middle.block151, label %vector.body146, !llvm.loop !46

middle.block151:                                  ; preds = %vector.body146
  %cmp.n152 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec145
  br i1 %cmp.n152, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader200

.lr.ph.i.i.i.i.i.i.i.preheader200:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block151
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec145, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader200, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader200 ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !20
  %i.em = fadd double %i.el, %i.ds
  store double %i.em, ptr %i.ek, align 8, !tbaa !20
  %i.en = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.en, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !47

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block151, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.eo = icmp sgt i64 %i.ea, 1
  br i1 %i.eo, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.ep = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_12ArrayWrapperINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.er = icmp slt i64 %i.ed, %i.du
  br i1 %i.er, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.es = add i64 %.0.i.i.i.i.i.i.i, %i.ec
  %i.et = sub i64 %i.du, %i.es                    ; 3 uses
  %min.iters.check155 = icmp ult i64 %i.et, 4
  br i1 %min.iters.check155, label %.lr.ph.i17.i.i.i.i.i.i.preheader199, label %vector.ph156

vector.ph156:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec157 = and i64 %i.et, -4                   ; 3 uses
  %i.eu = add i64 %i.ed, %n.vec157
  %broadcast.splatinsert158 = insertelement <2 x double> poison, double %i.ds, i64 0
  %broadcast.splat159 = shufflevector <2 x double> %broadcast.splatinsert158, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ev = getelementptr [8 x i8], ptr %i.dt, i64 %i.ed
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph156
  %index161 = phi i64 [ 0, %vector.ph156 ], [ %index.next164, %vector.body160 ] ; 2 uses
  %i.ew = getelementptr [8 x i8], ptr %i.ev, i64 %index161 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %wide.load162 = load <2 x double>, ptr %i.ew, align 8, !tbaa !20
  %wide.load163 = load <2 x double>, ptr %i.ex, align 8, !tbaa !20
  %i.ey = fadd <2 x double> %wide.load162, %broadcast.splat159
  %i.ez = fadd <2 x double> %wide.load163, %broadcast.splat159
  store <2 x double> %i.ey, ptr %i.ew, align 8, !tbaa !20
  store <2 x double> %i.ez, ptr %i.ex, align 8, !tbaa !20
  %index.next164 = add nuw i64 %index161, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.fa, label %middle.block165, label %vector.body160, !llvm.loop !48

middle.block165:                                  ; preds = %vector.body160
  %cmp.n166 = icmp eq i64 %i.et, %n.vec157
end_hunk_0
