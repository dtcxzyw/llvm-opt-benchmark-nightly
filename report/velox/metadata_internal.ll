inline.NumInlined: 4591
inline.NumDeleted: 2153
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev:bb.a
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !187
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #22
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal17GetTensorMetadataERKNS_6BufferEPSt10shared_ptrINS_8DataTypeEEPSt6vectorIlSaIlEESC_PS9_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr noundef %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.arrow_vendored_private::flatbuffers::Verifier", align 8 ; 13 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::vector", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !378, !range !144, !noundef !145
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = select i1 %i.d, ptr %i.f, ptr null, !prof !46 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !613  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !794
  %.tr.i.i = trunc i64 %i.i to i32
  %i.j = shl i32 %.tr.i.i, 3
  store ptr %i.g, ptr %6, align 8, !tbaa !797, !noalias !794
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.i, ptr %i.k, align 8, !tbaa !801, !noalias !794
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 128, ptr %i.l, align 8, !tbaa !3, !noalias !794
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %i.j, ptr %.sroa.43.0..sroa_idx.i.i.i, align 4, !tbaa !3, !noalias !794
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !156, !noalias !794
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 1, !tbaa !156, !noalias !794
  %.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 2147483647, ptr %.sroa.75.0..sroa_idx.i.i.i, align 8, !tbaa !79, !noalias !794
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !156, !noalias !794
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false), !noalias !794
  %i.n = icmp ugt i64 %i.i, 11
  br i1 %i.n, label %bb.b, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !794 ; 2 uses
  %or.cond.i.i.i.i.i = icmp sgt i32 %i.o, 0
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = add i64 %i.i, -1
  %.not.i.i.i.i.i = icmp ult i64 %i.q, %i.p
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !794
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.p
  %i.s = call noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %6), !noalias !794
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !794
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  %i.t = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !794
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.u ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !22, !alias.scope !802
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = sext i32 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 %i.y ; 3 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !31  ; 2 uses
  %i.ab = icmp ugt i16 %i.aa, 6
  br i1 %i.ab, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.48)
  %.pr = load ptr, ptr %7, align 8, !tbaa !22, !noalias !805, !nonnull !145, !noundef !145
  call void @llvm.experimental.noalias.scope.decl(metadata !805)
  store ptr %.pr, ptr %0, align 8, !tbaa !22, !alias.scope !805
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.critedge

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = icmp eq i8 %i.ag, 4
  %i.ai = icmp ugt i16 %i.aa, 8
  %or.cond.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit

_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao ; 16 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = sext i32 %i.aq to i64
  %i.as = sub nsw i64 0, %i.ar                    ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i16, ptr %i.au, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i43 = icmp ne i16 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i43)
  %i.aw = zext i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !807 ; 4 uses
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %._crit_edge, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46.lr.ph

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46.lr.ph: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 13 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.trip.count = zext i32 %i.bb to i64
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46

_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i, %_ZN5arrow6StatusD2Ev.exit.thread
  call void @_ZN5arrow6Status8FromArgsIJRA57_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(57) @.str.25)
  br label %.critedge

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre96 = load i32, ptr %i.ap, align 4, !tbaa !3
  %.pre100 = sext i32 %.pre96 to i64
  %.pre101 = sub nsw i64 0, %.pre100
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit
  %.pre-phi102 = phi i64 [ %.pre101, %._crit_edge.loopexit ], [ %i.as, %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit ] ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.ap, i64 %.pre-phi102 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !31
  %i.bk = icmp ugt i16 %i.bj, 10
  br i1 %i.bk, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i44, label %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i44: ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i45 = icmp eq i16 %i.bm, 0
  br i1 %.not.i.i.i45, label %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i57

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.bn = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.bo = sext i32 %i.bn to i64
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.ap, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i47 = icmp ne i16 %i.bs, 0
  call void @llvm.assume(i1 %.not.i.i.i47)
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = shl i64 %indvars.iv, 2
  %i.ca = and i64 %i.bz, 4294967292
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd ; 6 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = sext i32 %i.cf to i64
  %i.ch = sub nsw i64 0, %i.cg                    ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !31
  %i.ck = icmp ugt i16 %i.cj, 4
  br i1 %i.ck, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cm, 0
  br i1 %.not.i.i, label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.cn = zext i16 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !79
  br label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit

