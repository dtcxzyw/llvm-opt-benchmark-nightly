begin_hunk_0
define void @_ZN4YAML7Scanner15ScanPlainScalarEv(ptr noundef nonnull align 8 dereferenceable(480) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %2 = alloca %"struct.YAML::ScanScalarParams", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"struct.YAML::Token", align 8      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
end_hunk_0
begin_hunk_1
  store i64 0, ptr %i.b, align 8, !tbaa !14
  store i8 0, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.f, i8 0, i64 3, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !105
end_hunk_1
begin_hunk_2

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.s = phi i32 [ %i.r, %bb.f ], [ 0, %bb.d ]
  store i32 %i.s, ptr %5, align 4, !tbaa !139
  store i32 2, ptr %i.d, align 4, !tbaa !140
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.t, align 1, !tbaa !141
  store i8 1, ptr %i.e, align 8, !tbaa !142
  store i32 -1, ptr %6, align 4, !tbaa !143
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.u, align 8, !tbaa !144
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 36
end_hunk_2
begin_hunk_3
  store i8 0, ptr %i.e, align 8, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !140
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.f, i8 0, i64 7, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.i, i8 0, i64 13, i1 false)
end_hunk_3
begin_hunk_4
  store i8 1, ptr %i.e, align 8, !tbaa !138
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 %i.y, ptr %i.z, align 2, !tbaa !147
  store i32 0, ptr %i.f, align 4, !tbaa !139
  store i32 2, ptr %i.g, align 4, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.aa, align 1, !tbaa !141
  store i8 0, ptr %i.h, align 8, !tbaa !142
  store i32 0, ptr %i.i, align 4, !tbaa !143
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 2, ptr %i.ab, align 8, !tbaa !144
end_hunk_4
begin_hunk_5
  store i8 0, ptr %i.c, align 8, !tbaa !138
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store i8 0, ptr %i.e, align 8, !tbaa !142
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.g, i8 0, i64 3, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.h, i8 0, i64 9, i1 false)
  store i32 1, ptr %i.d, align 4, !tbaa !139
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i8 1, ptr %i.i, align 8, !tbaa !148
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_5
begin_hunk_6
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.m = icmp eq i8 %i.k, 62
  %i.n = zext i1 %i.m to i32
  store i32 %i.n, ptr %i.l, align 4, !tbaa !140
  store i32 0, ptr %i.f, align 4, !tbaa !143
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4YAML3Exp5ChompEv()
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp
end_hunk_6
begin_hunk_7

bb.w:                                             ; preds = %bb.q
  %i.at = add nsw i32 %i.y, -48
  store i32 %i.at, ptr %i.d, align 4, !tbaa !139
  store i8 0, ptr %i.i, align 8, !tbaa !148
  br label %bb.x

end_hunk_7
begin_hunk_8
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bj
  %i.co = load i32, ptr %i.d, align 4, !tbaa !139
  %i.cp = add nsw i32 %i.co, %i.cn
  store i32 %i.cp, ptr %i.d, align 4, !tbaa !139
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bi
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.cq, align 1, !tbaa !141
  store i8 0, ptr %i.e, align 8, !tbaa !142
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i32 2, ptr %i.cr, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
end_hunk_8
begin_hunk_9
!136 = !{!"_ZTSN4YAML5CHOMPE", !5, i64 0}
!137 = !{!"_ZTSN4YAML6ACTIONE", !5, i64 0}
!138 = !{!134, !37, i64 8}
!139 = !{!134, !4, i64 12}
!140 = !{!134, !135, i64 20}
!141 = !{!134, !37, i64 17}
!142 = !{!134, !37, i64 24}
!143 = !{!134, !136, i64 28}
!144 = !{!134, !137, i64 32}
!145 = !{!134, !137, i64 36}
end_hunk_9
