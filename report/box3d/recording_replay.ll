Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/recording_replay?download=true
inline.NumInlined: 900
inline.NumDeleted: 193
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@b3RecR_QUAT:bb.a
  br i1 %i.h, label %b3RecRdrCheck.exit.thread.i.i16, label %b3RecRdrCheck.exit.i.i

b3RecRdrCheck.exit.i.i:                           ; preds = %bb.a
  %.pre.i.i = load i8, ptr %i.i, align 4, !tbaa !25, !range !26
  %i.j = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.j, label %b3RecR_F32.exit, label %b3RecR_F32.exit17

b3RecR_F32.exit:                                  ; preds = %b3RecRdrCheck.exit.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !27
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.c
  %i.m = load float, ptr %i.l, align 1            ; 4 uses
  %i.n = add nsw i32 %i.b, 4                      ; 2 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !23
  %.pre = sext i32 %i.n to i64                    ; 2 uses
  %.pre21 = add nsw i64 %.pre, 4
  %i.o = icmp sgt i64 %.pre21, %i.g
  br i1 %i.o, label %b3RecRdrCheck.exit.thread.i.i16, label %b3RecR_F32.exit9

b3RecR_F32.exit9:                                 ; preds = %b3RecR_F32.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !27
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %.pre
  %i.r = load float, ptr %i.q, align 1            ; 3 uses
  %i.s = add nsw i32 %i.b, 8                      ; 2 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !23
  %.pre23 = sext i32 %i.s to i64                  ; 2 uses
  %.pre25 = add nsw i64 %.pre23, 4
  %i.t = icmp sgt i64 %.pre25, %i.g
  br i1 %i.t, label %b3RecRdrCheck.exit.thread.i.i16, label %b3RecR_F32.exit13

b3RecR_F32.exit13:                                ; preds = %b3RecR_F32.exit9
  %i.u = load ptr, ptr %0, align 8, !tbaa !27
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %.pre23
  %i.w = load float, ptr %i.v, align 1            ; 2 uses
  %i.x = add nsw i32 %i.b, 12                     ; 2 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !23
  %.pre27 = sext i32 %i.x to i64                  ; 2 uses
  %.pre29 = add nsw i64 %.pre27, 4
  %i.y = icmp sgt i64 %.pre29, %i.g
  br i1 %i.y, label %b3RecRdrCheck.exit.thread.i.i16, label %bb.b

b3RecRdrCheck.exit.thread.i.i16:                  ; preds = %b3RecR_F32.exit9, %bb.a, %b3RecR_F32.exit, %b3RecR_F32.exit13
  %i.z = phi float [ %i.w, %b3RecR_F32.exit13 ], [ 0.000000e+00, %b3RecR_F32.exit ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %b3RecR_F32.exit9 ]
  %i.aa = phi float [ %i.m, %b3RecR_F32.exit13 ], [ %i.m, %b3RecR_F32.exit ], [ 0.000000e+00, %bb.a ], [ %i.m, %b3RecR_F32.exit9 ]
  %i.ab = phi float [ %i.r, %b3RecR_F32.exit13 ], [ 0.000000e+00, %b3RecR_F32.exit ], [ 0.000000e+00, %bb.a ], [ %i.r, %b3RecR_F32.exit9 ]
  store i8 0, ptr %i.i, align 4, !tbaa !25
  br label %b3RecR_F32.exit17

bb.b:                                             ; preds = %b3RecR_F32.exit13
  %i.ac = load ptr, ptr %0, align 8, !tbaa !27
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %.pre27
  %i.ae = load float, ptr %i.ad, align 1
  %i.af = add nsw i32 %i.b, 16
  store i32 %i.af, ptr %i.a, align 4, !tbaa !23
  br label %b3RecR_F32.exit17

b3RecR_F32.exit17:                                ; preds = %b3RecRdrCheck.exit.i.i, %b3RecRdrCheck.exit.thread.i.i16, %bb.b
  %i.ag = phi float [ %i.w, %bb.b ], [ %i.z, %b3RecRdrCheck.exit.thread.i.i16 ], [ 0.000000e+00, %b3RecRdrCheck.exit.i.i ]
  %i.ah = phi float [ %i.m, %bb.b ], [ %i.aa, %b3RecRdrCheck.exit.thread.i.i16 ], [ 0.000000e+00, %b3RecRdrCheck.exit.i.i ]
  %i.ai = phi float [ %i.r, %bb.b ], [ %i.ab, %b3RecRdrCheck.exit.thread.i.i16 ], [ 0.000000e+00, %b3RecRdrCheck.exit.i.i ]
  %i.aj = phi float [ %i.ae, %bb.b ], [ 0.000000e+00, %b3RecRdrCheck.exit.thread.i.i16 ], [ 0.000000e+00, %b3RecRdrCheck.exit.i.i ]
  %.sroa.3.8.vec.insert = insertelement <2 x float> poison, float %i.ag, i64 0
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.ah, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.ai, i64 1
  %.sroa.3.12.vec.insert = insertelement <2 x float> %.sroa.3.8.vec.insert, float %i.aj, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3RecR_TRANSFORM(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3Transform) align 4 captures(none) initializes((0, 28)) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 8 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 10 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = add nsw i64 %i.c, 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = sext i32 %i.f to i64                     ; 8 uses
  %i.h = icmp sgt i64 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  br i1 %i.h, label %b3RecRdrCheck.exit.thread.i.i11.i, label %b3RecRdrCheck.exit.i.i.i

b3RecRdrCheck.exit.i.i.i:                         ; preds = %bb.a
  %.pre.i.i.i = load i8, ptr %i.i, align 4, !tbaa !25, !range !26
  %i.j = trunc nuw i8 %.pre.i.i.i to i1
  br i1 %i.j, label %b3RecR_F32.exit.i, label %b3RecR_VEC3.exit

b3RecR_F32.exit.i:                                ; preds = %b3RecRdrCheck.exit.i.i.i
  %i.k = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.c
  %i.m = load float, ptr %i.l, align 1            ; 3 uses
  %i.n = add nsw i32 %i.b, 4                      ; 3 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !23
  %.pre.i = sext i32 %i.n to i64                  ; 2 uses
  %.pre15.i = add nsw i64 %.pre.i, 4
  %i.o = icmp sgt i64 %.pre15.i, %i.g
  br i1 %i.o, label %b3RecRdrCheck.exit.thread.i.i11.i, label %b3RecR_F32.exit8.i

b3RecR_F32.exit8.i:                               ; preds = %b3RecR_F32.exit.i
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %.pre.i
  %i.q = load float, ptr %i.p, align 1            ; 2 uses
  %i.r = add nsw i32 %i.b, 8                      ; 3 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !23
  %.pre17.i = sext i32 %i.r to i64                ; 2 uses
  %.pre19.i = add nsw i64 %.pre17.i, 4
  %i.s = icmp sgt i64 %.pre19.i, %i.g
  br i1 %i.s, label %b3RecRdrCheck.exit.thread.i.i11.i, label %b3RecR_VEC3.exit.thread

b3RecRdrCheck.exit.thread.i.i11.i:                ; preds = %b3RecR_F32.exit8.i, %b3RecR_F32.exit.i, %bb.a
  %i.t = phi i32 [ %i.r, %b3RecR_F32.exit8.i ], [ %i.b, %bb.a ], [ %i.n, %b3RecR_F32.exit.i ]
  %i.u = phi float [ %i.q, %b3RecR_F32.exit8.i ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %b3RecR_F32.exit.i ]
  %i.v = phi float [ %i.m, %b3RecR_F32.exit8.i ], [ 0.000000e+00, %bb.a ], [ %i.m, %b3RecR_F32.exit.i ]
  store i8 0, ptr %i.i, align 4, !tbaa !25
  br label %b3RecR_VEC3.exit

b3RecR_VEC3.exit:                                 ; preds = %b3RecRdrCheck.exit.i.i.i, %b3RecRdrCheck.exit.thread.i.i11.i
  %i.w = phi i32 [ %i.b, %b3RecRdrCheck.exit.i.i.i ], [ %i.t, %b3RecRdrCheck.exit.thread.i.i11.i ]
  %i.x = phi float [ 0.000000e+00, %b3RecRdrCheck.exit.i.i.i ], [ %i.u, %b3RecRdrCheck.exit.thread.i.i11.i ]
  %i.y = phi float [ 0.000000e+00, %b3RecRdrCheck.exit.i.i.i ], [ %i.v, %b3RecRdrCheck.exit.thread.i.i11.i ]
  %.sroa.03.0.vec.insert.i = insertelement <2 x float> poison, float %i.y, i64 0
  %.sroa.03.4.vec.insert.i = insertelement <2 x float> %.sroa.03.0.vec.insert.i, float %i.x, i64 1
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %0, align 4, !tbaa !30
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %.sroa.43.0..sroa_idx, align 4, !tbaa !30
  %i.z = sext i32 %i.w to i64
  %i.aa = add nsw i64 %i.z, 4
  %i.ab = icmp sgt i64 %i.aa, %i.g
  br i1 %i.ab, label %b3RecRdrCheck.exit.thread.i.i16.i, label %b3RecR_QUAT.exit

b3RecR_VEC3.exit.thread:                          ; preds = %b3RecR_F32.exit8.i
  %i.ac = getelementptr inbounds i8, ptr %i.k, i64 %.pre17.i
  %i.ad = load float, ptr %i.ac, align 1
  %i.ae = add nsw i32 %i.b, 12                    ; 2 uses
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !23
  %.sroa.03.0.vec.insert.i13 = insertelement <2 x float> poison, float %i.m, i64 0
  %.sroa.03.4.vec.insert.i14 = insertelement <2 x float> %.sroa.03.0.vec.insert.i13, float %i.q, i64 1
  store <2 x float> %.sroa.03.4.vec.insert.i14, ptr %0, align 4, !tbaa !30
  %.sroa.43.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ad, ptr %.sroa.43.0..sroa_idx15, align 4, !tbaa !30
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = add nsw i64 %i.af, 4
  %i.ah = icmp sgt i64 %i.ag, %i.g
  br i1 %i.ah, label %b3RecRdrCheck.exit.thread.i.i16.i, label %b3RecR_F32.exit.i9

b3RecR_F32.exit.i9:                               ; preds = %b3RecR_VEC3.exit.thread
  %i.ai = load ptr, ptr %1, align 8, !tbaa !27    ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.af
  %i.ak = load float, ptr %i.aj, align 1          ; 4 uses
  %i.al = add nsw i32 %i.b, 16                    ; 2 uses
  store i32 %i.al, ptr %i.a, align 4, !tbaa !23
  %.pre.i10 = sext i32 %i.al to i64               ; 2 uses
  %.pre21.i = add nsw i64 %.pre.i10, 4
  %i.am = icmp sgt i64 %.pre21.i, %i.g
  br i1 %i.am, label %b3RecRdrCheck.exit.thread.i.i16.i, label %b3RecR_F32.exit9.i

b3RecR_F32.exit9.i:                               ; preds = %b3RecR_F32.exit.i9
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 %.pre.i10
  %i.ao = load float, ptr %i.an, align 1          ; 3 uses
  %i.ap = add nsw i32 %i.b, 20                    ; 2 uses
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !23
  %.pre23.i = sext i32 %i.ap to i64               ; 2 uses
  %.pre25.i = add nsw i64 %.pre23.i, 4
  %i.aq = icmp sgt i64 %.pre25.i, %i.g
  br i1 %i.aq, label %b3RecRdrCheck.exit.thread.i.i16.i, label %b3RecR_F32.exit13.i

b3RecR_F32.exit13.i:                              ; preds = %b3RecR_F32.exit9.i
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %.pre23.i
  %i.as = load float, ptr %i.ar, align 1          ; 2 uses
  %i.at = add nsw i32 %i.b, 24                    ; 2 uses
  store i32 %i.at, ptr %i.a, align 4, !tbaa !23
  %.pre27.i = sext i32 %i.at to i64               ; 2 uses
  %.pre29.i = add nsw i64 %.pre27.i, 4
  %i.au = icmp sgt i64 %.pre29.i, %i.g
  br i1 %i.au, label %b3RecRdrCheck.exit.thread.i.i16.i, label %bb.b

b3RecRdrCheck.exit.thread.i.i16.i:                ; preds = %b3RecR_VEC3.exit.thread, %b3RecR_F32.exit13.i, %b3RecR_F32.exit9.i, %b3RecR_F32.exit.i9, %b3RecR_VEC3.exit
  %i.av = phi float [ %i.as, %b3RecR_F32.exit13.i ], [ 0.000000e+00, %b3RecR_F32.exit.i9 ], [ 0.000000e+00, %b3RecR_VEC3.exit ], [ 0.000000e+00, %b3RecR_F32.exit9.i ], [ 0.000000e+00, %b3RecR_VEC3.exit.thread ]
  %i.aw = phi float [ %i.ak, %b3RecR_F32.exit13.i ], [ %i.ak, %b3RecR_F32.exit.i9 ], [ 0.000000e+00, %b3RecR_VEC3.exit ], [ %i.ak, %b3RecR_F32.exit9.i ], [ 0.000000e+00, %b3RecR_VEC3.exit.thread ]
  %i.ax = phi float [ %i.ao, %b3RecR_F32.exit13.i ], [ 0.000000e+00, %b3RecR_F32.exit.i9 ], [ 0.000000e+00, %b3RecR_VEC3.exit ], [ %i.ao, %b3RecR_F32.exit9.i ], [ 0.000000e+00, %b3RecR_VEC3.exit.thread ]
  store i8 0, ptr %i.i, align 4, !tbaa !25
  br label %b3RecR_QUAT.exit

bb.b:                                             ; preds = %b3RecR_F32.exit13.i
  %i.ay = getelementptr inbounds i8, ptr %i.ai, i64 %.pre27.i
  %i.az = load float, ptr %i.ay, align 1
  %i.ba = add nsw i32 %i.b, 28
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !23
  br label %b3RecR_QUAT.exit

