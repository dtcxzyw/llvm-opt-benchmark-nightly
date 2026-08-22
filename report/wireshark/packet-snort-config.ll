Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-snort-config?download=true
inline.NumInlined: 44
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@get_global_rule_stats:bb.a
  %i.c = getelementptr i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4
  store i32 %i.d, ptr %3, align 4
  %i.e = getelementptr i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8
  store i32 %i.f, ptr %4, align 4
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %get_rule.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %get_rule.exit.thread, label %get_rule.exit

get_rule.exit:                                    ; preds = %bb.b
  %i.k = zext i32 %1 to i64
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = tail call ptr @g_hash_table_lookup(ptr noundef nonnull %i.i, ptr noundef %i.l) ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %get_rule.exit.thread, label %bb.c

bb.c:                                             ; preds = %get_rule.exit
  %i.n = getelementptr i8, ptr %i.m, i64 2608
  %i.o = load i32, ptr %i.n, align 8
  br label %get_rule.exit.thread

get_rule.exit.thread:                             ; preds = %bb.a, %bb.b, %get_rule.exit, %bb.c
  %storemerge = phi i32 [ %i.o, %bb.c ], [ 0, %get_rule.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  store i32 %storemerge, ptr %5, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @reset_global_rule_stats(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 64
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @g_hash_table_foreach(ptr noundef %i.d, ptr noundef nonnull @reset_rule_stats, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal void @reset_rule_stats(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((2608, 2612)) %1, ptr nofree readnone captures(none) %2) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 2608
  store i32 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden i32 @content_convert_to_binary(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %content_get_nibble_value.values_set.promoted = load i1, ptr @content_get_nibble_value.values_set, align 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 60
  %i.g = load i32, ptr %i.f, align 4
  br label %bb.o

bb.c:                                             ; preds = %.preheader, %bb.m
  %i.h = phi i1 [ %i.ac, %bb.m ], [ %content_get_nibble_value.values_set.promoted, %.preheader ] ; 6 uses
  %.039 = phi i32 [ %.241, %bb.m ], [ 0, %.preheader ] ; 13 uses
  %.037 = phi i1 [ %.138, %bb.m ], [ false, %.preheader ] ; 2 uses
  %.034 = phi i1 [ %.236, %bb.m ], [ false, %.preheader ] ; 6 uses
  %.032 = phi i8 [ %.2, %bb.m ], [ 0, %.preheader ] ; 7 uses
  %.031 = phi i32 [ %i.ad, %bb.m ], [ 0, %.preheader ] ; 2 uses
  %.0 = phi i1 [ %.1, %bb.m ], [ false, %.preheader ] ; 5 uses
  %i.i = sext i32 %.031 to i64
  %i.j = getelementptr i8, ptr %i.e, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1               ; 6 uses
  switch i8 %i.k, label %bb.e [
    i8 0, label %bb.n
    i8 124, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = xor i1 %.037, true
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  br i1 %.037, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.0, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = icmp eq i8 %i.k, 92
  br i1 %i.m, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = add i32 %.039, 1
  %i.o = sext i32 %.039 to i64
  %i.p = getelementptr i8, ptr @content_convert_to_binary.binary_str, i64 %i.o
  store i8 %i.k, ptr %i.p, align 1
  br label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.q = add i32 %.039, 1
  %i.r = sext i32 %.039 to i64
  %i.s = getelementptr i8, ptr @content_convert_to_binary.binary_str, i64 %i.r
  store i8 %i.k, ptr %i.s, align 1
  br label %bb.m

bb.j:                                             ; preds = %bb.e
  %i.t = icmp eq i8 %i.k, 32
  br i1 %i.t, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.h, label %content_get_nibble_value.exit, label %.preheader14.preheader.i

.preheader14.preheader.i:                         ; preds = %bb.k
  store <4 x i8> <i8 10, i8 11, i8 12, i8 13>, ptr getelementptr inbounds nuw (i8, ptr @content_get_nibble_value.values, i64 97), align 1
  store i8 14, ptr getelementptr inbounds nuw (i8, ptr @content_get_nibble_value.values, i64 101), align 1
  store i8 15, ptr getelementptr inbounds nuw (i8, ptr @content_get_nibble_value.values, i64 102), align 2
  store <4 x i8> <i8 10, i8 11, i8 12, i8 13>, ptr getelementptr inbounds nuw (i8, ptr @content_get_nibble_value.values, i64 65), align 1
  store i8 14, ptr getelementptr inbounds nuw (i8, ptr @content_get_nibble_value.values, i64 69), align 1
  store i8 15, ptr getelementptr inbounds nuw (i8, ptr @content_get_nibble_value.values, i64 70), align 2
  store <8 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>, ptr getelementptr inbounds nuw (i8, ptr @content_get_nibble_value.values, i64 48), align 16
  store i8 8, ptr getelementptr inbounds nuw (i8, ptr @content_get_nibble_value.values, i64 56), align 8
  store i8 9, ptr getelementptr inbounds nuw (i8, ptr @content_get_nibble_value.values, i64 57), align 1
  store i1 true, ptr @content_get_nibble_value.values_set, align 1
  br label %content_get_nibble_value.exit

content_get_nibble_value.exit:                    ; preds = %bb.k, %.preheader14.preheader.i
  %i.u = zext i8 %i.k to i64
  %i.v = getelementptr i8, ptr @content_get_nibble_value.values, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  br i1 %.034, label %bb.l, label %bb.m

bb.l:                                             ; preds = %content_get_nibble_value.exit
  %i.x = shl i8 %.032, 4
  %i.y = add i8 %i.w, %i.x
  %i.z = add i32 %.039, 1
  %i.aa = sext i32 %.039 to i64
  %i.ab = getelementptr i8, ptr @content_convert_to_binary.binary_str, i64 %i.aa
  store i8 %i.y, ptr %i.ab, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %content_get_nibble_value.exit, %bb.g, %bb.i, %bb.h, %bb.j, %bb.d
  %i.ac = phi i1 [ %i.h, %bb.d ], [ %i.h, %bb.j ], [ %i.h, %bb.g ], [ %i.h, %bb.i ], [ %i.h, %bb.h ], [ true, %bb.l ], [ true, %content_get_nibble_value.exit ]
  %.241 = phi i32 [ %.039, %bb.d ], [ %.039, %bb.j ], [ %.039, %bb.g ], [ %i.q, %bb.i ], [ %i.n, %bb.h ], [ %i.z, %bb.l ], [ %.039, %content_get_nibble_value.exit ]
  %.138 = phi i1 [ %i.l, %bb.d ], [ true, %bb.j ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.h ], [ true, %bb.l ], [ true, %content_get_nibble_value.exit ]
  %.236 = phi i1 [ %.034, %bb.d ], [ %.034, %bb.j ], [ %.034, %bb.g ], [ %.034, %bb.i ], [ %.034, %bb.h ], [ false, %bb.l ], [ true, %content_get_nibble_value.exit ]
  %.2 = phi i8 [ %.032, %bb.d ], [ %.032, %bb.j ], [ %.032, %bb.g ], [ %.032, %bb.i ], [ %.032, %bb.h ], [ %.032, %bb.l ], [ %i.w, %content_get_nibble_value.exit ]
  %.1 = phi i1 [ %.0, %bb.d ], [ %.0, %bb.j ], [ true, %bb.g ], [ false, %bb.i ], [ false, %bb.h ], [ %.0, %bb.l ], [ %.0, %content_get_nibble_value.exit ]
  %i.ad = add i32 %.031, 1
  br label %bb.c, !llvm.loop !65

bb.n:                                             ; preds = %bb.c
  %i.ae = add i32 %.039, 1                        ; 2 uses
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = tail call noalias ptr @g_malloc(i64 noundef %i.af) #20 ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 48
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = icmp ne i32 %i.ae, -1
  tail call void @llvm.assume(i1 %i.ai)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.ag, ptr noundef nonnull align 16 @content_convert_to_binary.binary_str, i64 noundef %i.af, i1 noundef false) #17
  store i8 1, ptr %i.a, align 8
  %i.aj = getelementptr i8, ptr %0, i64 60
  store i32 %.039, ptr %i.aj, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.b
  %.042 = phi i32 [ %i.g, %bb.b ], [ %.039, %bb.n ]
  ret i32 %.042
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @content_convert_pcre_for_regex(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = tail call i64 @strlen(ptr noundef %i.d) #18
  %i.f = trunc i64 %i.e to i32                    ; 4 uses
  %i.g = add i32 %i.f, -512
  %or.cond = icmp ult i32 %i.g, -509
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.d, align 1
  %.not32 = icmp eq i8 %i.h, 47
  %i.i = icmp sgt i32 %i.f, 3
  %or.cond45 = and i1 %.not32, %i.i
  br i1 %or.cond45, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.c
  %.02836 = add nsw i32 %i.f, -1
  %i.j = getelementptr i8, ptr %0, i64 67
  %i.k = getelementptr i8, ptr %0, i64 66
  %i.l = getelementptr i8, ptr %0, i64 65
  %i.m = getelementptr i8, ptr %0, i64 64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.02838 = phi i32 [ %.02836, %.lr.ph ], [ %.028, %bb.i ] ; 3 uses
  %.028.in37 = phi i32 [ %i.f, %.lr.ph ], [ %.02838, %bb.i ]
  %1 = zext nneg i32 %.02838 to i64               ; 3 uses
  %i.n = getelementptr i8, ptr %i.d, i64 %1
  %i.o = load i8, ptr %i.n, align 1
  switch i8 %i.o, label %bb.i [
    i8 47, label %bb.j
    i8 105, label %bb.e
    i8 115, label %bb.f
    i8 66, label %bb.g
    i8 109, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.m, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  store i8 1, ptr %i.l, align 1
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  store i8 1, ptr %i.k, align 2
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  store i8 1, ptr %i.j, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.g, %bb.f, %bb.e
  %.028 = add nsw i32 %.02838, -1                 ; 2 uses
  %i.p = icmp ugt i32 %.028, 2
  br i1 %i.p, label %bb.d, label %.thread, !llvm.loop !66

bb.j:                                             ; preds = %bb.d
  %i.q = tail call noalias ptr @g_malloc(i64 noundef %1) #20 ; 3 uses
  store ptr %i.q, ptr %i.a, align 8
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = add nsw i32 %.028.in37, -2               ; 2 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = tail call ptr @__memcpy_chk(ptr noundef %i.q, ptr noundef %i.s, i64 noundef %i.u, i64 noundef %1) #17, !alias.scope !67 ; 0 uses
  %i.w = getelementptr i8, ptr %i.q, i64 %i.u
  store i8 0, ptr %i.w, align 1
  %i.x = getelementptr i8, ptr %0, i64 56
  store i8 1, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %0, i64 60
  store i32 %i.t, ptr %i.y, align 4
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.c, %bb.b, %bb.a, %bb.j
  %.029 = phi i1 [ true, %bb.j ], [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.i ]
  ret i1 %.029
}

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_lookup_extended(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare i32 @g_path_is_absolute(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_build_path(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtou32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @ws_log_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @rule_add_uricontent(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i32 %i.b, 30
  br i1 %i.c, label %bb.b, label %rule_add_content.exit

bb.b:                                             ; preds = %bb.a
  %i.d = zext i1 %2 to i8
  %i.e = getelementptr i8, ptr %0, i64 64
  %i.f = add nuw nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8
  %i.g = zext nneg i32 %i.b to i64
  %i.h = getelementptr [72 x i8], ptr %i.e, i64 %i.g ; 4 uses
  %i.i = tail call noalias ptr @g_strdup(ptr noundef %1)
  %i.j = getelementptr i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.h, i64 16
  store i8 %i.d, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %0, i64 2224
  store ptr %i.h, ptr %i.l, align 8
  store i32 1, ptr %i.h, align 8
  br label %rule_add_content.exit

rule_add_content.exit:                            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @rule_add_pcre(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i32 %i.b, 30
  br i1 %i.c, label %bb.b, label %rule_add_content.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 64
  %i.e = add nuw nsw i32 %i.b, 1
  store i32 %i.e, ptr %i.a, align 8
  %i.f = zext nneg i32 %i.b to i64
  %i.g = getelementptr [72 x i8], ptr %i.d, i64 %i.f ; 4 uses
  %i.h = tail call noalias ptr @g_strdup(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @process_rule_option.value, i64 1))
  %i.i = getelementptr i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.g, i64 16
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 2224
  store ptr %i.g, ptr %i.k, align 8
  store i32 2, ptr %i.g, align 8
  br label %rule_add_content.exit

rule_add_content.exit:                            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtoi32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtou16(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @rule_add_reference(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2232       ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ult i32 %i.b, 20
  br i1 %i.c, label %g_strdup_inline.exit, label %bb.b

g_strdup_inline.exit:                             ; preds = %bb.a
  %i.d = tail call noalias ptr @g_strdup(ptr noundef nonnull @process_rule_option.value)
  %i.e = getelementptr i8, ptr %0, i64 2240
  %i.f = load i32, ptr %i.a, align 8              ; 2 uses
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.a, align 8
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr [8 x i8], ptr %i.e, i64 %i.h
  store ptr %i.d, ptr %i.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !13}
!11 = distinct !{!11, !12, !"memcpy.inline: argument 0"}
!12 = distinct !{!12, !"memcpy.inline"}
!13 = distinct !{!13, !12, !"memcpy.inline: argument 1"}
!14 = !{!15, !17}
!15 = distinct !{!15, !16, !"memcpy.inline: argument 0"}
!16 = distinct !{!16, !"memcpy.inline"}
!17 = distinct !{!17, !16, !"memcpy.inline: argument 1"}
!18 = !{!19, !21}
!19 = distinct !{!19, !20, !"memcpy.inline: argument 0"}
!20 = distinct !{!20, !"memcpy.inline"}
!21 = distinct !{!21, !20, !"memcpy.inline: argument 1"}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"memcpy.inline: argument 0"}
!24 = distinct !{!24, !"memcpy.inline"}
end_hunk_0
