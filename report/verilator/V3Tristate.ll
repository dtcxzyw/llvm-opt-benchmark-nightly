Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Tristate?download=true
inline.NumInlined: 6058
inline.NumDeleted: 1349
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6AstSelC2EP8FileLineP11AstNodeExprii:bb.a
_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit:  ; preds = %bb.d, %_ZN8AstConstC2EP8FileLinej.exit
  ret void

bb.e:                                             ; preds = %.noexc, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.j, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 208) #25
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9AstConcatC2EP8FileLineP11AstNodeExprS3_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %0, i16 202, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %0, align 8, !tbaa !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.a, align 8
  tail call void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %2)
  tail call void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %3)
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV9AstConcat, i64 16), ptr %0, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !182
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 432
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(162) %i.c)
  br i1 %i.i, label %.noexc, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !182  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 432
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(162) %i.j)
  br i1 %i.n, label %.noexc, label %.noexc15

.noexc:                                           ; preds = %bb.d, %bb.c
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load i32, ptr %i.p, align 8, !tbaa !219
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  %i.t = load i32, ptr %i.s, align 8, !tbaa !219
  %i.u = add nsw i32 %i.t, %i.q                   ; 2 uses
  %i.v = tail call noundef ptr @_ZNK7AstNode14findLogicDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.u, i32 noundef %i.u, i8 0) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !182
  %.not.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not.i.i, label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  store ptr %i.v, ptr %i.w, align 8, !tbaa !182
  br label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split

.noexc15:                                         ; preds = %bb.d
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !182
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !219
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 152
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !219
  %i.ae = add nsw i32 %i.ad, %i.aa                ; 2 uses
  %i.af = tail call noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.ae, i32 noundef %i.ae, i8 0) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !182
  %.not.i.i14 = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i.i14, label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit, label %bb.f

bb.f:                                             ; preds = %.noexc15
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !182
  br label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split

_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split: ; preds = %bb.e, %bb.f
  %i.ai = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !141
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !141
  br label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit

_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit:  ; preds = %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split, %.noexc15, %.noexc, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  store i8 0, ptr %i.b, align 4, !tbaa !225
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, -128
  store i8 %i.e, ptr %i.c, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.b, align 4, !tbaa !225
  %i.h = add i8 %i.g, -1
  %spec.select.i.i = icmp ult i8 %i.h, 2
  br i1 %spec.select.i.i, label %bb.d, label %bb.c, !prof !249

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.521, i32 noundef 242)
          to label %.noexc unwind label %bb.f     ; 0 uses

.noexc:                                           ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc6 unwind label %bb.f    ; 2 uses

.noexc6:                                          ; preds = %.noexc
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.522, i64 noundef 40)
          to label %.noexc7 unwind label %bb.f    ; 0 uses

.noexc7:                                          ; preds = %.noexc6
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %.noexc8 unwind label %bb.f

.noexc8:                                          ; preds = %.noexc7
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.l) #27
          to label %.noexc9 unwind label %bb.f

.noexc9:                                          ; preds = %.noexc8
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.a, align 8, !tbaa !224
  %i.n = icmp slt i32 %i.m, 129
  %i.o = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.n, ptr %0, ptr %i.o
  store i32 %3, ptr %spec.select.i, align 4, !tbaa !373
  invoke void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  ret void

bb.f:                                             ; preds = %.noexc6, %.noexc8, %.noexc7, %.noexc, %bb.c, %bb.d, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN12V3NumberDataD2Ev(ptr noundef nonnull align 8 dead_on_return(38) dereferenceable(40) %0) #24
  resume { ptr, i32 } %i.p
}

declare void @_ZN8V3Number11opCleanThisEb(ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstCond5thenpEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstCond5elsepEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstCond5condpEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  ret ptr %i.b
}

