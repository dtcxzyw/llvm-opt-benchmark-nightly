inline.NumInlined: 117
inline.NumDeleted: 102
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::locale::id" = type { i64 }
%"class.std::unique_ptr.38" = type { %"struct.std::__uniq_ptr_data.39" }
%"struct.std::__uniq_ptr_data.39" = type { %"class.std::__uniq_ptr_impl.40" }
%"class.std::__uniq_ptr_impl.40" = type { %"class.std::tuple.41" }
%"class.std::tuple.41" = type { %"struct.std::_Tuple_impl.42" }
%"struct.std::_Tuple_impl.42" = type { %"struct.std::_Head_base.45" }
%"struct.std::_Head_base.45" = type { ptr }
%"class.std::unique_ptr.206" = type { %"struct.std::__uniq_ptr_data.207" }
%"struct.std::__uniq_ptr_data.207" = type { %"class.std::__uniq_ptr_impl.208" }
%"class.std::__uniq_ptr_impl.208" = type { %"class.std::tuple.209" }
%"class.std::tuple.209" = type { %"struct.std::_Tuple_impl.210" }
%"struct.std::_Tuple_impl.210" = type { %"struct.std::_Head_base.213" }
%"struct.std::_Head_base.213" = type { ptr }
%"class.std::unique_ptr.214" = type { %"struct.std::__uniq_ptr_data.215" }
%"struct.std::__uniq_ptr_data.215" = type { %"class.std::__uniq_ptr_impl.216" }
%"class.std::__uniq_ptr_impl.216" = type { %"class.std::tuple.217" }
%"class.std::tuple.217" = type { %"struct.std::_Tuple_impl.218" }
%"struct.std::_Tuple_impl.218" = type { %"struct.std::_Head_base.221" }
%"struct.std::_Head_base.221" = type { ptr }

$_ZN3fmt3v1112format_facetISt6localeE2idE = comdat any

@_ZN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, comdat, align 8
@_ZGVN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN3fmt3v1112format_facetISt6localeE2idE), align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"LIEF\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1112format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1112format_facetISt6localeE2idE], section "llvm.metadata"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE12CHPEMetadata5parseERNS0_6ParserERNS_12BinaryStreamE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.38") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(215) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %3 = alloca %"class.std::unique_ptr.206", align 8 ; 4 uses
  %4 = alloca %"class.std::unique_ptr.214", align 8 ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.3) #4 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4
  %i.e = load ptr, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call i64 %i.g(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.a, i64 noundef %i.d, i64 noundef 4, i64 noundef 0) #4, !inline_history !4
  %i.i = and i64 %i.h, 4294967296
  %.not.i.i = icmp eq i64 %i.i, 0
  store i64 %i.d, ptr %i.c, align 8
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.b

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i8, ptr %i.k, align 8, !range !5, !noundef !6
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #4
  %.pre.i = load i64, ptr %i.c, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.b, %bb.c
  %i.n = phi i64 [ %i.d, %bb.b ], [ %.pre.i, %bb.c ]
  %i.o = load i32, ptr %i.a, align 4              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.p = add i64 %i.n, 4
  store i64 %i.p, ptr %i.c, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 180
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  switch i32 %i.t, label %bb.d [
    i32 34404, label %_ZNSt10unique_ptrIN4LIEF2PE17CHPEMetadataARM64ESt14default_deleteIS2_EED2Ev.exit
    i32 43620, label %_ZNSt10unique_ptrIN4LIEF2PE17CHPEMetadataARM64ESt14default_deleteIS2_EED2Ev.exit
    i32 332, label %_ZNSt10unique_ptrIN4LIEF2PE15CHPEMetadataX86ESt14default_deleteIS2_EED2Ev.exit
  ]

_ZNSt10unique_ptrIN4LIEF2PE17CHPEMetadataARM64ESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit, %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @_ZN4LIEF2PE17CHPEMetadataARM645parseERNS0_6ParserERNS_12BinaryStreamEj(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.206") align 8 %3, ptr noundef nonnull align 8 dereferenceable(215) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.o) #4
  %i.u = load ptr, ptr %3, align 8
  store ptr %i.u, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %bb.e

_ZNSt10unique_ptrIN4LIEF2PE15CHPEMetadataX86ESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  call void @_ZN4LIEF2PE15CHPEMetadataX865parseERNS0_6ParserERNS_12BinaryStreamEj(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.214") align 8 %4, ptr noundef nonnull align 8 dereferenceable(215) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.o) #4
  %i.v = load ptr, ptr %4, align 8
  store ptr %i.v, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %bb.e

bb.d:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.w = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.3) #4 ; 0 uses
  %i.x = call noundef ptr @_ZN4LIEF2PE9to_stringENS0_6Header13MACHINE_TYPESE(i32 noundef %i.t) #4 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, %bb.d
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %_ZNSt10unique_ptrIN4LIEF2PE17CHPEMetadataARM64ESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN4LIEF2PE15CHPEMetadataX86ESt14default_deleteIS2_EED2Ev.exit
  ret void
}

declare void @_ZN4LIEF2PE17CHPEMetadataARM645parseERNS0_6ParserERNS_12BinaryStreamEj(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.206") align 8, ptr noundef nonnull align 8 dereferenceable(215), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZN4LIEF2PE15CHPEMetadataX865parseERNS0_6ParserERNS_12BinaryStreamEj(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.214") align 8, ptr noundef nonnull align 8 dereferenceable(215), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4LIEF2PE9to_stringENS0_6Header13MACHINE_TYPESE(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #3 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef) local_unnamed_addr #2

declare void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef) local_unnamed_addr #2

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = distinct !{null, null}
!5 = !{i8 0, i8 2}
!6 = !{}
end_hunk_0
