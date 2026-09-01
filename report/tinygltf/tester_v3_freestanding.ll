Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_freestanding?download=true
inline.NumInlined: 906
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 183
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 287
begin_hunk_0_@tg3_error_stack_free:bb.a

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define dso_local void @tg3_parse_options_init(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %vector.body

vector.body:                                      ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  store <16 x i8> zeroinitializer, ptr %0, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.a, align 1, !tbaa !12
  %next.gep.1 = getelementptr i8, ptr %0, i64 32
  %i.b = getelementptr i8, ptr %0, i64 48
  store <16 x i8> zeroinitializer, ptr %next.gep.1, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.b, align 1, !tbaa !12
  %next.gep.2 = getelementptr i8, ptr %0, i64 64
  %i.c = getelementptr i8, ptr %0, i64 80
  store <16 x i8> zeroinitializer, ptr %next.gep.2, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.c, align 1, !tbaa !12
  %next.gep.3 = getelementptr i8, ptr %0, i64 96
  %i.d = getelementptr i8, ptr %0, i64 112
  store <16 x i8> zeroinitializer, ptr %next.gep.3, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.d, align 1, !tbaa !12
  %next.gep.4 = getelementptr i8, ptr %0, i64 128
  %i.e = getelementptr i8, ptr %0, i64 144
  store <16 x i8> zeroinitializer, ptr %next.gep.4, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.e, align 1, !tbaa !12
  %next.gep.5 = getelementptr i8, ptr %0, i64 160
  %i.f = getelementptr i8, ptr %0, i64 176
  store <16 x i8> zeroinitializer, ptr %next.gep.5, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.f, align 1, !tbaa !12
  %next.gep.6 = getelementptr i8, ptr %0, i64 192
  %i.g = getelementptr i8, ptr %0, i64 208
  store <16 x i8> zeroinitializer, ptr %next.gep.6, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.g, align 1, !tbaa !12
  %next.gep10 = getelementptr i8, ptr %0, i64 224
  store <8 x i8> zeroinitializer, ptr %next.gep10, align 1, !tbaa !12
  store i32 1, ptr %0, align 8, !tbaa !138
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1073741824, ptr %i.i, align 8, !tbaa !147
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 262144, ptr %i.j, align 8, !tbaa !148
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.k, align 8, !tbaa !149
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 1, ptr %i.l, align 8, !tbaa !150
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %vector.body
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define dso_local void @tg3_write_options_init(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %vector.body

vector.body:                                      ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  store <16 x i8> zeroinitializer, ptr %0, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.a, align 1, !tbaa !12
  %next.gep.1 = getelementptr i8, ptr %0, i64 32
  %i.b = getelementptr i8, ptr %0, i64 48
  store <16 x i8> zeroinitializer, ptr %next.gep.1, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.b, align 1, !tbaa !12
  %next.gep.2 = getelementptr i8, ptr %0, i64 64
  %i.c = getelementptr i8, ptr %0, i64 80
  store <16 x i8> zeroinitializer, ptr %next.gep.2, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.c, align 1, !tbaa !12
  %next.gep.3 = getelementptr i8, ptr %0, i64 96
  %i.d = getelementptr i8, ptr %0, i64 112
  store <16 x i8> zeroinitializer, ptr %next.gep.3, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.d, align 1, !tbaa !12
  %next.gep.4 = getelementptr i8, ptr %0, i64 128
  %i.e = getelementptr i8, ptr %0, i64 144
  store <16 x i8> zeroinitializer, ptr %next.gep.4, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.e, align 1, !tbaa !12
  store i32 1, ptr %0, align 8, !tbaa !151
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 1073741824, ptr %i.f, align 8, !tbaa !153
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 262144, ptr %i.g, align 8, !tbaa !154
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %vector.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local range(i32 -1, 9) i32 @tg3_component_size(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %switch.tableidx = add i32 %0, -5120            ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 11
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.tg3_component_size, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local range(i32 -1, 17) i32 @tg3_num_components(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %switch.tableidx = add i32 %0, -2               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 64
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.tg3_num_components, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local i32 @tg3_accessor_byte_stride(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !155  ; 2 uses
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !161
  switch i32 %i.d, label %bb.g [
    i32 5120, label %tg3_component_size.exit
    i32 5121, label %tg3_component_size.exit
    i32 5122, label %bb.d
    i32 5123, label %bb.d
    i32 5124, label %bb.e
    i32 5125, label %bb.e
    i32 5126, label %bb.e
    i32 5130, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  br label %tg3_component_size.exit

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c
  br label %tg3_component_size.exit

bb.f:                                             ; preds = %bb.c
  br label %tg3_component_size.exit

bb.g:                                             ; preds = %bb.c
  br label %tg3_component_size.exit

tg3_component_size.exit:                          ; preds = %bb.c, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.e = phi i1 [ true, %bb.g ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.c ]
  %.0.i = phi i32 [ -1, %bb.g ], [ 8, %bb.f ], [ 2, %bb.d ], [ 4, %bb.e ], [ 1, %bb.c ], [ 1, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !167
  %i.h = tail call i32 @tg3_num_components(i32 noundef %i.g) #20 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  %or.cond = select i1 %i.e, i1 true, i1 %i.i
  %i.j = mul nuw nsw i32 %i.h, %.0.i
  %spec.select = select i1 %or.cond, i32 -1, i32 %i.j
  br label %bb.h

bb.h:                                             ; preds = %tg3_component_size.exit, %bb.b
  %.0 = phi i32 [ %spec.select, %tg3_component_size.exit ], [ %i.b, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local range(i32 0, 2) i32 @tg3_str_equals(ptr nofree readonly captures(none) %0, i32 %1, ptr nofree readonly captures(none) %2, i32 %3) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq i32 %1, %3
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = zext i32 %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.in.i = phi i64 [ %i.b, %bb.c ], [ %i.e, %bb.d ]
  %.017.i = phi ptr [ %2, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %.0916.i = phi ptr [ %0, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.c = load i8, ptr %.0916.i, align 1, !tbaa !12 ; 2 uses
  %i.d = load i8, ptr %.017.i, align 1, !tbaa !12 ; 2 uses
  %.not14.i.not = icmp ne i8 %i.c, %i.d
  %i.e = add nsw i64 %.in.i, -1                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0916.i, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %.not.i = icmp eq i64 %i.e, 0
  %or.cond.not = select i1 %.not14.i.not, i1 true, i1 %.not.i
  br i1 %or.cond.not, label %tg3__memcmp.exit, label %bb.d, !llvm.loop !168

tg3__memcmp.exit:                                 ; preds = %bb.d
  %.not14.i = icmp eq i8 %i.c, %i.d
  %i.h = zext i1 %.not14.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %tg3__memcmp.exit
  %.0 = phi i32 [ %i.h, %tg3__memcmp.exit ], [ 0, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local range(i32 0, 2) i32 @tg3_str_equals_cstr(ptr nofree readonly captures(none) %0, i32 %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %1, 0
  br label %tg3__memcmp.exit

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0.i = phi ptr [ %i.c, %.preheader ], [ %2, %bb.a ] ; 3 uses
  %i.b = load i8, ptr %.0.i, align 1, !tbaa !12
  %.not.i = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %.not.i, label %tg3__strlen.exit, label %.preheader, !llvm.loop !169

tg3__strlen.exit:                                 ; preds = %.preheader
  %i.d = ptrtoint ptr %.0.i to i64
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32
  %.not9 = icmp eq i32 %1, %i.g
  br i1 %.not9, label %bb.c, label %tg3__memcmp.exit

bb.c:                                             ; preds = %tg3__strlen.exit
  %i.h = icmp eq i32 %1, 0
  br i1 %i.h, label %tg3__memcmp.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = zext i32 %1 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.in.i = phi i64 [ %i.i, %bb.d ], [ %i.l, %bb.e ]
  %.017.i = phi ptr [ %2, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %.0916.i = phi ptr [ %0, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.j = load i8, ptr %.0916.i, align 1, !tbaa !12 ; 2 uses
  %i.k = load i8, ptr %.017.i, align 1, !tbaa !12 ; 2 uses
  %.not14.i.not = icmp ne i8 %i.j, %i.k
  %i.l = add nsw i64 %.in.i, -1                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0916.i, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %.not.i10 = icmp eq i64 %i.l, 0
  %or.cond.not = select i1 %.not14.i.not, i1 true, i1 %.not.i10
  br i1 %or.cond.not, label %tg3__memcmp.exit.loopexit, label %bb.e, !llvm.loop !168

tg3__memcmp.exit.loopexit:                        ; preds = %bb.e
  %.not14.i = icmp eq i8 %i.j, %i.k
  br label %tg3__memcmp.exit

tg3__memcmp.exit:                                 ; preds = %tg3__memcmp.exit.loopexit, %bb.c, %tg3__strlen.exit, %bb.b
  %.0.shrunk = phi i1 [ %i.a, %bb.b ], [ false, %tg3__strlen.exit ], [ true, %bb.c ], [ %.not14.i, %tg3__memcmp.exit.loopexit ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define dso_local range(i32 0, 2) i32 @tg3_is_data_uri(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i32 %1, 4
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader, label %tg3__memcmp.exit

.preheader:                                       ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !12
  %.not14.i = icmp eq i8 %i.c, 100
  br i1 %.not14.i, label %.preheader.1, label %tg3__memcmp.exit

.preheader.1:                                     ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %.not14.i.1 = icmp eq i8 %i.e, 97
  br i1 %.not14.i.1, label %.preheader.2, label %tg3__memcmp.exit

.preheader.2:                                     ; preds = %.preheader.1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !12
  %.not14.i.2 = icmp eq i8 %i.g, 116
  br i1 %.not14.i.2, label %.preheader.3, label %tg3__memcmp.exit

.preheader.3:                                     ; preds = %.preheader.2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %.not14.i.3 = icmp eq i8 %i.i, 97
  br i1 %.not14.i.3, label %.preheader.4, label %tg3__memcmp.exit

.preheader.4:                                     ; preds = %.preheader.3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %.not14.i.4 = icmp eq i8 %i.k, 58
  %i.l = zext i1 %.not14.i.4 to i32
  br label %tg3__memcmp.exit

tg3__memcmp.exit:                                 ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %bb.a
  %i.m = phi i32 [ 0, %bb.a ], [ 0, %.preheader ], [ 0, %.preheader.1 ], [ 0, %.preheader.2 ], [ 0, %.preheader.3 ], [ %i.l, %.preheader.4 ]
  ret i32 %i.m
}

; Function Attrs: nounwind
define dso_local range(i32 0, 71) i32 @tg3_parse(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #9 {
bb.a:
  %7 = alloca %struct.tg3_parse_options, align 16 ; 26 uses
  %8 = alloca %struct.tg3__parse_ctx, align 16    ; 26 uses
  %9 = alloca %struct.tg3json_value, align 8      ; 7 uses
  %10 = alloca %struct.tg3json_parse_options, align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8, !tbaa !9
  %.not = icmp eq ptr %0, null
  %.0.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.0.sroa.gep26 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.0.sroa.gep61 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.0.sroa.gep62 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.0.sroa.gep64 = getelementptr inbounds nuw i8, ptr %6, i64 212
  %.0.sroa.gep65 = getelementptr inbounds nuw i8, ptr %7, i64 212
  br i1 %.not, label %tg3__error_push.exit, label %vector.body

vector.body:                                      ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  store <16 x i8> zeroinitializer, ptr %0, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.b, align 1, !tbaa !12
  %next.gep.1 = getelementptr i8, ptr %0, i64 32
  %i.c = getelementptr i8, ptr %0, i64 48
  store <16 x i8> zeroinitializer, ptr %next.gep.1, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.c, align 1, !tbaa !12
  %next.gep.2 = getelementptr i8, ptr %0, i64 64
  %i.d = getelementptr i8, ptr %0, i64 80
  store <16 x i8> zeroinitializer, ptr %next.gep.2, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.d, align 1, !tbaa !12
  %next.gep.3 = getelementptr i8, ptr %0, i64 96
  %i.e = getelementptr i8, ptr %0, i64 112
  store <16 x i8> zeroinitializer, ptr %next.gep.3, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.e, align 1, !tbaa !12
  %next.gep.4 = getelementptr i8, ptr %0, i64 128
  %i.f = getelementptr i8, ptr %0, i64 144
  store <16 x i8> zeroinitializer, ptr %next.gep.4, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.f, align 1, !tbaa !12
  %next.gep.5 = getelementptr i8, ptr %0, i64 160
  %i.g = getelementptr i8, ptr %0, i64 176
  store <16 x i8> zeroinitializer, ptr %next.gep.5, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.g, align 1, !tbaa !12
  %next.gep.6 = getelementptr i8, ptr %0, i64 192
  %i.h = getelementptr i8, ptr %0, i64 208
  store <16 x i8> zeroinitializer, ptr %next.gep.6, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.h, align 1, !tbaa !12
  %next.gep.7 = getelementptr i8, ptr %0, i64 224
  %i.i = getelementptr i8, ptr %0, i64 240
  store <16 x i8> zeroinitializer, ptr %next.gep.7, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.i, align 1, !tbaa !12
  %next.gep.8 = getelementptr i8, ptr %0, i64 256
  %i.j = getelementptr i8, ptr %0, i64 272
  store <16 x i8> zeroinitializer, ptr %next.gep.8, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.j, align 1, !tbaa !12
  %next.gep.9 = getelementptr i8, ptr %0, i64 288
  %i.k = getelementptr i8, ptr %0, i64 304
  store <16 x i8> zeroinitializer, ptr %next.gep.9, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.k, align 1, !tbaa !12
  %next.gep.10 = getelementptr i8, ptr %0, i64 320
  %i.l = getelementptr i8, ptr %0, i64 336
  store <16 x i8> zeroinitializer, ptr %next.gep.10, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.l, align 1, !tbaa !12
  %next.gep.11 = getelementptr i8, ptr %0, i64 352
  %i.m = getelementptr i8, ptr %0, i64 368
  store <16 x i8> zeroinitializer, ptr %next.gep.11, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.m, align 1, !tbaa !12
  %next.gep.12 = getelementptr i8, ptr %0, i64 384
  %i.n = getelementptr i8, ptr %0, i64 400
  store <16 x i8> zeroinitializer, ptr %next.gep.12, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.n, align 1, !tbaa !12
  %next.gep.13 = getelementptr i8, ptr %0, i64 416
  %i.o = getelementptr i8, ptr %0, i64 432
  store <16 x i8> zeroinitializer, ptr %next.gep.13, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.o, align 1, !tbaa !12
  %next.gep86 = getelementptr i8, ptr %0, i64 448
  store <8 x i8> zeroinitializer, ptr %next.gep86, align 1, !tbaa !12
  %next.gep86.1 = getelementptr i8, ptr %0, i64 456
  store <8 x i8> zeroinitializer, ptr %next.gep86.1, align 1, !tbaa !12
  %next.gep86.2 = getelementptr i8, ptr %0, i64 464
  store <8 x i8> zeroinitializer, ptr %next.gep86.2, align 1, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 -1, ptr %i.p, align 4, !tbaa !170
  %.not31 = icmp eq ptr %2, null
  br i1 %.not31, label %tg3__error_push.exit, label %bb.b

bb.b:                                             ; preds = %vector.body
  %.not32 = icmp eq ptr %6, null
  br i1 %.not32, label %vector.body92, label %bb.c

vector.body92:                                    ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <16 x i8> zeroinitializer, ptr %7, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.q, align 16, !tbaa !12
  %next.gep94.1 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 48
  store <16 x i8> zeroinitializer, ptr %next.gep94.1, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.r, align 16, !tbaa !12
  %next.gep94.2 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 80
  store <16 x i8> zeroinitializer, ptr %next.gep94.2, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.s, align 16, !tbaa !12
  %next.gep94.3 = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 112
  store <16 x i8> zeroinitializer, ptr %next.gep94.3, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.t, align 16, !tbaa !12
  %next.gep94.4 = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 144
  store <16 x i8> zeroinitializer, ptr %next.gep94.4, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.u, align 16, !tbaa !12
  %next.gep94.5 = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 176
  store <16 x i8> zeroinitializer, ptr %next.gep94.5, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.v, align 16, !tbaa !12
  %next.gep94.6 = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 208
  store <16 x i8> zeroinitializer, ptr %next.gep94.6, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.w, align 16, !tbaa !12
  %next.gep105 = getelementptr inbounds nuw i8, ptr %7, i64 224
  store <8 x i8> zeroinitializer, ptr %next.gep105, align 16, !tbaa !12
  store i32 1, ptr %7, align 16, !tbaa !138
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.x, align 4, !tbaa !146
  store i64 1073741824, ptr %.0.sroa.gep26, align 8, !tbaa !147
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 262144, ptr %i.y, align 8, !tbaa !148
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 224
  store i64 0, ptr %i.z, align 16, !tbaa !149
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 216
  store i32 1, ptr %i.aa, align 8, !tbaa !150
  br label %bb.c

bb.c:                                             ; preds = %vector.body92, %bb.b
  %.0.sroa.phi = phi ptr [ %.0.sroa.gep, %bb.b ], [ %.0.sroa.gep26, %vector.body92 ] ; 2 uses
  %.0.sroa.phi60 = phi ptr [ %.0.sroa.gep61, %bb.b ], [ %.0.sroa.gep62, %vector.body92 ]
  %.0.sroa.phi63 = phi ptr [ %.0.sroa.gep64, %bb.b ], [ %.0.sroa.gep65, %vector.body92 ]
  %.0 = phi ptr [ %6, %bb.b ], [ %7, %vector.body92 ]
  %i.ab = call fastcc ptr @tg3__arena_create(ptr noundef nonnull %.0.sroa.phi) #20 ; 3 uses
  %.not33 = icmp eq ptr %i.ab, null
  br i1 %.not33, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %tg3__error_push.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !136 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
end_hunk_0
begin_hunk_1_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %i.ekr = add nuw i64 %.01425.i.i1809, 1         ; 2 uses
  %exitcond.not.i.i1811 = icmp eq i64 %i.ekr, %i.ejw
  br i1 %exitcond.not.i.i1811, label %tg3__json_is_array.exit1826.thread, label %.lr.ph.split.i.i1808, !llvm.loop !83

tg3json_object_get.exit1824:                      ; preds = %.lr.ph.i.i.i1813.6
  %i.eks = getelementptr inbounds nuw [24 x i8], ptr %i.ejy, i64 %.01425.i.i1809
  %i.ekt = getelementptr inbounds nuw i8, ptr %i.eks, i64 16
  %i.eku = load ptr, ptr %i.ekt, align 8, !tbaa !55 ; 5 uses
  %.not.i1825 = icmp eq ptr %i.eku, null
  br i1 %.not.i1825, label %tg3__json_is_array.exit1826.thread, label %tg3__json_is_array.exit1826

tg3__json_is_array.exit1826:                      ; preds = %tg3json_object_get.exit1824
  %i.ekv = load i32, ptr %i.eku, align 8, !tbaa !13
  %.not2725 = icmp eq i32 %i.ekv, 5
  br i1 %.not2725, label %tg3json_array_size.exit1830, label %tg3__json_is_array.exit1826.thread

tg3json_array_size.exit1830:                      ; preds = %tg3__json_is_array.exit1826
  %i.ekw = getelementptr inbounds nuw i8, ptr %i.eku, i64 16 ; 2 uses
  %i.ekx = load i64, ptr %i.ekw, align 8, !tbaa !12 ; 4 uses
  %.not831 = icmp eq i64 %i.ekx, 0
  br i1 %.not831, label %tg3__json_is_array.exit1826.thread, label %bb.op

bb.op:                                            ; preds = %tg3json_array_size.exit1830
  %i.eky = load ptr, ptr %0, align 8, !tbaa !207  ; 9 uses
  %i.ekz = mul i64 %i.ekx, 264                    ; 6 uses
  %i.ela = icmp eq ptr %i.eky, null
  %i.elb = icmp eq i64 %i.ekz, 0
  %or.cond.i1831 = or i1 %i.elb, %i.ela
  br i1 %or.cond.i1831, label %tg3__json_is_array.exit1826.thread, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.elc = getelementptr inbounds nuw i8, ptr %i.eky, i64 32
  %i.eld = load i64, ptr %i.elc, align 8, !tbaa !227 ; 3 uses
  %.not.i1832 = icmp ne i64 %i.eld, 0             ; 2 uses
  %i.ele = icmp ugt i64 %i.ekz, %i.eld
  %or.cond28.i1833 = and i1 %.not.i1832, %i.ele
  br i1 %or.cond28.i1833, label %tg3__json_is_array.exit1826.thread, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.elf = getelementptr inbounds nuw i8, ptr %i.eky, i64 8 ; 3 uses
  %i.elg = load ptr, ptr %i.elf, align 8, !tbaa !241 ; 5 uses
  %.not26.i1834 = icmp eq ptr %i.elg, null
  br i1 %.not26.i1834, label %bb.ot, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.elh = getelementptr inbounds nuw i8, ptr %i.elg, i64 16
  %i.eli = load i64, ptr %i.elh, align 8, !tbaa !242 ; 3 uses
  %i.elj = add i64 %i.eli, %i.ekz
  %i.elk = getelementptr inbounds nuw i8, ptr %i.elg, i64 24
  %i.ell = load i64, ptr %i.elk, align 8, !tbaa !244
  %i.elm = icmp ugt i64 %i.elj, %i.ell
  br i1 %i.elm, label %bb.ot, label %tg3__arena_alloc.exit1846

bb.ot:                                            ; preds = %bb.os, %bb.or
  %i.eln = getelementptr inbounds nuw i8, ptr %i.eky, i64 40
  %i.elo = load i64, ptr %i.eln, align 8, !tbaa !223
  %spec.select.i.i1840 = call i64 @llvm.umax.i64(i64 %i.elo, i64 range(i64 0, -7) %i.ekz) ; 3 uses
  %i.elp = icmp ugt i64 %spec.select.i.i1840, %i.eld
  %or.cond.i.i1841 = select i1 %.not.i1832, i1 %i.elp, i1 false
  br i1 %or.cond.i.i1841, label %tg3__json_is_array.exit1826.thread, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.elq = getelementptr inbounds nuw i8, ptr %i.eky, i64 16 ; 3 uses
  %i.elr = load i64, ptr %i.elq, align 8, !tbaa !245
  %i.els = add i64 %spec.select.i.i1840, 32       ; 3 uses
  %i.elt = add i64 %i.elr, %i.els
  %i.elu = getelementptr inbounds nuw i8, ptr %i.eky, i64 24
  %i.elv = load i64, ptr %i.elu, align 8, !tbaa !226
  %i.elw = icmp ugt i64 %i.elt, %i.elv
  br i1 %i.elw, label %tg3__json_is_array.exit1826.thread, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.elx = getelementptr inbounds nuw i8, ptr %i.eky, i64 48
  %i.ely = load ptr, ptr %i.elx, align 8, !tbaa !246
  %i.elz = getelementptr inbounds nuw i8, ptr %i.eky, i64 72
  %i.ema = load ptr, ptr %i.elz, align 8, !tbaa !247
  %i.emb = call ptr %i.ely(i64 noundef %i.els, ptr noundef %i.ema) #21, !inline_history !248 ; 8 uses
  %.not37.i.i1842 = icmp eq ptr %i.emb, null
  br i1 %.not37.i.i1842, label %tg3__json_is_array.exit1826.thread, label %tg3__arena_alloc.exit1846.thread

tg3__arena_alloc.exit1846.thread:                 ; preds = %bb.ov
  store ptr null, ptr %i.emb, align 8, !tbaa !249
  %i.emc = getelementptr inbounds nuw i8, ptr %i.emb, i64 32 ; 2 uses
  %i.emd = getelementptr inbounds nuw i8, ptr %i.emb, i64 8
  store ptr %i.emc, ptr %i.emd, align 8, !tbaa !250
  %i.eme = getelementptr inbounds nuw i8, ptr %i.emb, i64 24
  store i64 %spec.select.i.i1840, ptr %i.eme, align 8, !tbaa !244
  %i.emf = load i64, ptr %i.elq, align 8, !tbaa !245
  %i.emg = add i64 %i.emf, %i.els
  store i64 %i.emg, ptr %i.elq, align 8, !tbaa !245
  %i.emh = load ptr, ptr %i.elf, align 8, !tbaa !241 ; 2 uses
  %.not38.i.i1844 = icmp eq ptr %i.emh, null
  %..i.i1845 = select i1 %.not38.i.i1844, ptr %i.eky, ptr %i.emh
  store ptr %i.emb, ptr %..i.i1845, align 8, !tbaa !251
  store ptr %i.emb, ptr %i.elf, align 8, !tbaa !241
  %i.emi = getelementptr inbounds nuw i8, ptr %i.emb, i64 16
  store i64 %i.ekz, ptr %i.emi, align 8, !tbaa !242
  br label %.preheader2766.a

tg3__arena_alloc.exit1846:                        ; preds = %bb.os
  %.phi.trans.insert.i1836 = getelementptr inbounds nuw i8, ptr %i.elg, i64 8
  %.pre.i1837 = load ptr, ptr %.phi.trans.insert.i1836, align 8, !tbaa !250 ; 2 uses
  %i.emj = getelementptr inbounds nuw i8, ptr %i.elg, i64 16
  %i.emk = getelementptr inbounds nuw i8, ptr %.pre.i1837, i64 %i.eli
  %i.eml = add i64 %i.eli, %i.ekz
  store i64 %i.eml, ptr %i.emj, align 8, !tbaa !242
  %.not832 = icmp eq ptr %.pre.i1837, null
  br i1 %.not832, label %tg3__json_is_array.exit1826.thread, label %.preheader2766.a

.preheader2766.a:                                 ; preds = %tg3__arena_alloc.exit1846.thread, %tg3__arena_alloc.exit1846
  %i.emm = phi ptr [ %i.emc, %tg3__arena_alloc.exit1846.thread ], [ %i.emk, %tg3__arena_alloc.exit1846 ] ; 2 uses
  %i.emn = getelementptr inbounds nuw i8, ptr %i.eku, i64 8
  %i.emo = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ow

bb.ow:                                            ; preds = %.preheader2766.a, %bb.pc
  %.06462980 = phi i64 [ 0, %.preheader2766.a ], [ %i.eqy, %bb.pc ] ; 5 uses
  %i.emp = load i32, ptr %i.eku, align 8, !tbaa !13
  %.not8.i1848 = icmp eq i32 %i.emp, 5
  br i1 %.not8.i1848, label %bb.ox, label %tg3__json_is_object.exit1853.thread

bb.ox:                                            ; preds = %bb.ow
  %i.emq = load i64, ptr %i.ekw, align 8, !tbaa !12
  %.not9.i1850 = icmp ult i64 %.06462980, %i.emq
  br i1 %.not9.i1850, label %tg3json_array_get.exit1851, label %tg3__json_is_object.exit1853.thread

tg3json_array_get.exit1851:                       ; preds = %bb.ox
  %i.emr = load ptr, ptr %i.emn, align 8, !tbaa !12 ; 2 uses
  %i.ems = getelementptr inbounds nuw [24 x i8], ptr %i.emr, i64 %.06462980 ; 10 uses
  %.not.i1852 = icmp eq ptr %i.emr, null
  br i1 %.not.i1852, label %tg3__json_is_object.exit1853.thread, label %tg3__json_is_object.exit1853

tg3__json_is_object.exit1853:                     ; preds = %tg3json_array_get.exit1851
  %i.emt = load i32, ptr %i.ems, align 8, !tbaa !13
  %.not2726 = icmp eq i32 %i.emt, 6
  br i1 %.not2726, label %iter.check4475, label %tg3__json_is_object.exit1853.thread

tg3__json_is_object.exit1853.thread:              ; preds = %bb.ow, %bb.ox, %tg3json_array_get.exit1851, %tg3__json_is_object.exit1853
  %i.emu = load ptr, ptr %i.emo, align 8, !tbaa !210
  %i.emv = load ptr, ptr %0, align 8, !tbaa !207
  %i.emw = trunc i64 %.06462980 to i32
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.emu, ptr noundef %i.emv, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.49, i32 noundef %i.emw) #20
  br label %bb.pc

iter.check4475:                                   ; preds = %tg3__json_is_object.exit1853
  %i.emx = getelementptr inbounds nuw [264 x i8], ptr %i.emm, i64 %.06462980 ; 30 uses
  %i.emy = getelementptr i8, ptr %i.emx, i64 16
  store <16 x i8> zeroinitializer, ptr %i.emx, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.emy, align 1, !tbaa !12
  %next.gep4469.1 = getelementptr i8, ptr %i.emx, i64 32
  %i.emz = getelementptr i8, ptr %i.emx, i64 48
  store <16 x i8> zeroinitializer, ptr %next.gep4469.1, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.emz, align 1, !tbaa !12
  %next.gep4469.2 = getelementptr i8, ptr %i.emx, i64 64
  %i.ena = getelementptr i8, ptr %i.emx, i64 80
  store <16 x i8> zeroinitializer, ptr %next.gep4469.2, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.ena, align 1, !tbaa !12
  %next.gep4469.3 = getelementptr i8, ptr %i.emx, i64 96
  %i.enb = getelementptr i8, ptr %i.emx, i64 112
  store <16 x i8> zeroinitializer, ptr %next.gep4469.3, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.enb, align 1, !tbaa !12
  %next.gep4469.4 = getelementptr i8, ptr %i.emx, i64 128
  %i.enc = getelementptr i8, ptr %i.emx, i64 144
  store <16 x i8> zeroinitializer, ptr %next.gep4469.4, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.enc, align 1, !tbaa !12
  %next.gep4469.5 = getelementptr i8, ptr %i.emx, i64 160
  %i.end = getelementptr i8, ptr %i.emx, i64 176
  store <16 x i8> zeroinitializer, ptr %next.gep4469.5, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.end, align 1, !tbaa !12
  %next.gep4469.6 = getelementptr i8, ptr %i.emx, i64 192
  %i.ene = getelementptr i8, ptr %i.emx, i64 208
  store <16 x i8> zeroinitializer, ptr %next.gep4469.6, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.ene, align 1, !tbaa !12
  %next.gep4469.7 = getelementptr i8, ptr %i.emx, i64 224
  %i.enf = getelementptr i8, ptr %i.emx, i64 240
  store <16 x i8> zeroinitializer, ptr %next.gep4469.7, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.enf, align 1, !tbaa !12
  %next.gep4481 = getelementptr i8, ptr %i.emx, i64 256
  store <8 x i8> zeroinitializer, ptr %next.gep4481, align 1, !tbaa !12
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ems, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.emx, i32 noundef 0, ptr noundef nonnull @.str.185) #20
  %i.eng = getelementptr inbounds nuw i8, ptr %i.emx, i64 16 ; 2 uses
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ems, ptr noundef nonnull @.str.91, ptr noundef %i.eng, i32 noundef 1, ptr noundef nonnull @.str.185) #20
  %i.enh = load ptr, ptr %i.eng, align 8, !tbaa !469 ; 3 uses
  %.not.i1858 = icmp eq ptr %i.enh, null
  br i1 %.not.i1858, label %tg3__parse_camera.exit, label %tg3__strlen.exit.i.i1859

tg3__strlen.exit.i.i1859:                         ; preds = %iter.check4475
  %i.eni = getelementptr inbounds nuw i8, ptr %i.emx, i64 24
  %i.enj = load i32, ptr %i.eni, align 8
  switch i32 %i.enj, label %tg3__parse_camera.exit [
    i32 11, label %.preheader2763
    i32 12, label %.preheader2765
  ]

.preheader2763:                                   ; preds = %tg3__strlen.exit.i.i1859, %.preheader2763
  %.in.i.i.i1862 = phi i64 [ %i.enm, %.preheader2763 ], [ 11, %tg3__strlen.exit.i.i1859 ]
  %.017.i.i.i1863 = phi ptr [ %i.eno, %.preheader2763 ], [ @.str.186, %tg3__strlen.exit.i.i1859 ] ; 2 uses
  %.0916.i.i.i1864 = phi ptr [ %i.enn, %.preheader2763 ], [ %i.enh, %tg3__strlen.exit.i.i1859 ] ; 2 uses
  %i.enk = load i8, ptr %.0916.i.i.i1864, align 1, !tbaa !12
  %i.enl = load i8, ptr %.017.i.i.i1863, align 1, !tbaa !12
  %.not14.i.not.i.i1863 = icmp ne i8 %i.enk, %i.enl ; 2 uses
  %i.enm = add nsw i64 %.in.i.i.i1862, -1         ; 2 uses
  %i.enn = getelementptr inbounds nuw i8, ptr %.0916.i.i.i1864, i64 1
  %i.eno = getelementptr inbounds nuw i8, ptr %.017.i.i.i1863, i64 1
  %.not.i10.i.i = icmp eq i64 %i.enm, 0
  %or.cond.not.i.i = select i1 %.not14.i.not.i.i1863, i1 true, i1 %.not.i10.i.i
  br i1 %or.cond.not.i.i, label %tg3_str_equals_cstr.exit.i, label %.preheader2763, !llvm.loop !168

tg3_str_equals_cstr.exit.i:                       ; preds = %.preheader2763
  br i1 %.not14.i.not.i.i1863, label %tg3__parse_camera.exit, label %bb.oy

bb.oy:                                            ; preds = %tg3_str_equals_cstr.exit.i
  %i.enp = load i32, ptr %i.ems, align 8, !tbaa !13
  %.not18.i.i.i.i1867 = icmp eq i32 %i.enp, 6
  br i1 %.not18.i.i.i.i1867, label %.preheader.i.i.i.i1868, label %tg3__parse_camera.exit

.preheader.i.i.i.i1868:                           ; preds = %bb.oy
  %i.enq = getelementptr inbounds nuw i8, ptr %i.ems, i64 16
  %i.enr = load i64, ptr %i.enq, align 8, !tbaa !12 ; 2 uses
  %.not27.i.i.i.i1869 = icmp eq i64 %i.enr, 0
  br i1 %.not27.i.i.i.i1869, label %tg3__parse_camera.exit, label %.lr.ph.split.i.i.i.preheader.i1870

.lr.ph.split.i.i.i.preheader.i1870:               ; preds = %.preheader.i.i.i.i1868
  %i.ens = getelementptr inbounds nuw i8, ptr %i.ems, i64 8
  %i.ent = load ptr, ptr %i.ens, align 8, !tbaa !12
  br label %.lr.ph.split.i.i.i.i1871

.lr.ph.split.i.i.i.i1871:                         ; preds = %tg3json__memcmp_fallback.exit.i.i.i.i1873, %.lr.ph.split.i.i.i.preheader.i1870
  %.01425.i.i.i.i1872 = phi i64 [ %i.eou, %tg3json__memcmp_fallback.exit.i.i.i.i1873 ], [ 0, %.lr.ph.split.i.i.i.preheader.i1870 ] ; 2 uses
  %i.enu = getelementptr inbounds nuw [24 x i8], ptr %i.ent, i64 %.01425.i.i.i.i1872 ; 3 uses
  %i.env = getelementptr inbounds nuw i8, ptr %i.enu, i64 8
  %i.enw = load i64, ptr %i.env, align 8, !tbaa !54
  %i.enx = icmp eq i64 %i.enw, 11
  br i1 %i.enx, label %.lr.ph.i.preheader.i.i.i.i1875, label %tg3json__memcmp_fallback.exit.i.i.i.i1873

.lr.ph.i.preheader.i.i.i.i1875:                   ; preds = %.lr.ph.split.i.i.i.i1871
  %i.eny = load ptr, ptr %i.enu, align 8, !tbaa !51 ; 11 uses
  %i.enz = load i8, ptr %i.eny, align 1, !tbaa !12
  %.not14.i.i.i.i.i1876 = icmp eq i8 %i.enz, 112
  br i1 %.not14.i.i.i.i.i1876, label %.lr.ph.i.i.i.i.1.i1877, label %tg3json__memcmp_fallback.exit.i.i.i.i1873

.lr.ph.i.i.i.i.1.i1877:                           ; preds = %.lr.ph.i.preheader.i.i.i.i1875
  %i.eoa = getelementptr inbounds nuw i8, ptr %i.eny, i64 1
  %i.eob = load i8, ptr %i.eoa, align 1, !tbaa !12
  %.not14.i.i.i.i.1.i1878 = icmp eq i8 %i.eob, 101
  br i1 %.not14.i.i.i.i.1.i1878, label %.lr.ph.i.i.i.i.2.i1879, label %tg3json__memcmp_fallback.exit.i.i.i.i1873

.lr.ph.i.i.i.i.2.i1879:                           ; preds = %.lr.ph.i.i.i.i.1.i1877
  %i.eoc = getelementptr inbounds nuw i8, ptr %i.eny, i64 2
  %i.eod = load i8, ptr %i.eoc, align 1, !tbaa !12
  %.not14.i.i.i.i.2.i1880 = icmp eq i8 %i.eod, 114
  br i1 %.not14.i.i.i.i.2.i1880, label %.lr.ph.i.i.i.i.3.i1881, label %tg3json__memcmp_fallback.exit.i.i.i.i1873

.lr.ph.i.i.i.i.3.i1881:                           ; preds = %.lr.ph.i.i.i.i.2.i1879
  %i.eoe = getelementptr inbounds nuw i8, ptr %i.eny, i64 3
  %i.eof = load i8, ptr %i.eoe, align 1, !tbaa !12
  %.not14.i.i.i.i.3.i1882 = icmp eq i8 %i.eof, 115
  br i1 %.not14.i.i.i.i.3.i1882, label %.lr.ph.i.i.i.i.4.i1883, label %tg3json__memcmp_fallback.exit.i.i.i.i1873

.lr.ph.i.i.i.i.4.i1883:                           ; preds = %.lr.ph.i.i.i.i.3.i1881
  %i.eog = getelementptr inbounds nuw i8, ptr %i.eny, i64 4
  %i.eoh = load i8, ptr %i.eog, align 1, !tbaa !12
  %.not14.i.i.i.i.4.i1884 = icmp eq i8 %i.eoh, 112
  br i1 %.not14.i.i.i.i.4.i1884, label %.lr.ph.i.i.i.i.5.i1885, label %tg3json__memcmp_fallback.exit.i.i.i.i1873

.lr.ph.i.i.i.i.5.i1885:                           ; preds = %.lr.ph.i.i.i.i.4.i1883
  %i.eoi = getelementptr inbounds nuw i8, ptr %i.eny, i64 5
  %i.eoj = load i8, ptr %i.eoi, align 1, !tbaa !12
  %.not14.i.i.i.i.5.i1886 = icmp eq i8 %i.eoj, 101
  br i1 %.not14.i.i.i.i.5.i1886, label %.lr.ph.i.i.i.i.6.i1887, label %tg3json__memcmp_fallback.exit.i.i.i.i1873

.lr.ph.i.i.i.i.6.i1887:                           ; preds = %.lr.ph.i.i.i.i.5.i1885
  %i.eok = getelementptr inbounds nuw i8, ptr %i.eny, i64 6
  %i.eol = load i8, ptr %i.eok, align 1, !tbaa !12
  %.not14.i.i.i.i.6.i1888 = icmp eq i8 %i.eol, 99
  br i1 %.not14.i.i.i.i.6.i1888, label %.lr.ph.i.i.i.i.7.i1889, label %tg3json__memcmp_fallback.exit.i.i.i.i1873

.lr.ph.i.i.i.i.7.i1889:                           ; preds = %.lr.ph.i.i.i.i.6.i1887
  %i.eom = getelementptr inbounds nuw i8, ptr %i.eny, i64 7
  %i.eon = load i8, ptr %i.eom, align 1, !tbaa !12
  %.not14.i.i.i.i.7.i1890 = icmp eq i8 %i.eon, 116
  br i1 %.not14.i.i.i.i.7.i1890, label %.lr.ph.i.i.i.i.8.i1891, label %tg3json__memcmp_fallback.exit.i.i.i.i1873

.lr.ph.i.i.i.i.8.i1891:                           ; preds = %.lr.ph.i.i.i.i.7.i1889
  %i.eoo = getelementptr inbounds nuw i8, ptr %i.eny, i64 8
  %i.eop = load i8, ptr %i.eoo, align 1, !tbaa !12
  %.not14.i.i.i.i.8.i1892 = icmp eq i8 %i.eop, 105
  br i1 %.not14.i.i.i.i.8.i1892, label %.lr.ph.i.i.i.i.9.i1893, label %tg3json__memcmp_fallback.exit.i.i.i.i1873

.lr.ph.i.i.i.i.9.i1893:                           ; preds = %.lr.ph.i.i.i.i.8.i1891
  %i.eoq = getelementptr inbounds nuw i8, ptr %i.eny, i64 9
  %i.eor = load i8, ptr %i.eoq, align 1, !tbaa !12
  %.not14.i.i.i.i.9.i1894 = icmp eq i8 %i.eor, 118
  br i1 %.not14.i.i.i.i.9.i1894, label %.lr.ph.i.i.i.i.10.i1895, label %tg3json__memcmp_fallback.exit.i.i.i.i1873

.lr.ph.i.i.i.i.10.i1895:                          ; preds = %.lr.ph.i.i.i.i.9.i1893
  %i.eos = getelementptr inbounds nuw i8, ptr %i.eny, i64 10
  %i.eot = load i8, ptr %i.eos, align 1, !tbaa !12
  %.not14.i.i.i.i.10.i1896 = icmp eq i8 %i.eot, 101
  br i1 %.not14.i.i.i.i.10.i1896, label %tg3__json_get.exit.i1897, label %tg3json__memcmp_fallback.exit.i.i.i.i1873

tg3json__memcmp_fallback.exit.i.i.i.i1873:        ; preds = %.lr.ph.i.i.i.i.10.i1895, %.lr.ph.i.i.i.i.9.i1893, %.lr.ph.i.i.i.i.8.i1891, %.lr.ph.i.i.i.i.7.i1889, %.lr.ph.i.i.i.i.6.i1887, %.lr.ph.i.i.i.i.5.i1885, %.lr.ph.i.i.i.i.4.i1883, %.lr.ph.i.i.i.i.3.i1881, %.lr.ph.i.i.i.i.2.i1879, %.lr.ph.i.i.i.i.1.i1877, %.lr.ph.i.preheader.i.i.i.i1875, %.lr.ph.split.i.i.i.i1871
  %i.eou = add nuw i64 %.01425.i.i.i.i1872, 1     ; 2 uses
  %exitcond.not.i.i.i.i1874 = icmp eq i64 %i.eou, %i.enr
  br i1 %exitcond.not.i.i.i.i1874, label %tg3__parse_camera.exit, label %.lr.ph.split.i.i.i.i1871, !llvm.loop !83

tg3__json_get.exit.i1897:                         ; preds = %.lr.ph.i.i.i.i.10.i1895
  %i.eov = getelementptr inbounds nuw i8, ptr %i.enu, i64 16
  %i.eow = load ptr, ptr %i.eov, align 8, !tbaa !55 ; 7 uses
  %.not.i55.i = icmp eq ptr %i.eow, null
  br i1 %.not.i55.i, label %tg3__parse_camera.exit, label %tg3__json_is_object.exit.i1898

tg3__json_is_object.exit.i1898:                   ; preds = %tg3__json_get.exit.i1897
  %i.eox = load i32, ptr %i.eow, align 8, !tbaa !13
  %.not125.i = icmp eq i32 %i.eox, 6
  br i1 %.not125.i, label %bb.oz, label %tg3__parse_camera.exit

bb.oz:                                            ; preds = %tg3__json_is_object.exit.i1898
  %i.eoy = getelementptr inbounds nuw i8, ptr %i.emx, i64 32
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull %i.eow, ptr noundef nonnull @.str.187, ptr noundef %i.eoy, i32 noundef 0, ptr noundef nonnull @.str.188) #20
  %i.eoz = getelementptr inbounds nuw i8, ptr %i.emx, i64 40
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull %i.eow, ptr noundef nonnull @.str.189, ptr noundef %i.eoz, i32 noundef 1, ptr noundef nonnull @.str.188) #20
  %i.epa = getelementptr inbounds nuw i8, ptr %i.emx, i64 48
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull %i.eow, ptr noundef nonnull @.str.190, ptr noundef %i.epa, i32 noundef 0, ptr noundef nonnull @.str.188) #20
  %i.epb = getelementptr inbounds nuw i8, ptr %i.emx, i64 56
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull %i.eow, ptr noundef nonnull @.str.191, ptr noundef %i.epb, i32 noundef 1, ptr noundef nonnull @.str.188) #20
  br label %tg3__json_is_object.exit.thread.sink.split.i

.preheader2765:                                   ; preds = %tg3__strlen.exit.i.i1859, %.preheader2765
  %.in.i.i63.i = phi i64 [ %i.epe, %.preheader2765 ], [ 12, %tg3__strlen.exit.i.i1859 ]
  %.017.i.i64.i = phi ptr [ %i.epg, %.preheader2765 ], [ @.str.192, %tg3__strlen.exit.i.i1859 ] ; 2 uses
  %.0916.i.i65.i = phi ptr [ %i.epf, %.preheader2765 ], [ %i.enh, %tg3__strlen.exit.i.i1859 ] ; 2 uses
  %i.epc = load i8, ptr %.0916.i.i65.i, align 1, !tbaa !12
  %i.epd = load i8, ptr %.017.i.i64.i, align 1, !tbaa !12
  %.not14.i.not.i66.i = icmp ne i8 %i.epc, %i.epd ; 2 uses
  %i.epe = add nsw i64 %.in.i.i63.i, -1           ; 2 uses
  %i.epf = getelementptr inbounds nuw i8, ptr %.0916.i.i65.i, i64 1
  %i.epg = getelementptr inbounds nuw i8, ptr %.017.i.i64.i, i64 1
  %.not.i10.i67.i = icmp eq i64 %i.epe, 0
  %or.cond.not.i68.i = select i1 %.not14.i.not.i66.i, i1 true, i1 %.not.i10.i67.i
  br i1 %or.cond.not.i68.i, label %tg3_str_equals_cstr.exit69.i, label %.preheader2765, !llvm.loop !168

tg3_str_equals_cstr.exit69.i:                     ; preds = %.preheader2765
  br i1 %.not14.i.not.i66.i, label %tg3__parse_camera.exit, label %bb.pa

bb.pa:                                            ; preds = %tg3_str_equals_cstr.exit69.i
  %i.eph = load i32, ptr %i.ems, align 8, !tbaa !13
  %.not18.i.i.i75.i = icmp eq i32 %i.eph, 6
  br i1 %.not18.i.i.i75.i, label %.preheader.i.i.i77.i, label %tg3__parse_camera.exit

.preheader.i.i.i77.i:                             ; preds = %bb.pa
  %i.epi = getelementptr inbounds nuw i8, ptr %i.ems, i64 16
  %i.epj = load i64, ptr %i.epi, align 8, !tbaa !12 ; 2 uses
  %.not27.i.i.i78.i = icmp eq i64 %i.epj, 0
  br i1 %.not27.i.i.i78.i, label %tg3__parse_camera.exit, label %.lr.ph.split.i.i.i81.preheader.i

.lr.ph.split.i.i.i81.preheader.i:                 ; preds = %.preheader.i.i.i77.i
  %i.epk = getelementptr inbounds nuw i8, ptr %i.ems, i64 8
  %i.epl = load ptr, ptr %i.epk, align 8, !tbaa !12
  br label %.lr.ph.split.i.i.i81.i

.lr.ph.split.i.i.i81.i:                           ; preds = %tg3json__memcmp_fallback.exit.i.i.i83.i, %.lr.ph.split.i.i.i81.preheader.i
  %.01425.i.i.i82.i = phi i64 [ %i.eqo, %tg3json__memcmp_fallback.exit.i.i.i83.i ], [ 0, %.lr.ph.split.i.i.i81.preheader.i ] ; 2 uses
  %i.epm = getelementptr inbounds nuw [24 x i8], ptr %i.epl, i64 %.01425.i.i.i82.i ; 3 uses
  %i.epn = getelementptr inbounds nuw i8, ptr %i.epm, i64 8
  %i.epo = load i64, ptr %i.epn, align 8, !tbaa !54
  %i.epp = icmp eq i64 %i.epo, 12
  br i1 %i.epp, label %.lr.ph.i.preheader.i.i.i85.i, label %tg3json__memcmp_fallback.exit.i.i.i83.i

.lr.ph.i.preheader.i.i.i85.i:                     ; preds = %.lr.ph.split.i.i.i81.i
  %i.epq = load ptr, ptr %i.epm, align 8, !tbaa !51 ; 12 uses
  %i.epr = load i8, ptr %i.epq, align 1, !tbaa !12
  %.not14.i.i.i.i90.i = icmp eq i8 %i.epr, 111
  br i1 %.not14.i.i.i.i90.i, label %.lr.ph.i.i.i.i86.1.i, label %tg3json__memcmp_fallback.exit.i.i.i83.i

.lr.ph.i.i.i.i86.1.i:                             ; preds = %.lr.ph.i.preheader.i.i.i85.i
  %i.eps = getelementptr inbounds nuw i8, ptr %i.epq, i64 1
  %i.ept = load i8, ptr %i.eps, align 1, !tbaa !12
  %.not14.i.i.i.i90.1.i = icmp eq i8 %i.ept, 114
  br i1 %.not14.i.i.i.i90.1.i, label %.lr.ph.i.i.i.i86.2.i, label %tg3json__memcmp_fallback.exit.i.i.i83.i

.lr.ph.i.i.i.i86.2.i:                             ; preds = %.lr.ph.i.i.i.i86.1.i
  %i.epu = getelementptr inbounds nuw i8, ptr %i.epq, i64 2
  %i.epv = load i8, ptr %i.epu, align 1, !tbaa !12
  %.not14.i.i.i.i90.2.i = icmp eq i8 %i.epv, 116
  br i1 %.not14.i.i.i.i90.2.i, label %.lr.ph.i.i.i.i86.3.i, label %tg3json__memcmp_fallback.exit.i.i.i83.i

.lr.ph.i.i.i.i86.3.i:                             ; preds = %.lr.ph.i.i.i.i86.2.i
  %i.epw = getelementptr inbounds nuw i8, ptr %i.epq, i64 3
  %i.epx = load i8, ptr %i.epw, align 1, !tbaa !12
  %.not14.i.i.i.i90.3.i = icmp eq i8 %i.epx, 104
  br i1 %.not14.i.i.i.i90.3.i, label %.lr.ph.i.i.i.i86.4.i, label %tg3json__memcmp_fallback.exit.i.i.i83.i

.lr.ph.i.i.i.i86.4.i:                             ; preds = %.lr.ph.i.i.i.i86.3.i
  %i.epy = getelementptr inbounds nuw i8, ptr %i.epq, i64 4
  %i.epz = load i8, ptr %i.epy, align 1, !tbaa !12
  %.not14.i.i.i.i90.4.i = icmp eq i8 %i.epz, 111
  br i1 %.not14.i.i.i.i90.4.i, label %.lr.ph.i.i.i.i86.5.i, label %tg3json__memcmp_fallback.exit.i.i.i83.i

.lr.ph.i.i.i.i86.5.i:                             ; preds = %.lr.ph.i.i.i.i86.4.i
  %i.eqa = getelementptr inbounds nuw i8, ptr %i.epq, i64 5
  %i.eqb = load i8, ptr %i.eqa, align 1, !tbaa !12
  %.not14.i.i.i.i90.5.i = icmp eq i8 %i.eqb, 103
  br i1 %.not14.i.i.i.i90.5.i, label %.lr.ph.i.i.i.i86.6.i, label %tg3json__memcmp_fallback.exit.i.i.i83.i

.lr.ph.i.i.i.i86.6.i:                             ; preds = %.lr.ph.i.i.i.i86.5.i
  %i.eqc = getelementptr inbounds nuw i8, ptr %i.epq, i64 6
  %i.eqd = load i8, ptr %i.eqc, align 1, !tbaa !12
  %.not14.i.i.i.i90.6.i = icmp eq i8 %i.eqd, 114
  br i1 %.not14.i.i.i.i90.6.i, label %.lr.ph.i.i.i.i86.7.i, label %tg3json__memcmp_fallback.exit.i.i.i83.i

.lr.ph.i.i.i.i86.7.i:                             ; preds = %.lr.ph.i.i.i.i86.6.i
  %i.eqe = getelementptr inbounds nuw i8, ptr %i.epq, i64 7
  %i.eqf = load i8, ptr %i.eqe, align 1, !tbaa !12
  %.not14.i.i.i.i90.7.i = icmp eq i8 %i.eqf, 97
  br i1 %.not14.i.i.i.i90.7.i, label %.lr.ph.i.i.i.i86.8.i, label %tg3json__memcmp_fallback.exit.i.i.i83.i

.lr.ph.i.i.i.i86.8.i:                             ; preds = %.lr.ph.i.i.i.i86.7.i
  %i.eqg = getelementptr inbounds nuw i8, ptr %i.epq, i64 8
  %i.eqh = load i8, ptr %i.eqg, align 1, !tbaa !12
  %.not14.i.i.i.i90.8.i = icmp eq i8 %i.eqh, 112
  br i1 %.not14.i.i.i.i90.8.i, label %.lr.ph.i.i.i.i86.9.i, label %tg3json__memcmp_fallback.exit.i.i.i83.i

.lr.ph.i.i.i.i86.9.i:                             ; preds = %.lr.ph.i.i.i.i86.8.i
  %i.eqi = getelementptr inbounds nuw i8, ptr %i.epq, i64 9
  %i.eqj = load i8, ptr %i.eqi, align 1, !tbaa !12
  %.not14.i.i.i.i90.9.i = icmp eq i8 %i.eqj, 104
  br i1 %.not14.i.i.i.i90.9.i, label %.lr.ph.i.i.i.i86.10.i, label %tg3json__memcmp_fallback.exit.i.i.i83.i

.lr.ph.i.i.i.i86.10.i:                            ; preds = %.lr.ph.i.i.i.i86.9.i
  %i.eqk = getelementptr inbounds nuw i8, ptr %i.epq, i64 10
  %i.eql = load i8, ptr %i.eqk, align 1, !tbaa !12
  %.not14.i.i.i.i90.10.i = icmp eq i8 %i.eql, 105
  br i1 %.not14.i.i.i.i90.10.i, label %.lr.ph.i.i.i.i86.11.i, label %tg3json__memcmp_fallback.exit.i.i.i83.i

.lr.ph.i.i.i.i86.11.i:                            ; preds = %.lr.ph.i.i.i.i86.10.i
  %i.eqm = getelementptr inbounds nuw i8, ptr %i.epq, i64 11
  %i.eqn = load i8, ptr %i.eqm, align 1, !tbaa !12
  %.not14.i.i.i.i90.11.i = icmp eq i8 %i.eqn, 99
  br i1 %.not14.i.i.i.i90.11.i, label %tg3__json_get.exit97.i, label %tg3json__memcmp_fallback.exit.i.i.i83.i

tg3json__memcmp_fallback.exit.i.i.i83.i:          ; preds = %.lr.ph.i.i.i.i86.11.i, %.lr.ph.i.i.i.i86.10.i, %.lr.ph.i.i.i.i86.9.i, %.lr.ph.i.i.i.i86.8.i, %.lr.ph.i.i.i.i86.7.i, %.lr.ph.i.i.i.i86.6.i, %.lr.ph.i.i.i.i86.5.i, %.lr.ph.i.i.i.i86.4.i, %.lr.ph.i.i.i.i86.3.i, %.lr.ph.i.i.i.i86.2.i, %.lr.ph.i.i.i.i86.1.i, %.lr.ph.i.preheader.i.i.i85.i, %.lr.ph.split.i.i.i81.i
  %i.eqo = add nuw i64 %.01425.i.i.i82.i, 1       ; 2 uses
  %exitcond.not.i.i.i84.i = icmp eq i64 %i.eqo, %i.epj
  br i1 %exitcond.not.i.i.i84.i, label %tg3__parse_camera.exit, label %.lr.ph.split.i.i.i81.i, !llvm.loop !83

tg3__json_get.exit97.i:                           ; preds = %.lr.ph.i.i.i.i86.11.i
  %i.eqp = getelementptr inbounds nuw i8, ptr %i.epm, i64 16
  %i.eqq = load ptr, ptr %i.eqp, align 8, !tbaa !55 ; 7 uses
  %.not.i98.i1861 = icmp eq ptr %i.eqq, null
  br i1 %.not.i98.i1861, label %tg3__parse_camera.exit, label %tg3__json_is_object.exit99.i

tg3__json_is_object.exit99.i:                     ; preds = %tg3__json_get.exit97.i
  %i.eqr = load i32, ptr %i.eqq, align 8, !tbaa !13
  %.not124.i = icmp eq i32 %i.eqr, 6
  br i1 %.not124.i, label %bb.pb, label %tg3__parse_camera.exit

bb.pb:                                            ; preds = %tg3__json_is_object.exit99.i
  %i.eqs = getelementptr inbounds nuw i8, ptr %i.emx, i64 120
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull %i.eqq, ptr noundef nonnull @.str.193, ptr noundef %i.eqs, i32 noundef 1, ptr noundef nonnull @.str.194) #20
  %i.eqt = getelementptr inbounds nuw i8, ptr %i.emx, i64 128
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull %i.eqq, ptr noundef nonnull @.str.195, ptr noundef %i.eqt, i32 noundef 1, ptr noundef nonnull @.str.194) #20
  %i.equ = getelementptr inbounds nuw i8, ptr %i.emx, i64 136
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull %i.eqq, ptr noundef nonnull @.str.190, ptr noundef %i.equ, i32 noundef 1, ptr noundef nonnull @.str.194) #20
  %i.eqv = getelementptr inbounds nuw i8, ptr %i.emx, i64 144
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull %i.eqq, ptr noundef nonnull @.str.191, ptr noundef %i.eqv, i32 noundef 1, ptr noundef nonnull @.str.194) #20
  br label %tg3__json_is_object.exit.thread.sink.split.i

tg3__json_is_object.exit.thread.sink.split.i:     ; preds = %bb.pb, %bb.oz
  %.sink159.i = phi i64 [ 152, %bb.pb ], [ 64, %bb.oz ]
  %.sink.i = phi ptr [ %i.eqq, %bb.pb ], [ %i.eow, %bb.oz ]
  %i.eqw = getelementptr inbounds nuw i8, ptr %i.emx, i64 %.sink159.i
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull %.sink.i, ptr noundef %i.eqw) #20
  br label %tg3__parse_camera.exit

tg3__parse_camera.exit:                           ; preds = %tg3json__memcmp_fallback.exit.i.i.i83.i, %tg3json__memcmp_fallback.exit.i.i.i.i1873, %iter.check4475, %tg3__strlen.exit.i.i1859, %tg3_str_equals_cstr.exit.i, %bb.oy, %.preheader.i.i.i.i1868, %tg3__json_get.exit.i1897, %tg3__json_is_object.exit.i1898, %tg3_str_equals_cstr.exit69.i, %bb.pa, %.preheader.i.i.i77.i, %tg3__json_get.exit97.i, %tg3__json_is_object.exit99.i, %tg3__json_is_object.exit.thread.sink.split.i
  %i.eqx = getelementptr inbounds nuw i8, ptr %i.emx, i64 208
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ems, ptr noundef %i.eqx) #20
  br label %bb.pc

bb.pc:                                            ; preds = %tg3__parse_camera.exit, %tg3__json_is_object.exit1853.thread
  %i.eqy = add nuw i64 %.06462980, 1              ; 2 uses
  %exitcond3220.not = icmp eq i64 %i.eqy, %i.ekx
  br i1 %exitcond3220.not, label %bb.pd, label %bb.ow, !llvm.loop !473

bb.pd:                                            ; preds = %bb.pc
  %i.eqz = getelementptr inbounds nuw i8, ptr %2, i64 184
  store ptr %i.emm, ptr %i.eqz, align 8, !tbaa !474
  %i.era = trunc i64 %i.ekx to i32
  %i.erb = getelementptr inbounds nuw i8, ptr %2, i64 192
  store i32 %i.era, ptr %i.erb, align 8, !tbaa !475
  br label %tg3__json_is_array.exit1826.thread

tg3__json_is_array.exit1826.thread:               ; preds = %tg3json__memcmp_fallback.exit.i.i1810, %bb.ov, %bb.ot, %bb.ou, %bb.op, %bb.oq, %.preheader.i.i1804, %.critedge900, %tg3json_object_get.exit1824, %tg3json_array_size.exit1830, %bb.pd, %tg3__arena_alloc.exit1846, %tg3__json_is_array.exit1826
  %i.erc = load ptr, ptr %i.dg, align 8, !tbaa !237 ; 2 uses
  %.not833 = icmp eq ptr %i.erc, null
  br i1 %.not833, label %.critedge902, label %bb.pe

bb.pe:                                            ; preds = %tg3__json_is_array.exit1826.thread
  %i.erd = getelementptr inbounds nuw i8, ptr %i.erc, i64 96
  %i.ere = load ptr, ptr %i.erd, align 8, !tbaa !476
  %.not834 = icmp eq ptr %i.ere, null
  br i1 %.not834, label %.critedge902, label %.preheader2761.a

.preheader2761.a:                                 ; preds = %bb.pe
  %i.erf = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.erg = load i32, ptr %i.erf, align 8, !tbaa !475
  %.not8362982.not = icmp eq i32 %i.erg, 0
  br i1 %.not8362982.not, label %.critedge902, label %.lr.ph2984

.lr.ph2984:                                       ; preds = %.preheader2761.a
  %i.erh = getelementptr inbounds nuw i8, ptr %2, i64 184
  br label %bb.pg

bb.pf:                                            ; preds = %bb.pg
  %indvars.iv.next3222 = add nuw nsw i64 %indvars.iv3221, 1 ; 2 uses
  %i.eri = load i32, ptr %i.erf, align 8, !tbaa !475
  %i.erj = zext i32 %i.eri to i64
  %.not836 = icmp samesign ult i64 %indvars.iv.next3222, %i.erj
  br i1 %.not836, label %bb.pg, label %.critedge902, !llvm.loop !477

bb.pg:                                            ; preds = %.lr.ph2984, %bb.pf
  %indvars.iv3221 = phi i64 [ 0, %.lr.ph2984 ], [ %indvars.iv.next3222, %bb.pf ] ; 3 uses
  %i.erk = load ptr, ptr %i.dg, align 8, !tbaa !237 ; 2 uses
  %i.erl = getelementptr inbounds nuw i8, ptr %i.erk, i64 96
  %i.erm = load ptr, ptr %i.erl, align 8, !tbaa !476
  %i.ern = load ptr, ptr %i.erh, align 8, !tbaa !474
  %i.ero = getelementptr inbounds nuw [264 x i8], ptr %i.ern, i64 %indvars.iv3221
  %i.erp = getelementptr inbounds nuw i8, ptr %i.erk, i64 120
  %i.erq = load ptr, ptr %i.erp, align 8, !tbaa !240
  %i.err = trunc nuw i64 %indvars.iv3221 to i32
  %i.ers = call i32 %i.erm(ptr noundef %i.ero, i32 noundef %i.err, ptr noundef %i.erq) #21
  %.not835 = icmp eq i32 %i.ers, 1
  br i1 %.not835, label %.critedge908, label %bb.pf

.critedge902:                                     ; preds = %bb.pf, %.preheader2761.a, %tg3__json_is_array.exit1826.thread, %bb.pe
  %i.ert = load i32, ptr %1, align 8, !tbaa !13
  %.not18.i.i1903 = icmp eq i32 %i.ert, 6
  br i1 %.not18.i.i1903, label %.preheader.i.i1905, label %tg3__json_is_array.exit1927.thread

.preheader.i.i1905:                               ; preds = %.critedge902
  %i.eru = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.erv = load i64, ptr %i.eru, align 8, !tbaa !12 ; 2 uses
  %.not27.i.i1906 = icmp eq i64 %i.erv, 0
end_hunk_1
begin_hunk_2_@tg3__serialize_camera:bb.a
  %i.bs = load i32, ptr %i.br, align 8            ; 4 uses
  %i.bt = icmp eq ptr %i.bp, null
  %i.bu = icmp eq i32 %i.bs, 0
  %or.cond.i48 = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %or.cond.i48, label %tg3__serialize_str.exit65.thread, label %bb.c

bb.c:                                             ; preds = %tg3__serialize_str.exit.thread
  %i.bv = zext i32 %i.bs to i64                   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <4 x i8> zeroinitializer, ptr %i.bw, align 4, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 4, ptr %10, align 8, !tbaa !13
  %i.bz = and i64 %i.bv, 4294967288
  %i.ca = add nuw nsw i64 %i.bz, 16
  %i.cb = load i64, ptr @test_heap_used, align 8, !tbaa !21 ; 3 uses
  %i.cc = add i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, 524288
  br i1 %i.cd, label %tg3__serialize_str.exit65.thread150, label %iter.check36

iter.check36:                                     ; preds = %bb.c
  %i.ce = add nuw nsw i64 %i.bv, 1
  %i.cf = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.cb ; 2 uses
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !21
  store i64 %i.cc, ptr @test_heap_used, align 8, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 8 uses
  %min.iters.check19 = icmp ult i32 %i.bs, 4
  br i1 %min.iters.check19, label %.lr.ph.i.i.i.i.i50.preheader, label %vector.memcheck17

vector.memcheck17:                                ; preds = %iter.check36
  %i.ch = add i64 %i.cb, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.ci = sub i64 %i.bq, %i.ch
  %diff.check18 = icmp ugt i64 %i.ci, -32
  br i1 %diff.check18, label %.lr.ph.i.i.i.i.i50.preheader, label %vector.main.loop.iter.check20

vector.main.loop.iter.check20:                    ; preds = %vector.memcheck17
  %min.iters.check21 = icmp ult i32 %i.bs, 32
  br i1 %min.iters.check21, label %vec.epilog.ph40, label %vector.ph22

vector.ph22:                                      ; preds = %vector.main.loop.iter.check20
  %i.cj = and i64 %i.bv, 28
  %n.vec23 = and i64 %i.bv, 4294967264            ; 5 uses
  %i.ck = getelementptr i8, ptr %i.bp, i64 %n.vec23
  %i.cl = getelementptr i8, ptr %i.cg, i64 %n.vec23
  %i.cm = and i64 %i.bv, 31
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph22
  %index25 = phi i64 [ 0, %vector.ph22 ], [ %index.next30, %vector.body24 ] ; 3 uses
  %next.gep26 = getelementptr i8, ptr %i.bp, i64 %index25 ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.cg, i64 %index25 ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load28 = load <16 x i8>, ptr %next.gep26, align 1, !tbaa !12
  %wide.load29 = load <16 x i8>, ptr %i.cn, align 1, !tbaa !12
  %i.co = getelementptr i8, ptr %next.gep27, i64 16
  store <16 x i8> %wide.load28, ptr %next.gep27, align 1, !tbaa !12
  store <16 x i8> %wide.load29, ptr %i.co, align 1, !tbaa !12
  %index.next30 = add nuw i64 %index25, 32        ; 2 uses
  %i.cp = icmp eq i64 %index.next30, %n.vec23
  br i1 %i.cp, label %middle.block31, label %vector.body24, !llvm.loop !853

middle.block31:                                   ; preds = %vector.body24
  %cmp.n32 = icmp eq i64 %n.vec23, %i.bv
  br i1 %cmp.n32, label %.loopexit.i.i55, label %vec.epilog.iter.check38

vec.epilog.iter.check38:                          ; preds = %middle.block31
  %min.epilog.iters.check39 = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check39, label %.lr.ph.i.i.i.i.i50.preheader, label %vec.epilog.ph40, !prof !36

vec.epilog.ph40:                                  ; preds = %vector.main.loop.iter.check20, %vec.epilog.iter.check38
  %vec.epilog.resume.val33 = phi i64 [ %n.vec23, %vec.epilog.iter.check38 ], [ 0, %vector.main.loop.iter.check20 ]
  %n.vec41 = and i64 %i.bv, 4294967292            ; 4 uses
  %i.cq = getelementptr i8, ptr %i.bp, i64 %n.vec41
  %i.cr = getelementptr i8, ptr %i.cg, i64 %n.vec41
  %i.cs = and i64 %i.bv, 3
  br label %vec.epilog.vector.body42

vec.epilog.vector.body42:                         ; preds = %vec.epilog.vector.body42, %vec.epilog.ph40
  %index43 = phi i64 [ %vec.epilog.resume.val33, %vec.epilog.ph40 ], [ %index.next47, %vec.epilog.vector.body42 ] ; 3 uses
  %next.gep44 = getelementptr i8, ptr %i.bp, i64 %index43
  %next.gep45 = getelementptr i8, ptr %i.cg, i64 %index43
  %wide.load46 = load <4 x i8>, ptr %next.gep44, align 1, !tbaa !12
  store <4 x i8> %wide.load46, ptr %next.gep45, align 1, !tbaa !12
  %index.next47 = add nuw i64 %index43, 4         ; 2 uses
  %i.ct = icmp eq i64 %index.next47, %n.vec41
  br i1 %i.ct, label %vec.epilog.middle.block48, label %vec.epilog.vector.body42, !llvm.loop !854

vec.epilog.middle.block48:                        ; preds = %vec.epilog.vector.body42
  %cmp.n49 = icmp eq i64 %n.vec41, %i.bv
  br i1 %cmp.n49, label %.loopexit.i.i55, label %.lr.ph.i.i.i.i.i50.preheader

.lr.ph.i.i.i.i.i50.preheader:                     ; preds = %vector.memcheck17, %iter.check36, %vec.epilog.iter.check38, %vec.epilog.middle.block48
  %.010.i.i.i.i.i51.ph = phi ptr [ %i.bp, %iter.check36 ], [ %i.bp, %vector.memcheck17 ], [ %i.ck, %vec.epilog.iter.check38 ], [ %i.cq, %vec.epilog.middle.block48 ] ; 2 uses
  %.059.i.i.i.i.i52.ph = phi ptr [ %i.cg, %iter.check36 ], [ %i.cg, %vector.memcheck17 ], [ %i.cl, %vec.epilog.iter.check38 ], [ %i.cr, %vec.epilog.middle.block48 ] ; 2 uses
  %.068.i.i.i.i.i53.ph = phi i64 [ %i.bv, %iter.check36 ], [ %i.bv, %vector.memcheck17 ], [ %i.cm, %vec.epilog.iter.check38 ], [ %i.cs, %vec.epilog.middle.block48 ] ; 4 uses
  %i.cu = add nsw i64 %.068.i.i.i.i.i53.ph, -1
  %xtraiter53 = and i64 %.068.i.i.i.i.i53.ph, 7   ; 2 uses
  %lcmp.mod54.not = icmp eq i64 %xtraiter53, 0
  br i1 %lcmp.mod54.not, label %.lr.ph.i.i.i.i.i50.prol.loopexit, label %.lr.ph.i.i.i.i.i50.prol

.lr.ph.i.i.i.i.i50.prol:                          ; preds = %.lr.ph.i.i.i.i.i50.preheader, %.lr.ph.i.i.i.i.i50.prol
  %.010.i.i.i.i.i51.prol = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i50.prol ], [ %.010.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i50.preheader ] ; 2 uses
  %.059.i.i.i.i.i52.prol = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i50.prol ], [ %.059.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i50.preheader ] ; 2 uses
  %.068.i.i.i.i.i53.prol = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i50.prol ], [ %.068.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i50.preheader ]
  %prol.iter55 = phi i64 [ %prol.iter55.next, %.lr.ph.i.i.i.i.i50.prol ], [ 0, %.lr.ph.i.i.i.i.i50.preheader ]
  %i.cv = add nsw i64 %.068.i.i.i.i.i53.prol, -1  ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i51.prol, i64 1 ; 2 uses
  %i.cx = load i8, ptr %.010.i.i.i.i.i51.prol, align 1, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i52.prol, i64 1 ; 2 uses
  store i8 %i.cx, ptr %.059.i.i.i.i.i52.prol, align 1, !tbaa !12
  %prol.iter55.next = add i64 %prol.iter55, 1     ; 2 uses
  %prol.iter55.cmp.not = icmp eq i64 %prol.iter55.next, %xtraiter53
  br i1 %prol.iter55.cmp.not, label %.lr.ph.i.i.i.i.i50.prol.loopexit, label %.lr.ph.i.i.i.i.i50.prol, !llvm.loop !855