declare void @_ZN7AstCondC1EP8FileLineP11AstNodeExprS3_S3_(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number4hasZEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !225   ; 2 uses
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !224  ; 3 uses
  %i.f = add nuw nsw i32 %i.e, 31
  %1 = sdiv i32 %i.f, 32
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = add i8 %i.b, -1
  %spec.select.i.i = icmp ult i8 %i.h, 2
  %i.i = icmp samesign ult i32 %i.e, 129
  %i.j = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.i, ptr %0, ptr %i.j
  br i1 %spec.select.i.i, label %_ZNK12V3NumberData3numEv.exit.preheader, label %bb.b, !prof !249

_ZNK12V3NumberData3numEv.exit.preheader:          ; preds = %.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %1, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %_ZNK12V3NumberData3numEv.exit

_ZNK12V3NumberData3numEv.exit:                    ; preds = %_ZNK12V3NumberData3numEv.exit, %_ZNK12V3NumberData3numEv.exit.preheader
  %indvars.iv = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %indvars.iv.next, %_ZNK12V3NumberData3numEv.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.k, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !31
  %i.l = xor i32 %.sroa.0.0.copyload, -1
  %i.m = and i32 %.sroa.4.0.copyload, %i.l
  %.not.not = icmp ne i32 %i.m, 0                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %.not.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.loopexit, label %_ZNK12V3NumberData3numEv.exit, !llvm.loop !595

bb.b:                                             ; preds = %.lr.ph
  %i.n = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.521, i32 noundef 246) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.522)
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.q) #27
  unreachable

.loopexit:                                        ; preds = %_ZNK12V3NumberData3numEv.exit, %.preheader, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %.preheader ], [ %.not.not, %_ZNK12V3NumberData3numEv.exit ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN15TristateVisitor19getCreateUnconnVarpEP7AstNodeP12AstNodeDType(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #28 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !250  ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !250
  store i32 %i.f, ptr %i.a, align 4, !tbaa !31
  invoke void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.559, i64 noundef 12)
          to label %.noexc unwind label %bb.m     ; 6 uses

.noexc:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !30, !alias.scope !598
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.j, ptr %3, align 8, !tbaa !27, !alias.scope !598
  %i.q = load i64, ptr %i.k, align 8, !tbaa !29
  store i64 %i.q, ptr %i.i, align 8, !tbaa !29, !alias.scope !598
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.r = phi i64 [ %i.n, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.r, ptr %i.t, align 8, !tbaa !28, !alias.scope !598
  store ptr %i.k, ptr %i.h, align 8, !tbaa !27
  store i64 0, ptr %i.s, align 8, !tbaa !28
  store i8 0, ptr %i.k, align 8, !tbaa !29
  invoke void @_ZN6AstVarC2EP8FileLine8VVarTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeDType(ptr noundef nonnull align 8 dereferenceable(280) %i.b, ptr noundef %i.d, i8 17, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %2)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %3, align 8, !tbaa !27     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.i
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.e
  %i.w = load i64, ptr %i.i, align 8, !tbaa !29
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.y = load ptr, ptr %4, align 8, !tbaa !27     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !29
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ad = call noundef i32 @_ZL5debugv()
  %i.ae = icmp sgt i32 %i.ad, 8
  br i1 %i.ae, label %bb.f, label %bb.y, !prof !21

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.1, i32 noundef 628)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ag = load ptr, ptr %6, align 8, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !28
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.ag, i64 noundef %i.ai)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.g
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.560, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %i.b)
          to label %bb.h unwind label %bb.q       ; 0 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.am = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !29
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !28 ; 2 uses
  %i.at = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29
  %.not = icmp eq i8 %i.aw, 10
  %i.ax = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38: ; preds = %bb.j
  %i.ba = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.ba)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.j
  %i.bb = load i64, ptr %i.ay, align 8, !tbaa !29
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bc) #25
  %.pre = load ptr, ptr %7, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

end_hunk_0
begin_hunk_1_@_ZL17dumpTreeJsonLevelv:bb.a

