Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ripper?download=true
inline.NumInlined: 2066
inline.NumDeleted: 252
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@rb_node_case3_new:bb.a
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !459
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %2, ptr %i.o, align 8, !tbaa !251
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !23
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_in_new(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 8, i64 noundef range(i64 32, 129) 104, i64 noundef 8) #29 ; 12 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 8) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !23
  %i.d = load i32, ptr %4, align 4, !tbaa !62
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !70
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !460
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %2, ptr %i.o, align 8, !tbaa !253
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %3, ptr %i.p, align 8, !tbaa !461
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !23
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_true_new(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 96, i64 noundef range(i64 32, 129) 32, i64 noundef 8) #29 ; 6 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 96) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !23
  %i.d = load i32, ptr %1, align 4, !tbaa !62
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !70
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !195
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_false_new(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 97, i64 noundef range(i64 32, 129) 32, i64 noundef 8) #29 ; 6 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 97) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !23
  %i.d = load i32, ptr %1, align 4, !tbaa !62
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !70
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !195
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc void @numparam_name(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 14
  %i.b = icmp ne i64 %i.a, 0
  %i.c = icmp ult i64 %1, 3776
  %i.d = lshr i64 %1, 4
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = add i32 %i.e, -245
  %i.g = icmp ult i32 %i.f, -9
  %.not6 = or i1 %i.b, %i.g
  %narrow.i.not = or i1 %i.c, %.not6
  br i1 %narrow.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.e, -235
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef %0, ptr noundef nonnull @.str.747, i32 noundef %i.h) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_defn_new(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 80, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #29 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 80) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  %i.d = load i32, ptr %2, align 4, !tbaa !62
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !70
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %1, ptr %i.n, align 8, !tbaa !462
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !90
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_defs_new(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 81, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 81) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !23
  %i.d = load i32, ptr %3, align 4, !tbaa !62
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !70
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !463
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %2, ptr %i.o, align 8, !tbaa !464
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr null, ptr %i.p, align 8, !tbaa !92
  ret ptr %i.b
}

declare i64 @rb_ary_new_from_args(i64 noundef, ...) local_unnamed_addr #2

declare void @rb_parser_show_bitstack(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @new_qcall(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef nonnull readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 150
  %i.b = getelementptr i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %. = select i1 %i.a, i32 40, i32 36             ; 2 uses
  %i.d = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) %., i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 9 uses
  tail call void @rb_node_init(ptr noundef %i.d, i32 noundef range(i32 0, 115) %.) #29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(16) %6, i64 16, i1 false)
  %i.f = load i64, ptr %i.d, align 8, !tbaa !70
  %i.g = and i64 %i.f, 32767
  %i.h = load i32, ptr %i.c, align 8, !tbaa !194  ; 2 uses
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.c, align 8, !tbaa !194
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.h, ptr %i.j, align 8, !tbaa !195
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %2, ptr %i.k, align 8, !tbaa !218
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %3, ptr %i.l, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %4, ptr %i.m, align 8, !tbaa !218
  %i.n = load i32, ptr %5, align 4, !tbaa !62
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 15
  %i.q = or disjoint i64 %i.g, %i.p
  store i64 %i.q, ptr %i.d, align 8, !tbaa !70
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_fcall_new(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 38, i64 noundef range(i64 32, 129) 48, i64 noundef 8) #29 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 38) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  %i.d = load i32, ptr %2, align 4, !tbaa !62
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !70
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %1, ptr %i.n, align 8, !tbaa !465
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !109
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @new_command_qcall(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef captures(address_is_null, ret: address, provenance) %5, ptr nofree noundef nonnull readonly captures(none) %6, ptr nofree noundef nonnull readonly captures(none) %7) unnamed_addr #0 {
bb.a:
  %.not = icmp ne ptr %5, null                    ; 2 uses
  %i.a = icmp ne ptr %4, null
  %or.cond = and i1 %i.a, %.not
  br i1 %or.cond, label %bb.b, label %block_dup_check.exit

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %4, align 8, !tbaa !70
  %i.b = and i64 %.val.i, 32512
  %i.c = icmp eq i64 %i.b, 20224
  br i1 %i.c, label %bb.c, label %block_dup_check.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef %0, ptr noundef nonnull @.str.709) #29
  br label %block_dup_check.exit

