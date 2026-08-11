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
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %0, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 0, ptr %i.a, align 8
  tail call void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %2)
  tail call void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %3)
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV9AstConcat, i64 16), ptr %0, align 8, !tbaa !67
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !179  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !179
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 432
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(162) %i.c)
  br i1 %i.i, label %.noexc, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !179  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 432
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(162) %i.j)
  br i1 %i.n, label %.noexc, label %.noexc15

.noexc:                                           ; preds = %bb.d, %bb.c
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !179
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load i32, ptr %i.p, align 8, !tbaa !227
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !179
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  %i.t = load i32, ptr %i.s, align 8, !tbaa !227
  %i.u = add nsw i32 %i.t, %i.q                   ; 2 uses
  %i.v = tail call noundef ptr @_ZNK7AstNode14findLogicDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.u, i32 noundef %i.u, i8 0) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not.i.i, label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  store ptr %i.v, ptr %i.w, align 8, !tbaa !179
  br label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split

.noexc15:                                         ; preds = %bb.d
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !179
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !227
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !179
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 152
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !227
  %i.ae = add nsw i32 %i.ad, %i.aa                ; 2 uses
  %i.af = tail call noundef ptr @_ZNK7AstNode12findBitDTypeEii8VSigning(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.ae, i32 noundef %i.ae, i8 0) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !179
  %.not.i.i14 = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i.i14, label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit, label %bb.f

bb.f:                                             ; preds = %.noexc15
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !179
  br label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split

_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split: ; preds = %bb.e, %bb.f
  %i.ai = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !132
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !132
  br label %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit

_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit:  ; preds = %_ZN7AstNode18dtypeSetLogicSizedEi8VSigning.exit.sink.split, %.noexc15, %.noexc, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !233
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  store i8 0, ptr %i.b, align 4, !tbaa !236
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, -128
  store i8 %i.e, ptr %i.c, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  invoke void @_ZN8V3Number4initEP7AstNodeib(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.b, align 4, !tbaa !236
  %i.h = add i8 %i.g, -1
  %spec.select.i.i = icmp ult i8 %i.h, 2
  br i1 %spec.select.i.i, label %bb.d, label %bb.c, !prof !265

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
  %i.m = load i32, ptr %i.a, align 8, !tbaa !233
  %i.n = icmp slt i32 %i.m, 129
  %i.o = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.n, ptr %0, ptr %i.o
  store i32 %3, ptr %spec.select.i, align 4, !tbaa !536
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstCond5elsepEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7AstCond5condpEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149
  ret ptr %i.b
}

declare void @_ZN7AstCondC1EP8FileLineP11AstNodeExprS3_S3_(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK8V3Number4hasZEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !236   ; 2 uses
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !233  ; 3 uses
  %i.f = add nsw i32 %i.e, 31
  %i.g = sdiv i32 %i.f, 32
  %i.h = icmp sgt i32 %i.e, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.i = add i8 %i.b, -1
  %spec.select.i.i = icmp ult i8 %i.i, 2
  %i.j = icmp samesign ult i32 %i.e, 129
  %i.k = load ptr, ptr %0, align 8
  %spec.select.i = select i1 %i.j, ptr %0, ptr %i.k
  br i1 %spec.select.i.i, label %_ZNK12V3NumberData3numEv.exit.preheader, label %bb.b, !prof !265

_ZNK12V3NumberData3numEv.exit.preheader:          ; preds = %.lr.ph
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %_ZNK12V3NumberData3numEv.exit

_ZNK12V3NumberData3numEv.exit:                    ; preds = %_ZNK12V3NumberData3numEv.exit, %_ZNK12V3NumberData3numEv.exit.preheader
  %indvars.iv = phi i64 [ 0, %_ZNK12V3NumberData3numEv.exit.preheader ], [ %indvars.iv.next, %_ZNK12V3NumberData3numEv.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.l, align 4, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !19
  %i.m = xor i32 %.sroa.0.0.copyload, -1
  %i.n = and i32 %.sroa.4.0.copyload, %i.m
  %.not.not = icmp ne i32 %i.n, 0                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %.not.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.loopexit, label %_ZNK12V3NumberData3numEv.exit, !llvm.loop !538

bb.b:                                             ; preds = %.lr.ph
  %i.o = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.521, i32 noundef 246) ; 0 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.522)
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRKN12V3NumberData16V3NumberDataTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.r) #27
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !266  ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !266
  store i32 %i.f, ptr %i.a, align 4, !tbaa !19
  invoke void @_Z8cvtToStrIiENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.559, i64 noundef 12)
          to label %.noexc unwind label %bb.m     ; 6 uses

