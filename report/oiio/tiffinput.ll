inline.NumInlined: 4997
inline.NumDeleted: 1755
begin_hunk_0_@_ZN11OpenImageIO4v3_19TIFFInput8readspecEb:bb.a
.thread:                                          ; preds = %bb.h, %bb.i, %.thread398, %bb.p, %bb.o
  %i.dz = load float, ptr %i.t, align 4, !tbaa !134
  %i.ea = load float, ptr %i.v, align 4, !tbaa !134
  %93 = fmul float %i.dz, %i.ea
  %94 = fptosi float %93 to i32                   ; 2 uses
  %95 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %94, ptr %95, align 8, !tbaa !136
  %96 = load float, ptr %i.u, align 4, !tbaa !134
  %97 = load float, ptr %i.w, align 4, !tbaa !134
  %98 = fmul float %96, %97
  %99 = fptosi float %98 to i32                   ; 2 uses
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %99, ptr %100, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #37
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_19TIFFInput8readspecEb:bb.a
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread
  %101 = phi i32 [ 0, %bb.q ], [ %99, %.thread ]
  %102 = phi i32 [ 0, %bb.q ], [ %94, %.thread ]
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 40 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.ee, align 8, !tbaa !138
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %102, ptr %i.ef, align 8, !tbaa !139
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store i32 %101, ptr %i.eg, align 4, !tbaa !140
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.eh, align 8, !tbaa !141
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_19TIFFInput8readspecEb:bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.en = load i32, ptr %i.em, align 4, !tbaa !132
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !142
  %i.ep = load ptr, ptr %i.ao, align 8, !tbaa !20
  %i.eq = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %i.ep, i32 noundef 33300, ptr noundef nonnull %i.q)
  %i.er = icmp eq i32 %i.eq, 1
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_19TIFFInput8readspecEb:bb.a
  br i1 %or.cond7, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.ev, ptr %i.ej, align 4, !tbaa !143
  store i32 %i.ex, ptr %i.ek, align 8, !tbaa !144
  store i32 0, ptr %i.ef, align 8, !tbaa !139
  store i32 0, ptr %i.eg, align 4, !tbaa !140
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
end_hunk_3
begin_hunk_4_@llvm.umin.i32
!136 = !{!22, !4, i64 8}
!137 = !{!22, !4, i64 12}
!138 = !{!22, !4, i64 16}
!139 = !{!22, !4, i64 32}
!140 = !{!22, !4, i64 36}
!141 = !{!22, !4, i64 40}
!142 = !{!22, !4, i64 52}
!143 = !{!22, !4, i64 44}
!144 = !{!22, !4, i64 48}
!145 = !{!22, !4, i64 56}
!146 = !{!22, !4, i64 60}
!147 = !{!22, !4, i64 64}
end_hunk_4
