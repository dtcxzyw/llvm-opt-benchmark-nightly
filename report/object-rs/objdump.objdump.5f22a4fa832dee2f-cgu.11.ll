Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.11?download=true
inline.NumInlined: 233
inline.NumDeleted: 118
begin_hunk_0_@_RINvYINtNtCseHTIzroA4w0_6object3elf15ProgramHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7segment13ProgramHeader5notesRShECs8aoZCP6pRcV_7objdump:bb.a
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %.sroa.731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.731.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.736.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %.sroa.428.0..sroa_idx, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %select.unfold, %bb.e, %bb.f
  %.sink43 = phi i64 [ 16, %bb.f ], [ 8, %bb.e ], [ 8, %select.unfold ]
  %.sroa.534.0.copyload.sink = phi i64 [ %.sroa.534.0.copyload, %bb.f ], [ %i.t, %bb.e ], [ 39, %select.unfold ]
  %.sink.ph = phi i8 [ %i.p, %bb.f ], [ -1, %bb.e ], [ -1, %select.unfold ]
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink43
  store i64 %.sroa.534.0.copyload.sink, ptr %.sroa.529.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.sink = phi i8 [ 2, %bb.a ], [ %.sink.ph, %.sink.split ]
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %.sroa.630.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15ProgramHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7segment13ProgramHeader5notesRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((24, 25)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(56) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %.val = load i32, ptr %1, align 1
  %i.b = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11ProgramTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %2)
  %.not = icmp eq i32 %i.b, 4
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val37 = load i64, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val38 = load i64, ptr %i.d, align 1
  %i.e = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val37, i1 noundef zeroext %2), !noalias !163 ; 3 uses
  %i.f = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val38, i1 noundef zeroext %2), !noalias !163 ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i64 %4, %i.e
  %i.i = sub nuw nsw i64 %4, %i.e
  %.not.i.i = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %i.e
  %or.cond = select i1 %i.h, i1 true, i1 %.not.i.i
  br i1 %or.cond, label %select.unfold, label %bb.d

select.unfold:                                    ; preds = %bb.c
  store ptr @18, ptr %0, align 8
  br label %.sink.split

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.j, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val39 = load i64, ptr %i.k, align 1
  %i.l = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val39, i1 noundef zeroext %2)
  call void @_RNvMNtNtNtCseHTIzroA4w0_6object4read3elf4noteINtB2_12NoteIteratorINtNtB8_3elf12FileHeader64NtNtB8_6endian10EndiannessEE3newCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i1 noundef zeroext %2, i64 noundef %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %i.f)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.n = load i8, ptr %i.m, align 8, !range !9, !noundef !6 ; 2 uses
  %i.o = icmp eq i8 %i.n, 2
  %i.p = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.p, ptr %0, align 8
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.534.0.copyload = load i64, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %.sroa.731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.731.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.736.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.p, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %.sroa.428.0..sroa_idx, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %select.unfold, %bb.e, %bb.f
  %.sink44 = phi i64 [ 16, %bb.f ], [ 8, %bb.e ], [ 8, %select.unfold ]
  %.sroa.534.0.copyload.sink = phi i64 [ %.sroa.534.0.copyload, %bb.f ], [ %i.r, %bb.e ], [ 39, %select.unfold ]
  %.sink.ph = phi i8 [ %i.n, %bb.f ], [ -1, %bb.e ], [ -1, %select.unfold ]
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink44
  store i64 %.sroa.534.0.copyload.sink, ptr %.sroa.529.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.sink = phi i8 [ 2, %bb.a ], [ %.sink.ph, %.sink.split ]
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %.sroa.630.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader10gnu_verdefRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((16, 17)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(40) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val = load i32, ptr %i.a, align 1             ; 2 uses
  %i.b = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %2)
  %.not = icmp eq i32 %i.b, 1879048189
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.c = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %2), !noalias !175
  %i.d = icmp eq i32 %i.c, 8
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i = load i32, ptr %i.e, align 1, !alias.scope !176
  %i.f = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val2.i.i, i1 noundef zeroext %2), !noalias !175
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val.i.i = load i32, ptr %i.g, align 1, !alias.scope !176
  %i.h = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val.i.i, i1 noundef zeroext %2), !noalias !175 ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp eq i32 %i.h, 0
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext i32 %i.f to i64                     ; 3 uses
  %i.l = icmp samesign ult i64 %4, %i.k
  %i.m = sub nuw nsw i64 %4, %i.k
  %.not.i.i = icmp samesign ult i64 %i.m, %i.i
  %or.cond.i = select i1 %i.l, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %i.k
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.h