.noexc:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !18, !alias.scope !539
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !10   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.j, ptr %3, align 8, !tbaa !10, !alias.scope !539
  %i.q = load i64, ptr %i.k, align 8, !tbaa !17
  store i64 %i.q, ptr %i.i, align 8, !tbaa !17, !alias.scope !539
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.r = phi i64 [ %i.n, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.r, ptr %i.t, align 8, !tbaa !16, !alias.scope !539
  store ptr %i.k, ptr %i.h, align 8, !tbaa !10
  store i64 0, ptr %i.s, align 8, !tbaa !16
  store i8 0, ptr %i.k, align 8, !tbaa !17
  invoke void @_ZN6AstVarC2EP8FileLine8VVarTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP12AstNodeDType(ptr noundef nonnull align 8 dereferenceable(280) %i.b, ptr noundef %i.d, i8 17, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %2)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %3, align 8, !tbaa !10     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.i
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.e
  %i.w = load i64, ptr %i.i, align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.y = load ptr, ptr %4, align 8, !tbaa !10     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !17
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ad = call noundef i32 @_ZL5debugv()
  %i.ae = icmp sgt i32 %i.ad, 8
  br i1 %i.ae, label %bb.f, label %bb.y, !prof !9

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
  %i.ag = load ptr, ptr %6, align 8, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.ag, i64 noundef %i.ai)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.g
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.560, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %i.b)
          to label %bb.h unwind label %bb.q       ; 0 uses

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.am = load ptr, ptr %6, align 8, !tbaa !10    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.h
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !17
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
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !16 ; 2 uses
  %i.at = load ptr, ptr %7, align 8, !tbaa !10    ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !17
  %.not = icmp eq i8 %i.aw, 10
  %i.ax = load ptr, ptr %8, align 8, !tbaa !10    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_assignIRKSF_NS4_17_ReuseOrAllocNodeISaINS4_10_Hash_nodeIS2_Lb0EEEEEEEEvOT_RKT0_:bb.a
  %i.ah = load ptr, ptr %0, align 8, !tbaa !192
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !861
  %.not32 = icmp eq ptr %i.aj, null
  br i1 %.not32, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  store ptr %.02639, ptr %i.ai, align 8, !tbaa !861
  br label %bb.q

bb.o:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

bb.q:                                             ; preds = %bb.n, %bb.m
  %.028 = load ptr, ptr %.02840, align 8, !tbaa !333 ; 2 uses
  %.not30 = icmp eq ptr %.028, null
  br i1 %.not30, label %.loopexit, label %.lr.ph, !llvm.loop !862

bb.r:                                             ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.al, %bb.p ], [ %i.ak, %bb.o ]
  %.027 = extractvalue { ptr, i32 } %.pn, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %.027) #24 ; 0 uses
  tail call void @_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  br i1 %.not.not, label %bb.s, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.s:                                             ; preds = %bb.r
  %i.an = load ptr, ptr %0, align 8, !tbaa !192   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !199
  %i.as = shl i64 %i.ar, 3
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.as) #25
  br label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.u:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.t, %bb.s, %bb.r
  invoke void @__cxa_rethrow() #27
          to label %bb.x unwind label %bb.u

bb.v:                                             ; preds = %bb.u
  resume { ptr, i32 } %i.at

.loopexit:                                        ; preds = %bb.q, %bb.j, %bb.f
  ret void

bb.w:                                             ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #29
  unreachable