.lr.ph.i.i.i.i.i50.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i50.prol, %.lr.ph.i.i.i.i.i50.preheader
  %.010.i.i.i.i.i51.unr = phi ptr [ %.010.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i50.preheader ], [ %i.cw, %.lr.ph.i.i.i.i.i50.prol ]
  %.059.i.i.i.i.i52.unr = phi ptr [ %.059.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i50.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i50.prol ]
  %.068.i.i.i.i.i53.unr = phi i64 [ %.068.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i50.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i50.prol ]
  %i.cz = icmp ult i64 %i.cu, 7
  br i1 %i.cz, label %.loopexit.i.i55, label %.lr.ph.i.i.i.i.i50

.lr.ph.i.i.i.i.i50:                               ; preds = %.lr.ph.i.i.i.i.i50.prol.loopexit, %.lr.ph.i.i.i.i.i50
  %.010.i.i.i.i.i51 = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i50 ], [ %.010.i.i.i.i.i51.unr, %.lr.ph.i.i.i.i.i50.prol.loopexit ] ; 9 uses
  %.059.i.i.i.i.i52 = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i50 ], [ %.059.i.i.i.i.i52.unr, %.lr.ph.i.i.i.i.i50.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i.i53 = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i50 ], [ %.068.i.i.i.i.i53.unr, %.lr.ph.i.i.i.i.i50.prol.loopexit ]
  %i.da = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i51, i64 1
  %i.db = load i8, ptr %.010.i.i.i.i.i51, align 1, !tbaa !12
  %i.dc = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i52, i64 1
  store i8 %i.db, ptr %.059.i.i.i.i.i52, align 1, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i51, i64 2
  %i.de = load i8, ptr %i.da, align 1, !tbaa !12
  %i.df = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i52, i64 2
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !12
  %i.dg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i51, i64 3
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !12
  %i.di = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i52, i64 3
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !12
  %i.dj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i51, i64 4
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !12
  %i.dl = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i52, i64 4
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !12
  %i.dm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i51, i64 5
  %i.dn = load i8, ptr %i.dj, align 1, !tbaa !12
  %i.do = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i52, i64 5
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i51, i64 6
  %i.dq = load i8, ptr %i.dm, align 1, !tbaa !12
  %i.dr = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i52, i64 6
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !12
  %i.ds = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i51, i64 7
  %i.dt = load i8, ptr %i.dp, align 1, !tbaa !12
  %i.du = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i52, i64 7
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !12
  %i.dv = add nsw i64 %.068.i.i.i.i.i53, -8       ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i51, i64 8
  %i.dx = load i8, ptr %i.ds, align 1, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.i52, i64 8
  store i8 %i.dx, ptr %i.du, align 1, !tbaa !12
  %.not.i.i.i.i.i54.7 = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i.i.i.i54.7, label %.loopexit.i.i55, label %.lr.ph.i.i.i.i.i50, !llvm.loop !856