block_dup_check.exit:                             ; preds = %bb.c, %bb.b, %bb.a
  %i.d = icmp eq i64 %1, 150
  %i.e = getelementptr i8, ptr %0, i64 288
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !124
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %..i = select i1 %i.d, i32 40, i32 36           ; 2 uses
  %i.g = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i.i, i32 noundef range(i32 0, 115) %..i, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.g, i32 noundef range(i32 0, 115) %..i) #29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 4 dereferenceable(16) %7, i64 16, i1 false)
  %i.i = load i64, ptr %i.g, align 8, !tbaa !70
  %i.j = and i64 %i.i, 32767
  %i.k = load i32, ptr %i.f, align 8, !tbaa !194  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.f, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %2, ptr %i.n, align 8, !tbaa !218
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %3, ptr %i.o, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %4, ptr %i.p, align 8, !tbaa !218
  %i.q = load i32, ptr %6, align 4, !tbaa !62
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 15
  %i.t = or disjoint i64 %i.s, %i.j
  store i64 %i.t, ptr %i.g, align 8, !tbaa !70
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %block_dup_check.exit
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.g, ptr %i.u, align 8, !tbaa !110
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull readonly align 4 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %block_dup_check.exit
  %.0 = phi ptr [ %5, %bb.d ], [ %i.g, %block_dup_check.exit ] ; 3 uses
  %.not20 = icmp eq ptr %2, null
  br i1 %.not20, label %fixpos.exit, label %nd_line.exit.i

nd_line.exit.i:                                   ; preds = %bb.e
  %i.w = load i64, ptr %2, align 8, !tbaa !70
  %i.x = shl i64 %i.w, 17
  %i.y = load i64, ptr %.0, align 8, !tbaa !70
  %i.z = and i64 %i.y, 32767
  %i.aa = ashr exact i64 %i.x, 17
  %i.ab = and i64 %i.aa, -32768
  %i.ac = or disjoint i64 %i.ab, %i.z
  store i64 %i.ac, ptr %.0, align 8, !tbaa !70
  br label %fixpos.exit

fixpos.exit:                                      ; preds = %bb.e, %nd_line.exit.i
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_super_new(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 41, i64 noundef range(i64 32, 129) 88, i64 noundef 8) #29 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 41) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  %i.d = load i32, ptr %2, align 4, !tbaa !62
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !70
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.n, align 8, !tbaa !255
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !23
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_yield_new(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %no_blockarg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8, !tbaa !70
  %i.a = and i64 %.val, 32512
  %i.b = icmp eq i64 %i.a, 20224
  br i1 %i.b, label %bb.c, label %no_blockarg.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef %0, ptr noundef nonnull @.str.675) #29
  br label %no_blockarg.exit

no_blockarg.exit:                                 ; preds = %bb.c, %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.d = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 47, i64 noundef range(i64 32, 129) 88, i64 noundef 8) #29 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.d, i32 noundef range(i32 0, 115) 47) #29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !23
  %i.f = load i32, ptr %2, align 4, !tbaa !62
  %i.g = sext i32 %i.f to i64
  %i.h = load i64, ptr %i.d, align 8, !tbaa !70
  %i.i = and i64 %i.h, 32767
  %i.j = shl nsw i64 %i.g, 15
  %i.k = or disjoint i64 %i.i, %i.j
  store i64 %i.k, ptr %i.d, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !194  ; 2 uses
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !194
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.m, ptr %i.o, align 8, !tbaa !195
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %1, ptr %i.p, align 8, !tbaa !467
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !23
end_hunk_0
begin_hunk_1_@regx_options:bb.a

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !20
  %i.ad = icmp eq i8 %i.ac, 10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %spec.select = select i1 %i.ad, ptr %i.ae, ptr %i.aa
  br label %.thread63