_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %bb.d
  %i.cq = phi i64 [ %i.cp, %bb.d ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46 ] ; 2 uses
  %i.cr = load ptr, ptr %i.bc, align 8, !tbaa !476 ; 4 uses
  %i.cs = load ptr, ptr %i.bd, align 8, !tbaa !760
  %.not.i.i49 = icmp eq ptr %i.cr, %i.cs
  br i1 %.not.i.i49, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.ct, ptr %i.bc, align 8, !tbaa !476
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.f:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit
  %i.cu = load ptr, ptr %3, align 8, !tbaa !478   ; 4 uses
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 6 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775800
  br i1 %i.cy, label %bb.g, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #23
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.cz = ashr exact i64 %i.cx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = call i64 @llvm.umin.i64(i64 %i.da, i64 1152921504606846975)
  %i.dd = select i1 %i.db, i64 1152921504606846975, i64 %i.dc ; 3 uses
  %.not.i.i.i.i50 = icmp ne i64 %i.dd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i50)
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #24 ; 4 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.cx ; 2 uses
  store i64 %i.cq, ptr %i.dg, align 8, !tbaa !79
  %i.dh = icmp sgt i64 %i.cx, 0
  br i1 %i.dh, label %bb.h, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.df, ptr align 8 %i.cu, i64 %i.cx, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cx) #22
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  store ptr %i.df, ptr %3, align 8, !tbaa !478
  store ptr %i.di, ptr %i.bc, align 8, !tbaa !476
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dd
  store ptr %i.dj, ptr %i.bd, align 8, !tbaa !760
  %.pre = load i32, ptr %i.ce, align 4, !tbaa !3
  %.pre107 = sext i32 %.pre to i64
  %.pre109 = sub nsw i64 0, %.pre107
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