_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.d
  store ptr @19, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 45, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.p, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sink13.i.ph = phi ptr [ %i.n, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %.sink.i.ph = phi i64 [ %i.i, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.q = zext i1 %2 to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load i32, ptr %i.r, align 1, !alias.scope !177
  %i.s = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val.i, i1 noundef zeroext %2), !noalias !177
  %i.t = zext i32 %i.s to i64
  store ptr %.sink13.i.ph, ptr %0, align 8
  %.sroa.06.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink.i.ph, ptr %.sroa.06.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.q, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.t, ptr %.sroa.47.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader10gnu_versymRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(40) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val = load i32, ptr %i.a, align 1             ; 2 uses
  %i.b = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %2)
  %.not = icmp eq i32 %i.b, 1879048191
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.c = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %2), !noalias !194
  %i.d = icmp eq i32 %i.c, 8
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i.i = load i32, ptr %i.e, align 1, !alias.scope !195
  %i.f = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val2.i.i.i, i1 noundef zeroext %2), !noalias !194
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val.i.i.i = load i32, ptr %i.g, align 1, !alias.scope !195
  %i.h = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val.i.i.i, i1 noundef zeroext %2), !noalias !194 ; 3 uses
  %5 = zext i32 %i.h to i64                       ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext i32 %i.f to i64                     ; 3 uses
  %i.k = icmp samesign ult i64 %4, %i.j
  %i.l = sub nuw nsw i64 %4, %i.j
  %.not.i.i.i = icmp samesign ult i64 %i.l, %5
  %or.cond.i.i = select i1 %i.k, i1 true, i1 %.not.i.i.i
  %i.m = trunc i32 %i.h to i1
  %or.cond.i = or i1 %or.cond.i.i, %i.m
  br i1 %or.cond.i, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.d
  %6 = lshr exact i64 %5, 1
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @20, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 45, ptr %i.o, align 8
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.b, %.thread.i
  %.sink13.i.ph17.i = phi ptr [ %7, %.thread.i ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.c ]
  %.sink.i.ph = phi i64 [ %6, %.thread.i ], [ 0, %bb.b ], [ 0, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load i32, ptr %i.p, align 1, !alias.scope !196
  %i.q = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val.i, i1 noundef zeroext %2), !noalias !196
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink13.i.ph17.i, ptr %i.s, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i.ph, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.59.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader11gnu_verneedRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((16, 17)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(40) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val = load i32, ptr %i.a, align 1             ; 2 uses
  %i.b = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %2)
  %.not = icmp eq i32 %i.b, 1879048190
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.c = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %2), !noalias !208
  %i.d = icmp eq i32 %i.c, 8
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i = load i32, ptr %i.e, align 1, !alias.scope !209
  %i.f = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val2.i.i, i1 noundef zeroext %2), !noalias !208
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val.i.i = load i32, ptr %i.g, align 1, !alias.scope !209
  %i.h = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val.i.i, i1 noundef zeroext %2), !noalias !208 ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp eq i32 %i.h, 0
  br i1 %i.j, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext i32 %i.f to i64                     ; 3 uses
  %i.l = icmp samesign ult i64 %4, %i.k
  %i.m = sub nuw nsw i64 %4, %i.k
  %.not.i.i = icmp samesign ult i64 %i.m, %i.i
  %or.cond.i = select i1 %i.l, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %i.k
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.h

