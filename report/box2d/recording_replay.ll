Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/recording_replay?download=true
inline.NumInlined: 743
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b2RecR_MATERIAL:bb.a
  %i.z = load float, ptr %i.y, align 1
  %i.aa = add nsw i32 %i.b, 12                    ; 2 uses
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !18
  %.pre33 = sext i32 %i.aa to i64                 ; 3 uses
  %.pre35 = add nsw i64 %.pre33, 4
  %i.ab = icmp sgt i64 %.pre35, %i.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.z, ptr %i.ac, align 8, !tbaa !140
  br i1 %i.ab, label %b2RecRdrCheck.exit.thread.i.i16, label %b2RecR_F32.exit17.thread

b2RecRdrCheck.exit.thread.i.i16:                  ; preds = %b2RecR_F32.exit13.thread, %b2RecR_F32.exit13
  %.pre-phi3470 = phi i64 [ %.pre-phi3057, %b2RecR_F32.exit13.thread ], [ %.pre33, %b2RecR_F32.exit13 ]
  store i8 0, ptr %i.i, align 8, !tbaa !20
  br label %b2RecR_F32.exit17

b2RecRdrCheck.exit.i.i14:                         ; preds = %b2RecRdrCheck.exit.i.i
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %i.ad, align 8, !tbaa !140
  br label %b2RecR_F32.exit17

