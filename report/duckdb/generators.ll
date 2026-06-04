inline.NumInlined: 228
inline.NumDeleted: 104
begin_hunk_0
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.8 = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<duckdb::ExceptionFormatValue, std::allocator<duckdb::ExceptionFormatValue>>::_Vector_impl" }
%"struct.std::_Vector_base<duckdb::ExceptionFormatValue, std::allocator<duckdb::ExceptionFormatValue>>::_Vector_impl" = type { %"struct.std::_Vector_base<duckdb::ExceptionFormatValue, std::allocator<duckdb::ExceptionFormatValue>>::_Vector_impl_data" }
%"struct.std::_Vector_base<duckdb::ExceptionFormatValue, std::allocator<duckdb::ExceptionFormatValue>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.duckdb::ExceptionFormatValue" = type { i8, double, %"struct.duckdb::hugeint_t", %"class.std::__cxx11::basic_string" }
%"struct.duckdb::hugeint_t" = type { i64, i64 }

$_ZN6duckdb25TemplatedGenerateSequenceIaEEvRNS_6VectorEmRKNS_15SelectionVectorEll = comdat any

$_ZN6duckdb25TemplatedGenerateSequenceIsEEvRNS_6VectorEmRKNS_15SelectionVectorEll = comdat any

$_ZN6duckdb25TemplatedGenerateSequenceIiEEvRNS_6VectorEmRKNS_15SelectionVectorEll = comdat any

$_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE = comdat any

$_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$_ZN6duckdb9Exception25ConstructMessageRecursiveINS_12PhysicalTypeEJRKS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RSt6vectorINS_20ExceptionFormatValueESaISE_EERKT_DpOT0_ = comdat any

$_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev = comdat any

$_ZN6duckdb9Exception25ConstructMessageRecursiveINS_12PhysicalTypeEJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_RSt6vectorINS_20ExceptionFormatValueESaISC_EERKT_DpOT0_ = comdat any

$_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE = comdat any

$_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE = comdat any

$_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE = comdat any

$_ZTIN6duckdb20InvalidTypeExceptionE = comdat any

$_ZTSN6duckdb20InvalidTypeExceptionE = comdat any

$_ZTIN6duckdb9ExceptionE = comdat any

$_ZTSN6duckdb9ExceptionE = comdat any

$_ZTIN6duckdb23NotImplementedExceptionE = comdat any

$_ZTSN6duckdb23NotImplementedExceptionE = comdat any

$_ZTIN6duckdb17InternalExceptionE = comdat any

$_ZTSN6duckdb17InternalExceptionE = comdat any

