Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SPIRVInstPrinter?download=true
inline.NumInlined: 718
inline.NumDeleted: 267
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE8EEEvPKNS_6MCInstEjRNS_11raw_ostreamE:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = zext i32 %2 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24
  %i.j = trunc i64 %i.i to i32
  call void @_ZN4llvm26getSymbolicOperandMnemonicB5cxx11ENS_5SPIRV15OperandCategory15OperandCategoryEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef 8, i32 noundef %i.j) #17
  %i.k = load ptr, ptr %4, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !60
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.k, i64 noundef %i.m) #17 ; 0 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !59     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.r = load i64, ptr %i.p, align 8, !tbaa !24
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm16SPIRVInstPrinter20printSymbolicOperandILNS_5SPIRV15OperandCategory15OperandCategoryE34EEEvPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33
  %i.c = icmp ult i32 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = zext i32 %2 to i64
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24
  %i.j = trunc i64 %i.i to i32
  call void @_ZN4llvm26getSymbolicOperandMnemonicB5cxx11ENS_5SPIRV15OperandCategory15OperandCategoryEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef 34, i32 noundef %i.j) #17
  %i.k = load ptr, ptr %4, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !60
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.k, i64 noundef %i.m) #17 ; 0 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !59     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.r = load i64, ptr %i.p, align 8, !tbaa !24
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN4llvm16SPIRVInstPrinter15getRegisterNameENS_10MCRegisterE(i32 %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = add i32 %0, -1
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @_ZZN4llvm16SPIRVInstPrinter15getRegisterNameENS_10MCRegisterEE12RegAsmOffset, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !24
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @_ZZN4llvm16SPIRVInstPrinter15getRegisterNameENS_10MCRegisterEE7AsmStrs, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16SPIRVInstPrinter25printRemainingVariableOpsEPKNS_6MCInstEjRNS_11raw_ostreamEbb(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !33   ; 7 uses
  %i.c = icmp ult i32 %2, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  br i1 %5, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.g = zext i32 %2 to i64                       ; 3 uses
  br i1 %4, label %.lr.ph.split.us.split.preheader, label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g
  %i.j = load i8, ptr %i.i, align 8, !tbaa !37
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.b, label %_ZN4llvm11raw_ostreamlsEc.exit.us.peel

_ZN4llvm11raw_ostreamlsEc.exit.us.peel:           ; preds = %.lr.ph.split.us.split.preheader
  tail call void @_ZN4llvm16SPIRVInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.us.peel, %.lr.ph.split.us.split.preheader
  %indvars.iv.next29.peel = add nuw nsw i64 %i.g, 1 ; 2 uses
  %lftr.wideiv31.peel = trunc nuw i64 %indvars.iv.next29.peel to i32
  %exitcond32.peel.not = icmp eq i32 %i.b, %lftr.wideiv31.peel
  br i1 %exitcond32.peel.not, label %._crit_edge, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ %i.g, %.lr.ph.split.us ] ; 3 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 8, !tbaa !37
  %i.o = icmp eq i8 %i.n, 2
  br i1 %i.o, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.split.us
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !32   ; 3 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !31
  %.not.i.us.us = icmp ult ptr %i.p, %i.q
  br i1 %.not.i.us.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext 32) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.us.us

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.s, ptr %i.e, align 8, !tbaa !32
  store i8 32, ptr %i.p, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit.us.us

_ZN4llvm11raw_ostreamlsEc.exit.us.us:             ; preds = %bb.e, %bb.d
  %i.t = trunc nuw i64 %indvars.iv to i32
  tail call void @_ZN4llvm16SPIRVInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %1, i32 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.us.us, %.lr.ph.split.us.split.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond27.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond27.not, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !0

.lr.ph.split.us.split:                            ; preds = %bb.b, %bb.j
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %bb.j ], [ %indvars.iv.next29.peel, %bb.b ] ; 3 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv28
  %i.w = load i8, ptr %i.v, align 8, !tbaa !37
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.split
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !32   ; 3 uses
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !31
  %.not.i.us = icmp ult ptr %i.y, %i.z
  br i1 %.not.i.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext 32) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.us

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !32
  store i8 32, ptr %i.y, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit.us

_ZN4llvm11raw_ostreamlsEc.exit.us:                ; preds = %bb.i, %bb.h
  %i.ac = trunc nuw i64 %indvars.iv28 to i32
  tail call void @_ZN4llvm16SPIRVInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %1, i32 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.us, %.lr.ph.split.us.split
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %lftr.wideiv31 = trunc i64 %indvars.iv.next29 to i32
  %exitcond32.not = icmp eq i32 %i.b, %lftr.wideiv31
  br i1 %exitcond32.not, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !102

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %4, label %_ZN4llvm11raw_ostreamlsEc.exit.peel, label %.lr.ph.split.split.us

