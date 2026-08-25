Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EmulateInstruction?download=true
inline.NumInlined: 713
inline.NumDeleted: 454
begin_hunk_0_@_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextEN4lldb12RegisterKindEjm:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 256, ptr %i.o, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.m, i8 0, i64 256, i1 false), !tbaa !23
  store i64 256, ptr %i.n, align 8, !tbaa !95
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 336
  store i32 0, ptr %i.p, align 8, !tbaa !96
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !110
  %i.s = call noundef zeroext i1 @_ZN12lldb_private13RegisterValue7SetUIntEmj(ptr noundef nonnull align 8 dereferenceable(344) %7, i64 noundef %4, i32 noundef %i.r) #16 ; 2 uses
  br i1 %i.s, label %bb.c, label %_ZN12lldb_private18EmulateInstruction13WriteRegisterERKNS0_7ContextERKNS_12RegisterInfoERKNS_13RegisterValueE.exit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48   ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN12lldb_private18EmulateInstruction13WriteRegisterERKNS0_7ContextERKNS_12RegisterInfoERKNS_13RegisterValueE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.x = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(344) %7) #16, !inline_history !106
  br label %_ZN12lldb_private18EmulateInstruction13WriteRegisterERKNS0_7ContextERKNS_12RegisterInfoERKNS_13RegisterValueE.exit

_ZN12lldb_private18EmulateInstruction13WriteRegisterERKNS0_7ContextERKNS_12RegisterInfoERKNS_13RegisterValueE.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.06 = phi i1 [ undef, %bb.b ], [ %i.x, %bb.d ], [ false, %bb.c ]
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !93   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.m
  br i1 %i.z, label %_ZN12lldb_private13RegisterValue19RegisterValueBufferD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN12lldb_private18EmulateInstruction13WriteRegisterERKNS0_7ContextERKNS_12RegisterInfoERKNS_13RegisterValueE.exit
  call void @free(ptr noundef %i.y) #16
  br label %_ZN12lldb_private13RegisterValue19RegisterValueBufferD2Ev.exit.i

_ZN12lldb_private13RegisterValue19RegisterValueBufferD2Ev.exit.i: ; preds = %bb.e, %_ZN12lldb_private18EmulateInstruction13WriteRegisterERKNS0_7ContextERKNS_12RegisterInfoERKNS_13RegisterValueE.exit
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.k) #16
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !88
  %i.ab = icmp ugt i32 %i.aa, 64
  br i1 %i.ab, label %bb.f, label %_ZN12lldb_private13RegisterValueD2Ev.exit

bb.f:                                             ; preds = %_ZN12lldb_private13RegisterValue19RegisterValueBufferD2Ev.exit.i
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !23  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN12lldb_private13RegisterValueD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #17
  br label %_ZN12lldb_private13RegisterValueD2Ev.exit

_ZN12lldb_private13RegisterValueD2Ev.exit:        ; preds = %_ZN12lldb_private13RegisterValue19RegisterValueBufferD2Ev.exit.i, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN12lldb_private13RegisterValueD2Ev.exit, %bb.a
  br label %bb.i

bb.i:                                             ; preds = %_ZN12lldb_private13RegisterValueD2Ev.exit, %bb.h
  %.1 = phi i1 [ false, %bb.h ], [ %.06, %_ZN12lldb_private13RegisterValueD2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN12lldb_private13RegisterValue7SetUIntEmj(ptr noundef nonnull align 8 dereferenceable(344), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction21WriteRegisterUnsignedERKNS0_7ContextERKNS_12RegisterInfoEm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %5 = alloca %"class.lldb_private::RegisterValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i32 0, ptr %5, align 8, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i32 64, ptr %i.c, align 8, !tbaa !88, !alias.scope !111
  store i64 0, ptr %i.b, align 8, !alias.scope !111
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i8 1, ptr %i.d, align 4, !tbaa !92, !alias.scope !111
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN4llvm6detail9IEEEFloatC1Ef(ptr noundef nonnull align 8 dereferenceable(24) %4, float noundef 0.000000e+00) #16
  call void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr nofree noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEsingleE) #16
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !93
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 256, ptr %i.i, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.g, i8 0, i64 256, i1 false), !tbaa !23
  store i64 256, ptr %i.h, align 8, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 336
  store i32 0, ptr %i.j, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !110
  %i.m = call noundef zeroext i1 @_ZN12lldb_private13RegisterValue7SetUIntEmj(ptr noundef nonnull align 8 dereferenceable(344) %5, i64 noundef %3, i32 noundef %i.l) #16
  br i1 %i.m, label %bb.b, label %_ZN12lldb_private18EmulateInstruction13WriteRegisterERKNS0_7ContextERKNS_12RegisterInfoERKNS_13RegisterValueE.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN12lldb_private18EmulateInstruction13WriteRegisterERKNS0_7ContextERKNS_12RegisterInfoERKNS_13RegisterValueE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(344) %5) #16, !inline_history !106
  br label %_ZN12lldb_private18EmulateInstruction13WriteRegisterERKNS0_7ContextERKNS_12RegisterInfoERKNS_13RegisterValueE.exit