_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.d
  store ptr @21, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 46, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.p, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sink13.i.ph = phi ptr [ %i.n, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %.sink.i.ph = phi i64 [ %i.i, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.q = zext i1 %2 to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load i32, ptr %i.r, align 1, !alias.scope !210
  %i.s = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val.i, i1 noundef zeroext %2), !noalias !210
  %i.t = zext i32 %i.s to i64
  store ptr %.sink13.i.ph, ptr %0, align 8
  %.sroa.06.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink.i.ph, ptr %.sroa.06.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.q, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.t, ptr %.sroa.47.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_5Dyn32BO_ERShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(40) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1.i.i = load i32, ptr %i.a, align 1, !alias.scope !220
  %i.b = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val1.i.i, i1 noundef zeroext %2), !noalias !221
  %i.c = icmp eq i32 %i.b, 8
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i = load i32, ptr %i.d, align 1, !alias.scope !220
  %i.e = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val2.i.i, i1 noundef zeroext %2), !noalias !221
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val.i.i = load i32, ptr %i.f, align 1, !alias.scope !220
  %i.g = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val.i.i, i1 noundef zeroext %2), !noalias !221 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = zext i32 %i.g to i64                     ; 3 uses
  %i.j = zext i32 %i.e to i64                     ; 3 uses
  %i.k = icmp samesign uge i64 %4, %i.j
  %i.l = sub nuw nsw i64 %4, %i.j
  %.not.i.i = icmp samesign uge i64 %i.l, %i.i
  %or.cond.i.not25 = select i1 %i.k, i1 %.not.i.i, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  %i.n = and i64 %i.i, 7
  %.not = icmp eq i64 %i.n, 0
  %or.cond = and i1 %or.cond.i.not25, %.not
  br i1 %or.cond, label %.thread, label %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b
  %.sink.i.ph19 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.sink13.i.ph18 = phi ptr [ %i.m, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.o = lshr exact i64 %.sink.i.ph19, 3
  br label %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit

_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.c, %.thread
  %.sink21 = phi ptr [ @22, %bb.c ], [ %.sink13.i.ph18, %.thread ]
  %.sink = phi i64 [ 34, %bb.c ], [ %i.o, %.thread ]
  %storemerge6 = phi i64 [ 1, %bb.c ], [ 0, %.thread ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink21, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.q, align 8
  store i64 %storemerge6, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_5Rel32BO_ERShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(40) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1.i.i = load i32, ptr %i.a, align 1, !alias.scope !231
  %i.b = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val1.i.i, i1 noundef zeroext %2), !noalias !232
  %i.c = icmp eq i32 %i.b, 8
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i = load i32, ptr %i.d, align 1, !alias.scope !231
  %i.e = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val2.i.i, i1 noundef zeroext %2), !noalias !232
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val.i.i = load i32, ptr %i.f, align 1, !alias.scope !231
  %i.g = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val.i.i, i1 noundef zeroext %2), !noalias !232 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = zext i32 %i.g to i64                     ; 3 uses
  %i.j = zext i32 %i.e to i64                     ; 3 uses
  %i.k = icmp samesign uge i64 %4, %i.j
  %i.l = sub nuw nsw i64 %4, %i.j
  %.not.i.i = icmp samesign uge i64 %i.l, %i.i
  %or.cond.i.not25 = select i1 %i.k, i1 %.not.i.i, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  %i.n = and i64 %i.i, 7
  %.not = icmp eq i64 %i.n, 0
  %or.cond = and i1 %or.cond.i.not25, %.not
  br i1 %or.cond, label %.thread, label %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b
  %.sink.i.ph19 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.sink13.i.ph18 = phi ptr [ %i.m, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.o = lshr exact i64 %.sink.i.ph19, 3
  br label %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit

_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.c, %.thread
  %.sink21 = phi ptr [ @22, %bb.c ], [ %.sink13.i.ph18, %.thread ]
  %.sink = phi i64 [ 34, %bb.c ], [ %i.o, %.thread ]
  %storemerge6 = phi i64 [ 1, %bb.c ], [ 0, %.thread ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink21, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.q, align 8
  store i64 %storemerge6, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_5Sym32BO_ERShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(40) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1.i.i = load i32, ptr %i.a, align 1, !alias.scope !242
  %i.b = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val1.i.i, i1 noundef zeroext %2), !noalias !243
  %i.c = icmp eq i32 %i.b, 8
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_0
begin_hunk_1_@_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader5notesRShECs8aoZCP6pRcV_7objdump:bb.a
  %i.n = sub nuw nsw i64 %4, %i.l
  %.not.i.i = icmp samesign ult i64 %i.n, %i.j
  %or.cond.i = select i1 %i.m, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  br label %bb.f

_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.d
  store ptr @25, ptr %0, align 8
  br label %.sink.split

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sink13.i.ph = phi ptr [ %i.o, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %.sink.i.ph = phi i64 [ %i.j, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val28 = load i32, ptr %i.p, align 1
  %i.q = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val28, i1 noundef zeroext %2)
  call void @_RNvMNtNtNtCseHTIzroA4w0_6object4read3elf4noteINtB2_12NoteIteratorINtNtB8_3elf12FileHeader32NtNtB8_6endian10EndiannessEE3newCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i1 noundef zeroext %2, i32 noundef %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink13.i.ph, i64 noundef %.sink.i.ph)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = load i8, ptr %i.r, align 8, !range !9, !noundef !6 ; 2 uses
  %i.t = icmp eq i8 %i.s, 2
  %i.u = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.u, ptr %0, align 8
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.525.0.copyload = load i64, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.722.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.727.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.u, ptr %0, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %.sroa.420.0..sroa_idx, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit, %bb.g, %bb.h
  %.sink38 = phi i64 [ 16, %bb.h ], [ 8, %bb.g ], [ 8, %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit ]
  %.sroa.525.0.copyload.sink = phi i64 [ %.sroa.525.0.copyload, %bb.h ], [ %i.w, %bb.g ], [ 39, %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit ]
  %.sink.ph = phi i8 [ %i.s, %bb.h ], [ -1, %bb.g ], [ -1, %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit ]
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink38
  store i64 %.sroa.525.0.copyload.sink, ptr %.sroa.521.0..sroa_idx, align 8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %.sink = phi i8 [ 2, %bb.a ], [ %.sink.ph, %.sink.split ]
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader32NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader7stringsRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(40) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val14 = load i32, ptr %i.a, align 1
  %i.b = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val14, i1 noundef zeroext %2)
  %.not = icmp eq i32 %i.b, 3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val15 = load i32, ptr %i.c, align 1
  %i.d = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val15, i1 noundef zeroext %2)
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val = load i32, ptr %i.f, align 1
  %i.g = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %2)
  %i.h = zext i32 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, %i.e
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx, align 8
  %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx, align 8
  %.sroa.49.sroa.6.0..sroa.49.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.i, ptr %.sroa.49.sroa.6.0..sroa.49.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader10gnu_verdefRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((16, 17)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(64) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val = load i32, ptr %i.a, align 1             ; 2 uses
  %i.b = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %2)
  %.not = icmp eq i32 %i.b, 1879048189
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.c = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %2), !noalias !304
  %i.d = icmp eq i32 %i.c, 8
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i = load i64, ptr %i.e, align 1, !alias.scope !305
  %i.f = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val2.i.i, i1 noundef zeroext %2), !noalias !304 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i = load i64, ptr %i.g, align 1, !alias.scope !305
  %i.h = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val.i.i, i1 noundef zeroext %2), !noalias !304 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i64 %4, %i.f
  %i.k = sub nuw nsw i64 %4, %i.f
  %.not.i.i = icmp ugt i64 %i.h, %i.k
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %i.f
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.h