_ZNSt6vectorIlSaIlEE9push_backEOl.exit:           ; preds = %bb.e, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i
  %.pre-phi110 = phi i64 [ %i.ch, %bb.e ], [ %.pre109, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.dk = getelementptr inbounds i8, ptr %i.ce, i64 %.pre-phi110 ; 2 uses
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !31
  %i.dm = icmp ugt i16 %i.dl, 6
  br i1 %i.dm, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i51, label %._crit_edge.i.i.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i51: ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 6
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i52 = icmp eq i16 %i.do, 0
  br i1 %.not.i.i.i52, label %._crit_edge.i.i.i, label %bb.j

._crit_edge.i.i.i:                                ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i51, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  store ptr %i.be, ptr %8, align 8, !tbaa !76, !alias.scope !809
  store i64 0, ptr %i.bf, align 8, !tbaa !81, !alias.scope !809
  store i8 0, ptr %i.be, align 8, !tbaa !14, !alias.scope !809
  br label %_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit

bb.j:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i51
  %i.dp = zext i16 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.dp ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !809)
  call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4 ; 2 uses
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !73, !noalias !815 ; 3 uses
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  store ptr %i.be, ptr %8, align 8, !tbaa !76, !alias.scope !815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !815
  store i64 %i.dw, ptr %i.a, align 8, !tbaa !79, !noalias !815
  %i.dx = icmp ugt i32 %i.dv, 15
  br i1 %i.dx, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.j
  %i.dy = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.dy, ptr %8, align 8, !tbaa !83, !alias.scope !815
  %i.dz = load i64, ptr %i.a, align 8, !tbaa !79, !noalias !815
  store i64 %i.dz, ptr %i.be, align 8, !tbaa !14, !alias.scope !815
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.j
  %i.ea = phi ptr [ %i.dy, %.noexc.i.i.i ], [ %i.be, %bb.j ] ; 2 uses
  switch i32 %i.dv, label %bb.l [
    i32 1, label %bb.k
    i32 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.eb = load i8, ptr %i.du, align 4, !tbaa !14, !noalias !815
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !14
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ea, ptr nonnull align 4 %i.du, i64 %i.dw, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i.i
  %i.ec = load i64, ptr %i.a, align 8, !tbaa !79, !noalias !815 ; 2 uses
  store i64 %i.ec, ptr %i.bf, align 8, !tbaa !81, !alias.scope !815
  %i.ed = load ptr, ptr %8, align 8, !tbaa !83, !alias.scope !815
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ec
  store i8 0, ptr %i.ee, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !815
  br label %_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit

_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit: ; preds = %._crit_edge.i.i.i, %bb.m
  %i.ef = load ptr, ptr %i.bg, align 8, !tbaa !816 ; 6 uses
  %i.eg = load ptr, ptr %i.bh, align 8, !tbaa !818
  %.not.i.i53 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not.i.i53, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 3 uses
  store ptr %i.eh, ptr %i.ef, align 8, !tbaa !76
  %i.ei = load ptr, ptr %8, align 8, !tbaa !83    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.be
  br i1 %i.ej, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.ek = load i64, ptr %i.bf, align 8, !tbaa !81 ; 3 uses
  %i.el = icmp ult i64 %i.ek, 16
  call void @llvm.assume(i1 %i.el)
  %i.em = add nuw nsw i64 %i.ek, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eh, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.em, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  store ptr %i.ei, ptr %i.ef, align 8, !tbaa !83
  %i.en = load i64, ptr %i.be, align 8, !tbaa !14
  store i64 %i.en, ptr %i.eh, align 8, !tbaa !14
  %.pre94 = load i64, ptr %i.bf, align 8, !tbaa !81
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.eo = phi i64 [ %.pre94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ek, %bb.o ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !81
  store ptr %i.be, ptr %8, align 8, !tbaa !83
  store i64 0, ptr %i.bf, align 8, !tbaa !81
  %i.eq = load ptr, ptr %i.bg, align 8, !tbaa !816
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  store ptr %i.er, ptr %i.bg, align 8, !tbaa !816
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.q

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.p
  %.pre95 = load ptr, ptr %8, align 8, !tbaa !83  ; 2 uses
  %i.es = icmp eq ptr %.pre95, %i.be
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.et = load i64, ptr %i.be, align 8, !tbaa !14
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %.pre95, i64 noundef %i.eu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46, !llvm.loop !819

bb.q:                                             ; preds = %bb.p
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = load ptr, ptr %8, align 8, !tbaa !83    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.be
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.q
  %i.ey = load i64, ptr %i.be, align 8, !tbaa !14
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ai

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i57: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i44
  %i.fa = zext i16 %i.bm to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.fa ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !820 ; 2 uses
  %.not37 = icmp eq i32 %i.ff, 0
  br i1 %.not37, label %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i60

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i60: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i57
  %.not38 = icmp eq i32 %i.ff, %i.bb
  br i1 %.not38, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63.lr.ph, label %bb.r

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63.lr.ph: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i60
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %wide.trip.count92 = zext i32 %i.bb to i64
  %.pre97 = load ptr, ptr %i.fg, align 8, !tbaa !476
  %.pre98 = load ptr, ptr %i.fh, align 8, !tbaa !760
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63

bb.r:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i60
  call void @_ZN5arrow6Status8FromArgsIJRA59_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(59) @.str.26)
  br label %.critedge

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63.lr.ph, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit73
  %i.fi = phi ptr [ %.pre98, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63.lr.ph ], [ %i.gp, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit73 ] ; 3 uses
  %i.fj = phi ptr [ %.pre97, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63.lr.ph ], [ %i.gq, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit73 ] ; 3 uses
  %indvars.iv89 = phi i64 [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63.lr.ph ], [ %indvars.iv.next90, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit73 ] ; 2 uses
  %i.fk = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.fl = sext i32 %i.fk to i64
  %i.fm = sub nsw i64 0, %i.fl
  %i.fn = getelementptr inbounds i8, ptr %i.ap, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 10
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i64 = icmp ne i16 %i.fp, 0
  call void @llvm.assume(i1 %.not.i.i.i64)
  %i.fq = zext i16 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv89
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !79 ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.fj, %i.fi
  br i1 %.not.i.i66, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63
  store i64 %i.fx, ptr %i.fj, align 8, !tbaa !79
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  store ptr %i.fy, ptr %i.fg, align 8, !tbaa !476
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit73

bb.t:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63
end_hunk_0
