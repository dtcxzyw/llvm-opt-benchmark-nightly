Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/disasm-x64?download=true
inline.NumInlined: 1072
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6disasm15DisassemblerX6417InstructionDecodeEN2v84base6VectorIcEEPh:bb.a
  %i.qt = sub i64 %2, %i.qr
  %i.qu = tail call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %i.qs, i64 %i.qt, ptr noundef nonnull @.str.632) #16
  %i.qv = add nsw i32 %i.qu, %.1214357            ; 3 uses
  %i.qw = icmp slt i32 %i.qv, 20
  br i1 %i.qw, label %.lr.ph358, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph358, %.preheader
  %.1214.lcssa = phi i32 [ %i.qp, %.preheader ], [ %i.qv, %.lr.ph358 ]
  %i.qx = ptrtoint ptr %.12 to i64
  %i.qy = ptrtoint ptr %3 to i64
  %i.qz = sub i64 %i.qx, %i.qy
  %i.ra = trunc i64 %i.qz to i32
  %i.rb = zext nneg i32 %.1214.lcssa to i64       ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 %i.rb
  %i.rd = sub i64 %2, %i.rb
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rf = load ptr, ptr %i.re, align 8
  %i.rg = tail call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr nonnull %i.rc, i64 %i.rd, ptr noundef nonnull @.str.633, ptr noundef %i.rf) #16 ; 0 uses
  ret i32 %i.ra
}

declare noundef i32 @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr, i64, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK6disasm13NameConverter13NameOfAddressEPh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  %i.b = tail call noundef i32 (ptr, i64, ptr, ...) @_ZN2v84base8SNPrintFENS0_6VectorIcEEPKcz(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull @.str.634, ptr noundef %1) #16 ; 0 uses
  %i.c = load ptr, ptr %i.a, align 8
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK6disasm13NameConverter14NameOfConstantEPh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) #16
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @_ZNK6disasm13NameConverter17NameOfCPURegisterEi(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %or.cond = icmp ult i32 %1, 16
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZN6disasmL8cpu_regsE, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ @.str.635, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @_ZNK6disasm13NameConverter21NameOfByteCPURegisterEi(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %or.cond = icmp ult i32 %1, 16
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZN6disasmL13byte_cpu_regsE, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ @.str.635, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @_ZNK6disasm13NameConverter17NameOfXMMRegisterEi(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %or.cond = icmp ult i32 %1, 16
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %1 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZN6disasmL8xmm_regsE, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ @.str.636, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @_ZN6disasm17NameOfYMMRegisterEi(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %or.cond = icmp ult i32 %0, 16
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZN6disasmL8ymm_regsE, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ @.str.637, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define hidden noalias noundef nonnull ptr @_ZNK6disasm13NameConverter10NameInCodeEPh(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14) #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6disasm12Disassembler17InstructionDecodeEN2v84base6VectorIcEEPh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0, ptr %1, i64 %2, ptr noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.disasm::DisassemblerX64", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !align !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8
  store ptr %i.a, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 128, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 156
  %i.i = icmp eq i8 %i.c, 1
  %i.j = zext i1 %i.i to i8
  store i8 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.k, i8 0, i64 9, i1 false)
  %i.l = load atomic i8, ptr @_ZGVZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.b, label %_ZN6disasm15DisassemblerX64C2ERKNS_13NameConverterENS_12Disassembler25UnimplementedOpcodeActionE.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.n = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object) #16
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %_ZN6disasm15DisassemblerX64C2ERKNS_13NameConverterENS_12Disassembler25UnimplementedOpcodeActionE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.preheader.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.3, %.preheader.i.i ], [ 0, %bb.b ] ; 5 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr @_ZZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  store ptr @.str, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.p, i8 0, i64 9, i1 false)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr @_ZZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @.str, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.s, i8 0, i64 9, i1 false)
  %i.t = getelementptr inbounds nuw [24 x i8], ptr @_ZZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store ptr @.str, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.v, i8 0, i64 9, i1 false)
  %i.w = getelementptr inbounds nuw [24 x i8], ptr @_ZZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  store ptr @.str, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.3, 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.y, i8 0, i64 9, i1 false)
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZN2v84base11LeakyObjectIN6disasm16InstructionTableEEC2IJEEEDpOT_.exit.i.i, label %.preheader.i.i, !llvm.loop !0

_ZN2v84base11LeakyObjectIN6disasm16InstructionTableEEC2IJEEEDpOT_.exit.i.i: ; preds = %.preheader.i.i
  call void @_ZN6disasm16InstructionTable4InitEv(ptr noundef nonnull align 8 dereferenceable(6144) @_ZZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object)
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object) #16
  br label %_ZN6disasm15DisassemblerX64C2ERKNS_13NameConverterENS_12Disassembler25UnimplementedOpcodeActionE.exit