.loopexit.i.i55:                                  ; preds = %.lr.ph.i.i.i.i.i50.prol.loopexit, %.lr.ph.i.i.i.i.i50, %vec.epilog.middle.block48, %middle.block31
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bv
  store i8 0, ptr %i.dz, align 1, !tbaa !12
  store ptr %i.cg, ptr %i.bx, align 8, !tbaa !12
  store i64 %i.bv, ptr %i.by, align 8, !tbaa !12
  %i.ea = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %1, ptr noundef nonnull @.str.91, i64 noundef 4, ptr noundef nonnull %10) #20
  %.not.i5.i.i60 = icmp eq i32 %i.ea, 0
  br i1 %.not.i5.i.i60, label %tg3json_object_set_take.exit.thread.i.i.i64, label %tg3__serialize_str.exit65

tg3json_object_set_take.exit.thread.i.i.i64:      ; preds = %.loopexit.i.i55
  call void @tg3json_value_free(ptr noundef nonnull %10) #20
  br label %tg3__serialize_str.exit65.thread150

tg3__serialize_str.exit65.thread150:              ; preds = %tg3json_object_set_take.exit.thread.i.i.i64, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.j

tg3__serialize_str.exit65:                        ; preds = %.loopexit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %.pre = load ptr, ptr %i.bo, align 8, !tbaa !469
  br label %tg3__serialize_str.exit65.thread