bb.x:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %4 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %5 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %6 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %7 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %8 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %9 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i26 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i26, 4               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0..sroa_idx.i.i13.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEET_SS_SS_T0_.exit
  %i.h = icmp eq i64 %i.bq, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph44, !llvm.loop !863

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i29.lcssa = phi i64 [ %.fr.i26, %.lr.ph ], [ %.fr.i, %bb.b ] ; 3 uses
  %storemerge27.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i29.lcssa, 4               ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i29.lcssa, 16
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_ST_T1_T2_.exit.i.i, %._crit_edge
  %.010.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.ak, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_ST_T1_T2_.exit.i.i ] ; 8 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %0, i64 %.010.i.i ; 2 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %i.s, align 8, !tbaa !626
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.4.0.copyload.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !515 ; 2 uses
  %i.t = icmp slt i64 %.010.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.037.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.010.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.037.i.i.i, 1                   ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %0, i64 %i.x
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.22.0.copyload.i.i.i.i = load i8, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !515
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !515
  %i.z = icmp ugt i8 %.sroa.22.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i
  %spec.select.i.i.i = select i1 %i.z, i64 %i.x, i64 %i.v ; 4 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ab, ptr noundef nonnull align 8 dereferenceable(9) %i.aa, i64 9, i1 false), !tbaa.struct !625
  %i.ac = icmp slt i64 %spec.select.i.i.i, %i.m
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !864

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.010.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i, %i.k
  %or.cond.i.i = select i1 %i.o, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.r, ptr noundef nonnull align 8 dereferenceable(9) %i.q, i64 9, i1 false), !tbaa.struct !625
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ae = icmp sgt i64 %.1.i.i.i, %.010.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_ST_T1_T2_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.019.i.i.i.i = phi i64 [ %.0920.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i.i.i = sdiv i64 %.0920.in.i.i.i.i, 2  ; 4 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i.i.i ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i18 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i19 = load i8, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i18, align 8, !tbaa !515
  %i.ag = icmp ugt i8 %.sroa.22.0.copyload.i.i.i.i.i19, %.sroa.4.0.copyload.i.i
  br i1 %i.ag, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_ST_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.019.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ah, ptr noundef nonnull align 8 dereferenceable(9) %i.af, i64 9, i1 false), !tbaa.struct !625
  %i.ai = icmp sgt i64 %.0920.i.i.i.i, %.010.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_ST_T1_T2_.exit.i.i, !llvm.loop !865

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_ST_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0920.i.i.i.i, %bb.f ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %i.aj, align 8, !tbaa !626
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i8 %.sroa.4.0.copyload.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i, align 8, !tbaa !515
  %.not.i.i = icmp eq i64 %.010.i.i, 0
  %i.ak = add nsw i64 %.010.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit, label %bb.c, !llvm.loop !866

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_T0_ST_T1_T2_.exit.i.i
  %i.al = icmp sgt i64 %.fr.i29.lcssa, 16
  br i1 %i.al, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.am, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_RT0_.exit.i.i ], [ %storemerge27.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !626
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !515 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.am, ptr noundef nonnull align 8 dereferenceable(9) %0, i64 9, i1 false), !tbaa.struct !625
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.a                     ; 3 uses
  %i.ap = ashr exact i64 %i.ao, 4                 ; 3 uses
  %i.aq = add nsw i64 %i.ap, -1
  %10 = sdiv i64 %i.aq, 2
  %i.ar = icmp sgt i64 %i.ap, 2
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.as = shl i64 %.037.i.i.i.i, 1                ; 2 uses
  %i.at = add i64 %i.as, 2                        ; 2 uses
  %i.au = getelementptr inbounds [16 x i8], ptr %0, i64 %i.at
  %i.av = or disjoint i64 %i.as, 1                ; 2 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %0, i64 %i.av
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !515
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !515
  %i.ax = icmp ugt i8 %.sroa.22.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ax, i64 %i.av, i64 %i.at ; 4 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.az = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.az, ptr noundef nonnull align 8 dereferenceable(9) %i.ay, i64 9, i1 false), !tbaa.struct !625
  %i.ba = icmp slt i64 %spec.select.i.i.i.i, %10
  br i1 %i.ba, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !864

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bb = and i64 %i.ao, 16
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bd = add nsw i64 %i.ap, -2
  %i.be = ashr exact i64 %i.bd, 1
  %i.bf = icmp eq i64 %.0.lcssa.i.i.i.i, %i.be
  br i1 %i.bf, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bg = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bh = or disjoint i64 %i.bg, 1                ; 2 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bh
  %i.bj = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bj, ptr noundef nonnull align 8 dereferenceable(9) %i.bi, i64 9, i1 false), !tbaa.struct !625
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bh, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i89.i.i.i, %bb.i ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0920.i.i89.i.i.i ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !515
  %i.bl = icmp ugt i8 %.sroa.22.0.copyload.i.i.i.i.i.i, %.sroa.4.0.copyload.i.i.i
  br i1 %i.bl, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bm = getelementptr inbounds [16 x i8], ptr %0, i64 %.019.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bm, ptr noundef nonnull align 8 dereferenceable(9) %i.bk, i64 9, i1 false), !tbaa.struct !625
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !865

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.bn = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i.i, ptr %i.bn, align 8, !tbaa !626
  %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.0..sroa.0.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !515
  %i.bo = icmp sgt i64 %i.ao, 16
  br i1 %i.bo, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit, !llvm.loop !867

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2743 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02842 = phi i64 [ %i.bq, %bb.b ], [ %2, %.lr.ph ]
  %i.bp = phi i64 [ %i.cf, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bq = add nsw i64 %.02842, -1                 ; 3 uses
  %i.br = lshr i64 %i.bp, 1
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.br ; 5 uses
  %i.bt = getelementptr inbounds i8, ptr %storemerge2743, i64 -16 ; 4 uses
  %.sroa.22.0.copyload.i.i.i = load i8, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !515 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !515 ; 3 uses
  %i.bu = icmp ugt i8 %.sroa.22.0.copyload.i.i.i, %.sroa.2.0.copyload.i.i.i
  %.sroa.2.0..sroa_idx.i28.i.i = getelementptr inbounds i8, ptr %storemerge2743, i64 -8
  %.sroa.2.0.copyload.i29.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i28.i.i, align 8, !tbaa !515 ; 4 uses
  br i1 %i.bu, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph44
  %i.bv = icmp ugt i8 %.sroa.2.0.copyload.i.i.i, %.sroa.2.0.copyload.i29.i.i
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !625
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 9, i1 false), !tbaa.struct !625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(9) %9, i64 9, i1 false), !tbaa.struct !625
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.bw = icmp ugt i8 %.sroa.22.0.copyload.i.i.i, %.sroa.2.0.copyload.i29.i.i
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !625
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 9, i1 false), !tbaa.struct !625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(9) %8, i64 9, i1 false), !tbaa.struct !625
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !625
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 9, i1 false), !tbaa.struct !625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(9) %7, i64 9, i1 false), !tbaa.struct !625
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph44
  %i.bx = icmp ugt i8 %.sroa.22.0.copyload.i.i.i, %.sroa.2.0.copyload.i29.i.i
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !625
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 9, i1 false), !tbaa.struct !625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(9) %6, i64 9, i1 false), !tbaa.struct !625
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.by = icmp ugt i8 %.sroa.2.0.copyload.i.i.i, %.sroa.2.0.copyload.i29.i.i
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !625
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 9, i1 false), !tbaa.struct !625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(9) %5, i64 9, i1 false), !tbaa.struct !625
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !625
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 9, i1 false), !tbaa.struct !625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(9) %4, i64 9, i1 false), !tbaa.struct !625
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader, %bb.v
  %.sroa.014.0.i.i = phi ptr [ %i.ca, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2743, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i.preheader ]
  %.sroa.2.0.copyload.i.i14.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i13.i, align 8, !tbaa !515 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i ], [ %i.ca, %bb.t ] ; 9 uses
  %.sroa.22.0..sroa_idx.i.i15.i = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8
  %.sroa.22.0.copyload.i.i16.i = load i8, ptr %.sroa.22.0..sroa_idx.i.i15.i, align 8, !tbaa !515
  %i.bz = icmp ugt i8 %.sroa.22.0.copyload.i.i16.i, %.sroa.2.0.copyload.i.i14.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 2 uses
  br i1 %i.bz, label %bb.t, label %.preheader.i.i, !llvm.loop !868

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %.sroa.2.0..sroa_idx.i10.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.sroa.2.0.copyload.i11.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i10.i.i, align 8, !tbaa !515
  %i.cb = icmp ugt i8 %.sroa.2.0.copyload.i.i14.i, %.sroa.2.0.copyload.i11.i.i
  br i1 %i.cb, label %.preheader.i.i, label %bb.u, !llvm.loop !869