_ZN4llvm11raw_ostreamlsEc.exit.peel:              ; preds = %.lr.ph.split
  tail call void @_ZN4llvm16SPIRVInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.ad = add nuw i32 %2, 1                       ; 2 uses
  %exitcond24.peel.not = icmp eq i32 %i.ad, %i.b
  br i1 %exitcond24.peel.not, label %._crit_edge, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %_ZN4llvm11raw_ostreamlsEc.exit.us20
  %.015.us16 = phi i32 [ %i.ai, %_ZN4llvm11raw_ostreamlsEc.exit.us20 ], [ %2, %.lr.ph.split ] ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !32  ; 3 uses
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !31
  %.not.i.us19 = icmp ult ptr %i.ae, %i.af
  br i1 %.not.i.us19, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.split.us
  %i.ag = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext 32) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.us20

bb.l:                                             ; preds = %.lr.ph.split.split.us
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.ah, ptr %i.e, align 8, !tbaa !32
  store i8 32, ptr %i.ae, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit.us20

_ZN4llvm11raw_ostreamlsEc.exit.us20:              ; preds = %bb.l, %bb.k
  tail call void @_ZN4llvm16SPIRVInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %1, i32 noundef %.015.us16, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.ai = add i32 %.015.us16, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.ai, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !0

._crit_edge:                                      ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.us20, %_ZN4llvm11raw_ostreamlsEc.exit, %bb.f, %bb.j, %_ZN4llvm11raw_ostreamlsEc.exit.peel, %bb.b, %bb.a
  ret void

.lr.ph.split.split:                               ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.peel, %_ZN4llvm11raw_ostreamlsEc.exit
  %.015 = phi i32 [ %i.an, %_ZN4llvm11raw_ostreamlsEc.exit ], [ %i.ad, %_ZN4llvm11raw_ostreamlsEc.exit.peel ] ; 3 uses
  %.not = icmp eq i32 %.015, %2
  br i1 %.not, label %_ZN4llvm11raw_ostreamlsEc.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.split
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !32  ; 3 uses
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !31
  %.not.i = icmp ult ptr %i.aj, %i.ak
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext 32) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.o:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.am, ptr %i.e, align 8, !tbaa !32
  store i8 32, ptr %i.aj, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.o, %bb.n, %.lr.ph.split.split
  tail call void @_ZN4llvm16SPIRVInstPrinter12printOperandEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %1, i32 noundef %.015, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.an = add i32 %.015, 1                        ; 2 uses
  %exitcond24.not = icmp eq i32 %i.an, %i.b
  br i1 %exitcond24.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16SPIRVInstPrinter21printOpConstantVarOpsEPKNS_6MCInstEjRNS_11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.anon, align 8                ; 4 uses
  %5 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %6 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 10 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %11 = alloca %"class.llvm::APFloat", align 8    ; 10 uses
  %12 = alloca %"class.llvm::format_object", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !65
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33
  %i.f = sub i32 %i.e, %2                         ; 5 uses
  %i.g = load i32, ptr %1, align 8, !tbaa !22
  %i.h = icmp eq i32 %i.g, 437
  %i.i = icmp ugt i32 %i.f, 2
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load i32, ptr %i.n, align 8, !noalias !120
  %i.p = and i32 %i.o, 1
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.p, 0       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !noalias !120
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load ptr, ptr %i.s, align 8, !noalias !120
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = load i32, ptr %i.u, align 8, !noalias !120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sink2.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.r, ptr %i.q ; 2 uses
  %.sink1.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.t, ptr %i.w ; 2 uses
  %.sink.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i32 %i.v, i32 4 ; 3 uses
  %i.x = icmp eq i32 %.sink.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %.loopexit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = add i32 %.sink.i.i.i.i.i.i.i, -1         ; 2 uses
  %i.z = mul i32 %i.m, 37
  %.019.i.i.i.i.i = and i32 %i.y, %i.z            ; 3 uses
  %i.aa = zext i32 %.019.i.i.i.i.i to i64         ; 2 uses
  %i.ab = lshr i64 %i.aa, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !23, !noalias !121
  %i.ae = and i32 %.019.i.i.i.i.i, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !66

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ah = add nuw i32 %.020.i.i.i.i.i, 1
  %.0.i.i.i.i.i = and i32 %i.ah, %i.y             ; 3 uses
  %i.ai = zext i32 %.0.i.i.i.i.i to i64           ; 2 uses
  %i.aj = lshr i64 %i.ai, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i.i, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !23, !noalias !121
  %i.am = and i32 %.0.i.i.i.i.i, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !67

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %i.ap = phi i64 [ %i.ai, %bb.d ], [ %i.aa, %bb.c ] ; 2 uses
  %.020.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.d ], [ %.019.i.i.i.i.i, %bb.c ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i.i.i.i.i, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !69, !noalias !121
  %i.as = icmp eq i32 %i.m, %i.ar
  br i1 %i.as, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_10MCRegisterEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E2atERKS2_.exit, label %bb.d, !prof !70

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.at = zext i32 %.sink.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_10MCRegisterEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E2atERKS2_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_10MCRegisterEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E2atERKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.i.i.i
  %i.au = phi i64 [ %i.at, %.loopexit.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i.i.i.i.i, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !23
  %i.ay = shl i32 %i.f, 5                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !123
  %i.ba = icmp ult i32 %i.ay, 65                  ; 2 uses
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_10MCRegisterEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E2atERKS2_.exit
  store i64 0, ptr %7, align 8, !tbaa !24
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_10MCRegisterEjLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E2atERKS2_.exit
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %7, i64 noundef 0, i1 noundef zeroext false) #17
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit:                       ; preds = %bb.e, %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %wide.trip.count = zext i32 %i.f to i64
  br label %bb.n

bb.g:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit58
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef %i.ax) #17
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !32 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %.not.i = icmp ult ptr %i.be, %i.bg
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef zeroext 32) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.i:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !32
  store i8 32, ptr %i.be, align 1, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.h, %bb.i
  call void @_ZNK4llvm5APInt5printERNS_11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(48) %3, i1 noundef zeroext false) #17
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !123
  %i.bl = icmp ugt i32 %i.bk, 64
  br i1 %i.bl, label %bb.j, label %_ZN4llvm5APIntD2Ev.exit

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.bm = load ptr, ptr %10, align 8, !tbaa !24   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN4llvm5APIntD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #18
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.bo = load i32, ptr %i.az, align 8, !tbaa !123
  %i.bp = icmp ugt i32 %i.bo, 64
  br i1 %i.bp, label %bb.l, label %_ZN4llvm5APIntD2Ev.exit55