b3RecR_QUAT.exit:                                 ; preds = %b3RecR_VEC3.exit, %b3RecRdrCheck.exit.thread.i.i16.i, %bb.b
  %i.bb = phi float [ %i.as, %bb.b ], [ %i.av, %b3RecRdrCheck.exit.thread.i.i16.i ], [ 0.000000e+00, %b3RecR_VEC3.exit ]
  %i.bc = phi float [ %i.ak, %bb.b ], [ %i.aw, %b3RecRdrCheck.exit.thread.i.i16.i ], [ 0.000000e+00, %b3RecR_VEC3.exit ]
  %i.bd = phi float [ %i.ao, %bb.b ], [ %i.ax, %b3RecRdrCheck.exit.thread.i.i16.i ], [ 0.000000e+00, %b3RecR_VEC3.exit ]
  %i.be = phi float [ %i.az, %bb.b ], [ 0.000000e+00, %b3RecRdrCheck.exit.thread.i.i16.i ], [ 0.000000e+00, %b3RecR_VEC3.exit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3.8.vec.insert.i = insertelement <2 x float> poison, float %i.bb, i64 0
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.bc, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.bd, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i, float %i.be, i64 1
  %2 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %.sroa.3.12.vec.insert.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %2, ptr %i.bf, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { <2 x float>, float } @b3RecR_POSITION(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 4 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = add nsw i64 %i.c, 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp sgt i64 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  br i1 %i.h, label %b3RecRdrCheck.exit.thread.i.i11, label %b3RecRdrCheck.exit.i.i

b3RecRdrCheck.exit.i.i:                           ; preds = %bb.a
  %.pre.i.i = load i8, ptr %i.i, align 4, !tbaa !25, !range !26
  %i.j = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.j, label %b3RecR_F32.exit, label %b3RecR_F32.exit12

b3RecR_F32.exit:                                  ; preds = %b3RecRdrCheck.exit.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !27
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.c
  %i.m = load float, ptr %i.l, align 1            ; 3 uses
  %i.n = add nsw i32 %i.b, 4                      ; 2 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !23
  %.pre = sext i32 %i.n to i64                    ; 2 uses
  %.pre15 = add nsw i64 %.pre, 4
  %i.o = icmp sgt i64 %.pre15, %i.g
  br i1 %i.o, label %b3RecRdrCheck.exit.thread.i.i11, label %b3RecR_F32.exit8

b3RecR_F32.exit8:                                 ; preds = %b3RecR_F32.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !27
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %.pre
  %i.r = load float, ptr %i.q, align 1            ; 2 uses
  %i.s = add nsw i32 %i.b, 8                      ; 2 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !23
  %.pre17 = sext i32 %i.s to i64                  ; 2 uses
  %.pre19 = add nsw i64 %.pre17, 4
  %i.t = icmp sgt i64 %.pre19, %i.g
  br i1 %i.t, label %b3RecRdrCheck.exit.thread.i.i11, label %bb.b

b3RecRdrCheck.exit.thread.i.i11:                  ; preds = %b3RecR_F32.exit, %bb.a, %b3RecR_F32.exit8
  %i.u = phi float [ %i.r, %b3RecR_F32.exit8 ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %b3RecR_F32.exit ]
  %i.v = phi float [ %i.m, %b3RecR_F32.exit8 ], [ 0.000000e+00, %bb.a ], [ %i.m, %b3RecR_F32.exit ]
  store i8 0, ptr %i.i, align 4, !tbaa !25
  br label %b3RecR_F32.exit12

bb.b:                                             ; preds = %b3RecR_F32.exit8
  %i.w = load ptr, ptr %0, align 8, !tbaa !27
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %.pre17
  %i.y = load float, ptr %i.x, align 1
  %i.z = add nsw i32 %i.b, 12
  store i32 %i.z, ptr %i.a, align 4, !tbaa !23
  br label %b3RecR_F32.exit12

b3RecR_F32.exit12:                                ; preds = %b3RecRdrCheck.exit.i.i, %b3RecRdrCheck.exit.thread.i.i11, %bb.b
  %i.aa = phi float [ %i.r, %bb.b ], [ %i.u, %b3RecRdrCheck.exit.thread.i.i11 ], [ 0.000000e+00, %b3RecRdrCheck.exit.i.i ]
  %i.ab = phi float [ %i.m, %bb.b ], [ %i.v, %b3RecRdrCheck.exit.thread.i.i11 ], [ 0.000000e+00, %b3RecRdrCheck.exit.i.i ]
  %i.ac = phi float [ %i.y, %bb.b ], [ 0.000000e+00, %b3RecRdrCheck.exit.thread.i.i11 ], [ 0.000000e+00, %b3RecRdrCheck.exit.i.i ]
  %.sroa.03.0.vec.insert = insertelement <2 x float> poison, float %i.ab, i64 0
  %.sroa.03.4.vec.insert = insertelement <2 x float> %.sroa.03.0.vec.insert, float %i.aa, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.03.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.ac, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3RecR_WORLDXF(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3Transform) align 4 captures(none) initializes((0, 28)) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 8 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 10 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = add nsw i64 %i.c, 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = sext i32 %i.f to i64                     ; 8 uses
  %i.h = icmp sgt i64 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  br i1 %i.h, label %b3RecRdrCheck.exit.thread.i.i11.i, label %b3RecRdrCheck.exit.i.i.i

b3RecRdrCheck.exit.i.i.i:                         ; preds = %bb.a
  %.pre.i.i.i = load i8, ptr %i.i, align 4, !tbaa !25, !range !26
  %i.j = trunc nuw i8 %.pre.i.i.i to i1
  br i1 %i.j, label %b3RecR_F32.exit.i, label %b3RecR_POSITION.exit

b3RecR_F32.exit.i:                                ; preds = %b3RecRdrCheck.exit.i.i.i
  %i.k = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.c
  %i.m = load float, ptr %i.l, align 1            ; 3 uses
  %i.n = add nsw i32 %i.b, 4                      ; 3 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !23
  %.pre.i = sext i32 %i.n to i64                  ; 2 uses
  %.pre15.i = add nsw i64 %.pre.i, 4
  %i.o = icmp sgt i64 %.pre15.i, %i.g
  br i1 %i.o, label %b3RecRdrCheck.exit.thread.i.i11.i, label %b3RecR_F32.exit8.i

b3RecR_F32.exit8.i:                               ; preds = %b3RecR_F32.exit.i
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %.pre.i
  %i.q = load float, ptr %i.p, align 1            ; 2 uses
  %i.r = add nsw i32 %i.b, 8                      ; 3 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !23
  %.pre17.i = sext i32 %i.r to i64                ; 2 uses
  %.pre19.i = add nsw i64 %.pre17.i, 4
  %i.s = icmp sgt i64 %.pre19.i, %i.g
  br i1 %i.s, label %b3RecRdrCheck.exit.thread.i.i11.i, label %b3RecR_POSITION.exit.thread

b3RecRdrCheck.exit.thread.i.i11.i:                ; preds = %b3RecR_F32.exit8.i, %b3RecR_F32.exit.i, %bb.a
  %i.t = phi i32 [ %i.r, %b3RecR_F32.exit8.i ], [ %i.b, %bb.a ], [ %i.n, %b3RecR_F32.exit.i ]
  %i.u = phi float [ %i.q, %b3RecR_F32.exit8.i ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %b3RecR_F32.exit.i ]
  %i.v = phi float [ %i.m, %b3RecR_F32.exit8.i ], [ 0.000000e+00, %bb.a ], [ %i.m, %b3RecR_F32.exit.i ]
  store i8 0, ptr %i.i, align 4, !tbaa !25
  br label %b3RecR_POSITION.exit

b3RecR_POSITION.exit:                             ; preds = %b3RecRdrCheck.exit.i.i.i, %b3RecRdrCheck.exit.thread.i.i11.i
  %i.w = phi i32 [ %i.b, %b3RecRdrCheck.exit.i.i.i ], [ %i.t, %b3RecRdrCheck.exit.thread.i.i11.i ]
  %i.x = phi float [ 0.000000e+00, %b3RecRdrCheck.exit.i.i.i ], [ %i.u, %b3RecRdrCheck.exit.thread.i.i11.i ]
  %i.y = phi float [ 0.000000e+00, %b3RecRdrCheck.exit.i.i.i ], [ %i.v, %b3RecRdrCheck.exit.thread.i.i11.i ]
  %.sroa.03.0.vec.insert.i = insertelement <2 x float> poison, float %i.y, i64 0
  %.sroa.03.4.vec.insert.i = insertelement <2 x float> %.sroa.03.0.vec.insert.i, float %i.x, i64 1
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %0, align 4, !tbaa !30
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %.sroa.43.0..sroa_idx, align 4, !tbaa !30
  %i.z = sext i32 %i.w to i64
  %i.aa = add nsw i64 %i.z, 4
  %i.ab = icmp sgt i64 %i.aa, %i.g
  br i1 %i.ab, label %b3RecRdrCheck.exit.thread.i.i16.i, label %b3RecR_QUAT.exit

b3RecR_POSITION.exit.thread:                      ; preds = %b3RecR_F32.exit8.i
  %i.ac = getelementptr inbounds i8, ptr %i.k, i64 %.pre17.i
  %i.ad = load float, ptr %i.ac, align 1
  %i.ae = add nsw i32 %i.b, 12                    ; 2 uses
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !23
  %.sroa.03.0.vec.insert.i13 = insertelement <2 x float> poison, float %i.m, i64 0
  %.sroa.03.4.vec.insert.i14 = insertelement <2 x float> %.sroa.03.0.vec.insert.i13, float %i.q, i64 1
  store <2 x float> %.sroa.03.4.vec.insert.i14, ptr %0, align 4, !tbaa !30
  %.sroa.43.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ad, ptr %.sroa.43.0..sroa_idx15, align 4, !tbaa !30
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = add nsw i64 %i.af, 4
  %i.ah = icmp sgt i64 %i.ag, %i.g
  br i1 %i.ah, label %b3RecRdrCheck.exit.thread.i.i16.i, label %b3RecR_F32.exit.i9

b3RecR_F32.exit.i9:                               ; preds = %b3RecR_POSITION.exit.thread
  %i.ai = load ptr, ptr %1, align 8, !tbaa !27    ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.af
  %i.ak = load float, ptr %i.aj, align 1          ; 4 uses
  %i.al = add nsw i32 %i.b, 16                    ; 2 uses
  store i32 %i.al, ptr %i.a, align 4, !tbaa !23
  %.pre.i10 = sext i32 %i.al to i64               ; 2 uses
  %.pre21.i = add nsw i64 %.pre.i10, 4
  %i.am = icmp sgt i64 %.pre21.i, %i.g
  br i1 %i.am, label %b3RecRdrCheck.exit.thread.i.i16.i, label %b3RecR_F32.exit9.i

b3RecR_F32.exit9.i:                               ; preds = %b3RecR_F32.exit.i9
  %i.an = getelementptr inbounds i8, ptr %i.ai, i64 %.pre.i10
  %i.ao = load float, ptr %i.an, align 1          ; 3 uses
  %i.ap = add nsw i32 %i.b, 20                    ; 2 uses
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !23
  %.pre23.i = sext i32 %i.ap to i64               ; 2 uses
  %.pre25.i = add nsw i64 %.pre23.i, 4
  %i.aq = icmp sgt i64 %.pre25.i, %i.g
  br i1 %i.aq, label %b3RecRdrCheck.exit.thread.i.i16.i, label %b3RecR_F32.exit13.i

b3RecR_F32.exit13.i:                              ; preds = %b3RecR_F32.exit9.i
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 %.pre23.i
  %i.as = load float, ptr %i.ar, align 1          ; 2 uses
  %i.at = add nsw i32 %i.b, 24                    ; 2 uses
  store i32 %i.at, ptr %i.a, align 4, !tbaa !23
  %.pre27.i = sext i32 %i.at to i64               ; 2 uses
  %.pre29.i = add nsw i64 %.pre27.i, 4
  %i.au = icmp sgt i64 %.pre29.i, %i.g
  br i1 %i.au, label %b3RecRdrCheck.exit.thread.i.i16.i, label %bb.b

b3RecRdrCheck.exit.thread.i.i16.i:                ; preds = %b3RecR_POSITION.exit.thread, %b3RecR_F32.exit13.i, %b3RecR_F32.exit9.i, %b3RecR_F32.exit.i9, %b3RecR_POSITION.exit
  %i.av = phi float [ %i.as, %b3RecR_F32.exit13.i ], [ 0.000000e+00, %b3RecR_F32.exit.i9 ], [ 0.000000e+00, %b3RecR_POSITION.exit ], [ 0.000000e+00, %b3RecR_F32.exit9.i ], [ 0.000000e+00, %b3RecR_POSITION.exit.thread ]
  %i.aw = phi float [ %i.ak, %b3RecR_F32.exit13.i ], [ %i.ak, %b3RecR_F32.exit.i9 ], [ 0.000000e+00, %b3RecR_POSITION.exit ], [ %i.ak, %b3RecR_F32.exit9.i ], [ 0.000000e+00, %b3RecR_POSITION.exit.thread ]
  %i.ax = phi float [ %i.ao, %b3RecR_F32.exit13.i ], [ 0.000000e+00, %b3RecR_F32.exit.i9 ], [ 0.000000e+00, %b3RecR_POSITION.exit ], [ %i.ao, %b3RecR_F32.exit9.i ], [ 0.000000e+00, %b3RecR_POSITION.exit.thread ]
  store i8 0, ptr %i.i, align 4, !tbaa !25
  br label %b3RecR_QUAT.exit

bb.b:                                             ; preds = %b3RecR_F32.exit13.i
  %i.ay = getelementptr inbounds i8, ptr %i.ai, i64 %.pre27.i
  %i.az = load float, ptr %i.ay, align 1
  %i.ba = add nsw i32 %i.b, 28
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !23
  br label %b3RecR_QUAT.exit

b3RecR_QUAT.exit:                                 ; preds = %b3RecR_POSITION.exit, %b3RecRdrCheck.exit.thread.i.i16.i, %bb.b
  %i.bb = phi float [ %i.as, %bb.b ], [ %i.av, %b3RecRdrCheck.exit.thread.i.i16.i ], [ 0.000000e+00, %b3RecR_POSITION.exit ]
  %i.bc = phi float [ %i.ak, %bb.b ], [ %i.aw, %b3RecRdrCheck.exit.thread.i.i16.i ], [ 0.000000e+00, %b3RecR_POSITION.exit ]
  %i.bd = phi float [ %i.ao, %bb.b ], [ %i.ax, %b3RecRdrCheck.exit.thread.i.i16.i ], [ 0.000000e+00, %b3RecR_POSITION.exit ]
  %i.be = phi float [ %i.az, %bb.b ], [ 0.000000e+00, %b3RecRdrCheck.exit.thread.i.i16.i ], [ 0.000000e+00, %b3RecR_POSITION.exit ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3.8.vec.insert.i = insertelement <2 x float> poison, float %i.bb, i64 0
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.bc, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.bd, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i, float %i.be, i64 1
  %2 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %.sroa.3.12.vec.insert.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %2, ptr %i.bf, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3RecR_MATRIX3(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3Matrix3) align 4 captures(none) initializes((0, 12)) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 10 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 12 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = add nsw i64 %i.c, 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = sext i32 %i.f to i64                     ; 11 uses
  %i.h = icmp sgt i64 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  br i1 %i.h, label %b3RecRdrCheck.exit.thread.i.i11.i, label %b3RecRdrCheck.exit.i.i.i

b3RecRdrCheck.exit.i.i.i:                         ; preds = %bb.a
  %.pre.i.i.i = load i8, ptr %i.i, align 4, !tbaa !25, !range !26
  %i.j = trunc nuw i8 %.pre.i.i.i to i1
  br i1 %i.j, label %b3RecR_F32.exit.i, label %b3RecR_VEC3.exit

b3RecR_F32.exit.i:                                ; preds = %b3RecRdrCheck.exit.i.i.i
  %i.k = load ptr, ptr %1, align 8, !tbaa !27     ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.c
  %i.m = load float, ptr %i.l, align 1            ; 3 uses
  %i.n = add nsw i32 %i.b, 4                      ; 3 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !23
  %.pre.i = sext i32 %i.n to i64                  ; 2 uses
  %.pre15.i = add nsw i64 %.pre.i, 4
  %i.o = icmp sgt i64 %.pre15.i, %i.g
  br i1 %i.o, label %b3RecRdrCheck.exit.thread.i.i11.i, label %b3RecR_F32.exit8.i

b3RecR_F32.exit8.i:                               ; preds = %b3RecR_F32.exit.i
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %.pre.i
  %i.q = load float, ptr %i.p, align 1            ; 2 uses
  %i.r = add nsw i32 %i.b, 8                      ; 3 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !23
  %.pre17.i = sext i32 %i.r to i64                ; 2 uses
  %.pre19.i = add nsw i64 %.pre17.i, 4
  %i.s = icmp sgt i64 %.pre19.i, %i.g
  br i1 %i.s, label %b3RecRdrCheck.exit.thread.i.i11.i, label %b3RecR_VEC3.exit.thread

b3RecRdrCheck.exit.thread.i.i11.i:                ; preds = %b3RecR_F32.exit8.i, %b3RecR_F32.exit.i, %bb.a
  %i.t = phi i32 [ %i.r, %b3RecR_F32.exit8.i ], [ %i.b, %bb.a ], [ %i.n, %b3RecR_F32.exit.i ]
  %i.u = phi float [ %i.q, %b3RecR_F32.exit8.i ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %b3RecR_F32.exit.i ]
  %i.v = phi float [ %i.m, %b3RecR_F32.exit8.i ], [ 0.000000e+00, %bb.a ], [ %i.m, %b3RecR_F32.exit.i ]
  store i8 0, ptr %i.i, align 4, !tbaa !25
  br label %b3RecR_VEC3.exit

b3RecR_VEC3.exit:                                 ; preds = %b3RecRdrCheck.exit.i.i.i, %b3RecRdrCheck.exit.thread.i.i11.i
  %i.w = phi i32 [ %i.b, %b3RecRdrCheck.exit.i.i.i ], [ %i.t, %b3RecRdrCheck.exit.thread.i.i11.i ] ; 3 uses
  %i.x = phi float [ 0.000000e+00, %b3RecRdrCheck.exit.i.i.i ], [ %i.u, %b3RecRdrCheck.exit.thread.i.i11.i ]
  %i.y = phi float [ 0.000000e+00, %b3RecRdrCheck.exit.i.i.i ], [ %i.v, %b3RecRdrCheck.exit.thread.i.i11.i ]
  %.sroa.03.0.vec.insert.i = insertelement <2 x float> poison, float %i.y, i64 0
  %.sroa.03.4.vec.insert.i = insertelement <2 x float> %.sroa.03.0.vec.insert.i, float %i.x, i64 1
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %0, align 4, !tbaa !30
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %.sroa.413.0..sroa_idx, align 4, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aa = sext i32 %i.w to i64
  %i.ab = add nsw i64 %i.aa, 4
  %i.ac = icmp sgt i64 %i.ab, %i.g
  br i1 %i.ac, label %b3RecRdrCheck.exit.thread.i.i11.i28, label %b3RecR_VEC3.exit29

b3RecR_VEC3.exit.thread:                          ; preds = %b3RecR_F32.exit8.i
  %i.ad = getelementptr inbounds i8, ptr %i.k, i64 %.pre17.i
  %i.ae = load float, ptr %i.ad, align 1
  %i.af = add nsw i32 %i.b, 12                    ; 3 uses
  store i32 %i.af, ptr %i.a, align 4, !tbaa !23
  %.sroa.03.0.vec.insert.i47 = insertelement <2 x float> poison, float %i.m, i64 0
  %.sroa.03.4.vec.insert.i48 = insertelement <2 x float> %.sroa.03.0.vec.insert.i47, float %i.q, i64 1
  store <2 x float> %.sroa.03.4.vec.insert.i48, ptr %0, align 4, !tbaa !30
  %.sroa.413.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ae, ptr %.sroa.413.0..sroa_idx49, align 4, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.ah = sext i32 %i.af to i64                   ; 2 uses
  %i.ai = add nsw i64 %i.ah, 4
  %i.aj = icmp sgt i64 %i.ai, %i.g
  br i1 %i.aj, label %b3RecRdrCheck.exit.thread.i.i11.i28, label %b3RecR_F32.exit.i22

b3RecR_F32.exit.i22:                              ; preds = %b3RecR_VEC3.exit.thread
  %i.ak = load ptr, ptr %1, align 8, !tbaa !27    ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ah
  %i.am = load float, ptr %i.al, align 1          ; 3 uses
  %i.an = add nsw i32 %i.b, 16                    ; 3 uses
  store i32 %i.an, ptr %i.a, align 4, !tbaa !23
  %.pre.i23 = sext i32 %i.an to i64               ; 2 uses
  %.pre15.i24 = add nsw i64 %.pre.i23, 4
  %i.ao = icmp sgt i64 %.pre15.i24, %i.g
  br i1 %i.ao, label %b3RecRdrCheck.exit.thread.i.i11.i28, label %b3RecR_F32.exit8.i25

b3RecR_F32.exit8.i25:                             ; preds = %b3RecR_F32.exit.i22
  %i.ap = getelementptr inbounds i8, ptr %i.ak, i64 %.pre.i23
  %i.aq = load float, ptr %i.ap, align 1          ; 2 uses
  %i.ar = add nsw i32 %i.b, 20                    ; 3 uses
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !23
  %.pre17.i26 = sext i32 %i.ar to i64             ; 2 uses
  %.pre19.i27 = add nsw i64 %.pre17.i26, 4
  %i.as = icmp sgt i64 %.pre19.i27, %i.g
  br i1 %i.as, label %b3RecRdrCheck.exit.thread.i.i11.i28, label %b3RecR_VEC3.exit29.thread

b3RecRdrCheck.exit.thread.i.i11.i28:              ; preds = %b3RecR_VEC3.exit.thread, %b3RecR_F32.exit8.i25, %b3RecR_F32.exit.i22, %b3RecR_VEC3.exit
  %i.at = phi ptr [ %i.ag, %b3RecR_F32.exit8.i25 ], [ %i.z, %b3RecR_VEC3.exit ], [ %i.ag, %b3RecR_F32.exit.i22 ], [ %i.ag, %b3RecR_VEC3.exit.thread ]
  %i.au = phi i32 [ %i.ar, %b3RecR_F32.exit8.i25 ], [ %i.w, %b3RecR_VEC3.exit ], [ %i.an, %b3RecR_F32.exit.i22 ], [ %i.af, %b3RecR_VEC3.exit.thread ]
  %i.av = phi float [ %i.aq, %b3RecR_F32.exit8.i25 ], [ 0.000000e+00, %b3RecR_VEC3.exit ], [ 0.000000e+00, %b3RecR_F32.exit.i22 ], [ 0.000000e+00, %b3RecR_VEC3.exit.thread ]
  %i.aw = phi float [ %i.am, %b3RecR_F32.exit8.i25 ], [ 0.000000e+00, %b3RecR_VEC3.exit ], [ %i.am, %b3RecR_F32.exit.i22 ], [ 0.000000e+00, %b3RecR_VEC3.exit.thread ]
  store i8 0, ptr %i.i, align 4, !tbaa !25
  br label %b3RecR_VEC3.exit29

b3RecR_VEC3.exit29:                               ; preds = %b3RecR_VEC3.exit, %b3RecRdrCheck.exit.thread.i.i11.i28
  %i.ax = phi ptr [ %i.z, %b3RecR_VEC3.exit ], [ %i.at, %b3RecRdrCheck.exit.thread.i.i11.i28 ]
  %i.ay = phi i32 [ %i.w, %b3RecR_VEC3.exit ], [ %i.au, %b3RecRdrCheck.exit.thread.i.i11.i28 ]
  %i.az = phi float [ 0.000000e+00, %b3RecR_VEC3.exit ], [ %i.av, %b3RecRdrCheck.exit.thread.i.i11.i28 ]
  %i.ba = phi float [ 0.000000e+00, %b3RecR_VEC3.exit ], [ %i.aw, %b3RecRdrCheck.exit.thread.i.i11.i28 ]
  %.sroa.03.0.vec.insert.i18 = insertelement <2 x float> poison, float %i.ba, i64 0
  %.sroa.03.4.vec.insert.i19 = insertelement <2 x float> %.sroa.03.0.vec.insert.i18, float %i.az, i64 1
  store <2 x float> %.sroa.03.4.vec.insert.i19, ptr %i.ax, align 4, !tbaa !30
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float 0.000000e+00, ptr %.sroa.47.0..sroa_idx, align 4, !tbaa !30
  %i.bb = sext i32 %i.ay to i64
  %i.bc = add nsw i64 %i.bb, 4
  %i.bd = icmp sgt i64 %i.bc, %i.g
  br i1 %i.bd, label %b3RecRdrCheck.exit.thread.i.i11.i42, label %b3RecR_VEC3.exit43

b3RecR_VEC3.exit29.thread:                        ; preds = %b3RecR_F32.exit8.i25
  %i.be = getelementptr inbounds i8, ptr %i.ak, i64 %.pre17.i26
  %i.bf = load float, ptr %i.be, align 1
  %i.bg = add nsw i32 %i.b, 24                    ; 2 uses
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !23
  %.sroa.03.0.vec.insert.i1853 = insertelement <2 x float> poison, float %i.am, i64 0
  %.sroa.03.4.vec.insert.i1954 = insertelement <2 x float> %.sroa.03.0.vec.insert.i1853, float %i.aq, i64 1
  store <2 x float> %.sroa.03.4.vec.insert.i1954, ptr %i.ag, align 4, !tbaa !30
  %.sroa.47.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bf, ptr %.sroa.47.0..sroa_idx55, align 4, !tbaa !30
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = add nsw i64 %i.bh, 4
  %i.bj = icmp sgt i64 %i.bi, %i.g
  br i1 %i.bj, label %b3RecRdrCheck.exit.thread.i.i11.i42, label %b3RecR_F32.exit.i36

b3RecR_F32.exit.i36:                              ; preds = %b3RecR_VEC3.exit29.thread
  %i.bk = load ptr, ptr %1, align 8, !tbaa !27    ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bh
  %i.bm = load float, ptr %i.bl, align 1          ; 3 uses
  %i.bn = add nsw i32 %i.b, 28                    ; 2 uses
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !23
  %.pre.i37 = sext i32 %i.bn to i64               ; 2 uses
  %.pre15.i38 = add nsw i64 %.pre.i37, 4
  %i.bo = icmp sgt i64 %.pre15.i38, %i.g
  br i1 %i.bo, label %b3RecRdrCheck.exit.thread.i.i11.i42, label %b3RecR_F32.exit8.i39

b3RecR_F32.exit8.i39:                             ; preds = %b3RecR_F32.exit.i36
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 %.pre.i37
  %i.bq = load float, ptr %i.bp, align 1          ; 2 uses
  %i.br = add nsw i32 %i.b, 32                    ; 2 uses
  store i32 %i.br, ptr %i.a, align 4, !tbaa !23
  %.pre17.i40 = sext i32 %i.br to i64             ; 2 uses
  %.pre19.i41 = add nsw i64 %.pre17.i40, 4
  %i.bs = icmp sgt i64 %.pre19.i41, %i.g
  br i1 %i.bs, label %b3RecRdrCheck.exit.thread.i.i11.i42, label %bb.b

b3RecRdrCheck.exit.thread.i.i11.i42:              ; preds = %b3RecR_VEC3.exit29.thread, %b3RecR_F32.exit8.i39, %b3RecR_F32.exit.i36, %b3RecR_VEC3.exit29
  %i.bt = phi float [ %i.bq, %b3RecR_F32.exit8.i39 ], [ 0.000000e+00, %b3RecR_VEC3.exit29 ], [ 0.000000e+00, %b3RecR_F32.exit.i36 ], [ 0.000000e+00, %b3RecR_VEC3.exit29.thread ]
  %i.bu = phi float [ %i.bm, %b3RecR_F32.exit8.i39 ], [ 0.000000e+00, %b3RecR_VEC3.exit29 ], [ %i.bm, %b3RecR_F32.exit.i36 ], [ 0.000000e+00, %b3RecR_VEC3.exit29.thread ]
  store i8 0, ptr %i.i, align 4, !tbaa !25
  br label %b3RecR_VEC3.exit43

bb.b:                                             ; preds = %b3RecR_F32.exit8.i39
  %i.bv = getelementptr inbounds i8, ptr %i.bk, i64 %.pre17.i40
  %i.bw = load float, ptr %i.bv, align 1
  %i.bx = add nsw i32 %i.b, 36
  store i32 %i.bx, ptr %i.a, align 4, !tbaa !23
  br label %b3RecR_VEC3.exit43

b3RecR_VEC3.exit43:                               ; preds = %b3RecR_VEC3.exit29, %b3RecRdrCheck.exit.thread.i.i11.i42, %bb.b
  %i.by = phi float [ %i.bq, %bb.b ], [ %i.bt, %b3RecRdrCheck.exit.thread.i.i11.i42 ], [ 0.000000e+00, %b3RecR_VEC3.exit29 ]
  %i.bz = phi float [ %i.bm, %bb.b ], [ %i.bu, %b3RecRdrCheck.exit.thread.i.i11.i42 ], [ 0.000000e+00, %b3RecR_VEC3.exit29 ]
  %i.ca = phi float [ %i.bw, %bb.b ], [ 0.000000e+00, %b3RecRdrCheck.exit.thread.i.i11.i42 ], [ 0.000000e+00, %b3RecR_VEC3.exit29 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.03.0.vec.insert.i32 = insertelement <2 x float> poison, float %i.bz, i64 0
  %.sroa.03.4.vec.insert.i33 = insertelement <2 x float> %.sroa.03.0.vec.insert.i32, float %i.by, i64 1
  store <2 x float> %.sroa.03.4.vec.insert.i33, ptr %i.cb, align 4, !tbaa !30
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ca, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b3RecR_AABB(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3AABB) align 4 captures(none) initializes((0, 24)) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 9 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = add nsw i64 %i.c, 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = sext i32 %i.f to i64                     ; 7 uses
  %i.h = icmp sgt i64 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  br i1 %i.h, label %b3RecRdrCheck.exit.thread.i.i11.i, label %b3RecRdrCheck.exit.i.i.i
end_hunk_0
begin_hunk_1_@b3RecCaptureKeyframe:bb.a
  %i.c = tail call ptr @b3GetWorldFromId(i32 %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.f = call i32 @b3SerializeWorld(ptr noundef %i.c, ptr noundef nonnull %1, ptr noundef %i.e) #24 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !421
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i64 %i.j, %i.m                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1380 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 3 uses
  %.pre = load i32, ptr %i.p, align 8, !tbaa !108
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.t = phi i32 [ %.173, %._crit_edge ], [ %.pre, %bb.a ] ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.o, align 8, !tbaa !129
  %i.w = add i64 %i.v, %i.n
  %i.x = load i64, ptr %i.q, align 8, !tbaa !80
  %i.y = icmp ugt i64 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.z = load i32, ptr %i.r, align 4, !tbaa !79
  %i.aa = shl nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.r, align 4, !tbaa !79
  br label %.lr.ph

._crit_edge:                                      ; preds = %b3FreeKeyframe.exit
  %i.ab = icmp slt i32 %.173, %i.bf
  store i32 %.173, ptr %i.p, align 8, !tbaa !108
  store i64 %.1, ptr %i.o, align 8, !tbaa !129
  br i1 %i.ab, label %bb.b, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %b3FreeKeyframe.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %b3FreeKeyframe.exit ] ; 2 uses
  %.07180 = phi i64 [ 0, %.lr.ph.preheader ], [ %.1, %b3FreeKeyframe.exit ] ; 3 uses
  %.07279 = phi i32 [ 0, %.lr.ph.preheader ], [ %.173, %b3FreeKeyframe.exit ] ; 4 uses
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !109 ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %indvars.iv ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !130
  %i.ag = load i32, ptr %i.r, align 4, !tbaa !79
  %i.ah = srem i32 %i.af, %i.ag
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.aj = sext i32 %.07279 to i64
  %i.ak = getelementptr inbounds [48 x i8], ptr %i.ac, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false), !tbaa.struct !423
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !112
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !114
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 3
  %i.as = add i64 %.07180, %i.an
  %i.at = add i64 %i.as, %i.ar
  %i.au = add nsw i32 %.07279, 1
  br label %b3FreeKeyframe.exit

bb.e:                                             ; preds = %.lr.ph
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !111 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !112
  %i.ay = sext i32 %i.ax to i64
  call void @b3Free(ptr noundef nonnull %i.av, i64 noundef %i.ay) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !113 ; 2 uses
  %.not7.i = icmp eq ptr %i.ba, null
  br i1 %.not7.i, label %b3FreeKeyframe.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !114
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 3
  call void @b3Free(ptr noundef nonnull %i.ba, i64 noundef %i.be) #24
  br label %b3FreeKeyframe.exit

b3FreeKeyframe.exit:                              ; preds = %bb.h, %bb.g, %bb.d
  %.173 = phi i32 [ %i.au, %bb.d ], [ %.07279, %bb.g ], [ %.07279, %bb.h ] ; 5 uses
  %.1 = phi i64 [ %i.at, %bb.d ], [ %.07180, %bb.g ], [ %.07180, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load i32, ptr %i.p, align 8, !tbaa !108 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %.lr.ph, label %._crit_edge, !llvm.loop !419

.critedge:                                        ; preds = %._crit_edge, %bb.b, %bb.c
  %i.bi = phi i32 [ %.173, %._crit_edge ], [ %i.t, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !115 ; 4 uses
  %.not = icmp slt i32 %i.bi, %i.bk
  %.pre86 = load ptr, ptr %i.s, align 8, !tbaa !109 ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.bl = icmp slt i32 %i.bk, 8
  %i.bm = shl nuw nsw i32 %i.bk, 1
  %spec.select = select i1 %i.bl, i32 8, i32 %i.bm ; 2 uses
  %i.bn = mul nsw i32 %i.bk, 48
  %i.bo = mul nuw nsw i32 %spec.select, 48
  %i.bp = call ptr @b3GrowAlloc(ptr noundef %.pre86, i32 noundef %i.bn, i32 noundef %i.bo) #24 ; 2 uses
  store ptr %i.bp, ptr %i.s, align 8, !tbaa !109
  store i32 %spec.select, ptr %i.bj, align 4, !tbaa !115
  %.pre87 = load i32, ptr %i.p, align 8, !tbaa !108
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge
  %i.bq = phi i32 [ %.pre87, %bb.i ], [ %i.bi, %.critedge ] ; 2 uses
  %i.br = phi ptr [ %i.bp, %bb.i ], [ %.pre86, %.critedge ]
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr inbounds [48 x i8], ptr %i.br, i64 %i.bs ; 8 uses
  %i.bu = load ptr, ptr %1, align 8, !tbaa !424
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !111
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load <2 x i32>, ptr %i.k, align 8, !tbaa !32
  %i.bx = shufflevector <2 x i32> %i.bw, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bx, ptr %i.bv, align 8, !tbaa !32
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !95 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !130
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !83
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !132
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !77
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !133
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 189
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !65, !range !26, !noundef !66
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  store i8 %i.ci, ptr %i.cj, align 4, !tbaa !134
  %i.ck = load i32, ptr %i.g, align 8, !tbaa !128
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !114
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  store ptr null, ptr %i.cm, align 8, !tbaa !113
  %.not77 = icmp eq i32 %i.h, 0
  br i1 %.not77, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cn = call ptr @b3Alloc(i64 noundef %i.j) #24 ; 2 uses
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !113
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !116
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cn, ptr align 4 %i.cp, i64 %i.j, i1 false)
  %.pre88 = load i32, ptr %i.p, align 8, !tbaa !108
  %.pre89 = load i32, ptr %i.by, align 4, !tbaa !95
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cq = phi i32 [ %.pre89, %bb.k ], [ %i.bz, %bb.j ]
  %i.cr = phi i32 [ %.pre88, %bb.k ], [ %i.bq, %bb.j ]
  %i.cs = load i64, ptr %i.o, align 8, !tbaa !129
  %i.ct = add i64 %i.cs, %i.n
  store i64 %i.ct, ptr %i.o, align 8, !tbaa !129
  %i.cu = add nsw i32 %i.cr, 1
  store i32 %i.cu, ptr %i.p, align 8, !tbaa !108
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %i.cq, ptr %i.cv, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 256) i32 @b3RecDispatchOne(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %.sroa.52811 = alloca %struct.b3Transform, align 8 ; 2 uses
  %.sroa.52813 = alloca %struct.b3Transform, align 8 ; 2 uses
  %.sroa.52876 = alloca %struct.b3MassData, align 8 ; 2 uses
  %1 = alloca %struct.b3RecArgs_WorldExplode, align 8 ; 5 uses
  %2 = alloca %struct.b3RecArgs_CreateBody, align 8 ; 6 uses
  %3 = alloca %struct.b3RecArgs_BodySetTargetTransform, align 8 ; 8 uses
  %4 = alloca %struct.b3RecArgs_BodyApplyForce, align 8 ; 10 uses
  %5 = alloca %struct.b3RecArgs_BodyApplyLinearImpulse, align 8 ; 10 uses
  %6 = alloca %struct.b3RecArgs_CreateSphereShape, align 8 ; 7 uses
  %7 = alloca %struct.b3RecArgs_CreateCapsuleShape, align 8 ; 7 uses
  %8 = alloca %struct.b3Capsule, align 4          ; 5 uses
  %9 = alloca %struct.b3RecArgs_CreateHullShape, align 8 ; 7 uses
  %10 = alloca %struct.b3RecArgs_CreateMeshShape, align 8 ; 9 uses
  %11 = alloca %struct.b3RecArgs_CreateHeightFieldShape, align 8 ; 7 uses
  %12 = alloca %struct.b3RecArgs_CreateCompoundShape, align 8 ; 7 uses
  %13 = alloca %struct.b3RecArgs_ShapeSetSurfaceMaterial, align 8 ; 5 uses
  %14 = alloca %struct.b3RecArgs_ShapeSetFilter, align 8 ; 6 uses
  %15 = alloca %struct.b3RecArgs_ShapeSetSphere, align 8 ; 4 uses
  %16 = alloca %struct.b3RecArgs_ShapeSetCapsule, align 8 ; 4 uses
  %17 = alloca %struct.b3Capsule, align 4         ; 5 uses
  %18 = alloca %struct.b3RecArgs_ShapeApplyWind, align 8 ; 11 uses
  %19 = alloca %struct.b3RecArgs_ShapeSetMeshMaterial, align 8 ; 6 uses
  %20 = alloca %struct.b3RecArgs_ShapeSetMesh, align 8 ; 7 uses
  %21 = alloca %struct.b3RecArgs_CreateParallelJoint, align 8 ; 6 uses
  %22 = alloca %struct.b3RecArgs_CreateDistanceJoint, align 8 ; 6 uses
  %23 = alloca %struct.b3RecArgs_CreateFilterJoint, align 8 ; 6 uses
  %24 = alloca %struct.b3FilterJointDef, align 8  ; 5 uses
  %25 = alloca %struct.b3RecArgs_CreateMotorJoint, align 8 ; 6 uses
  %26 = alloca %struct.b3RecArgs_CreatePrismaticJoint, align 8 ; 6 uses
  %27 = alloca %struct.b3RecArgs_CreateRevoluteJoint, align 8 ; 6 uses
  %28 = alloca %struct.b3RecArgs_CreateSphericalJoint, align 8 ; 6 uses
  %29 = alloca %struct.b3RecArgs_CreateWeldJoint, align 8 ; 6 uses
  %30 = alloca %struct.b3RecArgs_CreateWheelJoint, align 8 ; 6 uses
  %31 = alloca %struct.b3RecArgs_QueryOverlapAABB, align 8 ; 7 uses
  %32 = alloca %struct.b3RecArgs_QueryOverlapShape, align 8 ; 10 uses
  %33 = alloca %struct.b3RecArgs_QueryCastRay, align 8 ; 10 uses
  %34 = alloca %struct.b3RecArgs_QueryCastShape, align 8 ; 12 uses
  %35 = alloca %struct.b3RecArgs_QueryCastRayClosest, align 8 ; 10 uses
  %36 = alloca %struct.b3RecArgs_QueryCastMover, align 8 ; 11 uses
  %37 = alloca %struct.b3Capsule, align 4         ; 5 uses
  %38 = alloca %struct.b3RecArgs_QueryCollideMover, align 8 ; 9 uses
  %39 = alloca %struct.b3Capsule, align 4         ; 5 uses
  %.sroa.0 = alloca %struct.b3AABB, align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 290 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23   ; 65 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 115 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 10 uses
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %b3RecR_WORLDID.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 310 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !25, !range !26, !noundef !66
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %b3RecR_U8.exit, label %b3RecR_WORLDID.exit

b3RecR_U8.exit:                                   ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !27     ; 35 uses
  %i.i = add nsw i32 %i.b, 1                      ; 2 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !23
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = add nsw i64 %i.j, 3
  %i.l = sext i32 %i.d to i64                     ; 44 uses
  %.not3129 = icmp sgt i64 %i.k, %i.l
  br i1 %.not3129, label %b3RecR_U24.exit.thread, label %bb.c

b3RecR_U24.exit.thread:                           ; preds = %b3RecR_U8.exit
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_WORLDID.exit

bb.c:                                             ; preds = %b3RecR_U8.exit
  %i.m = sext i32 %i.b to i64
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !28    ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %i.j ; 2 uses
  %i.q = load i16, ptr %i.p, align 1
  %i.r = zext i16 %i.q to i32
  %i.s = getelementptr i8, ptr %i.p, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 16
  %i.w = or disjoint i32 %i.v, %i.r               ; 3 uses
  %i.x = add nsw i32 %i.b, 4                      ; 26 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !23
  %i.y = zext i8 %i.o to i32                      ; 3 uses
  switch i8 %i.o, label %bb.mr [
    i8 1, label %bb.d
    i8 -128, label %bb.e
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.k
    i8 6, label %bb.m
    i8 7, label %bb.o
    i8 8, label %bb.r
    i8 9, label %bb.t
    i8 10, label %bb.v
    i8 11, label %bb.x
    i8 12, label %bb.y
    i8 13, label %bb.aa
    i8 16, label %bb.ab
    i8 17, label %bb.ae
    i8 32, label %bb.ag
    i8 33, label %bb.ai
    i8 34, label %bb.ak
    i8 35, label %bb.am
    i8 36, label %bb.ao
    i8 37, label %bb.aq
    i8 38, label %bb.as
    i8 39, label %bb.au
    i8 40, label %bb.aw
    i8 41, label %bb.ay
    i8 42, label %bb.ba
    i8 43, label %bb.bc
    i8 44, label %bb.be
    i8 45, label %bb.bg
    i8 46, label %bb.bi
    i8 47, label %bb.bk
    i8 48, label %bb.bm
    i8 49, label %bb.bo
    i8 50, label %bb.bq
    i8 51, label %bb.bs
    i8 52, label %bb.bu
    i8 53, label %bb.bw
    i8 54, label %bb.by
    i8 55, label %bb.ca
    i8 56, label %bb.cc
    i8 57, label %bb.ce
    i8 58, label %bb.cg
    i8 64, label %bb.ci
    i8 65, label %bb.ck
    i8 66, label %bb.cn
    i8 67, label %bb.cp
    i8 68, label %bb.ct
    i8 69, label %bb.cv
    i8 70, label %bb.cx
    i8 80, label %bb.cz
    i8 81, label %bb.db
    i8 82, label %bb.dd
    i8 83, label %bb.df
    i8 84, label %bb.di
    i8 85, label %bb.dk
    i8 86, label %bb.dm
    i8 87, label %bb.do
    i8 88, label %bb.dq
    i8 89, label %bb.ds
    i8 90, label %bb.du
    i8 91, label %bb.dx
    i8 92, label %bb.dz
    i8 93, label %bb.eb
    i8 94, label %bb.ed
    i8 95, label %bb.ef
    i8 -112, label %bb.ej
    i8 -111, label %bb.em
    i8 -110, label %bb.ep
    i8 -109, label %bb.es
    i8 -108, label %bb.ev
    i8 -107, label %bb.ey
    i8 -106, label %bb.fb
    i8 -105, label %bb.fe
    i8 -104, label %bb.fh
    i8 -103, label %bb.fk
    i8 -102, label %bb.fm
    i8 -101, label %bb.fo
    i8 -100, label %bb.fq
    i8 -99, label %bb.fs
    i8 -98, label %bb.fu
    i8 -97, label %bb.fw
    i8 -96, label %bb.fy
    i8 -95, label %bb.ga
    i8 -94, label %bb.gc
    i8 -93, label %bb.ge
    i8 -92, label %bb.gg
    i8 -91, label %bb.gi
    i8 -90, label %bb.gk
    i8 -89, label %bb.gm
    i8 -88, label %bb.go
    i8 -87, label %bb.gq
    i8 -86, label %bb.gs
    i8 -85, label %bb.gu
    i8 -84, label %bb.gw
    i8 -83, label %bb.gy
    i8 -82, label %bb.ha
    i8 -81, label %bb.hc
    i8 -80, label %bb.he
    i8 -79, label %bb.hg
    i8 -78, label %bb.hi
    i8 -77, label %bb.hk
    i8 -76, label %bb.hm
    i8 -75, label %bb.ho
    i8 -74, label %bb.hq
    i8 -73, label %bb.hs
    i8 -72, label %bb.hu
    i8 -71, label %bb.hw
    i8 -70, label %bb.hy
    i8 -69, label %bb.ia
    i8 -68, label %bb.ic
    i8 -67, label %bb.ie
    i8 -66, label %bb.ig
    i8 -65, label %bb.ii
    i8 -64, label %bb.ik
    i8 -63, label %bb.im
    i8 -62, label %bb.io
    i8 -61, label %bb.iq
    i8 -60, label %bb.is
    i8 -59, label %bb.iu
    i8 -58, label %bb.iw
    i8 -57, label %bb.iy
    i8 -56, label %bb.ja
    i8 -55, label %bb.jc
    i8 -54, label %bb.je
    i8 -53, label %bb.jg
    i8 -52, label %bb.ji
    i8 -51, label %bb.jk
    i8 -50, label %bb.jm
    i8 -49, label %bb.jo
    i8 -48, label %bb.jq
    i8 -47, label %bb.js
end_hunk_1
begin_hunk_2_@b3RecDispatchOne:bb.a

bb.bx:                                            ; preds = %bb.bw
  %i.pl = getelementptr i8, ptr %0, i64 16
  %.val1123 = load i16, ptr %i.pl, align 8, !tbaa !135
  %i.pm = add i16 %.val1123, -1
  %.sroa.23.0.insert.ext.i.i1674 = zext i16 %i.pm to i64
  %.sroa.23.0.insert.shift.i.i1675 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1674, 32
  %i.pn = and i64 %i.pi, -281470681743361
  %.sroa.02.0.insert.insert.i.i1676 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1675, %i.pn
  tail call void @b3Body_Enable(i64 %.sroa.02.0.insert.insert.i.i1676) #24
  br label %b3RecR_WORLDID.exit

bb.by:                                            ; preds = %bb.c
  %i.po = tail call i64 @b3RecR_BODYID(ptr noundef nonnull %0)
  %i.pp = tail call i48 @b3RecR_LOCKS(ptr noundef nonnull %0)
  %i.pq = load i8, ptr %i.e, align 4, !tbaa !25, !range !26, !noundef !66
  %i.pr = trunc nuw i8 %i.pq to i1
  br i1 %i.pr, label %bb.bz, label %b3RecR_WORLDID.exit

bb.bz:                                            ; preds = %bb.by
  %i.ps = getelementptr i8, ptr %0, i64 16
  %.val1126 = load i16, ptr %i.ps, align 8, !tbaa !135
  %i.pt = add i16 %.val1126, -1
  %.sroa.23.0.insert.ext.i.i1677 = zext i16 %i.pt to i64
  %.sroa.23.0.insert.shift.i.i1678 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1677, 32
  %i.pu = and i64 %i.po, -281470681743361
  %.sroa.02.0.insert.insert.i.i1679 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1678, %i.pu
  tail call void @b3Body_SetMotionLocks(i64 %.sroa.02.0.insert.insert.i.i1679, i48 %i.pp) #24
  br label %b3RecR_WORLDID.exit

bb.ca:                                            ; preds = %bb.c
  %i.pv = tail call i64 @b3RecR_BODYID(ptr noundef nonnull %0)
  %i.pw = load i32, ptr %i.a, align 4, !tbaa !23  ; 3 uses
  %i.px = sext i32 %i.pw to i64
  %i.py = load i32, ptr %i.c, align 8, !tbaa !24
  %.not.i.i1680 = icmp slt i32 %i.pw, %i.py
  br i1 %.not.i.i1680, label %b3RecRdrCheck.exit.i.i1684, label %b3RecRdrCheck.exit.thread.i.i1682

b3RecRdrCheck.exit.thread.i.i1682:                ; preds = %bb.ca
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_WORLDID.exit

b3RecRdrCheck.exit.i.i1684:                       ; preds = %bb.ca
  %.pre.i.i1685 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26
  %i.pz = trunc nuw i8 %.pre.i.i1685 to i1
  br i1 %i.pz, label %bb.cb, label %b3RecR_WORLDID.exit

bb.cb:                                            ; preds = %b3RecRdrCheck.exit.i.i1684
  %i.qa = load ptr, ptr %0, align 8, !tbaa !27
  %i.qb = add nsw i32 %i.pw, 1
  store i32 %i.qb, ptr %i.a, align 4, !tbaa !23
  %i.qc = getelementptr inbounds i8, ptr %i.qa, i64 %i.px
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !28
  %i.qe = icmp ne i8 %i.qd, 0
  %i.qf = getelementptr i8, ptr %0, i64 16
  %.val1129 = load i16, ptr %i.qf, align 8, !tbaa !135
  %i.qg = add i16 %.val1129, -1
  %.sroa.23.0.insert.ext.i.i1687 = zext i16 %i.qg to i64
  %.sroa.23.0.insert.shift.i.i1688 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1687, 32
  %i.qh = and i64 %i.pv, -281470681743361
  %.sroa.02.0.insert.insert.i.i1689 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1688, %i.qh
  tail call void @b3Body_SetBullet(i64 %.sroa.02.0.insert.insert.i.i1689, i1 noundef zeroext %i.qe) #24
  br label %b3RecR_WORLDID.exit

bb.cc:                                            ; preds = %bb.c
  %i.qi = tail call i64 @b3RecR_BODYID(ptr noundef nonnull %0)
  %i.qj = load i32, ptr %i.a, align 4, !tbaa !23  ; 3 uses
  %i.qk = sext i32 %i.qj to i64
  %i.ql = load i32, ptr %i.c, align 8, !tbaa !24
  %.not.i.i1690 = icmp slt i32 %i.qj, %i.ql
  br i1 %.not.i.i1690, label %b3RecRdrCheck.exit.i.i1694, label %b3RecRdrCheck.exit.thread.i.i1692

b3RecRdrCheck.exit.thread.i.i1692:                ; preds = %bb.cc
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_WORLDID.exit

b3RecRdrCheck.exit.i.i1694:                       ; preds = %bb.cc
  %.pre.i.i1695 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26
  %i.qm = trunc nuw i8 %.pre.i.i1695 to i1
  br i1 %i.qm, label %bb.cd, label %b3RecR_WORLDID.exit

bb.cd:                                            ; preds = %b3RecRdrCheck.exit.i.i1694
  %i.qn = load ptr, ptr %0, align 8, !tbaa !27
  %i.qo = add nsw i32 %i.qj, 1
  store i32 %i.qo, ptr %i.a, align 4, !tbaa !23
  %i.qp = getelementptr inbounds i8, ptr %i.qn, i64 %i.qk
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !28
  %i.qr = icmp ne i8 %i.qq, 0
  %i.qs = getelementptr i8, ptr %0, i64 16
  %.val1132 = load i16, ptr %i.qs, align 8, !tbaa !135
  %i.qt = add i16 %.val1132, -1
  %.sroa.23.0.insert.ext.i.i1697 = zext i16 %i.qt to i64
  %.sroa.23.0.insert.shift.i.i1698 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1697, 32
  %i.qu = and i64 %i.qi, -281470681743361
  %.sroa.02.0.insert.insert.i.i1699 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1698, %i.qu
  tail call void @b3Body_EnableContactRecycling(i64 %.sroa.02.0.insert.insert.i.i1699, i1 noundef zeroext %i.qr) #24
  br label %b3RecR_WORLDID.exit

bb.ce:                                            ; preds = %bb.c
  %i.qv = tail call i64 @b3RecR_BODYID(ptr noundef nonnull %0)
  %i.qw = load i32, ptr %i.a, align 4, !tbaa !23  ; 3 uses
  %i.qx = sext i32 %i.qw to i64
  %i.qy = load i32, ptr %i.c, align 8, !tbaa !24
  %.not.i.i1700 = icmp slt i32 %i.qw, %i.qy
  br i1 %.not.i.i1700, label %b3RecRdrCheck.exit.i.i1704, label %b3RecRdrCheck.exit.thread.i.i1702

b3RecRdrCheck.exit.thread.i.i1702:                ; preds = %bb.ce
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_WORLDID.exit

b3RecRdrCheck.exit.i.i1704:                       ; preds = %bb.ce
  %.pre.i.i1705 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26
  %i.qz = trunc nuw i8 %.pre.i.i1705 to i1
  br i1 %i.qz, label %bb.cf, label %b3RecR_WORLDID.exit

bb.cf:                                            ; preds = %b3RecRdrCheck.exit.i.i1704
  %i.ra = load ptr, ptr %0, align 8, !tbaa !27
  %i.rb = add nsw i32 %i.qw, 1
  store i32 %i.rb, ptr %i.a, align 4, !tbaa !23
  %i.rc = getelementptr inbounds i8, ptr %i.ra, i64 %i.qx
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !28
  %i.re = icmp ne i8 %i.rd, 0
  %i.rf = getelementptr i8, ptr %0, i64 16
  %.val1135 = load i16, ptr %i.rf, align 8, !tbaa !135
  %i.rg = add i16 %.val1135, -1
  %.sroa.23.0.insert.ext.i.i1707 = zext i16 %i.rg to i64
  %.sroa.23.0.insert.shift.i.i1708 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1707, 32
  %i.rh = and i64 %i.qv, -281470681743361
  %.sroa.02.0.insert.insert.i.i1709 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1708, %i.rh
  tail call void @b3Body_EnableHitEvents(i64 %.sroa.02.0.insert.insert.i.i1709, i1 noundef zeroext %i.re) #24
  br label %b3RecR_WORLDID.exit

bb.cg:                                            ; preds = %bb.c
  %i.ri = tail call i64 @b3RecR_BODYID(ptr noundef nonnull %0)
  %i.rj = load i32, ptr %i.a, align 4, !tbaa !23  ; 3 uses
  %i.rk = sext i32 %i.rj to i64
  %i.rl = load i32, ptr %i.c, align 8, !tbaa !24
  %.not.i.i1710 = icmp slt i32 %i.rj, %i.rl
  br i1 %.not.i.i1710, label %b3RecRdrCheck.exit.i.i1714, label %b3RecRdrCheck.exit.thread.i.i1712

b3RecRdrCheck.exit.thread.i.i1712:                ; preds = %bb.cg
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_WORLDID.exit

b3RecRdrCheck.exit.i.i1714:                       ; preds = %bb.cg
  %.pre.i.i1715 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26
  %i.rm = trunc nuw i8 %.pre.i.i1715 to i1
  br i1 %i.rm, label %bb.ch, label %b3RecR_WORLDID.exit

bb.ch:                                            ; preds = %b3RecRdrCheck.exit.i.i1714
  %i.rn = load ptr, ptr %0, align 8, !tbaa !27
  %i.ro = add nsw i32 %i.rj, 1
  store i32 %i.ro, ptr %i.a, align 4, !tbaa !23
  %i.rp = getelementptr inbounds i8, ptr %i.rn, i64 %i.rk
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !28
  %i.rr = icmp ne i8 %i.rq, 0
  %i.rs = getelementptr i8, ptr %0, i64 16
  %.val1138 = load i16, ptr %i.rs, align 8, !tbaa !135
  %i.rt = add i16 %.val1138, -1
  %.sroa.23.0.insert.ext.i.i1717 = zext i16 %i.rt to i64
  %.sroa.23.0.insert.shift.i.i1718 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1717, 32
  %i.ru = and i64 %i.ri, -281470681743361
  %.sroa.02.0.insert.insert.i.i1719 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1718, %i.ru
  tail call void @b3Body_AllowFastRotation(i64 %.sroa.02.0.insert.insert.i.i1719, i1 noundef zeroext %i.rr) #24
  br label %b3RecR_WORLDID.exit

bb.ci:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.rv = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.rv, i8 0, i64 136, i1 false)
  %i.rw = tail call i64 @b3RecR_BODYID(ptr noundef nonnull %0)
  store i64 %i.rw, ptr %6, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @b3RecR_SHAPEDEF(ptr dead_on_unwind nonnull writable sret(%struct.b3ShapeDef) align 8 %i.rx, ptr noundef nonnull %0)
  %i.ry = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.rz = load i32, ptr %i.a, align 4, !tbaa !23  ; 2 uses
  %i.sa = sext i32 %i.rz to i64                   ; 2 uses
  %i.sb = add nsw i64 %i.sa, 16
  %i.sc = load i32, ptr %i.c, align 8, !tbaa !24
  %i.sd = sext i32 %i.sc to i64
  %i.se = icmp sgt i64 %i.sb, %i.sd
  br i1 %i.se, label %b3RecRdrCheck.exit.thread.i.i1723, label %b3RecRdrCheck.exit.i.i1720

b3RecRdrCheck.exit.thread.i.i1723:                ; preds = %bb.ci
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_SPHERE.exit.thread

b3RecRdrCheck.exit.i.i1720:                       ; preds = %bb.ci
  %.pre.i.i1721 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26
  %i.sf = trunc nuw i8 %.pre.i.i1721 to i1
  br i1 %i.sf, label %bb.cj, label %b3RecR_SPHERE.exit.thread

bb.cj:                                            ; preds = %b3RecRdrCheck.exit.i.i1720
  %i.sg = load ptr, ptr %0, align 8, !tbaa !27
  %i.sh = getelementptr inbounds i8, ptr %i.sg, i64 %i.sa ; 2 uses
  %.sroa.0.0.copyload.i1722 = load <2 x float>, ptr %i.sh, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %.sroa.3.0.copyload.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.si = add nsw i32 %i.rz, 16
  store i32 %i.si, ptr %i.a, align 4, !tbaa !23
  %40 = shufflevector <2 x float> %.sroa.0.0.copyload.i1722, <2 x float> %.sroa.3.0.copyload.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %40, ptr %i.ry, align 8, !tbaa !30
  call fastcc void @b3RecDispatch_CreateSphereShape(ptr noundef %6, ptr noundef nonnull %0)
  br label %b3RecR_SPHERE.exit.thread

b3RecR_SPHERE.exit.thread:                        ; preds = %b3RecRdrCheck.exit.thread.i.i1723, %b3RecRdrCheck.exit.i.i1720, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %b3RecR_WORLDID.exit

bb.ck:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.sj = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.sj, i8 0, i64 152, i1 false)
  %i.sk = tail call i64 @b3RecR_BODYID(ptr noundef nonnull %0)
  store i64 %i.sk, ptr %7, align 8
  %i.sl = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @b3RecR_SHAPEDEF(ptr dead_on_unwind nonnull writable sret(%struct.b3ShapeDef) align 8 %i.sl, ptr noundef nonnull %0)
  %i.sm = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.sn = load i32, ptr %i.a, align 4, !tbaa !23, !noalias !433 ; 2 uses
  %i.so = sext i32 %i.sn to i64                   ; 2 uses
  %i.sp = add nsw i64 %i.so, 28
  %i.sq = load i32, ptr %i.c, align 8, !tbaa !24, !noalias !433
  %i.sr = sext i32 %i.sq to i64
  %i.ss = icmp sgt i64 %i.sp, %i.sr
  br i1 %i.ss, label %b3RecRdrCheck.exit.thread.i.i1726, label %b3RecRdrCheck.exit.i.i1724

b3RecRdrCheck.exit.thread.i.i1726:                ; preds = %bb.ck
  store i8 0, ptr %i.e, align 4, !tbaa !25, !noalias !433
  br label %b3RecR_CAPSULE.exit

b3RecRdrCheck.exit.i.i1724:                       ; preds = %bb.ck
  %.pre.i.i1725 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26, !noalias !433
  %i.st = trunc nuw i8 %.pre.i.i1725 to i1
  br i1 %i.st, label %bb.cl, label %b3RecR_CAPSULE.exit

b3RecR_CAPSULE.exit:                              ; preds = %b3RecRdrCheck.exit.thread.i.i1726, %b3RecRdrCheck.exit.i.i1724
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.cm

bb.cl:                                            ; preds = %b3RecRdrCheck.exit.i.i1724
  %i.su = load ptr, ptr %0, align 8, !tbaa !27, !noalias !433
  %i.sv = getelementptr inbounds i8, ptr %i.su, i64 %i.so
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %8, ptr noundef nonnull align 1 dereferenceable(28) %i.sv, i64 28, i1 false)
  %i.sw = add nsw i32 %i.sn, 28
  store i32 %i.sw, ptr %i.a, align 4, !tbaa !23, !noalias !433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.sm, ptr noundef nonnull align 4 dereferenceable(28) %8, i64 28, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call fastcc void @b3RecDispatch_CreateCapsuleShape(ptr noundef %7, ptr noundef nonnull %0)
  br label %bb.cm

bb.cm:                                            ; preds = %b3RecR_CAPSULE.exit, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %b3RecR_WORLDID.exit

bb.cn:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.sx = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.sx, i8 0, i64 128, i1 false)
  %i.sy = tail call i64 @b3RecR_BODYID(ptr noundef nonnull %0)
  store i64 %i.sy, ptr %9, align 8
  %i.sz = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @b3RecR_SHAPEDEF(ptr dead_on_unwind nonnull writable sret(%struct.b3ShapeDef) align 8 %i.sz, ptr noundef nonnull %0)
  %i.ta = load i32, ptr %i.a, align 4, !tbaa !23  ; 2 uses
  %i.tb = sext i32 %i.ta to i64                   ; 2 uses
  %i.tc = add nsw i64 %i.tb, 4
  %i.td = load i32, ptr %i.c, align 8, !tbaa !24
  %i.te = sext i32 %i.td to i64
  %i.tf = icmp sgt i64 %i.tc, %i.te
  br i1 %i.tf, label %b3RecRdrCheck.exit.thread.i.i1730, label %b3RecRdrCheck.exit.i.i1727

b3RecRdrCheck.exit.thread.i.i1730:                ; preds = %bb.cn
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_GEOMID.exit.thread

b3RecRdrCheck.exit.i.i1727:                       ; preds = %bb.cn
  %.pre.i.i1728 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26
  %i.tg = trunc nuw i8 %.pre.i.i1728 to i1
  br i1 %i.tg, label %bb.co, label %b3RecR_GEOMID.exit.thread

bb.co:                                            ; preds = %b3RecRdrCheck.exit.i.i1727
  %i.th = load ptr, ptr %0, align 8, !tbaa !27
  %i.ti = getelementptr inbounds i8, ptr %i.th, i64 %i.tb
  %i.tj = load i32, ptr %i.ti, align 1
  %i.tk = add nsw i32 %i.ta, 4
  store i32 %i.tk, ptr %i.a, align 4, !tbaa !23
  %i.tl = getelementptr inbounds nuw i8, ptr %9, i64 128
  store i32 %i.tj, ptr %i.tl, align 8, !tbaa !143
  call fastcc void @b3RecDispatch_CreateHullShape(ptr noundef %9, ptr noundef nonnull %0)
  br label %b3RecR_GEOMID.exit.thread

b3RecR_GEOMID.exit.thread:                        ; preds = %b3RecRdrCheck.exit.thread.i.i1730, %b3RecRdrCheck.exit.i.i1727, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %b3RecR_WORLDID.exit

bb.cp:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.tm = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.tm, i8 0, i64 136, i1 false)
  %i.tn = tail call i64 @b3RecR_BODYID(ptr noundef nonnull %0)
  store i64 %i.tn, ptr %10, align 8
  %i.to = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @b3RecR_SHAPEDEF(ptr dead_on_unwind nonnull writable sret(%struct.b3ShapeDef) align 8 %i.to, ptr noundef nonnull %0)
  %i.tp = load i32, ptr %i.a, align 4, !tbaa !23  ; 2 uses
  %i.tq = sext i32 %i.tp to i64                   ; 2 uses
  %i.tr = add nsw i64 %i.tq, 4
  %i.ts = load i32, ptr %i.c, align 8, !tbaa !24
  %i.tt = sext i32 %i.ts to i64
  %i.tu = icmp sgt i64 %i.tr, %i.tt
  br i1 %i.tu, label %b3RecRdrCheck.exit.thread.i.i1734, label %b3RecRdrCheck.exit.i.i1731

