Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/elf-parse?download=true
inline.NumInlined: 35
inline.NumDeleted: 24
begin_hunk_0_@elf_map:bb.a
  store ptr @sym32_type, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 96), align 8, !tbaa !37
  store ptr @sym32_name, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 104), align 8, !tbaa !38
  store ptr @sym32_value, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 112), align 8, !tbaa !39
  store ptr @sym32_shndx, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 120), align 8, !tbaa !40
  store ptr @rela32_offset, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 128), align 8, !tbaa !41
  store ptr @rela32_info, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 136), align 8, !tbaa !42
  store ptr @rela32_addend, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 144), align 8, !tbaa !43
  store ptr @rela32_write_addend, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 152), align 8, !tbaa !44
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 168), align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.aq = tail call zeroext i16 %i.ao(ptr noundef nonnull %i.ap) #12, !inline_history !17
  %.not28.i = icmp eq i16 %i.aq, 52
  br i1 %.not28.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 168), align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 46
  %i.at = tail call zeroext i16 %i.ar(ptr noundef nonnull %i.as) #12, !inline_history !17
  %.not29.i = icmp eq i16 %i.at, 40
  br i1 %.not29.i, label %elf_parse.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.6, ptr noundef %0) #14 ; 0 uses
  br label %bb.w

bb.s:                                             ; preds = %bb.o
  store ptr @ehdr64_shoff, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 8), align 8, !tbaa !26
  store ptr @ehdr64_shentsize, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 24), align 8, !tbaa !27
  store ptr @ehdr64_shstrndx, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 16), align 8, !tbaa !28
  store ptr @ehdr64_shnum, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 32), align 8, !tbaa !29
  store ptr @shdr64_addr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 40), align 8, !tbaa !30
  store ptr @shdr64_offset, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 48), align 8, !tbaa !31
  store ptr @shdr64_link, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 72), align 8, !tbaa !32
  store ptr @shdr64_size, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 56), align 8, !tbaa !33
  store ptr @shdr64_name, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 80), align 8, !tbaa !34
  store ptr @shdr64_type, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 88), align 8, !tbaa !35
  store ptr @shdr64_entsize, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 64), align 8, !tbaa !36
  store ptr @sym64_type, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 96), align 8, !tbaa !37
  store ptr @sym64_name, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 104), align 8, !tbaa !38
  store ptr @sym64_value, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 112), align 8, !tbaa !39
  store ptr @sym64_shndx, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 120), align 8, !tbaa !40
  store ptr @rela64_offset, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 128), align 8, !tbaa !41
  store ptr @rela64_info, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 136), align 8, !tbaa !42
  store ptr @rela64_addend, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 144), align 8, !tbaa !43
  store ptr @rela64_write_addend, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 152), align 8, !tbaa !44
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 168), align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.ay = tail call zeroext i16 %i.aw(ptr noundef nonnull %i.ax) #12, !inline_history !17
  %.not26.i = icmp eq i16 %i.ay, 64
  br i1 %.not26.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 168), align 8, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 58
  %i.bb = tail call zeroext i16 %i.az(ptr noundef nonnull %i.ba) #12, !inline_history !17
  %.not27.i = icmp eq i16 %i.bb, 64
  br i1 %.not27.i, label %elf_parse.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.6, ptr noundef %0) #14 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.o
  %i.be = zext i8 %i.an to i32
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.bg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.7, i32 noundef %i.be, ptr noundef %0) #14 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.i, %bb.l, %bb.v, %bb.r, %bb.n, %bb.u
  %i.bh = load i64, ptr %1, align 8, !tbaa !25
  %i.bi = tail call i32 @munmap(ptr noundef nonnull %i.m, i64 noundef %i.bh) #12 ; 0 uses
  br label %elf_parse.exit