_ZN12lldb_private18EmulateInstruction13WriteRegisterERKNS0_7ContextERKNS_12RegisterInfoERKNS_13RegisterValueE.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.r, %bb.c ], [ false, %bb.b ]
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !93   ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.g
  br i1 %i.t, label %_ZN12lldb_private13RegisterValue19RegisterValueBufferD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN12lldb_private18EmulateInstruction13WriteRegisterERKNS0_7ContextERKNS_12RegisterInfoERKNS_13RegisterValueE.exit
  call void @free(ptr noundef %i.s) #16
  br label %_ZN12lldb_private13RegisterValue19RegisterValueBufferD2Ev.exit.i

_ZN12lldb_private13RegisterValue19RegisterValueBufferD2Ev.exit.i: ; preds = %bb.d, %_ZN12lldb_private18EmulateInstruction13WriteRegisterERKNS0_7ContextERKNS_12RegisterInfoERKNS_13RegisterValueE.exit
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #16
  %i.u = load i32, ptr %i.c, align 8, !tbaa !88
  %i.v = icmp ugt i32 %i.u, 64
  br i1 %i.v, label %bb.e, label %_ZN12lldb_private13RegisterValueD2Ev.exit

bb.e:                                             ; preds = %_ZN12lldb_private13RegisterValue19RegisterValueBufferD2Ev.exit.i
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN12lldb_private13RegisterValueD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.w) #17
  br label %_ZN12lldb_private13RegisterValueD2Ev.exit

_ZN12lldb_private13RegisterValueD2Ev.exit:        ; preds = %_ZN12lldb_private13RegisterValue19RegisterValueBufferD2Ev.exit.i, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction10ReadMemoryERKNS0_7ContextEmPvm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = tail call noundef i64 %i.b(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(248) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #16
  %i.f = icmp eq i64 %i.e, %4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN12lldb_private18EmulateInstruction18ReadMemoryUnsignedERKNS0_7ContextEmmmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.lldb_private::DataExtractor", align 8 ; 5 uses
  %i.c = icmp ult i64 %3, 9
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.h = call noundef i64 %i.e(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(248) %1, i64 noundef %2, ptr noundef nonnull %i.a, i64 noundef %3) #16
  %i.i = icmp eq i64 %i.h, %3                     ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 0, ptr %i.b, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = call noundef i32 @_ZNK12lldb_private8ArchSpec12GetByteOrderEv(ptr noundef nonnull align 8 dereferenceable(96) %i.j) #16
  %i.l = call noundef i32 @_ZNK12lldb_private8ArchSpec18GetAddressByteSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.j) #16
  call void @_ZN12lldb_private13DataExtractorC1EPKvmN4lldb9ByteOrderEj(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %i.a, i64 noundef %3, i32 noundef %i.k, i32 noundef %i.l) #16
  %i.m = call noundef i64 @_ZNK12lldb_private13DataExtractor9GetMaxU64EPmm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %i.b, i64 noundef %3) #16
  call void @_ZN12lldb_private13DataExtractorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.m, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.115 = phi i64 [ %.0, %bb.d ], [ 0, %bb.a ]
  %.1 = phi i1 [ %i.i, %bb.d ], [ false, %bb.a ]  ; 2 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = zext i1 %.1 to i8
  store i8 %i.n, ptr %5, align 1, !tbaa !105
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %spec.select = select i1 %.1, i64 %.115, i64 %4
  ret i64 %spec.select
}