_ZN6disasm15DisassemblerX64C2ERKNS_13NameConverterENS_12Disassembler25UnimplementedOpcodeActionE.exit: ; preds = %bb.a, %bb.b, %_ZN2v84base11LeakyObjectIN6disasm16InstructionTableEEC2IJEEEDpOT_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 168
  store ptr @_ZZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.d, align 8
  store i8 0, ptr %i.aa, align 1
  %i.ab = call noundef i32 @_ZN6disasm15DisassemblerX6417InstructionDecodeEN2v84base6VectorIcEEPh(ptr noundef nonnull align 8 dereferenceable(176) %4, ptr %1, i64 %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i32 %i.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN6disasm12Disassembler18ConstantPoolSizeAtEPh(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(9) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #9 align 2 {
bb.a:
  ret i32 -1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6disasm12Disassembler11DisassembleEP8_IO_FILEPhS3_NS0_25UnimplementedOpcodeActionE(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, i8 noundef signext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.disasm::DisassemblerX64", align 16 ; 11 uses
  %5 = alloca %"class.disasm::NameConverter", align 8 ; 7 uses
  %6 = alloca %"class.v8::base::EmbeddedVector", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6disasm13NameConverterE, i64 16), ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 128, ptr %i.c, align 8
  %i.d = icmp ult ptr %1, %2
  br i1 %i.d, label %.lr.ph32, label %._crit_edge33

.lr.ph32:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %7 = insertelement <2 x ptr> poison, ptr %5, i64 0
  %8 = insertelement <2 x ptr> %7, ptr %4, i64 1
  %9 = getelementptr inbounds nuw i8, <2 x ptr> %8, <2 x i64> <i64 0, i64 24>
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 156
  %i.k = icmp eq i8 %3, 1
  %i.l = zext i1 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 157
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 168
  br label %bb.b

._crit_edge33:                                    ; preds = %._crit_edge29, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void

bb.b:                                             ; preds = %.lr.ph32, %._crit_edge29
  %.02230 = phi ptr [ %1, %.lr.ph32 ], [ %i.af, %._crit_edge29 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %i.e, ptr %6, align 8
  store i64 128, ptr %i.f, align 8
  store i8 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store <2 x ptr> %9, ptr %4, align 16
  store i64 128, ptr %i.h, align 16
  store i32 0, ptr %i.i, align 8
  store i8 %i.l, ptr %i.j, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.m, i8 0, i64 9, i1 false)
  %i.o = load atomic i8, ptr @_ZGVZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object acquire, align 8
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.c, label %_ZN6disasm12Disassembler17InstructionDecodeEN2v84base6VectorIcEEPh.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.q = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object) #16
  %.not.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN6disasm12Disassembler17InstructionDecodeEN2v84base6VectorIcEEPh.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.c, %.preheader.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.3, %.preheader.i.i.i ], [ 0, %bb.c ] ; 5 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr @_ZZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object, i64 %indvars.iv.i.i.i.i.i.i ; 2 uses
  store ptr @.str, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.s, i8 0, i64 9, i1 false)
  %i.t = getelementptr inbounds nuw [24 x i8], ptr @_ZZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object, i64 %indvars.iv.i.i.i.i.i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @.str, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.v, i8 0, i64 9, i1 false)
  %i.w = getelementptr inbounds nuw [24 x i8], ptr @_ZZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object, i64 %indvars.iv.i.i.i.i.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr @.str, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.y, i8 0, i64 9, i1 false)
  %i.z = getelementptr inbounds nuw [24 x i8], ptr @_ZZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object, i64 %indvars.iv.i.i.i.i.i.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store ptr @.str, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %indvars.iv.next.i.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.3, 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ab, i8 0, i64 9, i1 false)
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN2v84base11LeakyObjectIN6disasm16InstructionTableEEC2IJEEEDpOT_.exit.i.i.i, label %.preheader.i.i.i, !llvm.loop !0

_ZN2v84base11LeakyObjectIN6disasm16InstructionTableEEC2IJEEEDpOT_.exit.i.i.i: ; preds = %.preheader.i.i.i
  call void @_ZN6disasm16InstructionTable4InitEv(ptr noundef nonnull align 8 dereferenceable(6144) @_ZZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object)
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object) #16
  br label %_ZN6disasm12Disassembler17InstructionDecodeEN2v84base6VectorIcEEPh.exit