b3RecRdrCheck.exit.thread.i.i1734:                ; preds = %bb.cp
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_GEOMID.exit1735

b3RecRdrCheck.exit.i.i1731:                       ; preds = %bb.cp
  %.pre.i.i1732 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26
  %i.tv = trunc nuw i8 %.pre.i.i1732 to i1
  br i1 %i.tv, label %bb.cq, label %b3RecR_GEOMID.exit1735

bb.cq:                                            ; preds = %b3RecRdrCheck.exit.i.i1731
  %i.tw = load ptr, ptr %0, align 8, !tbaa !27
  %i.tx = getelementptr inbounds i8, ptr %i.tw, i64 %i.tq
  %i.ty = load i32, ptr %i.tx, align 1
  %i.tz = add nsw i32 %i.tp, 4
  store i32 %i.tz, ptr %i.a, align 4, !tbaa !23
  br label %b3RecR_GEOMID.exit1735

b3RecR_GEOMID.exit1735:                           ; preds = %b3RecRdrCheck.exit.thread.i.i1734, %b3RecRdrCheck.exit.i.i1731, %bb.cq
  %.0.i.i1733 = phi i32 [ %i.ty, %bb.cq ], [ 0, %b3RecRdrCheck.exit.i.i1731 ], [ 0, %b3RecRdrCheck.exit.thread.i.i1734 ]
  %i.ua = getelementptr inbounds nuw i8, ptr %10, i64 128
  store i32 %.0.i.i1733, ptr %i.ua, align 8, !tbaa !145
  %i.ub = getelementptr inbounds nuw i8, ptr %10, i64 132
  %i.uc = call { <2 x float>, float } @b3RecR_VEC3(ptr noundef nonnull %0) ; 2 uses
  %.fca.0.extract209 = extractvalue { <2 x float>, float } %i.uc, 0
  %.fca.1.extract210 = extractvalue { <2 x float>, float } %i.uc, 1
  store <2 x float> %.fca.0.extract209, ptr %i.ub, align 4, !tbaa !30
  %.sroa.4214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 140
  store float %.fca.1.extract210, ptr %.sroa.4214.0..sroa_idx, align 4, !tbaa !30
  %i.ud = load i8, ptr %i.e, align 4, !tbaa !25, !range !26, !noundef !66
  %i.ue = trunc nuw i8 %i.ud to i1
  br i1 %i.ue, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %b3RecR_GEOMID.exit1735
  call fastcc void @b3RecDispatch_CreateMeshShape(ptr noundef %10, ptr noundef nonnull %0)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %b3RecR_GEOMID.exit1735
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %b3RecR_WORLDID.exit