bb.j:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !29
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.i
  %.pn16 = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.z, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.k

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  store i32 %i.o, ptr @_ZZL17dumpTreeJsonLevelvE7s_level, align 4, !tbaa !31
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  resume { ptr, i32 } %.pn16.pn

bb.l:                                             ; preds = %bb.a, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.114 = phi i32 [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.o, %.thread ], [ %i.a, %bb.a ]
  ret i32 %.114
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL13dumpTreeLevelv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %1 = alloca %"class.std::allocator", align 1    ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load i32, ptr @_ZZL13dumpTreeLevelvE7s_level, align 4, !tbaa !31 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.l, !prof !21

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.659, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef i32 @_ZNK9V3Options9dumpLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !29
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = invoke noundef i32 @_ZNK9V3Options12dumpSrcLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !29
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.o = call i32 @llvm.umax.i32(i32 %i.c, i32 %i.i) ; 3 uses
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1914), align 2, !tbaa !76, !range !77, !noundef !78
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.thread, label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.h:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.h
  %i.w = load i64, ptr %i.u, align 8, !tbaa !29
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.g
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.j:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !29
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.i
  %.pn16 = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.z, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.k

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  store i32 %i.o, ptr @_ZZL13dumpTreeLevelvE7s_level, align 4, !tbaa !31
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  resume { ptr, i32 } %.pn16.pn