tg3__serialize_str.exit65.thread:                 ; preds = %tg3__serialize_str.exit.thread, %tg3__serialize_str.exit65
  %i.eb = phi ptr [ %i.bp, %tg3__serialize_str.exit.thread ], [ %.pre, %tg3__serialize_str.exit65 ] ; 3 uses
  %.not31 = icmp eq ptr %i.eb, null
  br i1 %.not31, label %tg3__json_set_take.exit, label %tg3__strlen.exit.i

tg3__strlen.exit.i:                               ; preds = %tg3__serialize_str.exit65.thread
  %i.ec = load i32, ptr %i.br, align 8
  switch i32 %i.ec, label %tg3__json_set_take.exit [
    i32 11, label %.preheader
    i32 12, label %.preheader1
  ]

.preheader:                                       ; preds = %tg3__strlen.exit.i, %.preheader
  %.in.i.i = phi i64 [ %i.ef, %.preheader ], [ 11, %tg3__strlen.exit.i ]
  %.017.i.i = phi ptr [ %i.eh, %.preheader ], [ @.str.186, %tg3__strlen.exit.i ] ; 2 uses
  %.0916.i.i = phi ptr [ %i.eg, %.preheader ], [ %i.eb, %tg3__strlen.exit.i ] ; 2 uses
  %i.ed = load i8, ptr %.0916.i.i, align 1, !tbaa !12 ; 2 uses
  %i.ee = load i8, ptr %.017.i.i, align 1, !tbaa !12 ; 2 uses
  %.not14.i.not.i = icmp ne i8 %i.ed, %i.ee
  %i.ef = add nsw i64 %.in.i.i, -1                ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0916.i.i, i64 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 1
  %.not.i10.i = icmp eq i64 %i.ef, 0
  %or.cond.not.i = select i1 %.not14.i.not.i, i1 true, i1 %.not.i10.i
  br i1 %or.cond.not.i, label %tg3_str_equals_cstr.exit, label %.preheader, !llvm.loop !168