bb.ct:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.uf = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.uf, i8 0, i64 128, i1 false)
  %i.ug = tail call i64 @b3RecR_BODYID(ptr noundef nonnull %0)
  store i64 %i.ug, ptr %11, align 8
  %i.uh = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @b3RecR_SHAPEDEF(ptr dead_on_unwind nonnull writable sret(%struct.b3ShapeDef) align 8 %i.uh, ptr noundef nonnull %0)
  %i.ui = load i32, ptr %i.a, align 4, !tbaa !23  ; 2 uses
  %i.uj = sext i32 %i.ui to i64                   ; 2 uses
  %i.uk = add nsw i64 %i.uj, 4
  %i.ul = load i32, ptr %i.c, align 8, !tbaa !24
  %i.um = sext i32 %i.ul to i64
  %i.un = icmp sgt i64 %i.uk, %i.um
  br i1 %i.un, label %b3RecRdrCheck.exit.thread.i.i1739, label %b3RecRdrCheck.exit.i.i1736

b3RecRdrCheck.exit.thread.i.i1739:                ; preds = %bb.ct
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_GEOMID.exit1740.thread

b3RecRdrCheck.exit.i.i1736:                       ; preds = %bb.ct
  %.pre.i.i1737 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26
  %i.uo = trunc nuw i8 %.pre.i.i1737 to i1
  br i1 %i.uo, label %bb.cu, label %b3RecR_GEOMID.exit1740.thread