_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.d
  store ptr @19, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 45, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.n, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sink13.i.ph = phi ptr [ %i.l, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %.sink.i.ph = phi i64 [ %i.h, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.o = zext i1 %2 to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i = load i32, ptr %i.p, align 1, !alias.scope !306
  %i.q = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val.i, i1 noundef zeroext %2), !noalias !306
  %i.r = zext i32 %i.q to i64
  store ptr %.sink13.i.ph, ptr %0, align 8
  %.sroa.06.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink.i.ph, ptr %.sroa.06.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.o, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.47.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader10gnu_versymRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(64) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val = load i32, ptr %i.a, align 1             ; 2 uses
  %i.b = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %2)
  %.not = icmp eq i32 %i.b, 1879048191
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.c = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %2), !noalias !323
  %i.d = icmp eq i32 %i.c, 8
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i.i = load i64, ptr %i.e, align 1, !alias.scope !324
  %i.f = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val2.i.i.i, i1 noundef zeroext %2), !noalias !323 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i = load i64, ptr %i.g, align 1, !alias.scope !324
  %i.h = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val.i.i.i, i1 noundef zeroext %2), !noalias !323 ; 4 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i64 %4, %i.f
  %i.k = sub nuw nsw i64 %4, %i.f
  %.not.i.i.i = icmp ugt i64 %i.h, %i.k
  %or.cond.i.i = select i1 %i.j, i1 true, i1 %.not.i.i.i
  %i.l = trunc i64 %i.h to i1
  %or.cond.i = or i1 %or.cond.i.i, %i.l
  br i1 %or.cond.i, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.d
  %5 = lshr exact i64 %i.h, 1
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 %i.f
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @20, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 45, ptr %i.n, align 8
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.b, %.thread.i
  %.sink13.i.ph17.i = phi ptr [ %6, %.thread.i ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.c ]
  %.sink.i.ph = phi i64 [ %5, %.thread.i ], [ 0, %bb.b ], [ 0, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i = load i32, ptr %i.o, align 1, !alias.scope !325
  %i.p = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val.i, i1 noundef zeroext %2), !noalias !325
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink13.i.ph17.i, ptr %i.r, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i.ph, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.q, ptr %.sroa.59.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader11gnu_verneedRShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((16, 17)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(64) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val = load i32, ptr %i.a, align 1             ; 2 uses
  %i.b = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %2)
  %.not = icmp eq i32 %i.b, 1879048190
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.c = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val, i1 noundef zeroext %2), !noalias !337
  %i.d = icmp eq i32 %i.c, 8
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i = load i64, ptr %i.e, align 1, !alias.scope !338
  %i.f = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val2.i.i, i1 noundef zeroext %2), !noalias !337 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i = load i64, ptr %i.g, align 1, !alias.scope !338
  %i.h = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val.i.i, i1 noundef zeroext %2), !noalias !337 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i64 %4, %i.f
  %i.k = sub nuw nsw i64 %4, %i.f
  %.not.i.i = icmp ugt i64 %i.h, %i.k
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %i.f
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.h