tg3_str_equals_cstr.exit:                         ; preds = %.preheader
  %.not14.i.i.not = icmp eq i8 %i.ed, %i.ee
  br i1 %.not14.i.i.not, label %tg3_str_equals_cstr.exit.thread156, label %tg3__json_set_take.exit

tg3_str_equals_cstr.exit.thread156:               ; preds = %tg3_str_equals_cstr.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %12, i64 20
  store <16 x i8> zeroinitializer, ptr %i.ei, align 4, !tbaa !12
  store <4 x i8> zeroinitializer, ptr %i.ej, align 4, !tbaa !12
  store i32 6, ptr %12, align 8, !tbaa !13
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.el = load double, ptr %i.ek, align 8, !tbaa !857 ; 2 uses
  %i.em = fcmp ogt double %i.el, 0.000000e+00
  br i1 %i.em, label %tg3json_object_set_take.exit.i.i, label %tg3json_object_set_take.exit.i.i74

tg3json_object_set_take.exit.i.i:                 ; preds = %tg3_str_equals_cstr.exit.thread156
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 4
  store <4 x i8> zeroinitializer, ptr %i.en, align 4, !tbaa !12
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 16
  store <8 x i8> zeroinitializer, ptr %i.eo, align 8, !tbaa !12
  store i32 3, ptr %9, align 8, !tbaa !13
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %i.el, ptr %i.ep, align 8, !tbaa !12
  %i.eq = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %12, ptr noundef nonnull @.str.187, i64 noundef 11, ptr noundef nonnull %9) #20
  %.not.i.i69 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i69, label %tg3__json_set_real.exit.thread, label %tg3__json_set_real.exit