bb.cu:                                            ; preds = %b3RecRdrCheck.exit.i.i1736
  %i.up = load ptr, ptr %0, align 8, !tbaa !27
  %i.uq = getelementptr inbounds i8, ptr %i.up, i64 %i.uj
  %i.ur = load i32, ptr %i.uq, align 1
  %i.us = add nsw i32 %i.ui, 4
  store i32 %i.us, ptr %i.a, align 4, !tbaa !23
  %i.ut = getelementptr inbounds nuw i8, ptr %11, i64 128
  store i32 %i.ur, ptr %i.ut, align 8, !tbaa !143
  call fastcc void @b3RecDispatch_CreateHeightFieldShape(ptr noundef %11, ptr noundef nonnull %0)
  br label %b3RecR_GEOMID.exit1740.thread

b3RecR_GEOMID.exit1740.thread:                    ; preds = %b3RecRdrCheck.exit.thread.i.i1739, %b3RecRdrCheck.exit.i.i1736, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %b3RecR_WORLDID.exit

bb.cv:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.uu = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.uu, i8 0, i64 128, i1 false)
  %i.uv = tail call i64 @b3RecR_BODYID(ptr noundef nonnull %0)
  store i64 %i.uv, ptr %12, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @b3RecR_SHAPEDEF(ptr dead_on_unwind nonnull writable sret(%struct.b3ShapeDef) align 8 %i.uw, ptr noundef nonnull %0)
  %i.ux = load i32, ptr %i.a, align 4, !tbaa !23  ; 2 uses
  %i.uy = sext i32 %i.ux to i64                   ; 2 uses
  %i.uz = add nsw i64 %i.uy, 4