_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.d
  store ptr @21, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 46, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 -1, ptr %i.n, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sink13.i.ph = phi ptr [ %i.l, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %.sink.i.ph = phi i64 [ %i.h, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.o = zext i1 %2 to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i = load i32, ptr %i.p, align 1, !alias.scope !339
  %i.q = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val.i, i1 noundef zeroext %2), !noalias !339
  %i.r = zext i32 %i.q to i64
  store ptr %.sink13.i.ph, ptr %0, align 8
  %.sroa.06.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink.i.ph, ptr %.sroa.06.sroa.4.0..sroa_idx, align 8
  %.sroa.06.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.o, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.r, ptr %.sroa.47.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_5Dyn64BO_ERShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(64) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1.i.i = load i32, ptr %i.a, align 1, !alias.scope !349
  %i.b = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val1.i.i, i1 noundef zeroext %2), !noalias !350
  %i.c = icmp eq i32 %i.b, 8
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i = load i64, ptr %i.d, align 1, !alias.scope !349
  %i.e = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val2.i.i, i1 noundef zeroext %2), !noalias !350 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i = load i64, ptr %i.f, align 1, !alias.scope !349
  %i.g = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val.i.i, i1 noundef zeroext %2), !noalias !350 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp uge i64 %4, %i.e
  %i.j = sub nuw nsw i64 %4, %i.e
  %.not.i.i = icmp ule i64 %i.g, %i.j
  %or.cond.i.not25 = select i1 %i.i, i1 %.not.i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %i.e
  %i.l = and i64 %i.g, 15
  %.not = icmp eq i64 %i.l, 0
  %or.cond = and i1 %or.cond.i.not25, %.not
  br i1 %or.cond, label %.thread, label %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b
  %.sink.i.ph19 = phi i64 [ %i.g, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.sink13.i.ph18 = phi ptr [ %i.k, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.m = lshr exact i64 %.sink.i.ph19, 4
  br label %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit

_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.c, %.thread
  %.sink21 = phi ptr [ @22, %bb.c ], [ %.sink13.i.ph18, %.thread ]
  %.sink = phi i64 [ 34, %bb.c ], [ %i.m, %.thread ]
  %storemerge6 = phi i64 [ 1, %bb.c ], [ 0, %.thread ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink21, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.o, align 8
  store i64 %storemerge6, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_5Rel64BO_ERShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(64) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1.i.i = load i32, ptr %i.a, align 1, !alias.scope !360
  %i.b = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val1.i.i, i1 noundef zeroext %2), !noalias !361
  %i.c = icmp eq i32 %i.b, 8
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i = load i64, ptr %i.d, align 1, !alias.scope !360
  %i.e = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val2.i.i, i1 noundef zeroext %2), !noalias !361 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i = load i64, ptr %i.f, align 1, !alias.scope !360
  %i.g = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val.i.i, i1 noundef zeroext %2), !noalias !361 ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp uge i64 %4, %i.e
  %i.j = sub nuw nsw i64 %4, %i.e
  %.not.i.i = icmp ule i64 %i.g, %i.j
  %or.cond.i.not25 = select i1 %i.i, i1 %.not.i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %i.e
  %i.l = and i64 %i.g, 15
  %.not = icmp eq i64 %i.l, 0
  %or.cond = and i1 %or.cond.i.not25, %.not
  br i1 %or.cond, label %.thread, label %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b
  %.sink.i.ph19 = phi i64 [ %i.g, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %.sink13.i.ph18 = phi ptr [ %i.k, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.m = lshr exact i64 %.sink.i.ph19, 4
  br label %_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit

_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader4dataRShECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.c, %.thread
  %.sink21 = phi ptr [ @22, %bb.c ], [ %.sink13.i.ph18, %.thread ]
  %.sink = phi i64 [ 34, %bb.c ], [ %i.m, %.thread ]
  %storemerge6 = phi i64 [ 1, %bb.c ], [ 0, %.thread ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink21, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.o, align 8
  store i64 %storemerge6, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCseHTIzroA4w0_6object3elf15SectionHeader64NtNtB8_6endian10EndiannessENtNtNtNtB8_4read3elf7section13SectionHeader13data_as_arrayINtB6_5Sym64BO_ERShECs8aoZCP6pRcV_7objdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(64) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1.i.i = load i32, ptr %i.a, align 1, !alias.scope !371
  %i.b = tail call noundef i32 @_RNvMs9_NtCseHTIzroA4w0_6object6endianINtB5_3U32NtB5_10EndiannessNtNtB7_3elf11SectionTypeE3getCs8aoZCP6pRcV_7objdump(i32 noundef %.val1.i.i, i1 noundef zeroext %2), !noalias !372
  %i.c = icmp eq i32 %i.b, 8
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i = load i64, ptr %i.d, align 1, !alias.scope !371
  %i.e = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val2.i.i, i1 noundef zeroext %2), !noalias !372 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i = load i64, ptr %i.f, align 1, !alias.scope !371
  %i.g = tail call noundef i64 @_RNvMsc_NtCseHTIzroA4w0_6object6endianINtB5_3U64NtB5_10EndiannessE3getCs8aoZCP6pRcV_7objdump(i64 noundef %.val.i.i, i1 noundef zeroext %2), !noalias !372 ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
end_hunk_1