@.str = private unnamed_addr constant [48 x i8] c"Can only generate sequences for numeric values!\00", align 1
@_ZTIN6duckdb20InvalidTypeExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb20InvalidTypeExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6duckdb20InvalidTypeExceptionE = linkonce_odr constant [32 x i8] c"N6duckdb20InvalidTypeExceptionE\00", comdat, align 1
@_ZTIN6duckdb9ExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb9ExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN6duckdb9ExceptionE = linkonce_odr constant [20 x i8] c"N6duckdb9ExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.1 = private unnamed_addr constant [41 x i8] c"Unimplemented type for generate sequence\00", align 1
@_ZTIN6duckdb23NotImplementedExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb23NotImplementedExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTSN6duckdb23NotImplementedExceptionE = linkonce_odr constant [35 x i8] c"N6duckdb23NotImplementedExceptionE\00", comdat, align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Sequence start or increment out of type range\00", align 1
@_ZTIN6duckdb17InternalExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6duckdb17InternalExceptionE, ptr @_ZTIN6duckdb9ExceptionE }, comdat, align 8
@_ZTSN6duckdb17InternalExceptionE = linkonce_odr constant [29 x i8] c"N6duckdb17InternalExceptionE\00", comdat, align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Expected vector of type %s, but found vector of type %s\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16VectorOperations16GenerateSequenceERNS_6VectorEmll(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_ZNK6duckdb11LogicalType9IsNumericEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb20InvalidTypeExceptionC1ERKNS_11LogicalTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb20InvalidTypeExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #14
          to label %bb.ag unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %common.resume.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %.022 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %10, align 8, !tbaa !7     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br i1 %.022, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br i1 %.022, label %common.resume.sink.split, label %common.resume

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  switch i8 %i.j, label %bb.ac [
    i8 3, label %bb.g
    i8 5, label %bb.n
    i8 7, label %bb.u
    i8 9, label %bb.ab
  ]

bb.g:                                             ; preds = %bb.f
  %i.k = icmp sgt i64 %2, 127
  %i.l = icmp sgt i64 %3, 127
  %or.cond.i = or i1 %i.k, %i.l
  br i1 %or.cond.i, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #14
          to label %bb.m unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %common.resume.sink.split

bb.k:                                             ; preds = %bb.j, %bb.i
  %.018.i = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.p = load ptr, ptr %8, align 8, !tbaa !7      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br i1 %.018.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br i1 %.018.i, label %common.resume.sink.split, label %common.resume

bb.l:                                             ; preds = %bb.g
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIaEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23   ; 4 uses
  %.not30.i = icmp eq i64 %1, 0
  br i1 %.not30.i, label %_ZN6duckdbL25TemplatedGenerateSequenceIaEEvRNS_6VectorEmll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.u = trunc i64 %2 to i8                       ; 6 uses
  %i.v = trunc i64 %3 to i8                       ; 6 uses
  store i8 %i.u, ptr %i.t, align 1, !tbaa !37
  %exitcond.peel.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i, label %_ZN6duckdbL25TemplatedGenerateSequenceIaEEvRNS_6VectorEmll.exit, label %iter.check181

iter.check181:                                    ; preds = %.lr.ph.i
  %i.w = add i64 %1, -1                           ; 5 uses
  %min.iters.check159 = icmp ult i64 %1, 5
  br i1 %min.iters.check159, label %.peel.next.i.preheader, label %vector.main.loop.iter.check160

vector.main.loop.iter.check160:                   ; preds = %iter.check181
  %min.iters.check161 = icmp ult i64 %1, 33
  br i1 %min.iters.check161, label %vec.epilog.ph185, label %vector.ph162

vector.ph162:                                     ; preds = %vector.main.loop.iter.check160
  %n.mod.vf163 = and i64 %i.w, 28
  %n.vec164 = and i64 %i.w, -32                   ; 5 uses
  %broadcast.splatinsert165 = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %broadcast.splat166 = shufflevector <16 x i8> %broadcast.splatinsert165, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.x = or disjoint i64 %n.vec164, 1
  %i.y = trunc i64 %n.vec164 to i8
  %i.z = mul i8 %i.y, %i.v
  %i.aa = add i8 %i.z, %i.u                       ; 2 uses
  %i.ab = shl <16 x i8> %broadcast.splat166, splat (i8 4) ; 3 uses
  %broadcast.splatinsert167 = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %broadcast.splat168 = shufflevector <16 x i8> %broadcast.splatinsert167, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ac = mul <16 x i8> %broadcast.splat166, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %induction169 = add <16 x i8> %broadcast.splat168, %i.ac
  %invariant.op216 = add <16 x i8> %i.ab, %broadcast.splat166
  %invariant.op218 = add <16 x i8> %i.ab, %i.ab
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph162
  %index171 = phi i64 [ 0, %vector.ph162 ], [ %index.next174, %vector.body170 ] ; 2 uses
  %vec.ind172 = phi <16 x i8> [ %induction169, %vector.ph162 ], [ %vec.ind.next175.reass, %vector.body170 ] ; 3 uses
  %i.ad = add <16 x i8> %vec.ind172, %broadcast.splat166
  %.reass217 = add <16 x i8> %vec.ind172, %invariant.op216
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %index171 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 17
  store <16 x i8> %i.ad, ptr %i.af, align 1, !tbaa !37
  store <16 x i8> %.reass217, ptr %i.ag, align 1, !tbaa !37
  %index.next174 = add nuw i64 %index171, 32      ; 2 uses
  %vec.ind.next175.reass = add <16 x i8> %vec.ind172, %invariant.op218
  %i.ah = icmp eq i64 %index.next174, %n.vec164
  br i1 %i.ah, label %middle.block176, label %vector.body170, !llvm.loop !38

middle.block176:                                  ; preds = %vector.body170
  %cmp.n177 = icmp eq i64 %i.w, %n.vec164
  br i1 %cmp.n177, label %_ZN6duckdbL25TemplatedGenerateSequenceIaEEvRNS_6VectorEmll.exit, label %vec.epilog.iter.check183

vec.epilog.iter.check183:                         ; preds = %middle.block176
  %min.epilog.iters.check184 = icmp eq i64 %n.mod.vf163, 0
  br i1 %min.epilog.iters.check184, label %.peel.next.i.preheader, label %vec.epilog.ph185, !prof !43

vec.epilog.ph185:                                 ; preds = %vector.main.loop.iter.check160, %vec.epilog.iter.check183
  %vec.epilog.resume.val178 = phi i64 [ %n.vec164, %vec.epilog.iter.check183 ], [ 0, %vector.main.loop.iter.check160 ]
  %bc.resume.val180 = phi i8 [ %i.aa, %vec.epilog.iter.check183 ], [ %i.u, %vector.main.loop.iter.check160 ]
  %n.vec187 = and i64 %i.w, -4                    ; 4 uses
  %i.ai = or disjoint i64 %n.vec187, 1
  %i.aj = trunc i64 %n.vec187 to i8
  %i.ak = mul i8 %i.aj, %i.v
  %i.al = add i8 %i.ak, %i.u
  %broadcast.splatinsert188 = insertelement <4 x i8> poison, i8 %i.v, i64 0
  %broadcast.splat189 = shufflevector <4 x i8> %broadcast.splatinsert188, <4 x i8> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert190 = insertelement <4 x i8> poison, i8 %bc.resume.val180, i64 0
  %broadcast.splat191 = shufflevector <4 x i8> %broadcast.splatinsert190, <4 x i8> poison, <4 x i32> zeroinitializer
  %14 = mul <4 x i8> %broadcast.splat189, <i8 0, i8 1, i8 2, i8 3>
  %induction192 = add <4 x i8> %broadcast.splat191, %14
  %i.am = shl i8 %i.v, 2
  %broadcast.splatinsert193 = insertelement <4 x i8> poison, i8 %i.am, i64 0
  %broadcast.splat194 = shufflevector <4 x i8> %broadcast.splatinsert193, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body195

vec.epilog.vector.body195:                        ; preds = %vec.epilog.vector.body195, %vec.epilog.ph185
  %index196 = phi i64 [ %vec.epilog.resume.val178, %vec.epilog.ph185 ], [ %index.next198, %vec.epilog.vector.body195 ] ; 2 uses
  %vec.ind197 = phi <4 x i8> [ %induction192, %vec.epilog.ph185 ], [ %vec.ind.next199, %vec.epilog.vector.body195 ] ; 2 uses
  %15 = add <4 x i8> %vec.ind197, %broadcast.splat189
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 %index196
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store <4 x i8> %15, ptr %i.ao, align 1, !tbaa !37
  %index.next198 = add nuw i64 %index196, 4       ; 2 uses
  %vec.ind.next199 = add <4 x i8> %vec.ind197, %broadcast.splat194
  %i.ap = icmp eq i64 %index.next198, %n.vec187
  br i1 %i.ap, label %vec.epilog.middle.block200, label %vec.epilog.vector.body195, !llvm.loop !44

vec.epilog.middle.block200:                       ; preds = %vec.epilog.vector.body195
  %cmp.n201 = icmp eq i64 %i.w, %n.vec187
  br i1 %cmp.n201, label %_ZN6duckdbL25TemplatedGenerateSequenceIaEEvRNS_6VectorEmll.exit, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %iter.check181, %vec.epilog.iter.check183, %vec.epilog.middle.block200
  %.029.i.ph = phi i64 [ 1, %iter.check181 ], [ %i.x, %vec.epilog.iter.check183 ], [ %i.ai, %vec.epilog.middle.block200 ]
  %.01628.i.ph = phi i8 [ %i.u, %iter.check181 ], [ %i.aa, %vec.epilog.iter.check183 ], [ %i.al, %vec.epilog.middle.block200 ]
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %.peel.next.i
  %.029.i = phi i64 [ %i.ar, %.peel.next.i ], [ %.029.i.ph, %.peel.next.i.preheader ] ; 2 uses
  %.01628.i = phi i8 [ %.1.i, %.peel.next.i ], [ %.01628.i.ph, %.peel.next.i.preheader ]
  %.1.i = add i8 %.01628.i, %i.v                  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 %.029.i
  store i8 %.1.i, ptr %i.aq, align 1, !tbaa !37
  %i.ar = add nuw i64 %.029.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ar, %1
  br i1 %exitcond.not.i, label %_ZN6duckdbL25TemplatedGenerateSequenceIaEEvRNS_6VectorEmll.exit, label %.peel.next.i, !llvm.loop !45

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i57, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47
  %.sink = phi ptr [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i57 ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i42 ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47 ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46 ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62 ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61 ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i57 ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i42 ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46 ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61 ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.thread ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @__cxa_free_exception(ptr %.sink) #13
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46 ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47 ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i62 ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.j
  unreachable

bb.n:                                             ; preds = %bb.f
  %i.as = icmp sgt i64 %2, 32767
  %i.at = icmp sgt i64 %3, 32767
  %or.cond.i33 = or i1 %i.as, %i.at
  br i1 %or.cond.i33, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.au = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i42

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #14
          to label %bb.t unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i42: ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %common.resume.sink.split

bb.r:                                             ; preds = %bb.q, %bb.p
  %.018.i45 = phi i1 [ false, %bb.q ], [ true, %bb.p ] ; 2 uses
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ax = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.ax) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br i1 %.018.i45, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br i1 %.018.i45, label %common.resume.sink.split, label %common.resume

bb.s:                                             ; preds = %bb.n
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !23 ; 4 uses
  %.not30.i34 = icmp eq i64 %1, 0
  br i1 %.not30.i34, label %_ZN6duckdbL25TemplatedGenerateSequenceIaEEvRNS_6VectorEmll.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.s
  %i.bc = trunc i64 %2 to i16                     ; 6 uses
  %i.bd = trunc i64 %3 to i16                     ; 6 uses
  store i16 %i.bc, ptr %i.bb, align 2, !tbaa !46
  %exitcond.peel.not.i36 = icmp eq i64 %1, 1
  br i1 %exitcond.peel.not.i36, label %_ZN6duckdbL25TemplatedGenerateSequenceIaEEvRNS_6VectorEmll.exit, label %iter.check

iter.check:                                       ; preds = %.lr.ph.i35
  %i.be = add i64 %1, -1                          ; 5 uses
  %min.iters.check122 = icmp ult i64 %1, 5
  br i1 %min.iters.check122, label %.peel.next.i37.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check123 = icmp ult i64 %1, 17
  br i1 %min.iters.check123, label %vec.epilog.ph, label %vector.ph124

vector.ph124:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf125 = and i64 %i.be, 12
  %n.vec126 = and i64 %i.be, -16                  ; 5 uses
  %broadcast.splatinsert127 = insertelement <8 x i16> poison, i16 %i.bd, i64 0
  %broadcast.splat128 = shufflevector <8 x i16> %broadcast.splatinsert127, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bf = or disjoint i64 %n.vec126, 1
  %i.bg = trunc i64 %n.vec126 to i16
  %i.bh = mul i16 %i.bg, %i.bd
  %i.bi = add i16 %i.bh, %i.bc                    ; 2 uses
  %i.bj = shl <8 x i16> %broadcast.splat128, splat (i16 3) ; 3 uses
  %broadcast.splatinsert129 = insertelement <8 x i16> poison, i16 %i.bc, i64 0
  %broadcast.splat130 = shufflevector <8 x i16> %broadcast.splatinsert129, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bk = mul <8 x i16> %broadcast.splat128, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  %induction131 = add <8 x i16> %broadcast.splat130, %i.bk
  %invariant.op213 = add <8 x i16> %i.bj, %broadcast.splat128
  %invariant.op215 = add <8 x i16> %i.bj, %i.bj
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph124
  %index133 = phi i64 [ 0, %vector.ph124 ], [ %index.next136, %vector.body132 ] ; 2 uses
  %vec.ind134 = phi <8 x i16> [ %induction131, %vector.ph124 ], [ %vec.ind.next137.reass, %vector.body132 ] ; 3 uses
  %i.bl = add <8 x i16> %vec.ind134, %broadcast.splat128
  %.reass214 = add <8 x i16> %vec.ind134, %invariant.op213
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %index133 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 18
  store <8 x i16> %i.bl, ptr %i.bn, align 2, !tbaa !46
  store <8 x i16> %.reass214, ptr %i.bo, align 2, !tbaa !46
  %index.next136 = add nuw i64 %index133, 16      ; 2 uses
  %vec.ind.next137.reass = add <8 x i16> %vec.ind134, %invariant.op215
  %i.bp = icmp eq i64 %index.next136, %n.vec126
  br i1 %i.bp, label %middle.block138, label %vector.body132, !llvm.loop !48

middle.block138:                                  ; preds = %vector.body132
  %cmp.n139 = icmp eq i64 %i.be, %n.vec126
  br i1 %cmp.n139, label %_ZN6duckdbL25TemplatedGenerateSequenceIaEEvRNS_6VectorEmll.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block138
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf125, 0
  br i1 %min.epilog.iters.check, label %.peel.next.i37.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec126, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val141 = phi i16 [ %i.bi, %vec.epilog.iter.check ], [ %i.bc, %vector.main.loop.iter.check ]
  %n.vec143 = and i64 %i.be, -4                   ; 4 uses
  %i.bq = or disjoint i64 %n.vec143, 1
  %i.br = trunc i64 %n.vec143 to i16
  %i.bs = mul i16 %i.br, %i.bd
  %i.bt = add i16 %i.bs, %i.bc
  %broadcast.splatinsert144 = insertelement <4 x i16> poison, i16 %i.bd, i64 0
  %broadcast.splat145 = shufflevector <4 x i16> %broadcast.splatinsert144, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert146 = insertelement <4 x i16> poison, i16 %bc.resume.val141, i64 0
  %broadcast.splat147 = shufflevector <4 x i16> %broadcast.splatinsert146, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.bu = mul <4 x i16> %broadcast.splat145, <i16 0, i16 1, i16 2, i16 3>
  %induction148 = add <4 x i16> %broadcast.splat147, %i.bu
  %i.bv = shl i16 %i.bd, 2
  %broadcast.splatinsert149 = insertelement <4 x i16> poison, i16 %i.bv, i64 0
  %broadcast.splat150 = shufflevector <4 x i16> %broadcast.splatinsert149, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index151 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next153, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind152 = phi <4 x i16> [ %induction148, %vec.epilog.ph ], [ %vec.ind.next154, %vec.epilog.vector.body ] ; 2 uses
  %i.bw = add <4 x i16> %vec.ind152, %broadcast.splat145
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %index151
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  store <4 x i16> %i.bw, ptr %i.by, align 2, !tbaa !46
  %index.next153 = add nuw i64 %index151, 4       ; 2 uses
  %vec.ind.next154 = add <4 x i16> %vec.ind152, %broadcast.splat150
  %i.bz = icmp eq i64 %index.next153, %n.vec143
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !50

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n155 = icmp eq i64 %i.be, %n.vec143
  br i1 %cmp.n155, label %_ZN6duckdbL25TemplatedGenerateSequenceIaEEvRNS_6VectorEmll.exit, label %.peel.next.i37.preheader

.peel.next.i37.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.029.i38.ph = phi i64 [ 1, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  %.01628.i39.ph = phi i16 [ %i.bc, %iter.check ], [ %i.bi, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  br label %.peel.next.i37

.peel.next.i37:                                   ; preds = %.peel.next.i37.preheader, %.peel.next.i37
  %.029.i38 = phi i64 [ %i.cb, %.peel.next.i37 ], [ %.029.i38.ph, %.peel.next.i37.preheader ] ; 2 uses
  %.01628.i39 = phi i16 [ %.1.i40, %.peel.next.i37 ], [ %.01628.i39.ph, %.peel.next.i37.preheader ]
  %.1.i40 = add i16 %.01628.i39, %i.bd            ; 2 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %.029.i38
  store i16 %.1.i40, ptr %i.ca, align 2, !tbaa !46
  %i.cb = add nuw i64 %.029.i38, 1                ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %i.cb, %1
  br i1 %exitcond.not.i41, label %_ZN6duckdbL25TemplatedGenerateSequenceIaEEvRNS_6VectorEmll.exit, label %.peel.next.i37, !llvm.loop !51

bb.t:                                             ; preds = %bb.q
  unreachable
end_hunk_0
begin_hunk_1_@_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.j = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13
  %i.e = icmp eq i8 %i.d, 9
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 9, ptr %i.a, align 1, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.g = load i8, ptr %i.c, align 1, !tbaa !13
  store i8 %i.g, ptr %i.b, align 1, !tbaa !78
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #14
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.j = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noreturn }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }
attributes #16 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !12, i64 8, !5, i64 16}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!14, !16, i64 1}
!14 = !{!"_ZTSN6duckdb11LogicalTypeE", !15, i64 0, !16, i64 1, !17, i64 8}
!15 = !{!"_ZTSN6duckdb13LogicalTypeIdE", !5, i64 0}
!16 = !{!"_ZTSN6duckdb12PhysicalTypeE", !5, i64 0}
!17 = !{!"_ZTSN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEE", !18, i64 0}
!18 = !{!"_ZTSSt10shared_ptrIN6duckdb13ExtraTypeInfoEE", !19, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN6duckdb13ExtraTypeInfoELN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0, !21, i64 8}
!20 = !{!"p1 _ZTSN6duckdb13ExtraTypeInfoE", !11, i64 0}
!21 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!22 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!23 = !{!24, !10, i64 32}
!24 = !{!"_ZTSN6duckdb6VectorE", !25, i64 0, !14, i64 8, !10, i64 32, !26, i64 40, !33, i64 72, !33, i64 88}
!25 = !{!"_ZTSN6duckdb10VectorTypeE", !5, i64 0}
!26 = !{!"_ZTSN6duckdb12ValidityMaskE", !27, i64 0}
!27 = !{!"_ZTSN6duckdb21TemplatedValidityMaskImEE", !28, i64 0, !29, i64 8, !12, i64 24}
!28 = !{!"p1 long", !11, i64 0}
!29 = !{!"_ZTSN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEE", !30, i64 0}
!30 = !{!"_ZTSSt10shared_ptrIN6duckdb21TemplatedValidityDataImEEE", !31, i64 0}
!31 = !{!"_ZTSSt12__shared_ptrIN6duckdb21TemplatedValidityDataImEELN9__gnu_cxx12_Lock_policyE2EE", !32, i64 0, !21, i64 8}
!32 = !{!"p1 _ZTSN6duckdb21TemplatedValidityDataImEE", !11, i64 0}
!33 = !{!"_ZTSN6duckdb10shared_ptrINS_12VectorBufferELb1EEE", !34, i64 0}
!34 = !{!"_ZTSSt10shared_ptrIN6duckdb12VectorBufferEE", !35, i64 0}
!35 = !{!"_ZTSSt12__shared_ptrIN6duckdb12VectorBufferELN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0, !21, i64 8}
!36 = !{!"p1 _ZTSN6duckdb12VectorBufferE", !11, i64 0}
!37 = !{!5, !5, i64 0}
!38 = distinct !{!38, !39, !40, !41, !42}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.peeled.count", i32 1}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!"branch_weights", i32 4, i32 28}
!44 = distinct !{!44, !39, !40, !41, !42}
!45 = distinct !{!45, !39, !40, !42, !41}
!46 = !{!47, !47, i64 0}
!47 = !{!"short", !5, i64 0}
!48 = distinct !{!48, !39, !40, !41, !42}
!49 = !{!"branch_weights", i32 4, i32 12}
!50 = distinct !{!50, !39, !40, !41, !42}
!51 = distinct !{!51, !39, !40, !42, !41}
!52 = distinct !{!52, !39, !40, !41, !42}
!53 = distinct !{!53, !39, !40, !42, !41}
!54 = !{!12, !12, i64 0}
!55 = distinct !{!55, !39, !40, !41, !42}
!56 = distinct !{!56, !39, !40, !42, !41}
!57 = !{!58, !59, i64 0}
!58 = !{!"_ZTSN6duckdb15SelectionVectorE", !59, i64 0, !60, i64 8}
!59 = !{!"p1 int", !11, i64 0}
!60 = !{!"_ZTSN6duckdb10shared_ptrINS_13SelectionDataELb1EEE", !61, i64 0}
!61 = !{!"_ZTSSt10shared_ptrIN6duckdb13SelectionDataEE", !62, i64 0}
!62 = !{!"_ZTSSt12__shared_ptrIN6duckdb13SelectionDataELN9__gnu_cxx12_Lock_policyE2EE", !63, i64 0, !21, i64 8}
!63 = !{!"p1 _ZTSN6duckdb13SelectionDataE", !11, i64 0}
!64 = distinct !{!64, !39, !41, !42}
!65 = distinct !{!65, !39, !42, !41}
!66 = distinct !{!66, !39}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = distinct !{!69, !39}
!70 = distinct !{!70, !39, !41, !42}
!71 = distinct !{!71, !39, !42, !41}
!72 = distinct !{!72, !68}
!73 = distinct !{!73, !39}
!74 = distinct !{!74, !39, !41, !42}
!75 = distinct !{!75, !39, !42, !41}
!76 = distinct !{!76, !68}
!77 = distinct !{!77, !39}
!78 = !{!16, !16, i64 0}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_: argument 0"}
!81 = distinct !{!81, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_"}
!82 = !{!83, !84, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE17_Vector_impl_dataE", !84, i64 0, !84, i64 8, !84, i64 16}
!84 = !{!"p1 _ZTSN6duckdb20ExceptionFormatValueE", !11, i64 0}
!85 = !{!83, !84, i64 8}
!86 = distinct !{!86, !39}
!87 = !{!83, !84, i64 16}
!88 = !{!9, !10, i64 0}
!89 = !{!8, !12, i64 8}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!92 = distinct !{!92, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
!93 = !{!94}
!94 = distinct !{!94, !92, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!95 = !{!91, !94}
!96 = distinct !{!96, !39}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!99 = distinct !{!99, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
!100 = !{!101}
!101 = distinct !{!101, !99, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!102 = !{!98, !101}
end_hunk_1