declare void @_ZN12lldb_private13DataExtractorC1EPKvmN4lldb9ByteOrderEj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare noundef i64 @_ZNK12lldb_private13DataExtractor9GetMaxU64EPmm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN12lldb_private13DataExtractorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction19WriteMemoryUnsignedERKNS0_7ContextEmmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.lldb_private::StreamString", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef i32 @_ZNK12lldb_private8ArchSpec12GetByteOrderEv(ptr noundef nonnull align 8 dereferenceable(96) %i.a) #16
  call void @_ZN12lldb_private12StreamStringC1EjN4lldb9ByteOrderE(ptr noundef nonnull align 8 dereferenceable(120) %5, i32 noundef 1, i32 noundef %i.b) #16
  %i.c = call noundef i64 @_ZN12lldb_private6Stream11PutMaxHex64EmmN4lldb9ByteOrderE(ptr noundef nonnull align 8 dereferenceable(88) %5, i64 noundef %3, i64 noundef %4, i32 noundef 0) #16 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.h = call { ptr, i64 } @_ZNK12lldb_private12StreamString9GetStringEv(ptr noundef nonnull align 8 dereferenceable(120) %5) #16
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = call noundef i64 %i.e(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(248) %1, i64 noundef %2, ptr noundef %i.i, i64 noundef %4) #16
  %i.k = icmp eq i64 %i.j, %4
  call void @_ZN12lldb_private12StreamStringD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i1 %i.k
}

declare void @_ZN12lldb_private12StreamStringC1EjN4lldb9ByteOrderE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #2

declare noundef i64 @_ZN12lldb_private6Stream11PutMaxHex64EmmN4lldb9ByteOrderE(ptr noundef nonnull align 8 dereferenceable(88), i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK12lldb_private12StreamString9GetStringEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN12lldb_private12StreamStringD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction11WriteMemoryERKNS0_7ContextEmPKvm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = tail call noundef i64 %i.b(ptr noundef nonnull %0, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(248) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #16
  %i.f = icmp eq i64 %i.e, %4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN12lldb_private18EmulateInstruction8SetBatonEPv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(184) initializes((104, 112)) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.a, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN12lldb_private18EmulateInstruction12SetCallbacksEPFmPS0_PvRKNS0_7ContextEmS2_mEPFmS1_S2_S5_mPKvmEPFbS1_S2_PKNS_12RegisterInfoERNS_13RegisterValueEEPFbS1_S2_S5_SE_RKSF_E(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(184) initializes((112, 144)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.a, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %2, ptr %i.b, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %3, ptr %i.c, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %4, ptr %i.d, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN12lldb_private18EmulateInstruction18SetReadMemCallbackEPFmPS0_PvRKNS0_7ContextEmS2_mE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(184) initializes((112, 120)) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.a, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN12lldb_private18EmulateInstruction19SetWriteMemCallbackEPFmPS0_PvRKNS0_7ContextEmPKvmE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(184) initializes((120, 128)) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.a, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN12lldb_private18EmulateInstruction18SetReadRegCallbackEPFbPS0_PvPKNS_12RegisterInfoERNS_13RegisterValueEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(184) initializes((128, 136)) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %1, ptr %i.a, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN12lldb_private18EmulateInstruction19SetWriteRegCallbackEPFbPS0_PvRKNS0_7ContextEPKNS_12RegisterInfoERKNS_13RegisterValueEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(184) initializes((136, 144)) %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %1, ptr %i.a, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN12lldb_private18EmulateInstruction15ReadMemoryFrameEPS0_PvRKNS0_7ContextEmS2_m(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(248) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.std::shared_ptr.22", align 8 ; 6 uses
  %7 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %4, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq i64 %5, 0
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.d = load ptr, ptr %1, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.22") align 8 %6, ptr noundef nonnull align 8 dereferenceable(608) %1) #16
  %i.g = load ptr, ptr %6, align 8, !tbaa !114
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #16
  %i.h = load ptr, ptr %6, align 8, !tbaa !114    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 616
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(3224) %i.h, i64 noundef %3, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(40) %7) #16
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.o, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !66
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #16, !inline_history !117
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #16, !inline_history !117
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !60
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.h ], [ %i.ab, %bb.i ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.j, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !68

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #16
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

end_hunk_0