end_hunk_2
begin_hunk_3_@b3RecDispatchOne:bb.a

b3RecRdrCheck.exit.thread.i.i1789:                ; preds = %bb.di
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_BOOL.exit1793.thread

b3RecRdrCheck.exit.i.i1791:                       ; preds = %bb.di
  %.pre.i.i1792 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26
  %i.yi = trunc nuw i8 %.pre.i.i1792 to i1
  br i1 %i.yi, label %bb.dj, label %b3RecR_BOOL.exit1793.thread

bb.dj:                                            ; preds = %b3RecRdrCheck.exit.i.i1791
  %i.yj = load ptr, ptr %0, align 8, !tbaa !27
  %i.yk = add nsw i32 %i.yf, 1
  store i32 %i.yk, ptr %i.a, align 4, !tbaa !23
  %i.yl = getelementptr inbounds i8, ptr %i.yj, i64 %i.yg
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !28
  %i.yn = icmp ne i8 %i.ym, 0                     ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.yp = zext i1 %i.yn to i8
  store i8 %i.yp, ptr %i.yo, align 8, !tbaa !435
  %i.yq = getelementptr i8, ptr %0, i64 16
  %.val1150 = load i16, ptr %i.yq, align 8, !tbaa !135
  %i.yr = add i16 %.val1150, -1
  %.sroa.23.0.insert.ext.i.i1794 = zext i16 %i.yr to i64
  %.sroa.23.0.insert.shift.i.i1795 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1794, 32
  %i.ys = and i64 %i.yd, -281470681743361
  %.sroa.02.0.insert.insert.i.i1796 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1795, %i.ys
  tail call void @b3Shape_SetFilter(i64 %.sroa.02.0.insert.insert.i.i1796, ptr noundef nonnull byval(%struct.b3Filter) align 8 %i.ye, i1 noundef zeroext %i.yn) #24
  br label %b3RecR_BOOL.exit1793.thread