nextc0.exit:                                      ; preds = %bb.g
  %i.af = and i32 %i.y, 223
  %i.ag = add nsw i32 %i.af, -91
  %narrow.i = icmp ult i32 %i.ag, -26
  br i1 %narrow.i, label %.thread63.loopexit, label %bb.j

bb.j:                                             ; preds = %nextc0.exit
  switch i8 %i.x, label %char_to_option_kcode.exit [
    i8 111, label %bb.k
    i8 110, label %tokadd.exit.outer140
    i8 101, label %.thread58
    i8 115, label %.thread58
    i8 117, label %.thread58
    i8 105, label %.loopexit
    i8 120, label %bb.m
    i8 109, label %bb.l
  ], !llvm.loop !598

bb.k:                                             ; preds = %bb.j
  %i.ah = or i32 %.0.ph144, 65536
  br label %tokadd.exit.outer143.backedge

tokadd.exit.outer143.backedge:                    ; preds = %bb.k, %bb.m
  %.0.ph144.be = phi i32 [ %i.ai, %bb.m ], [ %i.ah, %bb.k ]
  br label %tokadd.exit.outer143, !llvm.loop !598

bb.l:                                             ; preds = %bb.j
  br label %bb.m

.thread58:                                        ; preds = %bb.j, %bb.j, %bb.j
  br label %tokadd.exit.outer, !llvm.loop !598

.loopexit:                                        ; preds = %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %.loopexit, %bb.l
  %.sink11.i.ph = phi i32 [ 1, %.loopexit ], [ 4, %bb.l ], [ 2, %bb.j ]
  %i.ai = or i32 %.sink11.i.ph, %.0.ph144
  br label %tokadd.exit.outer143.backedge

char_to_option_kcode.exit:                        ; preds = %bb.j
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !338
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !367 ; 2 uses
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 8, !tbaa !367
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %i.am
  store i8 %i.x, ptr %i.an, align 1, !tbaa !20
  %i.ao = load i32, ptr %i.a, align 8, !tbaa !367
  %i.ap = load i32, ptr %i.g, align 4, !tbaa !341 ; 2 uses
  %.not.i39 = icmp slt i32 %i.ao, %i.ap
  br i1 %.not.i39, label %tokadd.exit.backedge, label %bb.n

bb.n:                                             ; preds = %char_to_option_kcode.exit
  %i.aq = shl nsw i32 %i.ap, 1                    ; 2 uses
  store i32 %i.aq, ptr %i.g, align 4, !tbaa !341
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !338
  %i.as = sext i32 %i.aq to i64
  %i.at = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ar, i64 noundef %i.as, i64 noundef 1) #36
  store ptr %i.at, ptr %i.b, align 8, !tbaa !338
  br label %tokadd.exit.backedge

tokadd.exit.backedge:                             ; preds = %bb.n, %char_to_option_kcode.exit
  br label %tokadd.exit, !llvm.loop !598

.thread63.loopexit:                               ; preds = %nextc0.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  br label %.thread63

.thread63:                                        ; preds = %bb.i, %.thread63.loopexit, %bb.h
  %i.av = phi ptr [ %spec.select, %bb.i ], [ %i.aa, %bb.h ], [ %i.au, %.thread63.loopexit ] ; 2 uses
  %i.aw = load i16, ptr %i.m, align 8
  %i.ax = and i16 %i.aw, -9
  store i16 %i.ax, ptr %i.m, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 -1 ; 3 uses
  store ptr %i.ay, ptr %i.k, align 8, !tbaa !57
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.bb = icmp ugt ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.o, label %pushback.exit