tg3__json_set_real.exit.thread:                   ; preds = %tg3json_object_set_take.exit.i.i
  call void @tg3json_value_free(ptr noundef nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.f

tg3__json_set_real.exit:                          ; preds = %tg3json_object_set_take.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %tg3json_object_set_take.exit.i.i74

tg3json_object_set_take.exit.i.i74:               ; preds = %tg3__json_set_real.exit, %tg3_str_equals_cstr.exit.thread156
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.es = load double, ptr %i.er, align 8, !tbaa !858
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 4
  store <4 x i8> zeroinitializer, ptr %i.et, align 4, !tbaa !12
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 16
  store <8 x i8> zeroinitializer, ptr %i.eu, align 8, !tbaa !12
  store i32 3, ptr %8, align 8, !tbaa !13
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.es, ptr %i.ev, align 8, !tbaa !12
  %i.ew = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %12, ptr noundef nonnull @.str.189, i64 noundef 4, ptr noundef nonnull %8) #20
  %.not.i.i75 = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i75, label %tg3__json_set_real.exit78.thread, label %bb.d

tg3__json_set_real.exit78.thread:                 ; preds = %tg3json_object_set_take.exit.i.i74
  call void @tg3json_value_free(ptr noundef nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.f

bb.d:                                             ; preds = %tg3json_object_set_take.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !859 ; 2 uses
  %i.ez = fcmp ogt double %i.ey, 0.000000e+00
  br i1 %i.ez, label %tg3json_object_set_take.exit.i.i82, label %tg3json_object_set_take.exit.i.i90

tg3json_object_set_take.exit.i.i82:               ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 4
  store <4 x i8> zeroinitializer, ptr %i.fa, align 4, !tbaa !12
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <8 x i8> zeroinitializer, ptr %i.fb, align 8, !tbaa !12
  store i32 3, ptr %7, align 8, !tbaa !13
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.ey, ptr %i.fc, align 8, !tbaa !12
  %i.fd = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %12, ptr noundef nonnull @.str.190, i64 noundef 4, ptr noundef nonnull %7) #20
  %.not.i.i83 = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i83, label %tg3__json_set_real.exit86.thread, label %tg3__json_set_real.exit86

tg3__json_set_real.exit86.thread:                 ; preds = %tg3json_object_set_take.exit.i.i82
  call void @tg3json_value_free(ptr noundef nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.f

tg3__json_set_real.exit86:                        ; preds = %tg3json_object_set_take.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %tg3json_object_set_take.exit.i.i90

tg3json_object_set_take.exit.i.i90:               ; preds = %tg3__json_set_real.exit86, %bb.d
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !860
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 4
  store <4 x i8> zeroinitializer, ptr %i.fg, align 4, !tbaa !12
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <8 x i8> zeroinitializer, ptr %i.fh, align 8, !tbaa !12
  store i32 3, ptr %6, align 8, !tbaa !13
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %i.ff, ptr %i.fi, align 8, !tbaa !12
  %i.fj = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %12, ptr noundef nonnull @.str.191, i64 noundef 5, ptr noundef nonnull %6) #20
  %.not.i.i91 = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i91, label %tg3__json_set_real.exit94.thread, label %bb.e

tg3__json_set_real.exit94.thread:                 ; preds = %tg3json_object_set_take.exit.i.i90
  call void @tg3json_value_free(ptr noundef nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.f

bb.e:                                             ; preds = %tg3json_object_set_take.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fl = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %12, ptr noundef nonnull %i.fk) #20
  %.not45 = icmp eq i32 %i.fl, 0
  br i1 %.not45, label %bb.f, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.e
  %i.fm = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %1, ptr noundef nonnull @.str.186, i64 noundef 11, ptr noundef nonnull %12) #20
  %.not.i = icmp eq i32 %i.fm, 0
  br i1 %.not.i, label %tg3__json_set_take.exit.thread, label %tg3__json_set_take.exit

tg3__json_set_take.exit.thread:                   ; preds = %.preheader.i.i.preheader
  call void @tg3json_value_free(ptr noundef nonnull %12) #20
  br label %bb.f

bb.f:                                             ; preds = %tg3__json_set_take.exit.thread, %tg3__json_set_real.exit94.thread, %tg3__json_set_real.exit86.thread, %tg3__json_set_real.exit78.thread, %tg3__json_set_real.exit.thread, %bb.e
  call void @tg3json_value_free(ptr noundef nonnull %12) #20
  br label %bb.j

.preheader1:                                      ; preds = %tg3__strlen.exit.i, %.preheader1
  %.in.i.i103 = phi i64 [ %i.fp, %.preheader1 ], [ 12, %tg3__strlen.exit.i ]
  %.017.i.i104 = phi ptr [ %i.fr, %.preheader1 ], [ @.str.192, %tg3__strlen.exit.i ] ; 2 uses
  %.0916.i.i105 = phi ptr [ %i.fq, %.preheader1 ], [ %i.eb, %tg3__strlen.exit.i ] ; 2 uses
  %i.fn = load i8, ptr %.0916.i.i105, align 1, !tbaa !12 ; 2 uses
  %i.fo = load i8, ptr %.017.i.i104, align 1, !tbaa !12 ; 2 uses
  %.not14.i.not.i107 = icmp ne i8 %i.fn, %i.fo
  %i.fp = add nsw i64 %.in.i.i103, -1             ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0916.i.i105, i64 1
  %i.fr = getelementptr inbounds nuw i8, ptr %.017.i.i104, i64 1
  %.not.i10.i108 = icmp eq i64 %i.fp, 0
  %or.cond.not.i108 = select i1 %.not14.i.not.i107, i1 true, i1 %.not.i10.i108
  br i1 %or.cond.not.i108, label %tg3_str_equals_cstr.exit109, label %.preheader1, !llvm.loop !168