elf_parse.exit:                                   ; preds = %bb.t, %bb.q, %map_file.exit.thread15, %map_file.exit.thread, %map_file.exit, %bb.w
  %.0 = phi ptr [ null, %bb.w ], [ null, %map_file.exit ], [ null, %map_file.exit.thread15 ], [ null, %map_file.exit.thread ], [ %i.m, %bb.t ], [ %i.m, %bb.q ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @elf_unmap(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @munmap(ptr noundef %0, i64 noundef %1) #12 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @rle(ptr nofree noundef readonly captures(none) %0) #8 {
bb.a:
  %.val = load i32, ptr %0, align 1
  ret i32 %.val
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i16 @r2le(ptr nofree noundef readonly captures(none) %0) #8 {
bb.a:
  %.val = load i16, ptr %0, align 1
  ret i16 %.val
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @r8le(ptr nofree noundef readonly captures(none) %0) #8 {
bb.a:
  %.val = load i64, ptr %0, align 1
  ret i64 %.val
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @wle(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #9 {
bb.a:
  store i32 %0, ptr %1, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @w8le(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #9 {
bb.a:
  store i64 %0, ptr %1, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @rbe(ptr nofree noundef readonly captures(none) %0) #8 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i16 @r2be(ptr nofree noundef readonly captures(none) %0) #8 {
bb.a:
  %.val = load i8, ptr %0, align 1, !tbaa !12
  %i.a = getelementptr i8, ptr %0, i64 1
  %.val1 = load i8, ptr %i.a, align 1, !tbaa !12
  %i.b = zext i8 %.val to i16
  %i.c = shl nuw i16 %i.b, 8
  %i.d = zext i8 %.val1 to i16
  %i.e = or disjoint i16 %i.c, %i.d
  ret i16 %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @r8be(ptr nofree noundef readonly captures(none) %0) #8 {
bb.a:
  %i.a = load i32, ptr %0, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 1
  %i.d = zext i32 %i.a to i64
  %i.e = zext i32 %i.c to i64
  %i.f = shl nuw i64 %i.e, 32
  %i.g = or disjoint i64 %i.f, %i.d
  %op.rdx = tail call i64 @llvm.bswap.i64(i64 %i.g)
  ret i64 %op.rdx
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @wbe(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #9 {
bb.a:
  %i.a = lshr i32 %0, 16
  %i.b = lshr i32 %0, 24
  %i.c = trunc nuw i32 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.c, ptr %1, align 1, !tbaa !12
  %i.e = trunc i32 %i.a to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = lshr i32 %0, 8
  %i.h = trunc i32 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.h, ptr %i.f, align 1, !tbaa !12
  %i.j = trunc i32 %0 to i8
  store i8 %i.j, ptr %i.i, align 1, !tbaa !12
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @w8be(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) #9 {
bb.a:
  %2 = bitcast i64 %0 to <8 x i8>
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %3, ptr %1, align 1, !tbaa !12
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal range(i64 0, 4294967296) i64 @ehdr32_shoff(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = tail call i32 %i.a(ptr noundef nonnull %i.b) #12
  %i.d = zext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @ehdr32_shentsize(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 168), align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.c = tail call zeroext i16 %i.a(ptr noundef nonnull %i.b) #12
  ret i16 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @ehdr32_shstrndx(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 168), align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.c = tail call zeroext i16 %i.a(ptr noundef nonnull %i.b) #12
  ret i16 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @ehdr32_shnum(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 168), align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = tail call zeroext i16 %i.a(ptr noundef nonnull %i.b) #12
  ret i16 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define internal range(i64 0, 4294967296) i64 @shdr32_addr(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = tail call i32 %i.a(ptr noundef nonnull %i.b) #12
  %i.d = zext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: inlinehint nounwind uwtable
define internal range(i64 0, 4294967296) i64 @shdr32_offset(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = tail call i32 %i.a(ptr noundef nonnull %i.b) #12
  %i.d = zext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @shdr32_link(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = tail call i32 %i.a(ptr noundef nonnull %i.b) #12
  ret i32 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define internal range(i64 0, 4294967296) i64 @shdr32_size(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = tail call i32 %i.a(ptr noundef nonnull %i.b) #12
  %i.d = zext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @shdr32_name(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !13
  %i.b = tail call i32 %i.a(ptr noundef %0) #12
  ret i32 %i.b
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @shdr32_type(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = tail call i32 %i.a(ptr noundef nonnull %i.b) #12
  ret i32 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define internal range(i64 0, 4294967296) i64 @shdr32_entsize(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = tail call i32 %i.a(ptr noundef nonnull %i.b) #12
  %i.d = zext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext range(i8 0, 16) i8 @sym32_type(ptr nofree noundef readonly captures(none) %0) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !12
  %i.c = and i8 %i.b, 15
  ret i8 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sym32_name(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !13
  %i.b = tail call i32 %i.a(ptr noundef %0) #12
  ret i32 %i.b
}

; Function Attrs: inlinehint nounwind uwtable
define internal range(i64 0, 4294967296) i64 @sym32_value(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = tail call i32 %i.a(ptr noundef nonnull %i.b) #12
  %i.d = zext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @sym32_shndx(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 168), align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.c = tail call zeroext i16 %i.a(ptr noundef nonnull %i.b) #12
  ret i16 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define internal range(i64 0, 4294967296) i64 @rela32_offset(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !13
  %i.b = tail call i32 %i.a(ptr noundef %0) #12
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define internal range(i64 0, 4294967296) i64 @rela32_info(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = tail call i32 %i.a(ptr noundef nonnull %i.b) #12
  %i.d = zext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: inlinehint nounwind uwtable
define internal range(i64 0, 4294967296) i64 @rela32_addend(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 160), align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call i32 %i.a(ptr noundef nonnull %i.b) #12
  %i.d = zext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @rela32_write_addend(ptr noundef %0, i64 noundef %1) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 184), align 8, !tbaa !15
  %i.b = trunc i64 %1 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void %i.a(i32 noundef %i.b, ptr noundef nonnull %i.c) #12
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ehdr64_shoff(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 176), align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = tail call i64 %i.a(ptr noundef nonnull %i.b) #12
  ret i64 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @ehdr64_shentsize(ptr noundef %0) #10 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @elf_parser, i64 168), align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.c = tail call zeroext i16 %i.a(ptr noundef nonnull %i.b) #12
  ret i16 %i.c
}

; Function Attrs: inlinehint nounwind uwtable
end_hunk_0