bb.l:                                             ; preds = %bb.a, %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.114 = phi i32 [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.o, %.thread ], [ %i.a, %bb.a ]
  ret i32 %.114
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{null}
!1 = distinct !{!1, !139}
!2 = distinct !{!2, !139}
!3 = distinct !{!3, !139}
!4 = distinct !{null}
!5 = distinct !{!5, !139}
!6 = distinct !{!6, !139}
!7 = distinct !{!7, !139}
!8 = distinct !{!8, !139}
!9 = distinct !{!9, !139}
!10 = distinct !{!10, !139}
!11 = distinct !{!11, !139}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!"any pointer", !17, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!"long", !17, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !25, i64 8, !17, i64 16}
!27 = !{!26, !23, i64 0}
!28 = !{!26, !25, i64 8}
!29 = !{!17, !17, i64 0}
!30 = !{!24, !23, i64 0}
!31 = !{!18, !18, i64 0}
!32 = !{!"p1 _ZTS12V3OptionsImp", !22, i64 0}
!33 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!34 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !33, i64 0}
!35 = !{!"_ZTSSt14_Rb_tree_color", !17, i64 0}
!36 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !22, i64 0}
!37 = !{!"_ZTSSt18_Rb_tree_node_base", !35, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!38 = !{!"_ZTSSt15_Rb_tree_header", !37, i64 0, !25, i64 32}
!39 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !34, i64 0, !38, i64 8}
!40 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !39, i64 0}
!41 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !40, i64 0}
!42 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!44 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !43, i64 0}
!45 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !44, i64 0}
!46 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !45, i64 0}
!47 = !{!"_ZTSSt4lessI12VFileLibNameE"}
!48 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessI12VFileLibNameEE", !47, i64 0}
!49 = !{!"_ZTSNSt8_Rb_treeI12VFileLibNameS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE13_Rb_tree_implIS4_Lb1EEE", !48, i64 0, !38, i64 8}
!50 = !{!"_ZTSSt8_Rb_treeI12VFileLibNameS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE", !49, i64 0}
!51 = !{!"_ZTSSt3setI12VFileLibNameSt4lessIS0_ESaIS0_EE", !50, i64 0}
!52 = !{!"p1 _ZTS12VFileLibName", !22, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseI12VFileLibNameSaIS0_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!"_ZTSNSt12_Vector_baseI12VFileLibNameSaIS0_EE12_Vector_implE", !53, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseI12VFileLibNameSaIS0_EE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorI12VFileLibNameSaIS0_EE", !55, i64 0}
!57 = !{!"_ZTSSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!58 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !57, i64 0}
!59 = !{!"_ZTSNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_jESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !58, i64 0, !38, i64 8}
!60 = !{!"_ZTSSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_jESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE", !59, i64 0}
!61 = !{!"_ZTSSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS6_ESaISt4pairIS6_jEEE", !60, i64 0}
!62 = !{!"_ZTSNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_S5_ESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !58, i64 0, !38, i64 8}
!63 = !{!"_ZTSSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_S5_ESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE", !62, i64 0}
!64 = !{!"_ZTSSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS6_ESaISt4pairIS6_S5_EEE", !63, i64 0}
!65 = !{!"_ZTSNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_25V3HierarchicalBlockOptionESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !58, i64 0, !38, i64 8}
!66 = !{!"_ZTSSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_25V3HierarchicalBlockOptionESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE", !65, i64 0}
!67 = !{!"_ZTSSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE25V3HierarchicalBlockOptionSt4lessIS6_ESaISt4pairIS6_S7_EEE", !66, i64 0}
!68 = !{!"bool", !17, i64 0}
!69 = !{!"_ZTSN11VOptionBool2enE", !17, i64 0}
!70 = !{!"_ZTS11VOptionBool", !69, i64 0}
!71 = !{!"_ZTSN10VTimescale2enE", !17, i64 0}
!72 = !{!"_ZTS10VTimescale", !71, i64 0}
!73 = !{!"_ZTSN10V3LangCode2enE", !17, i64 0}
!74 = !{!"_ZTS10V3LangCode", !73, i64 0}
!75 = !{!"_ZTS9V3Options", !32, i64 0, !41, i64 8, !46, i64 56, !46, i64 80, !46, i64 104, !41, i64 128, !41, i64 176, !41, i64 224, !41, i64 272, !51, i64 320, !56, i64 368, !51, i64 392, !41, i64 440, !46, i64 488, !61, i64 512, !61, i64 560, !64, i64 608, !67, i64 656, !41, i64 704, !68, i64 752, !68, i64 753, !68, i64 754, !68, i64 755, !68, i64 756, !68, i64 757, !68, i64 758, !68, i64 759, !68, i64 760, !68, i64 761, !68, i64 762, !68, i64 763, !68, i64 764, !68, i64 765, !68, i64 766, !68, i64 767, !68, i64 768, !68, i64 769, !68, i64 770, !68, i64 771, !68, i64 772, !68, i64 773, !68, i64 774, !68, i64 775, !68, i64 776, !68, i64 777, !68, i64 778, !68, i64 779, !68, i64 780, !68, i64 781, !68, i64 782, !68, i64 783, !18, i64 784, !68, i64 788, !68, i64 789, !68, i64 790, !68, i64 791, !68, i64 792, !68, i64 793, !68, i64 794, !68, i64 795, !68, i64 796, !68, i64 797, !68, i64 798, !68, i64 799, !68, i64 800, !68, i64 801, !68, i64 802, !68, i64 803, !68, i64 804, !68, i64 805, !68, i64 806, !68, i64 807, !68, i64 808, !68, i64 809, !68, i64 810, !68, i64 811, !68, i64 812, !68, i64 813, !68, i64 814, !68, i64 815, !68, i64 816, !68, i64 817, !68, i64 818, !68, i64 819, !68, i64 820, !68, i64 821, !68, i64 822, !68, i64 823, !68, i64 824, !68, i64 825, !68, i64 826, !68, i64 827, !70, i64 828, !68, i64 829, !68, i64 830, !68, i64 831, !68, i64 832, !68, i64 833, !68, i64 834, !68, i64 835, !68, i64 836, !68, i64 837, !70, i64 838, !68, i64 839, !68, i64 840, !68, i64 841, !68, i64 842, !68, i64 843, !68, i64 844, !68, i64 845, !68, i64 846, !68, i64 847, !68, i64 848, !68, i64 849, !68, i64 850, !68, i64 851, !68, i64 852, !18, i64 856, !18, i64 860, !18, i64 864, !18, i64 868, !18, i64 872, !18, i64 876, !18, i64 880, !18, i64 884, !18, i64 888, !18, i64 892, !18, i64 896, !18, i64 900, !18, i64 904, !18, i64 908, !18, i64 912, !68, i64 916, !68, i64 917, !18, i64 920, !70, i64 924, !18, i64 928, !18, i64 932, !18, i64 936, !18, i64 940, !18, i64 944, !18, i64 948, !18, i64 952, !18, i64 956, !18, i64 960, !18, i64 964, !18, i64 968, !18, i64 972, !70, i64 976, !68, i64 977, !18, i64 980, !18, i64 984, !72, i64 988, !72, i64 989, !72, i64 990, !72, i64 991, !18, i64 992, !18, i64 996, !18, i64 1000, !18, i64 1004, !18, i64 1008, !18, i64 1012, !18, i64 1016, !18, i64 1020, !18, i64 1024, !18, i64 1028, !18, i64 1032, !26, i64 1040, !26, i64 1072, !26, i64 1104, !56, i64 1136, !26, i64 1160, !26, i64 1192, !26, i64 1224, !26, i64 1256, !26, i64 1288, !26, i64 1320, !26, i64 1352, !26, i64 1384, !26, i64 1416, !26, i64 1448, !26, i64 1480, !26, i64 1512, !26, i64 1544, !26, i64 1576, !26, i64 1608, !26, i64 1640, !74, i64 1672, !68, i64 1673, !68, i64 1674, !68, i64 1675, !68, i64 1676, !68, i64 1677, !68, i64 1678, !68, i64 1679, !68, i64 1680, !68, i64 1681, !68, i64 1682, !68, i64 1683, !68, i64 1684, !68, i64 1685, !68, i64 1686, !68, i64 1687, !68, i64 1688, !68, i64 1689, !68, i64 1690, !68, i64 1691, !68, i64 1692, !68, i64 1693, !68, i64 1694, !68, i64 1695, !70, i64 1696, !68, i64 1697, !68, i64 1698, !68, i64 1699, !68, i64 1700, !68, i64 1701, !68, i64 1702, !68, i64 1703, !68, i64 1704, !68, i64 1705, !68, i64 1706, !68, i64 1707, !68, i64 1708, !68, i64 1709, !68, i64 1710, !18, i64 1712, !68, i64 1716, !68, i64 1717, !68, i64 1718, !68, i64 1719, !68, i64 1720, !68, i64 1721, !68, i64 1722}
!76 = !{!75, !68, i64 1722}
!77 = !{i8 0, i8 2}
!78 = !{}
!79 = !{!"vtable pointer", !16, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"_ZTS14VNVisitorConst"}
!82 = !{!"any p2 pointer", !22, i64 0}
!83 = !{!"p2 _ZTS7AstNode", !82, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseIP7AstNodeSaIS1_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!85 = !{!"_ZTSNSt12_Vector_baseIP7AstNodeSaIS1_EE12_Vector_implE", !84, i64 0}
!86 = !{!"_ZTSSt12_Vector_baseIP7AstNodeSaIS1_EE", !85, i64 0}
!87 = !{!"_ZTSSt6vectorIP7AstNodeSaIS1_EE", !86, i64 0}
!88 = !{!"_ZTS9VNDeleter", !87, i64 0}
!89 = !{!"_ZTS9VNVisitor", !81, i64 0, !88, i64 8}
!90 = !{!"_ZTS19TristateBaseVisitor", !89, i64 0}
!91 = !{!"_ZTS12VNUser1InUse"}
!92 = !{!"_ZTS12VNUser2InUse"}
!93 = !{!"_ZTS12VNUser3InUse"}
!94 = !{!"_ZTS12VNUser4InUse"}
!95 = !{!"p2 _ZTSN15TristateVisitor9AuxAstVarE", !82, i64 0}
!96 = !{!"p1 _ZTSN15TristateVisitor9AuxAstVarE", !22, i64 0}
!97 = !{!"_ZTSSt15_Deque_iteratorIN15TristateVisitor9AuxAstVarERS1_PS1_E", !96, i64 0, !96, i64 8, !96, i64 16, !95, i64 24}
!98 = !{!"_ZTSNSt11_Deque_baseIN15TristateVisitor9AuxAstVarESaIS1_EE16_Deque_impl_dataE", !95, i64 0, !25, i64 8, !97, i64 16, !97, i64 48}
!99 = !{!"_ZTSNSt11_Deque_baseIN15TristateVisitor9AuxAstVarESaIS1_EE11_Deque_implE", !98, i64 0}
!100 = !{!"_ZTSSt11_Deque_baseIN15TristateVisitor9AuxAstVarESaIS1_EE", !99, i64 0}
!101 = !{!"_ZTSSt5dequeIN15TristateVisitor9AuxAstVarESaIS1_EE", !100, i64 0}
!102 = !{!"_ZTS20AstUserAllocatorBaseI6AstVarN15TristateVisitor9AuxAstVarELi3EE", !101, i64 0}
!103 = !{!"_ZTS17AstUser3AllocatorI6AstVarN15TristateVisitor9AuxAstVarEE", !102, i64 0}
!104 = !{!"p1 _ZTS13AstNodeModule", !22, i64 0}
!105 = !{!"p1 _ZTS7AstCell", !22, i64 0}
!106 = !{!"_ZTSSt4lessIP6AstVarE"}
!107 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIP6AstVarEE", !106, i64 0}
!108 = !{!"_ZTSNSt8_Rb_treeIP6AstVarSt4pairIKS1_PSt6vectorIN15TristateVisitor11RefStrengthESaIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !107, i64 0, !38, i64 8}
!109 = !{!"_ZTSSt8_Rb_treeIP6AstVarSt4pairIKS1_PSt6vectorIN15TristateVisitor11RefStrengthESaIS6_EEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE", !108, i64 0}
!110 = !{!"_ZTSSt3mapIP6AstVarPSt6vectorIN15TristateVisitor11RefStrengthESaIS4_EESt4lessIS1_ESaISt4pairIKS1_S7_EEE", !109, i64 0}
!111 = !{!"_ZTSNSt8_Rb_treeIP6AstVarSt4pairIKS1_St6vectorIP10AstAssignWSaIS6_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !107, i64 0, !38, i64 8}
!112 = !{!"_ZTSSt8_Rb_treeIP6AstVarSt4pairIKS1_St6vectorIP10AstAssignWSaIS6_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE", !111, i64 0}
!113 = !{!"_ZTSSt3mapIP6AstVarSt6vectorIP10AstAssignWSaIS4_EESt4lessIS1_ESaISt4pairIKS1_S6_EEE", !112, i64 0}
!114 = !{!"_ZTSN9VStrength2enE", !17, i64 0}
!115 = !{!"_ZTS9VStrength", !114, i64 0}
!116 = !{!"p1 _ZTS7AstNode", !22, i64 0}
!117 = !{!"p1 _ZTS13V3GraphVertex", !22, i64 0}
!118 = !{!"_ZTS6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E", !117, i64 0, !117, i64 8}
!119 = !{!"_ZTS7V3Graph", !118, i64 8}
!120 = !{!"_ZTS13TristateGraph", !119, i64 8}
!121 = !{!"_ZTSNSt8_Rb_treeIP6AstVarSt4pairIKS1_St6vectorIS2_IS1_S1_ESaIS5_EEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !107, i64 0, !38, i64 8}
!122 = !{!"_ZTSSt8_Rb_treeIP6AstVarSt4pairIKS1_St6vectorIS2_IS1_S1_ESaIS5_EEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EE", !121, i64 0}
!123 = !{!"_ZTSSt3mapIP6AstVarSt6vectorISt4pairIS1_S1_ESaIS4_EESt4lessIS1_ESaIS3_IKS1_S6_EEE", !122, i64 0}
!124 = !{!"double", !17, i64 0}
!125 = !{!"_ZTS8VDouble0", !124, i64 0}
!126 = !{!"_ZTS15TristateVisitor", !90, i64 0, !91, i64 32, !92, i64 33, !93, i64 34, !94, i64 35, !103, i64 40, !68, i64 120, !104, i64 128, !105, i64 136, !110, i64 144, !113, i64 192, !18, i64 240, !68, i64 244, !68, i64 245, !68, i64 246, !115, i64 247, !116, i64 248, !120, i64 256, !123, i64 288, !125, i64 336}
!127 = !{!126, !68, i64 120}
!128 = !{!38, !35, i64 0}
!129 = !{!38, !36, i64 8}
!130 = !{!38, !36, i64 16}
!131 = !{!38, !36, i64 24}
!132 = !{!38, !25, i64 32}
!133 = !{!115, !114, i64 0}
!134 = !{!126, !116, i64 248}
!135 = !{!116, !116, i64 0}
!136 = !{!"_ZTSN6VNType2enE", !17, i64 0}
!137 = !{!136, !136, i64 0}
!138 = !{!104, !104, i64 0}
!139 = !{!"llvm.loop.mustprogress"}
!140 = !{!126, !68, i64 246}
!141 = !{!25, !25, i64 0}
!142 = !{!125, !124, i64 0}
!143 = !{ptr @_ZN9VNVisitorD2Ev}
!144 = !{!84, !83, i64 0}
!145 = !{!84, !83, i64 16}
!146 = !{!117, !117, i64 0}
!147 = !{!"_ZTS11V3ListLinksI13V3GraphVertexE", !117, i64 0, !117, i64 8}
!148 = !{!147, !117, i64 0}
!149 = !{!"p1 _ZTS11V3GraphEdge", !22, i64 0}
!150 = !{!"_ZTS6V3ListI11V3GraphEdgeXadL_ZNS0_6oLinksEvEES0_E", !149, i64 0, !149, i64 8}
!151 = !{!"_ZTS6V3ListI11V3GraphEdgeXadL_ZNS0_6iLinksEvEES0_E", !149, i64 0, !149, i64 8}
!152 = !{!"_ZTS13V3GraphVertex", !147, i64 8, !150, i64 24, !151, i64 40, !124, i64 56, !18, i64 64, !18, i64 68, !17, i64 72}
!153 = !{!"_ZTS14TristateVertex", !152, i64 0, !116, i64 80, !68, i64 88, !68, i64 89, !68, i64 90}
!154 = !{!153, !68, i64 88}
!155 = !{!153, !68, i64 90}
!156 = !{!153, !116, i64 80}
!157 = !{!"branch_weights", i32 1, i32 1048575}
!158 = !{!"_ZTS6VNType", !136, i64 0}
!159 = !{!"_ZTSN7AstNodeUt_E", !68, i64 0, !68, i64 0, !68, i64 0, !17, i64 0}
!160 = !{!"p1 _ZTS12AstNodeDType", !22, i64 0}
!161 = !{!"p1 _ZTS8FileLine", !22, i64 0}
!162 = !{!"_ZTS6VNUser", !17, i64 0}
!163 = !{!"_ZTS7AstNode", !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !83, i64 56, !158, i64 64, !159, i64 66, !17, i64 67, !18, i64 68, !160, i64 72, !116, i64 80, !161, i64 88, !116, i64 96, !162, i64 104, !18, i64 112, !18, i64 116, !162, i64 120, !162, i64 128, !18, i64 136, !18, i64 140, !162, i64 144}
!164 = !{!163, !116, i64 24}
end_hunk_1