tg3_str_equals_cstr.exit109:                      ; preds = %.preheader1
  %.not14.i.i111.not = icmp eq i8 %i.fn, %i.fo
  br i1 %.not14.i.i111.not, label %tg3_str_equals_cstr.exit109.thread173, label %tg3__json_set_take.exit

tg3_str_equals_cstr.exit109.thread173:            ; preds = %tg3_str_equals_cstr.exit109
  %i.fs = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ft = getelementptr inbounds nuw i8, ptr %12, i64 20
  store <16 x i8> zeroinitializer, ptr %i.fs, align 4, !tbaa !12
  store <4 x i8> zeroinitializer, ptr %i.ft, align 4, !tbaa !12
  store i32 6, ptr %12, align 8, !tbaa !13
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !861
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 4
  store <4 x i8> zeroinitializer, ptr %i.fw, align 4, !tbaa !12
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <8 x i8> zeroinitializer, ptr %i.fx, align 8, !tbaa !12
  store i32 3, ptr %5, align 8, !tbaa !13
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.fv, ptr %i.fy, align 8, !tbaa !12
  %i.fz = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %12, ptr noundef nonnull @.str.193, i64 noundef 4, ptr noundef nonnull %5) #20
  %.not.i.i115 = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i115, label %tg3__json_set_real.exit118.thread, label %tg3json_object_set_take.exit.i.i122

tg3__json_set_real.exit118.thread:                ; preds = %tg3_str_equals_cstr.exit109.thread173
  call void @tg3json_value_free(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.i

tg3json_object_set_take.exit.i.i122:              ; preds = %tg3_str_equals_cstr.exit109.thread173
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !862
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 4
  store <4 x i8> zeroinitializer, ptr %i.gc, align 4, !tbaa !12
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <8 x i8> zeroinitializer, ptr %i.gd, align 8, !tbaa !12
  store i32 3, ptr %4, align 8, !tbaa !13
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.gb, ptr %i.ge, align 8, !tbaa !12
  %i.gf = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %12, ptr noundef nonnull @.str.195, i64 noundef 4, ptr noundef nonnull %4) #20
  %.not.i.i123 = icmp eq i32 %i.gf, 0
  br i1 %.not.i.i123, label %tg3__json_set_real.exit126.thread, label %tg3json_object_set_take.exit.i.i130

tg3__json_set_real.exit126.thread:                ; preds = %tg3json_object_set_take.exit.i.i122
  call void @tg3json_value_free(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.i

tg3json_object_set_take.exit.i.i130:              ; preds = %tg3json_object_set_take.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !863
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 4
  store <4 x i8> zeroinitializer, ptr %i.gi, align 4, !tbaa !12
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <8 x i8> zeroinitializer, ptr %i.gj, align 8, !tbaa !12
  store i32 3, ptr %3, align 8, !tbaa !13
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.gh, ptr %i.gk, align 8, !tbaa !12
  %i.gl = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %12, ptr noundef nonnull @.str.190, i64 noundef 4, ptr noundef nonnull %3) #20
  %.not.i.i131 = icmp eq i32 %i.gl, 0
  br i1 %.not.i.i131, label %tg3__json_set_real.exit134.thread, label %tg3json_object_set_take.exit.i.i138

tg3__json_set_real.exit134.thread:                ; preds = %tg3json_object_set_take.exit.i.i130
  call void @tg3json_value_free(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.i

tg3json_object_set_take.exit.i.i138:              ; preds = %tg3json_object_set_take.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !864
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 4
  store <4 x i8> zeroinitializer, ptr %i.go, align 4, !tbaa !12
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <8 x i8> zeroinitializer, ptr %i.gp, align 8, !tbaa !12
  store i32 3, ptr %2, align 8, !tbaa !13
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.gn, ptr %i.gq, align 8, !tbaa !12
  %i.gr = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %12, ptr noundef nonnull @.str.191, i64 noundef 5, ptr noundef nonnull %2) #20
  %.not.i.i139 = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i139, label %tg3__json_set_real.exit142.thread, label %bb.g

tg3__json_set_real.exit142.thread:                ; preds = %tg3json_object_set_take.exit.i.i138
  call void @tg3json_value_free(ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.i

bb.g:                                             ; preds = %tg3json_object_set_take.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.gt = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %12, ptr noundef nonnull %i.gs) #20
  %.not39 = icmp eq i32 %i.gt, 0
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.gu = call fastcc i32 @tg3__json_set_take(ptr noundef nonnull %1, ptr noundef nonnull @.str.192, ptr noundef %12) #20
  %.not40 = icmp eq i32 %i.gu, 0
  br i1 %.not40, label %bb.i, label %tg3__json_set_take.exit

bb.i:                                             ; preds = %tg3__json_set_real.exit142.thread, %tg3__json_set_real.exit134.thread, %tg3__json_set_real.exit126.thread, %tg3__json_set_real.exit118.thread, %bb.h, %bb.g
  call void @tg3json_value_free(ptr noundef nonnull %12) #20
  br label %bb.j

tg3__json_set_take.exit:                          ; preds = %tg3__strlen.exit.i, %tg3_str_equals_cstr.exit, %tg3__serialize_str.exit65.thread, %.preheader.i.i.preheader, %tg3_str_equals_cstr.exit109, %bb.h
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gw = call fastcc i32 @tg3__serialize_extras_ext(ptr noundef %1, ptr noundef nonnull %i.gv) #20
  %.not47 = icmp eq i32 %i.gw, 0
  br i1 %.not47, label %bb.j, label %bb.k

bb.j:                                             ; preds = %tg3__serialize_str.exit65.thread150, %tg3__serialize_str.exit.thread145, %tg3__json_set_take.exit, %bb.i, %bb.f
  call void @tg3json_value_free(ptr noundef nonnull %1) #20
  br label %bb.k

bb.k:                                             ; preds = %tg3__json_set_take.exit, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ 1, %tg3__json_set_take.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 81) i32 @tg3_writer_add_scene(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tg3json_value, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = call fastcc i32 @tg3__serialize_scene(ptr noundef nonnull %1, ptr noundef %2) #20
  %.not6 = icmp eq i32 %i.a, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = call fastcc i32 @tg3__writer_add_item(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef %2) #20
  call void @tg3json_value_free(ptr noundef nonnull %2) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.b, %bb.c ], [ 80, %bb.a ], [ 50, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_scene(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull captures(address_is_null) initializes((0, 24)) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.tg3json_value, align 8      ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  store <16 x i8> zeroinitializer, ptr %i.a, align 1, !tbaa !12
  store <4 x i8> zeroinitializer, ptr %i.b, align 1, !tbaa !12
  store i32 6, ptr %1, align 8, !tbaa !13
  %i.c = load ptr, ptr %0, align 8                ; 8 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp eq ptr %i.c, null
  %i.h = icmp eq i32 %i.f, 0
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.i, label %tg3__serialize_str.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext i32 %i.f to i64                     ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <4 x i8> zeroinitializer, ptr %i.j, align 4, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 4, ptr %2, align 8, !tbaa !13
  %i.m = and i64 %i.i, 4294967288
  %i.n = add nuw nsw i64 %i.m, 16
  %i.o = load i64, ptr @test_heap_used, align 8, !tbaa !21 ; 3 uses
  %i.p = add i64 %i.n, %i.o                       ; 2 uses
  %i.q = icmp ugt i64 %i.p, 524288
  br i1 %i.q, label %tg3__serialize_str.exit.thread13, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.r = add nuw nsw i64 %i.i, 1
  %i.s = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.o ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !21
  store i64 %i.p, ptr @test_heap_used, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 8 uses
  %min.iters.check = icmp ult i32 %i.f, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.u = add i64 %i.o, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.v = sub i64 %i.d, %i.u
  %diff.check = icmp ugt i64 %i.v, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check1 = icmp ult i32 %i.f, 32
  br i1 %min.iters.check1, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %i.i, 28
  %n.vec = and i64 %i.i, 4294967264               ; 5 uses
end_hunk_2
begin_hunk_3_@tg3json__hex4:bb.a
  %or.cond.1 = icmp ult i8 %i.j, 10
  br i1 %or.cond.1, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add i8 %i.h, -97
  %or.cond5.1 = icmp ult i8 %i.k, 6
  br i1 %or.cond5.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add i8 %i.h, -65
  %or.cond8.1 = icmp ult i8 %i.l, 6
  br i1 %or.cond8.1, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.sink38 = phi i32 [ -87, %bb.e ], [ -55, %bb.f ], [ -48, %bb.d ]
  %i.m = add nsw i32 %.sink38, %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12    ; 4 uses
  %i.p = shl nuw nsw i32 %i.f, 8
  %i.q = shl nuw nsw i32 %i.m, 4
  %i.r = or i32 %i.p, %i.q
  %i.s = zext i8 %i.o to i32
  %i.t = add i8 %i.o, -48
  %or.cond.2 = icmp ult i8 %i.t, 10
  br i1 %or.cond.2, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = add i8 %i.o, -97
  %or.cond5.2 = icmp ult i8 %i.u, 6
  br i1 %or.cond5.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = add i8 %i.o, -65
  %or.cond8.2 = icmp ult i8 %i.v, 6
  br i1 %or.cond8.2, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.sink39 = phi i32 [ -87, %bb.h ], [ -55, %bb.i ], [ -48, %bb.g ]
  %i.w = add nsw i32 %.sink39, %i.s
  %.1.2 = or i32 %i.w, %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12    ; 4 uses
  %i.z = shl nuw nsw i32 %.1.2, 4
  %i.aa = zext i8 %i.y to i32
  %i.ab = add i8 %i.y, -48
  %or.cond.3 = icmp ult i8 %i.ab, 10
  br i1 %or.cond.3, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = add i8 %i.y, -97
  %or.cond5.3 = icmp ult i8 %i.ac, 6
  br i1 %or.cond5.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = add i8 %i.y, -65
  %or.cond8.3 = icmp ult i8 %i.ad, 6
  br i1 %or.cond8.3, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink40 = phi i32 [ -87, %bb.k ], [ -55, %bb.l ], [ -48, %bb.j ]
  %i.ae = add nsw i32 %.sink40, %i.aa
  %.1.3 = or i32 %i.ae, %i.z
  store i32 %.1.3, ptr %1, align 4, !tbaa !43
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.f, %bb.i, %bb.l, %bb.m
  %.232 = phi i32 [ 1, %bb.m ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.c ]
  ret i32 %.232
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3json__append_utf8(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %1, 128                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i32 %1 to i8
  %.sroa.0.0.vec.insert = insertelement <4 x i8> <i8 poison, i8 undef, i8 undef, i8 undef>, i8 %i.b, i64 0
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %1, 2048
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i32 %1, 6
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = or disjoint i8 %i.e, -64
  %.sroa.0.0.vec.insert30 = insertelement <4 x i8> <i8 poison, i8 poison, i8 undef, i8 undef>, i8 %i.f, i64 0
  %i.g = trunc i32 %1 to i8
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128
  %.sroa.0.1.vec.insert35 = insertelement <4 x i8> %.sroa.0.0.vec.insert30, i8 %i.i, i64 1
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %1, 65536
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = lshr i32 %1, 12
  %i.l = trunc nuw nsw i32 %i.k to i8
  %i.m = or disjoint i8 %i.l, -32
  %.sroa.0.0.vec.insert32 = insertelement <4 x i8> <i8 poison, i8 poison, i8 poison, i8 undef>, i8 %i.m, i64 0
  %i.n = lshr i32 %1, 6
  %i.o = trunc i32 %i.n to i8
  %i.p = and i8 %i.o, 63
  %i.q = or disjoint i8 %i.p, -128
  %.sroa.0.1.vec.insert = insertelement <4 x i8> %.sroa.0.0.vec.insert32, i8 %i.q, i64 1
  %i.r = trunc i32 %1 to i8
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %.sroa.0.2.vec.insert = insertelement <4 x i8> %.sroa.0.1.vec.insert, i8 %i.t, i64 2
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.u = icmp ult i32 %1, 1114112
  br i1 %i.u, label %bb.h, label %tg3json__buf_append.exit

bb.h:                                             ; preds = %bb.g
  %i.v = lshr i32 %1, 6
  %i.w = lshr i32 %1, 12
  %i.x = lshr i32 %1, 18
  %i.y = trunc i32 %1 to i8
  %i.z = trunc i32 %i.v to i8
  %i.aa = trunc i32 %i.w to i8
  %i.ab = trunc nuw nsw i32 %i.x to i8
  %i.ac = insertelement <4 x i8> poison, i8 %i.ab, i64 0
  %i.ad = insertelement <4 x i8> %i.ac, i8 %i.aa, i64 1
  %i.ae = insertelement <4 x i8> %i.ad, i8 %i.z, i64 2
  %i.af = insertelement <4 x i8> %i.ae, i8 %i.y, i64 3
  %i.ag = and <4 x i8> %i.af, <i8 -1, i8 63, i8 63, i8 63>
  %i.ah = or disjoint <4 x i8> %i.ag, <i8 -16, i8 -128, i8 -128, i8 -128>
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.f, %bb.b
  %.sroa.0.0 = phi <4 x i8> [ %.sroa.0.0.vec.insert, %bb.b ], [ %.sroa.0.1.vec.insert35, %bb.d ], [ %.sroa.0.2.vec.insert, %bb.f ], [ %i.ah, %bb.h ] ; 4 uses
  %.not.i.i.1 = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ false, %bb.f ], [ false, %bb.h ]
  %.not.i.i.2 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ true, %bb.f ], [ false, %bb.h ]
  %.0 = phi i64 [ 1, %bb.b ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.h ] ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !102
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !101
  %i.am = add nuw nsw i64 %.0, 1
  %i.an = add i64 %i.am, %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = tail call fastcc i32 @tg3json__reserve_bytes_parser(ptr noundef %i.ai, ptr noundef %i.aj, i64 noundef 1, i64 noundef %i.an, ptr noundef %i.ao) #20
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %tg3json__buf_append.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !98
  %i.ar = load i64, ptr %i.ak, align 8, !tbaa !101
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar ; 4 uses
  %.sroa.0.0.vec.extract = extractelement <4 x i8> %.sroa.0.0, i64 0
  store i8 %.sroa.0.0.vec.extract, ptr %i.as, align 1, !tbaa !12
  br i1 %i.a, label %tg3json__memcpy_fallback.exit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %.sroa.0.1.vec.extract = extractelement <4 x i8> %.sroa.0.0, i64 1
  store i8 %.sroa.0.1.vec.extract, ptr %i.at, align 1, !tbaa !12
  br i1 %.not.i.i.1, label %tg3json__memcpy_fallback.exit.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %.sroa.0.2.vec.extract = extractelement <4 x i8> %.sroa.0.0, i64 2
  store i8 %.sroa.0.2.vec.extract, ptr %i.au, align 1, !tbaa !12
  br i1 %.not.i.i.2, label %tg3json__memcpy_fallback.exit.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %.sroa.0.3.vec.extract = extractelement <4 x i8> %.sroa.0.0, i64 3
  store i8 %.sroa.0.3.vec.extract, ptr %i.av, align 1, !tbaa !12
  br label %tg3json__memcpy_fallback.exit.i

tg3json__memcpy_fallback.exit.i:                  ; preds = %.lr.ph.i.i.3, %.lr.ph.i.i.2, %.lr.ph.i.i.1, %.lr.ph.i.i
  %i.aw = load i64, ptr %i.ak, align 8, !tbaa !101
  %i.ax = add i64 %i.aw, %.0                      ; 2 uses
  store i64 %i.ax, ptr %i.ak, align 8, !tbaa !101
  %i.ay = load ptr, ptr %i.aj, align 8, !tbaa !98
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  store i8 0, ptr %i.az, align 1, !tbaa !12
  br label %tg3json__buf_append.exit

tg3json__buf_append.exit:                         ; preds = %tg3json__memcpy_fallback.exit.i, %bb.i, %bb.g
  %.026 = phi i32 [ 0, %bb.g ], [ 0, %bb.i ], [ 1, %tg3json__memcpy_fallback.exit.i ]
  ret i32 %.026
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3json__parse_f64_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #11 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 6 uses
  %i.b = icmp ult ptr %0, %1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !12      ; 2 uses
  %i.d = icmp ne i8 %i.c, 45
  %not. = icmp eq i8 %i.c, 45
  %spec.select184.idx = zext i1 %not. to i64
  %spec.select184 = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select184.idx
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not180 = phi i1 [ true, %bb.a ], [ %i.d, %bb.b ] ; 3 uses
  %.0126 = phi ptr [ %0, %bb.a ], [ %spec.select184, %bb.b ] ; 7 uses
  %.0126203 = ptrtoaddr ptr %.0126 to i64         ; 2 uses
  %.not = icmp ult ptr %.0126, %1
  br i1 %.not, label %bb.d, label %bb.an

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %.0126, align 1, !tbaa !12  ; 3 uses
  %i.f = icmp eq i8 %i.e, 48
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.0126, i64 1
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.h = add i8 %i.e, -49
  %or.cond185 = icmp ult i8 %i.h, 9
  br i1 %or.cond185, label %.preheader194.preheader, label %bb.an

.preheader194.preheader:                          ; preds = %bb.f
  %i.i = sub i64 %i.a, %.0126203
  %scevgep = getelementptr i8, ptr %.0126, i64 %i.i
  %i.j = xor i64 %.0126203, -1
  %i.k = getelementptr i8, ptr %.0126, i64 %i.j
  %scevgep204 = getelementptr i8, ptr %i.k, i64 %i.a
  br label %.preheader194

.preheader194:                                    ; preds = %.preheader194.preheader, %bb.l
  %i.l = phi i8 [ %i.z, %bb.l ], [ %i.e, %.preheader194.preheader ]
  %.0144 = phi i32 [ %.1145, %bb.l ], [ 0, %.preheader194.preheader ] ; 3 uses
  %.0138 = phi i64 [ %.1139, %bb.l ], [ 0, %.preheader194.preheader ] ; 3 uses
  %.0132 = phi i32 [ %.1133, %bb.l ], [ 0, %.preheader194.preheader ] ; 4 uses
  %.1127 = phi ptr [ %i.y, %bb.l ], [ %.0126, %.preheader194.preheader ] ; 2 uses
  %.0120 = phi x86_fp80 [ %.1121, %bb.l ], [ 0.000000e+00, %.preheader194.preheader ] ; 3 uses
  %.0117 = phi i32 [ %.1118, %bb.l ], [ 0, %.preheader194.preheader ] ; 4 uses
  %i.m = zext nneg i8 %i.l to i32
  %i.n = add nsw i32 %i.m, -48                    ; 2 uses
  %i.o = icmp slt i32 %.0132, 19
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader194
  %i.p = mul i64 %.0138, 10
  %i.q = zext nneg i32 %i.n to i64
  %i.r = add i64 %i.p, %i.q
  %i.s = add nsw i32 %.0132, 1
  br label %bb.k

bb.h:                                             ; preds = %.preheader194
  %i.t = icmp slt i32 %.0117, 64
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = uitofp nneg i32 %i.n to x86_fp80
  %i.v = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %.0120, x86_fp80 1.000000e+01, x86_fp80 %i.u)
  %i.w = add nsw i32 %.0117, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.x = add nsw i32 %.0144, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.1145 = phi i32 [ %.0144, %bb.g ], [ %.0144, %bb.i ], [ %i.x, %bb.j ] ; 3 uses
  %.1139 = phi i64 [ %i.r, %bb.g ], [ %.0138, %bb.i ], [ %.0138, %bb.j ] ; 3 uses
  %.1133 = phi i32 [ %i.s, %bb.g ], [ %.0132, %bb.i ], [ %.0132, %bb.j ] ; 3 uses
  %.1121 = phi x86_fp80 [ %.0120, %bb.g ], [ %i.v, %bb.i ], [ %.0120, %bb.j ] ; 3 uses
  %.1118 = phi i32 [ %.0117, %bb.g ], [ %i.w, %bb.i ], [ %.0117, %bb.j ] ; 3 uses
  %exitcond.not = icmp eq ptr %.1127, %scevgep204
  br i1 %exitcond.not, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %.1127, i64 1 ; 3 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !12    ; 2 uses
  %i.aa = add i8 %i.z, -48
  %or.cond186 = icmp ult i8 %i.aa, 10
  br i1 %or.cond186, label %.preheader194, label %.critedge, !llvm.loop !896