bb.o:                                             ; preds = %.thread63
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !20
  %i.bd = icmp eq i8 %i.bc, 10
  br i1 %i.bd, label %bb.p, label %pushback.exit

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds i8, ptr %i.av, i64 -2 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !20
  %i.bg = icmp eq i8 %i.bf, 13
  br i1 %i.bg, label %bb.q, label %pushback.exit

bb.q:                                             ; preds = %bb.p
  store ptr %i.be, ptr %i.k, align 8, !tbaa !57
  br label %pushback.exit

pushback.exit:                                    ; preds = %.critedge.i, %.thread63, %bb.o, %bb.p, %bb.q
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !367 ; 2 uses
  %.not35 = icmp eq i32 %i.bh, 0
  br i1 %.not35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %pushback.exit
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !338
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %i.bj
  store i8 0, ptr %i.bk, align 1, !tbaa !20
  %i.bl = load i32, ptr %i.a, align 8, !tbaa !367 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  %i.bn = select i1 %i.bm, ptr @.str.625, ptr @.str.22
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !338
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.624, ptr noundef nonnull %i.bn, i32 noundef %i.bl, ptr noundef %i.bo) #29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %pushback.exit
  %i.bp = shl nuw nsw i32 %.031.ph, 8
  %i.bq = or disjoint i32 %i.bp, %.029.ph141
  %i.br = or i32 %i.bq, %.0.ph144
  ret i32 %i.br
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @nextline(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !346
  %magicptr = ptrtoint ptr %i.b to i64
  switch i64 %magicptr, label %bb.i [
    i64 0, label %bb.b
    i64 1, label %lex_getline.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 8
  %.not31 = icmp eq i16 %i.e, 0
  br i1 %.not31, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !304  ; 2 uses
  %.not32 = icmp ult ptr %i.g, %i.i
  br i1 %.not32, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !20
  %.not33 = icmp eq i8 %i.k, 10
  br i1 %.not33, label %bb.e, label %lex_getline.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !343  ; 2 uses
  %.not34 = icmp eq ptr %i.m, null
  br i1 %.not34, label %lex_getline.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !368
  %i.r = tail call ptr %i.o(ptr noundef nonnull %0, ptr noundef nonnull %i.m, i32 noundef %i.q) #29, !inline_history !599 ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %lex_getline.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.p, align 8, !tbaa !368
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.p, align 8, !tbaa !368
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !349  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !22   ; 3 uses
  %.not.i.i = icmp slt i64 %i.x, %i.z
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.g
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !348 ; 2 uses
  %.phi.trans.insert16.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %.pre17.i.i = load i64, ptr %.phi.trans.insert16.i.i, align 8, !tbaa !22
  br label %string_buffer_append.exit.i

bb.h:                                             ; preds = %bb.g
  %i.aa = shl nsw i64 %i.z, 1
  %i.ab = shl i64 %i.z, 4
  %i.ac = add i64 %i.ab, 24
  %i.ad = tail call noalias nonnull ptr @ruby_xmalloc(i64 noundef %i.ac) #30 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.aa, ptr %i.ae, align 8, !tbaa !22
  store ptr null, ptr %i.ad, align 8, !tbaa !339
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !348
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !339
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !348
  br label %string_buffer_append.exit.i

string_buffer_append.exit.i:                      ; preds = %bb.h, %._crit_edge.i.i
  %i.ah = phi i64 [ %.pre17.i.i, %._crit_edge.i.i ], [ 0, %bb.h ] ; 2 uses
  %i.ai = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ad, %bb.h ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.al = add nsw i64 %i.ah, 1
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !22
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.r, ptr %i.am, align 8, !tbaa !340
  %i.an = getelementptr i8, ptr %i.r, i64 8
  %.val.i = load ptr, ptr %i.an, align 8, !tbaa !328 ; 2 uses
  %i.ao = getelementptr i8, ptr %.val.i, i64 20
  %.val.i.i.i = load i32, ptr %i.ao, align 4, !tbaa !375
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 1
  br i1 %.not.i.i.i, label %rb_enc_asciicompat.exit.i.i, label %rb_enc_asciicompat.exit.thread.i.i

rb_enc_asciicompat.exit.i.i:                      ; preds = %string_buffer_append.exit.i
  %i.ap = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %.val.i) #32
  %.not3.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not3.i.i.i, label %lex_getline.exit, label %rb_enc_asciicompat.exit.thread.i.i

rb_enc_asciicompat.exit.thread.i.i:               ; preds = %rb_enc_asciicompat.exit.i.i, %string_buffer_append.exit.i
  %i.aq = load i64, ptr @rb_eArgError, align 8, !tbaa !22
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aq, ptr noundef nonnull @.str.626) #31
  unreachable