b3RecR_BOOL.exit1793.thread:                      ; preds = %b3RecRdrCheck.exit.thread.i.i1789, %b3RecRdrCheck.exit.i.i1791, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %b3RecR_WORLDID.exit

bb.dk:                                            ; preds = %bb.c
  %i.yt = tail call i64 @b3RecR_SHAPEID(ptr noundef nonnull %0)
  %i.yu = load i32, ptr %i.a, align 4, !tbaa !23  ; 3 uses
  %i.yv = sext i32 %i.yu to i64
  %i.yw = load i32, ptr %i.c, align 8, !tbaa !24
  %.not.i.i1797 = icmp slt i32 %i.yu, %i.yw
  br i1 %.not.i.i1797, label %b3RecRdrCheck.exit.i.i1801, label %b3RecRdrCheck.exit.thread.i.i1799

b3RecRdrCheck.exit.thread.i.i1799:                ; preds = %bb.dk
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_WORLDID.exit

b3RecRdrCheck.exit.i.i1801:                       ; preds = %bb.dk
  %.pre.i.i1802 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26
  %i.yx = trunc nuw i8 %.pre.i.i1802 to i1
  br i1 %i.yx, label %bb.dl, label %b3RecR_WORLDID.exit

bb.dl:                                            ; preds = %b3RecRdrCheck.exit.i.i1801
  %i.yy = load ptr, ptr %0, align 8, !tbaa !27
  %i.yz = add nsw i32 %i.yu, 1
  store i32 %i.yz, ptr %i.a, align 4, !tbaa !23
  %i.za = getelementptr inbounds i8, ptr %i.yy, i64 %i.yv
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !28
  %i.zc = icmp ne i8 %i.zb, 0
  %i.zd = getelementptr i8, ptr %0, i64 16
  %.val1153 = load i16, ptr %i.zd, align 8, !tbaa !135
  %i.ze = add i16 %.val1153, -1
  %.sroa.23.0.insert.ext.i.i1804 = zext i16 %i.ze to i64
  %.sroa.23.0.insert.shift.i.i1805 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1804, 32
  %i.zf = and i64 %i.yt, -281470681743361
  %.sroa.02.0.insert.insert.i.i1806 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1805, %i.zf
  tail call void @b3Shape_EnableSensorEvents(i64 %.sroa.02.0.insert.insert.i.i1806, i1 noundef zeroext %i.zc) #24
  br label %b3RecR_WORLDID.exit

bb.dm:                                            ; preds = %bb.c
  %i.zg = tail call i64 @b3RecR_SHAPEID(ptr noundef nonnull %0)
  %i.zh = load i32, ptr %i.a, align 4, !tbaa !23  ; 3 uses
  %i.zi = sext i32 %i.zh to i64
  %i.zj = load i32, ptr %i.c, align 8, !tbaa !24
  %.not.i.i1807 = icmp slt i32 %i.zh, %i.zj
  br i1 %.not.i.i1807, label %b3RecRdrCheck.exit.i.i1811, label %b3RecRdrCheck.exit.thread.i.i1809

b3RecRdrCheck.exit.thread.i.i1809:                ; preds = %bb.dm
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_WORLDID.exit

b3RecRdrCheck.exit.i.i1811:                       ; preds = %bb.dm
  %.pre.i.i1812 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26
  %i.zk = trunc nuw i8 %.pre.i.i1812 to i1
  br i1 %i.zk, label %bb.dn, label %b3RecR_WORLDID.exit

bb.dn:                                            ; preds = %b3RecRdrCheck.exit.i.i1811
  %i.zl = load ptr, ptr %0, align 8, !tbaa !27
  %i.zm = add nsw i32 %i.zh, 1
  store i32 %i.zm, ptr %i.a, align 4, !tbaa !23
  %i.zn = getelementptr inbounds i8, ptr %i.zl, i64 %i.zi
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !28
  %i.zp = icmp ne i8 %i.zo, 0
  %i.zq = getelementptr i8, ptr %0, i64 16
  %.val1156 = load i16, ptr %i.zq, align 8, !tbaa !135
  %i.zr = add i16 %.val1156, -1
  %.sroa.23.0.insert.ext.i.i1814 = zext i16 %i.zr to i64
  %.sroa.23.0.insert.shift.i.i1815 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1814, 32
  %i.zs = and i64 %i.zg, -281470681743361
  %.sroa.02.0.insert.insert.i.i1816 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1815, %i.zs
  tail call void @b3Shape_EnableContactEvents(i64 %.sroa.02.0.insert.insert.i.i1816, i1 noundef zeroext %i.zp) #24
  br label %b3RecR_WORLDID.exit

bb.do:                                            ; preds = %bb.c
  %i.zt = tail call i64 @b3RecR_SHAPEID(ptr noundef nonnull %0)
  %i.zu = load i32, ptr %i.a, align 4, !tbaa !23  ; 3 uses
  %i.zv = sext i32 %i.zu to i64
  %i.zw = load i32, ptr %i.c, align 8, !tbaa !24
  %.not.i.i1817 = icmp slt i32 %i.zu, %i.zw
  br i1 %.not.i.i1817, label %b3RecRdrCheck.exit.i.i1821, label %b3RecRdrCheck.exit.thread.i.i1819

b3RecRdrCheck.exit.thread.i.i1819:                ; preds = %bb.do
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_WORLDID.exit

b3RecRdrCheck.exit.i.i1821:                       ; preds = %bb.do
  %.pre.i.i1822 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26
  %i.zx = trunc nuw i8 %.pre.i.i1822 to i1
  br i1 %i.zx, label %bb.dp, label %b3RecR_WORLDID.exit

bb.dp:                                            ; preds = %b3RecRdrCheck.exit.i.i1821
  %i.zy = load ptr, ptr %0, align 8, !tbaa !27
  %i.zz = add nsw i32 %i.zu, 1
  store i32 %i.zz, ptr %i.a, align 4, !tbaa !23
  %i.aaa = getelementptr inbounds i8, ptr %i.zy, i64 %i.zv
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !28
  %i.aac = icmp ne i8 %i.aab, 0
  %i.aad = getelementptr i8, ptr %0, i64 16
  %.val1159 = load i16, ptr %i.aad, align 8, !tbaa !135
  %i.aae = add i16 %.val1159, -1
  %.sroa.23.0.insert.ext.i.i1824 = zext i16 %i.aae to i64
  %.sroa.23.0.insert.shift.i.i1825 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1824, 32
  %i.aaf = and i64 %i.zt, -281470681743361
  %.sroa.02.0.insert.insert.i.i1826 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1825, %i.aaf
  tail call void @b3Shape_EnablePreSolveEvents(i64 %.sroa.02.0.insert.insert.i.i1826, i1 noundef zeroext %i.aac) #24
  br label %b3RecR_WORLDID.exit

bb.dq:                                            ; preds = %bb.c
  %i.aag = tail call i64 @b3RecR_SHAPEID(ptr noundef nonnull %0)
  %i.aah = load i32, ptr %i.a, align 4, !tbaa !23 ; 3 uses
  %i.aai = sext i32 %i.aah to i64
  %i.aaj = load i32, ptr %i.c, align 8, !tbaa !24
  %.not.i.i1827 = icmp slt i32 %i.aah, %i.aaj
  br i1 %.not.i.i1827, label %b3RecRdrCheck.exit.i.i1831, label %b3RecRdrCheck.exit.thread.i.i1829

b3RecRdrCheck.exit.thread.i.i1829:                ; preds = %bb.dq
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_WORLDID.exit

b3RecRdrCheck.exit.i.i1831:                       ; preds = %bb.dq
  %.pre.i.i1832 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26
  %i.aak = trunc nuw i8 %.pre.i.i1832 to i1
  br i1 %i.aak, label %bb.dr, label %b3RecR_WORLDID.exit

bb.dr:                                            ; preds = %b3RecRdrCheck.exit.i.i1831
  %i.aal = load ptr, ptr %0, align 8, !tbaa !27
  %i.aam = add nsw i32 %i.aah, 1
  store i32 %i.aam, ptr %i.a, align 4, !tbaa !23
  %i.aan = getelementptr inbounds i8, ptr %i.aal, i64 %i.aai
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !28
  %i.aap = icmp ne i8 %i.aao, 0
  %i.aaq = getelementptr i8, ptr %0, i64 16
  %.val1162 = load i16, ptr %i.aaq, align 8, !tbaa !135
  %i.aar = add i16 %.val1162, -1
  %.sroa.23.0.insert.ext.i.i1834 = zext i16 %i.aar to i64
  %.sroa.23.0.insert.shift.i.i1835 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1834, 32
  %i.aas = and i64 %i.aag, -281470681743361
  %.sroa.02.0.insert.insert.i.i1836 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1835, %i.aas
  tail call void @b3Shape_EnableHitEvents(i64 %.sroa.02.0.insert.insert.i.i1836, i1 noundef zeroext %i.aap) #24
  br label %b3RecR_WORLDID.exit

bb.ds:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.aat = tail call i64 @b3RecR_SHAPEID(ptr noundef nonnull %0) ; 2 uses
  store i64 %i.aat, ptr %15, align 8
  %i.aau = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.aav = load i32, ptr %i.a, align 4, !tbaa !23 ; 2 uses
  %i.aaw = sext i32 %i.aav to i64                 ; 2 uses
  %i.aax = add nsw i64 %i.aaw, 16
  %i.aay = load i32, ptr %i.c, align 8, !tbaa !24
  %i.aaz = sext i32 %i.aay to i64
  %i.aba = icmp sgt i64 %i.aax, %i.aaz
  br i1 %i.aba, label %b3RecRdrCheck.exit.thread.i.i1846, label %b3RecRdrCheck.exit.i.i1837

b3RecRdrCheck.exit.thread.i.i1846:                ; preds = %bb.ds
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_SPHERE.exit1847.thread

b3RecRdrCheck.exit.i.i1837:                       ; preds = %bb.ds
  %.pre.i.i1838 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26
  %i.abb = trunc nuw i8 %.pre.i.i1838 to i1
  br i1 %i.abb, label %bb.dt, label %b3RecR_SPHERE.exit1847.thread