.critedge:                                        ; preds = %bb.l, %bb.k, %bb.e
  %.0151 = phi i32 [ 0, %bb.e ], [ 1, %bb.k ], [ 1, %bb.l ] ; 3 uses
  %.2146 = phi i32 [ 0, %bb.e ], [ %.1145, %bb.k ], [ %.1145, %bb.l ] ; 4 uses
  %.2140 = phi i64 [ 0, %bb.e ], [ %.1139, %bb.k ], [ %.1139, %bb.l ] ; 3 uses
  %.2134 = phi i32 [ 0, %bb.e ], [ %.1133, %bb.k ], [ %.1133, %bb.l ] ; 3 uses
  %.2128 = phi ptr [ %i.g, %bb.e ], [ %i.y, %bb.l ], [ %scevgep, %bb.k ] ; 8 uses
  %.2122 = phi x86_fp80 [ 0.000000e+00, %bb.e ], [ %.1121, %bb.k ], [ %.1121, %bb.l ] ; 3 uses
  %.2119 = phi i32 [ 0, %bb.e ], [ %.1118, %bb.k ], [ %.1118, %bb.l ] ; 3 uses
  %.2128205 = ptrtoaddr ptr %.2128 to i64         ; 3 uses
  %i.ab = icmp ult ptr %.2128, %1
  br i1 %i.ab, label %bb.m, label %.critedge3

bb.m:                                             ; preds = %.critedge
  %i.ac = load i8, ptr %.2128, align 1, !tbaa !12
  %i.ad = icmp eq i8 %i.ac, 46
  br i1 %i.ad, label %bb.n, label %.critedge3

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %.2128, i64 1 ; 3 uses
  %.not176 = icmp ult ptr %i.ae, %1
  br i1 %.not176, label %bb.o, label %bb.an

bb.o:                                             ; preds = %bb.n
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !12  ; 2 uses
  %i.ag = add i8 %i.af, -58
  %or.cond187 = icmp ult i8 %i.ag, -10
  br i1 %or.cond187, label %bb.an, label %.preheader193.preheader

.preheader193.preheader:                          ; preds = %bb.o
  %i.ah = trunc i64 %.2128205 to i32
  %i.ai = add i32 %.2146, %i.ah
  %i.aj = add i32 %i.ai, 1
  %i.ak = trunc i64 %i.a to i32
  %i.al = sub i32 %i.aj, %i.ak
  %i.am = sub i64 %i.a, %.2128205
  %scevgep206 = getelementptr i8, ptr %.2128, i64 %i.am
  %i.an = xor i64 %.2128205, -1
  %i.ao = getelementptr i8, ptr %.2128, i64 %i.an
  %scevgep207 = getelementptr i8, ptr %i.ao, i64 %i.a
  br label %.preheader193

.preheader193:                                    ; preds = %.preheader193.preheader, %bb.u
  %i.ap = phi i8 [ %i.bg, %bb.u ], [ %i.af, %.preheader193.preheader ]
  %.1152 = phi i32 [ %.2153, %bb.u ], [ %.0151, %.preheader193.preheader ] ; 2 uses
  %.3147 = phi i32 [ %.4148, %bb.u ], [ %.2146, %.preheader193.preheader ]
  %.3141 = phi i64 [ %.4142, %bb.u ], [ %.2140, %.preheader193.preheader ] ; 4 uses
  %.3135 = phi i32 [ %.4136, %bb.u ], [ %.2134, %.preheader193.preheader ] ; 5 uses
  %.3129 = phi ptr [ %i.bf, %bb.u ], [ %i.ae, %.preheader193.preheader ] ; 2 uses
  %.3123 = phi x86_fp80 [ %.4124, %bb.u ], [ %.2122, %.preheader193.preheader ] ; 4 uses
  %.3 = phi i32 [ %.4, %bb.u ], [ %.2119, %.preheader193.preheader ] ; 5 uses
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 4 uses
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = icmp ne i32 %.1152, 0
  %or.cond = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.preheader193
  %i.au = or i32 %i.ar, %.1152
  %i.av = icmp ne i32 %i.au, 0                    ; 3 uses
  %i.aw = icmp slt i32 %.3135, 19
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ax = mul i64 %.3141, 10
  %i.ay = zext nneg i32 %i.ar to i64
  %i.az = add i64 %i.ax, %i.ay
  %i.ba = add nsw i32 %.3135, 1
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.bb = icmp slt i32 %.3, 64
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bc = uitofp nneg i32 %i.ar to x86_fp80
  %i.bd = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %.3123, x86_fp80 1.000000e+01, x86_fp80 %i.bc)
  %i.be = add nsw i32 %.3, 1
  br label %bb.t

bb.t:                                             ; preds = %.preheader193, %bb.r, %bb.q, %bb.s
  %.2153.shrunk = phi i1 [ %i.av, %bb.q ], [ %i.av, %bb.s ], [ %i.av, %bb.r ], [ false, %.preheader193 ]
  %.4142 = phi i64 [ %i.az, %bb.q ], [ %.3141, %bb.s ], [ %.3141, %bb.r ], [ %.3141, %.preheader193 ] ; 3 uses
  %.4136 = phi i32 [ %i.ba, %bb.q ], [ %.3135, %bb.s ], [ %.3135, %bb.r ], [ %.3135, %.preheader193 ] ; 3 uses
  %.4124 = phi x86_fp80 [ %.3123, %bb.q ], [ %i.bd, %bb.s ], [ %.3123, %bb.r ], [ %.3123, %.preheader193 ] ; 3 uses
  %.4 = phi i32 [ %.3, %bb.q ], [ %i.be, %bb.s ], [ %.3, %bb.r ], [ %.3, %.preheader193 ] ; 3 uses
  %.2153 = zext i1 %.2153.shrunk to i32           ; 3 uses
  %exitcond208.not = icmp eq ptr %.3129, %scevgep207
  br i1 %exitcond208.not, label %.critedge3, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %.3129, i64 1 ; 3 uses
  %.4148 = add nsw i32 %.3147, -1                 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !12  ; 2 uses
  %i.bh = add i8 %i.bg, -48
  %or.cond188 = icmp ult i8 %i.bh, 10
  br i1 %or.cond188, label %.preheader193, label %.critedge3, !llvm.loop !897

.critedge3:                                       ; preds = %bb.t, %bb.u, %.critedge, %bb.m
  %.3154 = phi i32 [ %.0151, %.critedge ], [ %.0151, %bb.m ], [ %.2153, %bb.u ], [ %.2153, %bb.t ]
  %.5149 = phi i32 [ %.2146, %.critedge ], [ %.2146, %bb.m ], [ %i.al, %bb.t ], [ %.4148, %bb.u ] ; 3 uses
  %.5143 = phi i64 [ %.2140, %.critedge ], [ %.2140, %bb.m ], [ %.4142, %bb.u ], [ %.4142, %bb.t ]
  %.5137 = phi i32 [ %.2134, %.critedge ], [ %.2134, %bb.m ], [ %.4136, %bb.u ], [ %.4136, %bb.t ]
  %.4130 = phi ptr [ %.2128, %.critedge ], [ %.2128, %bb.m ], [ %scevgep206, %bb.t ], [ %i.bf, %bb.u ] ; 6 uses
  %.5125 = phi x86_fp80 [ %.2122, %.critedge ], [ %.2122, %bb.m ], [ %.4124, %bb.u ], [ %.4124, %bb.t ]
  %.5 = phi i32 [ %.2119, %.critedge ], [ %.2119, %bb.m ], [ %.4, %bb.u ], [ %.4, %bb.t ] ; 2 uses
  %i.bi = icmp ult ptr %.4130, %1
  br i1 %i.bi, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %.critedge3
  %i.bj = load i8, ptr %.4130, align 1, !tbaa !12
  switch i8 %i.bj, label %bb.ac [
    i8 101, label %bb.w
    i8 69, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
end_hunk_3