lex_getline.exit.thread:                          ; preds = %bb.f, %bb.a, %bb.e, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 8
  %i.at = or i16 %i.as, 8
  store i16 %i.at, ptr %i.ar, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !304
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !57
  br label %bb.l

lex_getline.exit:                                 ; preds = %rb_enc_asciicompat.exit.i.i
  %i.ax = load i16, ptr %i.c, align 8
  %i.ay = and i16 %i.ax, -1025
  store i16 %i.ay, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %lex_getline.exit
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.r, %lex_getline.exit ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !50
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !304
  tail call fastcc void @parser_add_delayed_token(ptr noundef nonnull %0, ptr noundef %i.ba, ptr noundef %i.bc, i32 noundef 7680)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !365 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 196
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !51
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bd, align 8, !tbaa !365
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %i.bg = phi i32 [ %.pre, %._crit_edge ], [ %i.be, %bb.j ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.bi = add nsw i32 %i.bg, 1
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !325 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !57
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !53
  %i.bn = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !326
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 %i.bo
  store ptr %i.bp, ptr %i.bb, align 8, !tbaa !304
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0, ptr %i.bq, align 8, !tbaa !347
  store ptr %i.bk, ptr %i.az, align 8, !tbaa !50
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.k, %lex_getline.exit.thread
  %.026 = phi i32 [ -1, %lex_getline.exit.thread ], [ 0, %bb.k ], [ -1, %bb.b ]
  ret i32 %.026
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #5

declare i64 @rb_str_resize(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_parser_st_locale_insensitive_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @magic_comment_encoding(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 128
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %comment_at_top.exit, label %comment_at_top.exit.thread

comment_at_top.exit:                              ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load i32, ptr %i.d, align 8, !tbaa !368
  %i.f = and i16 %i.b, 64
  %.not4.i = icmp eq i16 %i.f, 0
  %i.g = select i1 %.not4.i, i32 1, i32 2
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %comment_at_top.exit.thread

bb.b:                                             ; preds = %comment_at_top.exit
  tail call fastcc void @parser_set_encode(ptr noundef nonnull %0, ptr noundef %2)
  br label %comment_at_top.exit.thread

comment_at_top.exit.thread:                       ; preds = %bb.a, %comment_at_top.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @parser_encode_length(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i64 %2, 5
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i64 %2, -5                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !20
  %i.e = icmp eq i8 %i.d, 45
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.g = tail call i32 @rb_memcicmp(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.640, i64 noundef 4) #29
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.j, label %.thread

bb.d:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %2, 5
  br i1 %i.i, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %i.j = add nsw i64 %2, -4                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !20
  %i.m = icmp eq i8 %i.l, 45
  br i1 %i.m, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.thread
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.o = tail call i32 @rb_memcicmp(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.641, i64 noundef 3) #29
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call i32 @rb_memcicmp(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.642, i64 noundef 3) #29
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq i64 %2, 8
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = tail call i32 @rb_memcicmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.643, i64 noundef 8) #29
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.h, %.thread, %bb.d
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.c, %bb.i
  %.0 = phi i64 [ %i.j, %bb.e ], [ %i.b, %bb.c ], [ %2, %bb.i ], [ 4, %bb.h ], [ %i.j, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal void @parser_set_frozen_string_literal(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 128
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_1