bb.dt:                                            ; preds = %b3RecRdrCheck.exit.i.i1837
  %i.abc = load ptr, ptr %0, align 8, !tbaa !27
  %i.abd = getelementptr inbounds i8, ptr %i.abc, i64 %i.aaw ; 2 uses
  %.sroa.0.0.copyload.i1843 = load <2 x float>, ptr %i.abd, align 1
  %.sroa.3.0..sroa_idx.i1844 = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %.sroa.3.0.copyload.i1845 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i1844, align 1
  %i.abe = add nsw i32 %i.aav, 16
  store i32 %i.abe, ptr %i.a, align 4, !tbaa !23
  %41 = shufflevector <2 x float> %.sroa.0.0.copyload.i1843, <2 x float> %.sroa.3.0.copyload.i1845, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %41, ptr %i.aau, align 8, !tbaa !30
  %i.abf = getelementptr i8, ptr %0, i64 16
  %.val1163 = load i16, ptr %i.abf, align 8, !tbaa !135
  %i.abg = add i16 %.val1163, -1
  %.sroa.23.0.insert.ext.i.i1848 = zext i16 %i.abg to i64
  %.sroa.23.0.insert.shift.i.i1849 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1848, 32
  %i.abh = and i64 %i.aat, -281470681743361
  %.sroa.02.0.insert.insert.i.i1850 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1849, %i.abh
  call void @b3Shape_SetSphere(i64 %.sroa.02.0.insert.insert.i.i1850, ptr noundef nonnull %i.aau) #24
  br label %b3RecR_SPHERE.exit1847.thread

b3RecR_SPHERE.exit1847.thread:                    ; preds = %b3RecRdrCheck.exit.thread.i.i1846, %b3RecRdrCheck.exit.i.i1837, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %b3RecR_WORLDID.exit

bb.du:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.abi = tail call i64 @b3RecR_SHAPEID(ptr noundef nonnull %0) ; 2 uses
  store i64 %i.abi, ptr %16, align 8
  %i.abj = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.abk = load i32, ptr %i.a, align 4, !tbaa !23, !noalias !436 ; 2 uses
  %i.abl = sext i32 %i.abk to i64                 ; 2 uses
  %i.abm = add nsw i64 %i.abl, 28
  %i.abn = load i32, ptr %i.c, align 8, !tbaa !24, !noalias !436
  %i.abo = sext i32 %i.abn to i64
  %i.abp = icmp sgt i64 %i.abm, %i.abo
  br i1 %i.abp, label %b3RecRdrCheck.exit.thread.i.i1853, label %b3RecRdrCheck.exit.i.i1851

b3RecRdrCheck.exit.thread.i.i1853:                ; preds = %bb.du
  store i8 0, ptr %i.e, align 4, !tbaa !25, !noalias !436
  br label %b3RecR_CAPSULE.exit1854

b3RecRdrCheck.exit.i.i1851:                       ; preds = %bb.du
  %.pre.i.i1852 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26, !noalias !436
  %i.abq = trunc nuw i8 %.pre.i.i1852 to i1
  br i1 %i.abq, label %bb.dv, label %b3RecR_CAPSULE.exit1854

b3RecR_CAPSULE.exit1854:                          ; preds = %b3RecRdrCheck.exit.thread.i.i1853, %b3RecRdrCheck.exit.i.i1851
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.dw

bb.dv:                                            ; preds = %b3RecRdrCheck.exit.i.i1851
  %i.abr = load ptr, ptr %0, align 8, !tbaa !27, !noalias !436
  %i.abs = getelementptr inbounds i8, ptr %i.abr, i64 %i.abl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %17, ptr noundef nonnull align 1 dereferenceable(28) %i.abs, i64 28, i1 false)
  %i.abt = add nsw i32 %i.abk, 28
  store i32 %i.abt, ptr %i.a, align 4, !tbaa !23, !noalias !436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.abj, ptr noundef nonnull align 4 dereferenceable(28) %17, i64 28, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.abu = getelementptr i8, ptr %0, i64 16
  %.val1164 = load i16, ptr %i.abu, align 8, !tbaa !135
  %i.abv = add i16 %.val1164, -1
  %.sroa.23.0.insert.ext.i.i1855 = zext i16 %i.abv to i64
  %.sroa.23.0.insert.shift.i.i1856 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1855, 32
  %i.abw = and i64 %i.abi, -281470681743361
  %.sroa.02.0.insert.insert.i.i1857 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1856, %i.abw
  call void @b3Shape_SetCapsule(i64 %.sroa.02.0.insert.insert.i.i1857, ptr noundef nonnull %i.abj) #24
  br label %bb.dw

bb.dw:                                            ; preds = %b3RecR_CAPSULE.exit1854, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %b3RecR_WORLDID.exit

bb.dx:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.abx = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i32 0, ptr %i.abx, align 8
  %i.aby = tail call i64 @b3RecR_SHAPEID(ptr noundef nonnull %0)
  store i64 %i.aby, ptr %18, align 8
  %i.abz = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.aca = tail call { <2 x float>, float } @b3RecR_VEC3(ptr noundef nonnull %0) ; 2 uses
  %.fca.0.extract186 = extractvalue { <2 x float>, float } %i.aca, 0
  %.fca.1.extract187 = extractvalue { <2 x float>, float } %i.aca, 1
  store <2 x float> %.fca.0.extract186, ptr %i.abz, align 8, !tbaa !30
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 16
  store float %.fca.1.extract187, ptr %.sroa.4191.0..sroa_idx, align 8, !tbaa !30
  %i.acb = load i32, ptr %i.a, align 4, !tbaa !23 ; 7 uses
  %i.acc = sext i32 %i.acb to i64                 ; 2 uses
  %i.acd = add nsw i64 %i.acc, 4
  %i.ace = load i32, ptr %i.c, align 8, !tbaa !24 ; 3 uses
  %i.acf = sext i32 %i.ace to i64                 ; 3 uses
  %i.acg = icmp sgt i64 %i.acd, %i.acf
  br i1 %i.acg, label %b3RecRdrCheck.exit.thread.i.i1868, label %b3RecRdrCheck.exit.i.i1858

b3RecRdrCheck.exit.i.i1858:                       ; preds = %bb.dx
  %.pre.i.i1859 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26
  %i.ach = trunc nuw i8 %.pre.i.i1859 to i1
  br i1 %i.ach, label %b3RecR_F32.exit1861, label %b3RecR_F32.exit1869

b3RecR_F32.exit1861:                              ; preds = %b3RecRdrCheck.exit.i.i1858
  %i.aci = load ptr, ptr %0, align 8, !tbaa !27
  %i.acj = getelementptr inbounds i8, ptr %i.aci, i64 %i.acc
  %i.ack = load float, ptr %i.acj, align 1
  %i.acl = add nsw i32 %i.acb, 4                  ; 3 uses
  store i32 %i.acl, ptr %i.a, align 4, !tbaa !23
  %.pre3017 = sext i32 %i.acl to i64              ; 2 uses
  %.pre3019 = add nsw i64 %.pre3017, 4
  %i.acm = icmp sgt i64 %.pre3019, %i.acf
  %i.acn = getelementptr inbounds nuw i8, ptr %18, i64 20
  store float %i.ack, ptr %i.acn, align 4, !tbaa !147
  br i1 %i.acm, label %b3RecRdrCheck.exit.thread.i.i1868, label %b3RecR_F32.exit1865

b3RecR_F32.exit1865:                              ; preds = %b3RecR_F32.exit1861
  %i.aco = load ptr, ptr %0, align 8, !tbaa !27
  %i.acp = getelementptr inbounds i8, ptr %i.aco, i64 %.pre3017
  %i.acq = load float, ptr %i.acp, align 1
  %i.acr = add nsw i32 %i.acb, 8                  ; 3 uses
  store i32 %i.acr, ptr %i.a, align 4, !tbaa !23
  %.pre3021 = sext i32 %i.acr to i64              ; 2 uses
  %.pre3023 = add nsw i64 %.pre3021, 4
  %i.acs = icmp sgt i64 %.pre3023, %i.acf
  %i.act = getelementptr inbounds nuw i8, ptr %18, i64 24
  store float %i.acq, ptr %i.act, align 8, !tbaa !148
  br i1 %i.acs, label %b3RecRdrCheck.exit.thread.i.i1868, label %b3RecR_F32.exit1869.thread

b3RecRdrCheck.exit.thread.i.i1868:                ; preds = %b3RecR_F32.exit1861, %bb.dx, %b3RecR_F32.exit1865
  %i.acu = phi i32 [ %i.acr, %b3RecR_F32.exit1865 ], [ %i.acl, %b3RecR_F32.exit1861 ], [ %i.acb, %bb.dx ]
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_F32.exit1869

b3RecR_F32.exit1869:                              ; preds = %b3RecRdrCheck.exit.i.i1858, %b3RecRdrCheck.exit.thread.i.i1868
  %i.acv = phi i32 [ %i.acu, %b3RecRdrCheck.exit.thread.i.i1868 ], [ %i.acb, %b3RecRdrCheck.exit.i.i1858 ]
  %.not.i.i1870 = icmp slt i32 %i.acv, %i.ace
  br i1 %.not.i.i1870, label %b3RecR_BOOL.exit1876.thread, label %b3RecRdrCheck.exit.thread.i.i1872

b3RecR_F32.exit1869.thread:                       ; preds = %b3RecR_F32.exit1865
  %i.acw = load ptr, ptr %0, align 8, !tbaa !27
  %i.acx = getelementptr inbounds i8, ptr %i.acw, i64 %.pre3021
  %i.acy = load float, ptr %i.acx, align 1
  %i.acz = add nsw i32 %i.acb, 12                 ; 3 uses
  store i32 %i.acz, ptr %i.a, align 4, !tbaa !23
  %i.ada = getelementptr inbounds nuw i8, ptr %18, i64 28
  store float %i.acy, ptr %i.ada, align 4, !tbaa !149
  %.not.i.i18703268 = icmp slt i32 %i.acz, %i.ace
  br i1 %.not.i.i18703268, label %bb.dy, label %b3RecRdrCheck.exit.thread.i.i1872

b3RecRdrCheck.exit.thread.i.i1872:                ; preds = %b3RecR_F32.exit1869.thread, %b3RecR_F32.exit1869
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_BOOL.exit1876.thread

bb.dy:                                            ; preds = %b3RecR_F32.exit1869.thread
  %.pre3025 = sext i32 %i.acz to i64
  %i.adb = load ptr, ptr %0, align 8, !tbaa !27
  %i.adc = add nsw i32 %i.acb, 13
  store i32 %i.adc, ptr %i.a, align 4, !tbaa !23
  %i.add = getelementptr inbounds i8, ptr %i.adb, i64 %.pre3025
  %i.ade = load i8, ptr %i.add, align 1, !tbaa !28
  %i.adf = icmp ne i8 %i.ade, 0
  %i.adg = zext i1 %i.adf to i8
  %i.adh = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 %i.adg, ptr %i.adh, align 8, !tbaa !150
  %i.adi = getelementptr i8, ptr %0, i64 16
  %.val1165 = load i16, ptr %i.adi, align 8, !tbaa !135
  call fastcc void @b3RecDispatch_ShapeApplyWind(ptr noundef %18, i16 %.val1165)
  br label %b3RecR_BOOL.exit1876.thread

b3RecR_BOOL.exit1876.thread:                      ; preds = %b3RecR_F32.exit1869, %b3RecRdrCheck.exit.thread.i.i1872, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %b3RecR_WORLDID.exit

bb.dz:                                            ; preds = %bb.c
  %i.adj = tail call i64 @b3RecR_SHAPEID(ptr noundef nonnull %0)
  %i.adk = tail call ptr @b3RecR_STR(ptr noundef nonnull %0)
  %i.adl = load i8, ptr %i.e, align 4, !tbaa !25, !range !26, !noundef !66
  %i.adm = trunc nuw i8 %i.adl to i1
  br i1 %i.adm, label %bb.ea, label %b3RecR_WORLDID.exit

bb.ea:                                            ; preds = %bb.dz
  %i.adn = getelementptr i8, ptr %0, i64 16
  %.val1168 = load i16, ptr %i.adn, align 8, !tbaa !135
  %i.ado = add i16 %.val1168, -1
  %.sroa.23.0.insert.ext.i.i1877 = zext i16 %i.ado to i64
  %.sroa.23.0.insert.shift.i.i1878 = shl nuw nsw i64 %.sroa.23.0.insert.ext.i.i1877, 32
  %i.adp = and i64 %i.adj, -281470681743361
  %.sroa.02.0.insert.insert.i.i1879 = or disjoint i64 %.sroa.23.0.insert.shift.i.i1878, %i.adp
  tail call void @b3Shape_SetName(i64 %.sroa.02.0.insert.insert.i.i1879, ptr noundef %i.adk) #24
  br label %b3RecR_WORLDID.exit

bb.eb:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.adq = getelementptr inbounds nuw i8, ptr %19, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.adq, i8 0, i64 48, i1 false)
  %i.adr = tail call i64 @b3RecR_SHAPEID(ptr noundef nonnull %0) ; 2 uses
  store i64 %i.adr, ptr %19, align 8
  %i.ads = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  call void @b3RecR_MATERIAL(ptr dead_on_unwind nonnull writable sret(%struct.b3SurfaceMaterial) align 8 %i.ads, ptr noundef nonnull %0)
  %i.adt = load i32, ptr %i.a, align 4, !tbaa !23 ; 2 uses
  %i.adu = sext i32 %i.adt to i64                 ; 2 uses
  %i.adv = add nsw i64 %i.adu, 4
  %i.adw = load i32, ptr %i.c, align 8, !tbaa !24
  %i.adx = sext i32 %i.adw to i64
  %i.ady = icmp sgt i64 %i.adv, %i.adx
  br i1 %i.ady, label %b3RecRdrCheck.exit.thread.i.i1883, label %b3RecRdrCheck.exit.i.i1880

b3RecRdrCheck.exit.thread.i.i1883:                ; preds = %bb.eb
  store i8 0, ptr %i.e, align 4, !tbaa !25
  br label %b3RecR_I32.exit1884.thread

b3RecRdrCheck.exit.i.i1880:                       ; preds = %bb.eb
  %.pre.i.i1881 = load i8, ptr %i.e, align 4, !tbaa !25, !range !26
end_hunk_3