b2RecR_F32.exit17:                                ; preds = %b2RecRdrCheck.exit.i.i14, %b2RecRdrCheck.exit.thread.i.i16
  %.pre-phi38 = phi i64 [ %.pre-phi3470, %b2RecRdrCheck.exit.thread.i.i16 ], [ %i.c, %b2RecRdrCheck.exit.i.i14 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.ae, align 4, !tbaa !141
  %i.af = add nsw i64 %.pre-phi38, 8
  %i.ag = icmp sgt i64 %i.af, %i.g
  br i1 %i.ag, label %b2RecRdrCheck.exit.thread.i, label %b2RecR_U64.exit

b2RecR_F32.exit17.thread:                         ; preds = %b2RecR_F32.exit13
  %i.ah = load ptr, ptr %1, align 8, !tbaa !22
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %.pre33
  %i.aj = load float, ptr %i.ai, align 1
  %i.ak = add nsw i32 %i.b, 16                    ; 2 uses
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !18
  %.pre37 = sext i32 %i.ak to i64                 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.aj, ptr %i.al, align 4, !tbaa !141
  %i.am = add nsw i64 %.pre37, 8
  %i.an = icmp sgt i64 %i.am, %i.g
  br i1 %i.an, label %b2RecRdrCheck.exit.thread.i, label %b2RecR_U64.exit.thread

b2RecRdrCheck.exit.thread.i:                      ; preds = %b2RecR_F32.exit17.thread, %b2RecR_F32.exit17
  %.pre-phi3883 = phi i64 [ %.pre37, %b2RecR_F32.exit17.thread ], [ %.pre-phi38, %b2RecR_F32.exit17 ]
  store i8 0, ptr %i.i, align 8, !tbaa !20
  br label %b2RecR_U64.exit

b2RecR_U64.exit:                                  ; preds = %b2RecR_F32.exit17, %b2RecRdrCheck.exit.thread.i
  %.pre-phi40 = phi i64 [ %.pre-phi3883, %b2RecRdrCheck.exit.thread.i ], [ %.pre-phi38, %b2RecR_F32.exit17 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ao, align 8, !tbaa !142
  %i.ap = add nsw i64 %.pre-phi40, 4
  %i.aq = icmp sgt i64 %i.ap, %i.g
  br i1 %i.aq, label %b2RecRdrCheck.exit.thread.i21, label %b2RecR_U32.exit

b2RecR_U64.exit.thread:                           ; preds = %b2RecR_F32.exit17.thread
  %i.ar = load ptr, ptr %1, align 8, !tbaa !22
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %.pre37
  %i.at = load i64, ptr %i.as, align 1
  %i.au = add nsw i32 %i.b, 24                    ; 2 uses
  store i32 %i.au, ptr %i.a, align 4, !tbaa !18
  %.pre39 = sext i32 %i.au to i64                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.at, ptr %i.av, align 8, !tbaa !142
  %i.aw = add nsw i64 %.pre39, 4
  %i.ax = icmp sgt i64 %i.aw, %i.g
  br i1 %i.ax, label %b2RecRdrCheck.exit.thread.i21, label %bb.b

b2RecRdrCheck.exit.thread.i21:                    ; preds = %b2RecR_U64.exit.thread, %b2RecR_U64.exit
  store i8 0, ptr %i.i, align 8, !tbaa !20
  br label %b2RecR_U32.exit

bb.b:                                             ; preds = %b2RecR_U64.exit.thread
  %i.ay = load ptr, ptr %1, align 8, !tbaa !22
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %.pre39
  %i.ba = load i32, ptr %i.az, align 1
  %i.bb = add nsw i32 %i.b, 28
  store i32 %i.bb, ptr %i.a, align 4, !tbaa !18
  br label %b2RecR_U32.exit

b2RecR_U32.exit:                                  ; preds = %b2RecR_U64.exit, %b2RecRdrCheck.exit.thread.i21, %bb.b
  %.0.i20 = phi i32 [ %i.ba, %bb.b ], [ 0, %b2RecRdrCheck.exit.thread.i21 ], [ 0, %b2RecR_U64.exit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i20, ptr %i.bc, align 8, !tbaa !143
  ret void
}

declare void @b2DefaultSurfaceMaterial(ptr dead_on_unwind writable sret(%struct.b2SurfaceMaterial) align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { <2 x float>, <2 x float> } @b2RecR_MASSDATA(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.b2MassData, align 8         ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 7 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = add nsw i64 %i.c, 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = sext i32 %i.f to i64                     ; 5 uses
  %i.h = icmp sgt i64 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.h, label %b2RecR_F32.exit.thread, label %b2RecRdrCheck.exit.i.i

b2RecR_F32.exit.thread:                           ; preds = %bb.a
  store float 0.000000e+00, ptr %1, align 8, !tbaa !145
  br label %b2RecRdrCheck.exit.thread.i.i5.i

b2RecRdrCheck.exit.i.i:                           ; preds = %bb.a
  %.pre.i.i = load i8, ptr %i.i, align 8, !tbaa !20, !range !21
  %i.j = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.j, label %b2RecR_F32.exit, label %b2RecRdrCheck.exit.i.i.i

b2RecR_F32.exit:                                  ; preds = %b2RecRdrCheck.exit.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !22
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.c
  %i.m = load float, ptr %i.l, align 1
  %i.n = add nsw i32 %i.b, 4                      ; 3 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !18
  %.pre = sext i32 %i.n to i64                    ; 2 uses
  %.pre9 = add nsw i64 %.pre, 4
  %i.o = icmp sgt i64 %.pre9, %i.g
  store float %i.m, ptr %1, align 8, !tbaa !145
  br i1 %i.o, label %b2RecRdrCheck.exit.thread.i.i5.i, label %b2RecR_F32.exit.i

b2RecRdrCheck.exit.i.i.i:                         ; preds = %b2RecRdrCheck.exit.i.i
  store float 0.000000e+00, ptr %1, align 8, !tbaa !145
  br label %b2RecR_VEC2.exit

b2RecR_F32.exit.i:                                ; preds = %b2RecR_F32.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %.pre
  %i.r = load float, ptr %i.q, align 1            ; 2 uses
  %i.s = add nsw i32 %i.b, 8                      ; 3 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !18
  %.pre.i = sext i32 %i.s to i64                  ; 2 uses
  %.pre8.i = add nsw i64 %.pre.i, 4
  %i.t = icmp sgt i64 %.pre8.i, %i.g
  br i1 %i.t, label %b2RecRdrCheck.exit.thread.i.i5.i, label %b2RecR_VEC2.exit.thread

b2RecRdrCheck.exit.thread.i.i5.i:                 ; preds = %b2RecR_F32.exit.thread, %b2RecR_F32.exit.i, %b2RecR_F32.exit
  %i.u = phi i32 [ %i.s, %b2RecR_F32.exit.i ], [ %i.n, %b2RecR_F32.exit ], [ %i.b, %b2RecR_F32.exit.thread ]
  %i.v = phi float [ %i.r, %b2RecR_F32.exit.i ], [ 0.000000e+00, %b2RecR_F32.exit ], [ 0.000000e+00, %b2RecR_F32.exit.thread ]
  store i8 0, ptr %i.i, align 8, !tbaa !20
  br label %b2RecR_VEC2.exit

b2RecR_VEC2.exit:                                 ; preds = %b2RecRdrCheck.exit.i.i.i, %b2RecRdrCheck.exit.thread.i.i5.i
  %i.w = phi i32 [ %i.b, %b2RecRdrCheck.exit.i.i.i ], [ %i.u, %b2RecRdrCheck.exit.thread.i.i5.i ]
  %i.x = phi float [ 0.000000e+00, %b2RecRdrCheck.exit.i.i.i ], [ %i.v, %b2RecRdrCheck.exit.thread.i.i5.i ]
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.x, i64 0
  %.4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %.4..4..4..4..sroa_idx, align 4, !tbaa !28
  %i.y = sext i32 %i.w to i64
  %i.z = add nsw i64 %i.y, 4
  %i.aa = icmp sgt i64 %i.z, %i.g
  br i1 %i.aa, label %b2RecRdrCheck.exit.thread.i.i5, label %b2RecR_F32.exit6

b2RecR_VEC2.exit.thread:                          ; preds = %b2RecR_F32.exit.i
  %i.ab = getelementptr inbounds i8, ptr %i.p, i64 %.pre.i
  %i.ac = load float, ptr %i.ab, align 1
  %i.ad = add nsw i32 %i.b, 12                    ; 2 uses
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !18
  %.sroa.0.0.vec.insert.i25 = insertelement <2 x float> poison, float %i.r, i64 0
  %.sroa.0.4.vec.insert.i26 = insertelement <2 x float> %.sroa.0.0.vec.insert.i25, float %i.ac, i64 1
  %.4..4..4..4..sroa_idx30 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store <2 x float> %.sroa.0.4.vec.insert.i26, ptr %.4..4..4..4..sroa_idx30, align 4, !tbaa !28
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = add nsw i64 %i.ae, 4
  %i.ag = icmp sgt i64 %i.af, %i.g
  br i1 %i.ag, label %b2RecRdrCheck.exit.thread.i.i5, label %bb.b

b2RecRdrCheck.exit.thread.i.i5:                   ; preds = %b2RecR_VEC2.exit.thread, %b2RecR_VEC2.exit
  store i8 0, ptr %i.i, align 8, !tbaa !20
  br label %b2RecR_F32.exit6

bb.b:                                             ; preds = %b2RecR_VEC2.exit.thread
  %i.ah = load ptr, ptr %0, align 8, !tbaa !22
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.ae
  %i.aj = load float, ptr %i.ai, align 1
  %i.ak = add nsw i32 %i.b, 16
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !18
  br label %b2RecR_F32.exit6

b2RecR_F32.exit6:                                 ; preds = %b2RecR_VEC2.exit, %b2RecRdrCheck.exit.thread.i.i5, %bb.b
  %i.al = phi float [ %i.aj, %bb.b ], [ 0.000000e+00, %b2RecRdrCheck.exit.thread.i.i5 ], [ 0.000000e+00, %b2RecR_VEC2.exit ]
  %.12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.al, ptr %.12..12..12..12..sroa_idx, align 4, !tbaa !146
  %.0..0..0..0..fca.0.load = load <2 x float>, ptr %1, align 8
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.0..0..0..0..fca.0.load, 0
  %.8..8..8..8..fca.1.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.8..8..8..8..fca.1.load = load <2 x float>, ptr %.8..8..8..8..fca.1.gep.sroa_idx, align 8
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.8..8..8..8..fca.1.load, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i24 0, 65794) i24 @b2RecR_LOCKS(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 6 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 4 uses
  %.not.i.i = icmp slt i32 %i.b, %i.e
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  br i1 %.not.i.i, label %b2RecRdrCheck.exit.i.i, label %b2RecRdrCheck.exit.thread.i.i

b2RecRdrCheck.exit.thread.i.i:                    ; preds = %bb.a
  store i8 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !20
  br label %b2RecR_BOOL.exit

b2RecRdrCheck.exit.i.i:                           ; preds = %bb.a
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !tbaa !20, !range !21
  %i.f = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.f, label %b2RecR_BOOL.exit.thread, label %b2RecR_BOOL.exit

b2RecR_BOOL.exit:                                 ; preds = %b2RecRdrCheck.exit.thread.i.i, %b2RecRdrCheck.exit.i.i
  %.not.i.i3 = icmp slt i32 %i.b, %i.e
  br i1 %.not.i.i3, label %b2RecR_BOOL.exit9, label %b2RecRdrCheck.exit.thread.i.i5

b2RecR_BOOL.exit.thread:                          ; preds = %b2RecRdrCheck.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !22
  %i.h = add nsw i32 %i.b, 1                      ; 3 uses
  store i32 %i.h, ptr %i.a, align 4, !tbaa !18
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.c
  %i.j = load i8, ptr %i.i, align 1, !tbaa !23
  %i.k = icmp ne i8 %i.j, 0                       ; 3 uses
  %.not.i.i330 = icmp slt i32 %i.h, %i.e
  br i1 %.not.i.i330, label %b2RecR_BOOL.exit9.thread, label %b2RecRdrCheck.exit.thread.i.i5

b2RecRdrCheck.exit.thread.i.i5:                   ; preds = %b2RecR_BOOL.exit.thread, %b2RecR_BOOL.exit
  %.0.i.i35 = phi i1 [ %i.k, %b2RecR_BOOL.exit.thread ], [ false, %b2RecR_BOOL.exit ]
  store i8 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !20
  br label %b2RecR_BOOL.exit9

b2RecR_BOOL.exit9:                                ; preds = %b2RecR_BOOL.exit, %b2RecRdrCheck.exit.thread.i.i5
  %.0.i.i34 = phi i1 [ %.0.i.i35, %b2RecRdrCheck.exit.thread.i.i5 ], [ false, %b2RecR_BOOL.exit ] ; 2 uses
  %.not.i.i10 = phi i1 [ false, %b2RecRdrCheck.exit.thread.i.i5 ], [ true, %b2RecR_BOOL.exit ]
  br i1 %.not.i.i10, label %b2RecR_BOOL.exit16.thread, label %b2RecRdrCheck.exit.thread.i.i12.a

b2RecR_BOOL.exit9.thread:                         ; preds = %b2RecR_BOOL.exit.thread
  %.pre = sext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !22
  %i.m = add nsw i32 %i.b, 2                      ; 3 uses
  store i32 %i.m, ptr %i.a, align 4, !tbaa !18
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %.pre
  %i.o = load i8, ptr %i.n, align 1, !tbaa !23
  %.not19 = icmp eq i8 %i.o, 0
  %i.p = select i1 %.not19, i24 0, i24 256        ; 2 uses
  %.not.i.i1046 = icmp slt i32 %i.m, %i.e
  br i1 %.not.i.i1046, label %b2RecR_BOOL.exit16, label %b2RecRdrCheck.exit.thread.i.i12.a

b2RecRdrCheck.exit.thread.i.i12.a:                ; preds = %b2RecR_BOOL.exit9.thread, %b2RecR_BOOL.exit9
  %.0.i.i653 = phi i24 [ %i.p, %b2RecR_BOOL.exit9.thread ], [ 0, %b2RecR_BOOL.exit9 ]
  %.0.i.i3448 = phi i1 [ %i.k, %b2RecR_BOOL.exit9.thread ], [ %.0.i.i34, %b2RecR_BOOL.exit9 ]
  store i8 0, ptr %.phi.trans.insert.i.i, align 8, !tbaa !20
  br label %b2RecR_BOOL.exit16.thread

b2RecR_BOOL.exit16:                               ; preds = %b2RecR_BOOL.exit9.thread
  %.pre22 = sext i32 %i.m to i64
  %i.q = load ptr, ptr %0, align 8, !tbaa !22
  %i.r = add nsw i32 %i.b, 3
  store i32 %i.r, ptr %i.a, align 4, !tbaa !18
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %.pre22
  %i.t = load i8, ptr %i.s, align 1, !tbaa !23
  %.fr = freeze i8 %i.t
  %.not = icmp eq i8 %.fr, 0
  %spec.select = select i1 %.not, i24 0, i24 65536
  %i.u = or disjoint i24 %spec.select, %i.p
  br label %b2RecR_BOOL.exit16.thread

b2RecR_BOOL.exit16.thread:                        ; preds = %b2RecR_BOOL.exit9, %b2RecR_BOOL.exit16, %b2RecRdrCheck.exit.thread.i.i12.a
  %.0.i.i3447 = phi i1 [ %.0.i.i3448, %b2RecRdrCheck.exit.thread.i.i12.a ], [ %i.k, %b2RecR_BOOL.exit16 ], [ %.0.i.i34, %b2RecR_BOOL.exit9 ]
  %.sroa.2.0.insert.insert = phi i24 [ %.0.i.i653, %b2RecRdrCheck.exit.thread.i.i12.a ], [ %i.u, %b2RecR_BOOL.exit16 ], [ 0, %b2RecR_BOOL.exit9 ]
  %.sroa.0.0.insert.ext = zext i1 %.0.i.i3447 to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  ret i24 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @b2RecR_STR(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @b2RecR_STR.s_next, align 4, !tbaa !30 ; 2 uses
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [11 x i8], ptr @b2RecR_STR.s_bufs, i64 %i.b ; 3 uses
  %i.d = add nuw nsw i32 %i.a, 1
  %i.e = and i32 %i.d, 3
  store i32 %i.e, ptr @b2RecR_STR.s_next, align 4, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18   ; 4 uses
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %i.i = add nsw i64 %i.h, 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !19
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = icmp sgt i64 %i.i, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.m, label %b2RecRdrCheck.exit.thread.i, label %b2RecRdrCheck.exit.i

b2RecRdrCheck.exit.thread.i:                      ; preds = %bb.a
  store i8 0, ptr %i.n, align 8, !tbaa !20
  br label %b2RecR_U16.exit.thread

b2RecRdrCheck.exit.i:                             ; preds = %bb.a
  %.pre.i = load i8, ptr %i.n, align 8, !tbaa !20, !range !21
  %i.o = trunc nuw i8 %.pre.i to i1
  br i1 %i.o, label %b2RecR_U16.exit, label %b2RecR_U16.exit.thread

b2RecR_U16.exit:                                  ; preds = %b2RecRdrCheck.exit.i
  %i.p = load ptr, ptr %0, align 8, !tbaa !22
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.h
  %i.r = load i16, ptr %i.q, align 1              ; 3 uses
  %i.s = add nsw i32 %i.g, 2                      ; 3 uses
  store i32 %i.s, ptr %i.f, align 4, !tbaa !18
  %i.t = icmp eq i16 %i.r, -1
  br i1 %i.t, label %bb.d, label %b2RecR_U16.exit.b2RecR_U16.exit.thread_crit_edge

b2RecR_U16.exit.b2RecR_U16.exit.thread_crit_edge: ; preds = %b2RecR_U16.exit
  %i.u = zext i16 %i.r to i32
  %.pre21 = sext i32 %i.s to i64
  %i.v = icmp ne i16 %i.r, 0
  br label %b2RecR_U16.exit.thread

b2RecR_U16.exit.thread:                           ; preds = %b2RecR_U16.exit.b2RecR_U16.exit.thread_crit_edge, %b2RecRdrCheck.exit.thread.i, %b2RecRdrCheck.exit.i
  %.pre-phi = phi i64 [ %.pre21, %b2RecR_U16.exit.b2RecR_U16.exit.thread_crit_edge ], [ %i.h, %b2RecRdrCheck.exit.thread.i ], [ %i.h, %b2RecRdrCheck.exit.i ] ; 2 uses
  %i.w = phi i32 [ %i.s, %b2RecR_U16.exit.b2RecR_U16.exit.thread_crit_edge ], [ %i.g, %b2RecRdrCheck.exit.thread.i ], [ %i.g, %b2RecRdrCheck.exit.i ]
  %i.x = phi i32 [ %i.u, %b2RecR_U16.exit.b2RecR_U16.exit.thread_crit_edge ], [ 0, %b2RecRdrCheck.exit.thread.i ], [ 0, %b2RecRdrCheck.exit.i ] ; 3 uses
  %.0.i20 = phi i1 [ %i.v, %b2RecR_U16.exit.b2RecR_U16.exit.thread_crit_edge ], [ false, %b2RecRdrCheck.exit.thread.i ], [ false, %b2RecRdrCheck.exit.i ]
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.x, i32 10) ; 2 uses
  %i.y = zext nneg i32 %i.x to i64
  %i.z = add nsw i64 %.pre-phi, %i.y
  %i.aa = icmp sgt i64 %i.z, %i.l
  br i1 %i.aa, label %b2RecRdrCheck.exit.thread, label %b2RecRdrCheck.exit

b2RecRdrCheck.exit.thread:                        ; preds = %b2RecR_U16.exit.thread
  store i8 0, ptr %i.n, align 8, !tbaa !20
  br label %b2RecRdrCheck.exit._crit_edge

b2RecRdrCheck.exit:                               ; preds = %b2RecR_U16.exit.thread
  br i1 %.0.i20, label %bb.b, label %b2RecRdrCheck.exit._crit_edge

b2RecRdrCheck.exit._crit_edge:                    ; preds = %b2RecRdrCheck.exit.thread, %b2RecRdrCheck.exit
  %.pre22 = zext nneg i32 %spec.store.select to i64
  br label %bb.c

bb.b:                                             ; preds = %b2RecRdrCheck.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !22
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.pre-phi
  %i.ad = zext nneg i32 %spec.store.select to i64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %i.ac, i64 %i.ad, i1 false)
  %.pre = load i32, ptr %i.f, align 4, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %b2RecRdrCheck.exit._crit_edge, %bb.b
  %.pre-phi23 = phi i64 [ %.pre22, %b2RecRdrCheck.exit._crit_edge ], [ %i.ad, %bb.b ]
  %i.ae = phi i32 [ %i.w, %b2RecRdrCheck.exit._crit_edge ], [ %.pre, %bb.b ]
  %i.af = add nsw i32 %i.ae, %i.x
  store i32 %i.af, ptr %i.f, align 4, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 %.pre-phi23
  store i8 0, ptr %i.ag, align 1, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %b2RecR_U16.exit, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ null, %b2RecR_U16.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @b2RecR_BODYDEF(ptr dead_on_unwind noalias writable sret(%struct.b2BodyDef) align 8 %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  tail call void @b2DefaultBodyDef(ptr dead_on_unwind writable sret(%struct.b2BodyDef) align 8 %0) #19
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 28 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 16 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = add nsw i64 %i.c, 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 19 uses
  %i.h = icmp sgt i64 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 17 uses
  br i1 %i.h, label %b2RecR_I32.exit.thread, label %b2RecRdrCheck.exit.i.i

b2RecR_I32.exit.thread:                           ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !149
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %b2RecRdrCheck.exit.thread.i.i5.i

b2RecRdrCheck.exit.i.i:                           ; preds = %bb.a
  %.pre.i.i = load i8, ptr %i.i, align 8, !tbaa !20, !range !21
  %i.k = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.k, label %b2RecR_I32.exit, label %b2RecRdrCheck.exit.i.i.i

b2RecR_I32.exit:                                  ; preds = %b2RecRdrCheck.exit.i.i
  %i.l = load ptr, ptr %1, align 8, !tbaa !22
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.c
  %i.n = load i32, ptr %i.m, align 1
  %i.o = add nsw i32 %i.b, 4                      ; 3 uses
  store i32 %i.o, ptr %i.a, align 4, !tbaa !18
  %.pre133 = sext i32 %i.o to i64                 ; 2 uses
  %.pre134 = add nsw i64 %.pre133, 4
  %i.p = icmp sgt i64 %.pre134, %i.g
  store i32 %i.n, ptr %0, align 8, !tbaa !149
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  br i1 %i.p, label %b2RecRdrCheck.exit.thread.i.i5.i, label %b2RecR_F32.exit.i

b2RecRdrCheck.exit.i.i.i:                         ; preds = %b2RecRdrCheck.exit.i.i
  store i32 0, ptr %0, align 8, !tbaa !149
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %b2RecR_POSITION.exit

b2RecR_F32.exit.i:                                ; preds = %b2RecR_I32.exit
  %i.s = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %.pre133
  %i.u = load float, ptr %i.t, align 1            ; 2 uses
  %i.v = add nsw i32 %i.b, 8                      ; 3 uses
  store i32 %i.v, ptr %i.a, align 4, !tbaa !18
  %.pre.i = sext i32 %i.v to i64                  ; 2 uses
  %.pre8.i = add nsw i64 %.pre.i, 4
  %i.w = icmp sgt i64 %.pre8.i, %i.g
  br i1 %i.w, label %b2RecRdrCheck.exit.thread.i.i5.i, label %b2RecR_POSITION.exit.thread

b2RecRdrCheck.exit.thread.i.i5.i:                 ; preds = %b2RecR_I32.exit.thread, %b2RecR_F32.exit.i, %b2RecR_I32.exit
  %i.x = phi ptr [ %i.q, %b2RecR_F32.exit.i ], [ %i.q, %b2RecR_I32.exit ], [ %i.j, %b2RecR_I32.exit.thread ]
  %i.y = phi i32 [ %i.v, %b2RecR_F32.exit.i ], [ %i.o, %b2RecR_I32.exit ], [ %i.b, %b2RecR_I32.exit.thread ]
  %i.z = phi float [ %i.u, %b2RecR_F32.exit.i ], [ 0.000000e+00, %b2RecR_I32.exit ], [ 0.000000e+00, %b2RecR_I32.exit.thread ]
  store i8 0, ptr %i.i, align 8, !tbaa !20
  br label %b2RecR_POSITION.exit

b2RecR_POSITION.exit:                             ; preds = %b2RecRdrCheck.exit.i.i.i, %b2RecRdrCheck.exit.thread.i.i5.i
  %i.aa = phi ptr [ %i.r, %b2RecRdrCheck.exit.i.i.i ], [ %i.x, %b2RecRdrCheck.exit.thread.i.i5.i ]
  %i.ab = phi i32 [ %i.b, %b2RecRdrCheck.exit.i.i.i ], [ %i.y, %b2RecRdrCheck.exit.thread.i.i5.i ] ; 3 uses
  %i.ac = phi float [ 0.000000e+00, %b2RecRdrCheck.exit.i.i.i ], [ %i.z, %b2RecRdrCheck.exit.thread.i.i5.i ]
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ac, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.aa, align 4, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ae = sext i32 %i.ab to i64
  %i.af = add nsw i64 %i.ae, 4
  %i.ag = icmp sgt i64 %i.af, %i.g
  br i1 %i.ag, label %b2RecRdrCheck.exit.thread.i.i5.i29, label %b2RecR_ROT.exit

b2RecR_POSITION.exit.thread:                      ; preds = %b2RecR_F32.exit.i
  %i.ah = getelementptr inbounds i8, ptr %i.s, i64 %.pre.i
  %i.ai = load float, ptr %i.ah, align 1
  %i.aj = add nsw i32 %i.b, 12                    ; 3 uses
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !18
  %.sroa.0.0.vec.insert.i210 = insertelement <2 x float> poison, float %i.u, i64 0
  %.sroa.0.4.vec.insert.i211 = insertelement <2 x float> %.sroa.0.0.vec.insert.i210, float %i.ai, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i211, ptr %i.q, align 4, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.al = sext i32 %i.aj to i64                   ; 2 uses
  %i.am = add nsw i64 %i.al, 4
  %i.an = icmp sgt i64 %i.am, %i.g
  br i1 %i.an, label %b2RecRdrCheck.exit.thread.i.i5.i29, label %b2RecR_F32.exit.i26

b2RecR_F32.exit.i26:                              ; preds = %b2RecR_POSITION.exit.thread
  %i.ao = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.al
  %i.aq = load float, ptr %i.ap, align 1          ; 2 uses
  %i.ar = add nsw i32 %i.b, 16                    ; 3 uses
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !18
  %.pre.i27 = sext i32 %i.ar to i64               ; 2 uses
  %.pre8.i28 = add nsw i64 %.pre.i27, 4
  %i.as = icmp sgt i64 %.pre8.i28, %i.g
  br i1 %i.as, label %b2RecRdrCheck.exit.thread.i.i5.i29, label %b2RecR_ROT.exit.thread

b2RecRdrCheck.exit.thread.i.i5.i29:               ; preds = %b2RecR_POSITION.exit.thread, %b2RecR_F32.exit.i26, %b2RecR_POSITION.exit
  %i.at = phi ptr [ %i.ak, %b2RecR_F32.exit.i26 ], [ %i.ad, %b2RecR_POSITION.exit ], [ %i.ak, %b2RecR_POSITION.exit.thread ]
  %i.au = phi i32 [ %i.ar, %b2RecR_F32.exit.i26 ], [ %i.ab, %b2RecR_POSITION.exit ], [ %i.aj, %b2RecR_POSITION.exit.thread ]
  %i.av = phi float [ %i.aq, %b2RecR_F32.exit.i26 ], [ 0.000000e+00, %b2RecR_POSITION.exit ], [ 0.000000e+00, %b2RecR_POSITION.exit.thread ]
  store i8 0, ptr %i.i, align 8, !tbaa !20
  br label %b2RecR_ROT.exit

b2RecR_ROT.exit:                                  ; preds = %b2RecR_POSITION.exit, %b2RecRdrCheck.exit.thread.i.i5.i29
  %i.aw = phi ptr [ %i.ad, %b2RecR_POSITION.exit ], [ %i.at, %b2RecRdrCheck.exit.thread.i.i5.i29 ]
end_hunk_0