_ZN6disasm12Disassembler17InstructionDecodeEN2v84base6VectorIcEEPh.exit: ; preds = %bb.b, %bb.c, %_ZN2v84base11LeakyObjectIN6disasm16InstructionTableEEC2IJEEEDpOT_.exit.i.i.i
  store ptr @_ZZN6disasm12_GLOBAL__N_119GetInstructionTableEvE6object, ptr %i.n, align 8
  %i.ac = load ptr, ptr %i.g, align 8
  store i8 0, ptr %i.ac, align 1
  %i.ad = call noundef i32 @_ZN6disasm15DisassemblerX6417InstructionDecodeEN2v84base6VectorIcEEPh(ptr noundef nonnull align 8 dereferenceable(176) %4, ptr nonnull %i.e, i64 128, ptr noundef %.02230) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %.02230, i64 %i.ae ; 3 uses
  %i.ag = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.634, ptr noundef %.02230) #16 ; 0 uses
  %fwrite = call i64 @fwrite(ptr nonnull @.str.638, i64 4, i64 1, ptr %0) ; 0 uses
  %i.ah = icmp sgt i32 %i.ad, 0
  br i1 %i.ah, label %.lr.ph, label %.lr.ph28.preheader

._crit_edge:                                      ; preds = %.lr.ph
  %i.ai = icmp samesign ult i32 %i.ad, 7
  br i1 %i.ai, label %.lr.ph28.preheader, label %._crit_edge29

.lr.ph28.preheader:                               ; preds = %_ZN6disasm12Disassembler17InstructionDecodeEN2v84base6VectorIcEEPh.exit, %._crit_edge
  %i.aj = sub nsw i32 6, %i.ad
  br label %.lr.ph28

.lr.ph:                                           ; preds = %_ZN6disasm12Disassembler17InstructionDecodeEN2v84base6VectorIcEEPh.exit, %.lr.ph
  %.02125 = phi ptr [ %i.an, %.lr.ph ], [ %.02230, %_ZN6disasm12Disassembler17InstructionDecodeEN2v84base6VectorIcEEPh.exit ] ; 2 uses
  %i.ak = load i8, ptr %.02125, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.631, i32 noundef %i.al) #16 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02125, i64 1 ; 2 uses
  %i.ao = icmp ult ptr %i.an, %i.af
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !26

._crit_edge29:                                    ; preds = %.lr.ph28, %._crit_edge
  %i.ap = load ptr, ptr %6, align 8
  %i.aq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.639, ptr noundef %i.ap) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.ar = icmp ult ptr %i.af, %2
  br i1 %i.ar, label %bb.b, label %._crit_edge33, !llvm.loop !27

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %.lr.ph28
  %.026 = phi i32 [ %i.as, %.lr.ph28 ], [ %i.aj, %.lr.ph28.preheader ] ; 2 uses
  %fwrite24 = call i64 @fwrite(ptr nonnull @.str.632, i64 2, i64 1, ptr %0) ; 0 uses
  %i.as = add nsw i32 %.026, -1
  %.not = icmp eq i32 %.026, 0
  br i1 %.not, label %._crit_edge29, label %.lr.ph28, !llvm.loop !28
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6disasm13NameConverterD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6disasm13NameConverterD0Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK6disasm13NameConverter16RootRelativeNameEi(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14) #17
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{!0, !8}
!1 = distinct !{!1, !8}
!2 = distinct !{null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{}
!10 = !{i64 8}
!11 = !{ptr @_ZNK6disasm15DisassemblerX6417NameOfCPURegisterEi}
!12 = !{i8 0, i8 2}
!13 = !{ptr @_ZNK6disasm15DisassemblerX6417NameOfXMMRegisterEi}
!14 = !{ptr @_ZN6disasm15DisassemblerX6413PrintOperandsEPKcNS_11OperandTypeEPh}
!15 = !{ptr @_ZN6disasm15DisassemblerX6413PrintOperandsEPKcNS_11OperandTypeEPh, ptr @_ZNK6disasm15DisassemblerX6417NameOfXMMRegisterEi}
!16 = !{!"branch_weights", i32 1, i32 1048575}
!17 = distinct !{!17, !8}
!18 = !{ptr @_ZN6disasm15DisassemblerX6425TryAppendRootRelativeNameEi}
!19 = !{ptr @_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi}
!20 = distinct !{!20, !8}
!21 = distinct !{ptr @_ZN6disasm15DisassemblerX6420JumpConditionalShortEPh, null}
!22 = distinct !{ptr @_ZN6disasm15DisassemblerX649JumpShortEPh, null}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = !{ptr @_ZNK6disasm15DisassemblerX6421NameOfByteCPURegisterEi}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
end_hunk_0