bb.u:                                             ; preds = %.preheader.i.i
  %i.cc = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cc, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEET_SS_SS_T0_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.1.i.i, i64 16, i1 false), !tbaa.struct !625
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 9, i1 false), !tbaa.struct !625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(9) %3, i64 9, i1 false), !tbaa.struct !625
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_SS_T0_.exit.i, !llvm.loop !870

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEET_SS_SS_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2743, i64 noundef %i.bq)
  %i.cd = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.ce = sub i64 %i.cd, %i.a
  %.fr.i = freeze i64 %i.ce                       ; 2 uses
  %i.cf = ashr exact i64 %.fr.i, 4                ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, 16
  br i1 %i.cg, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit, !llvm.loop !863

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEET_SS_SS_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_RT0_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_SS_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %3 = alloca %"struct.TristateVisitor::RefStrength", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 24
  %.sroa.22.0.copyload.i.i = load i8, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !515 ; 4 uses
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !515
  %i.e = icmp ugt i8 %.sroa.22.0.copyload.i.i, %.sroa.2.0.copyload.i.i
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.019.i.ptr, i64 16, i1 false), !tbaa.struct !625
  %i.f = icmp samesign ugt i64 %.sroa.0.019.i.idx, 16
  br i1 %i.f, label %bb.d, label %bb.e, !prof !265

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
end_hunk_1