bb.l:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.bq = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN4llvm5APIntD2Ev.exit55, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #18
  br label %_ZN4llvm5APIntD2Ev.exit55

_ZN4llvm5APIntD2Ev.exit55:                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.am

bb.n:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit, %_ZN4llvm5APIntD2Ev.exit58
  %indvars.iv = phi i64 [ 0, %_ZN4llvm5APIntC2Ejmbb.exit ], [ %indvars.iv.next, %_ZN4llvm5APIntD2Ev.exit58 ] ; 2 uses
  %i.bs = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.bt = add i32 %2, %i.bs
  %i.bu = zext i32 %i.bt to i64
  %i.bv = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store i32 %i.ay, ptr %i.bb, align 8, !tbaa !123
  br i1 %i.ba, label %_ZN4llvm5APIntC2Ejmbb.exit56.thread, label %_ZN4llvm5APIntC2Ejmbb.exit56

_ZN4llvm5APIntC2Ejmbb.exit56.thread:              ; preds = %bb.n
  store i64 %i.by, ptr %9, align 8, !tbaa !24
  %i.bz = shl i32 %i.bs, 5
  store i32 %i.ay, ptr %i.bc, align 8, !tbaa !123, !alias.scope !124
  br label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i

_ZN4llvm5APIntC2Ejmbb.exit56:                     ; preds = %bb.n
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %9, i64 noundef %i.by, i1 noundef zeroext false) #17
  %.pr = load i32, ptr %i.bb, align 8, !tbaa !123, !noalias !125 ; 3 uses
  %i.ca = shl i32 %i.bs, 5                        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  store i32 %.pr, ptr %i.bc, align 8, !tbaa !123, !alias.scope !125
  %i.cb = icmp ult i32 %.pr, 65
  br i1 %i.cb, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i.i

_ZN4llvm5APIntC2ERKS0_.exit.i.i:                  ; preds = %_ZN4llvm5APIntC2Ejmbb.exit56
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %9) #17
  %.pr.i.i = load i32, ptr %i.bc, align 8, !tbaa !123, !alias.scope !125 ; 2 uses
  %i.cc = icmp ult i32 %.pr.i.i, 65
end_hunk_0
