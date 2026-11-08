Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/recording_replay?download=true
inline.NumInlined: 900
inline.NumDeleted: 193
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@b3RecR_WHEELJOINTDEF:bb.a
  %.pre139 = add nsw i64 %.pre137, 4
  %i.eo = icmp sgt i64 %.pre139, %i.s
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 156
  store float %i.em, ptr %i.ep, align 4, !tbaa !341
  br i1 %i.eo, label %b3RecR_F32.exit73.thread, label %b3RecR_F32.exit73

b3RecR_F32.exit73.thread:                         ; preds = %b3RecR_F32.exit69, %b3RecR_F32.exit69.thread
  %i.eq = phi i32 [ %i.eh, %b3RecR_F32.exit69.thread ], [ %i.en, %b3RecR_F32.exit69 ]
  %.pre-phi138289 = phi i64 [ %.pre-phi134276, %b3RecR_F32.exit69.thread ], [ %.pre137, %b3RecR_F32.exit69 ]
  %i.er = phi i64 [ %i.ei, %b3RecR_F32.exit69.thread ], [ %i.s, %b3RecR_F32.exit69 ]
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 160
  store float 0.000000e+00, ptr %i.es, align 8, !tbaa !342
  br label %b3RecRdrCheck.exit.thread.i.i76

b3RecR_F32.exit73:                                ; preds = %b3RecR_F32.exit69
  %i.et = load ptr, ptr %1, align 8, !tbaa !27
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 %.pre137
  %i.ev = load float, ptr %i.eu, align 1
  %i.ew = add nsw i32 %i.b, 40                    ; 3 uses
  store i32 %i.ew, ptr %i.a, align 4, !tbaa !23
  %.pre141 = sext i32 %i.ew to i64                ; 3 uses
  %.pre143 = add nsw i64 %.pre141, 4
  %i.ex = icmp sgt i64 %.pre143, %i.s
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 160
  store float %i.ev, ptr %i.ey, align 8, !tbaa !342
  br i1 %i.ex, label %b3RecRdrCheck.exit.thread.i.i76, label %b3RecR_F32.exit77.thread

b3RecRdrCheck.exit.thread.i.i76:                  ; preds = %b3RecR_F32.exit73.thread, %b3RecR_F32.exit73
  %i.ez = phi i32 [ %i.eq, %b3RecR_F32.exit73.thread ], [ %i.ew, %b3RecR_F32.exit73 ]
  %.pre-phi142302 = phi i64 [ %.pre-phi138289, %b3RecR_F32.exit73.thread ], [ %.pre141, %b3RecR_F32.exit73 ]
  %i.fa = phi i64 [ %i.er, %b3RecR_F32.exit73.thread ], [ %i.s, %b3RecR_F32.exit73 ]
  store i8 0, ptr %.phi.trans.insert.i.i, align 4, !tbaa !25
  br label %b3RecR_F32.exit77

b3RecRdrCheck.exit.i.i74:                         ; preds = %b3RecR_BOOL.exit61
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 152
  store <2 x float> zeroinitializer, ptr %i.fb, align 8, !tbaa !30
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 160
  store float 0.000000e+00, ptr %i.fc, align 8, !tbaa !342
  br label %b3RecR_F32.exit77

b3RecR_F32.exit77:                                ; preds = %b3RecRdrCheck.exit.i.i74, %b3RecRdrCheck.exit.thread.i.i76
  %i.fd = phi i64 [ %i.fa, %b3RecRdrCheck.exit.thread.i.i76 ], [ %i.dk, %b3RecRdrCheck.exit.i.i74 ] ; 2 uses
  %.pre-phi146 = phi i64 [ %.pre-phi142302, %b3RecRdrCheck.exit.thread.i.i76 ], [ %.pre-phi132, %b3RecRdrCheck.exit.i.i74 ] ; 2 uses
  %i.fe = phi i32 [ %i.ez, %b3RecRdrCheck.exit.thread.i.i76 ], [ %i.dl, %b3RecRdrCheck.exit.i.i74 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float 0.000000e+00, ptr %i.ff, align 4, !tbaa !343
  %.not.i.i78 = icmp slt i32 %i.fe, %i.e
  br i1 %.not.i.i78, label %b3RecR_BOOL.exit84, label %b3RecRdrCheck.exit.thread.i.i80

b3RecR_F32.exit77.thread:                         ; preds = %b3RecR_F32.exit73
  %i.fg = load ptr, ptr %1, align 8, !tbaa !27
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %.pre141
  %i.fi = load float, ptr %i.fh, align 1
  %i.fj = add nsw i32 %i.b, 44                    ; 3 uses
  store i32 %i.fj, ptr %i.a, align 4, !tbaa !23
  %.pre145 = sext i32 %i.fj to i64                ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %i.fi, ptr %i.fk, align 4, !tbaa !343
  %.not.i.i78314 = icmp slt i32 %i.fj, %i.e
  br i1 %.not.i.i78314, label %b3RecR_BOOL.exit84.thread, label %b3RecRdrCheck.exit.thread.i.i80

b3RecRdrCheck.exit.thread.i.i80:                  ; preds = %b3RecR_F32.exit77.thread, %b3RecR_F32.exit77
  %.pre-phi146316 = phi i64 [ %.pre145, %b3RecR_F32.exit77.thread ], [ %.pre-phi146, %b3RecR_F32.exit77 ]
  %i.fl = phi i64 [ %i.s, %b3RecR_F32.exit77.thread ], [ %i.fd, %b3RecR_F32.exit77 ]
  store i8 0, ptr %.phi.trans.insert.i.i, align 4, !tbaa !25
  br label %b3RecR_BOOL.exit84

b3RecR_BOOL.exit84:                               ; preds = %b3RecR_F32.exit77, %b3RecRdrCheck.exit.thread.i.i80
  %i.fm = phi i64 [ %i.fl, %b3RecRdrCheck.exit.thread.i.i80 ], [ %i.fd, %b3RecR_F32.exit77 ]
  %.pre-phi148 = phi i64 [ %.pre-phi146316, %b3RecRdrCheck.exit.thread.i.i80 ], [ %.pre-phi146, %b3RecR_F32.exit77 ]
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 0, ptr %i.fn, align 8, !tbaa !344
  %i.fo = add nsw i64 %.pre-phi148, 4
  %i.fp = icmp sgt i64 %i.fo, %i.fm
  br i1 %i.fp, label %b3RecR_F32.exit88.thread, label %b3RecRdrCheck.exit.i.i89

b3RecR_BOOL.exit84.thread:                        ; preds = %b3RecR_F32.exit77.thread
  %i.fq = load ptr, ptr %1, align 8, !tbaa !27
  %i.fr = add nsw i32 %i.b, 45                    ; 2 uses
  store i32 %i.fr, ptr %i.a, align 4, !tbaa !23
  %i.fs = getelementptr inbounds i8, ptr %i.fq, i64 %.pre145
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !28
  %i.fu = icmp ne i8 %i.ft, 0
  %i.fv = zext i1 %i.fu to i8
  %.pre147 = sext i32 %i.fr to i64                ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 %i.fv, ptr %i.fw, align 8, !tbaa !344
  %i.fx = add nsw i64 %.pre147, 4
  %i.fy = icmp sgt i64 %i.fx, %i.s
  br i1 %i.fy, label %b3RecR_F32.exit88.thread, label %b3RecR_F32.exit88

b3RecR_F32.exit88.thread:                         ; preds = %b3RecR_BOOL.exit84, %b3RecR_BOOL.exit84.thread
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float 0.000000e+00, ptr %i.fz, align 4, !tbaa !345
  br label %b3RecRdrCheck.exit.thread.i.i91

b3RecR_F32.exit88:                                ; preds = %b3RecR_BOOL.exit84.thread
  %i.ga = load ptr, ptr %1, align 8, !tbaa !27
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 %.pre147
  %i.gc = load float, ptr %i.gb, align 1
  %i.gd = add nsw i32 %i.b, 49                    ; 2 uses
  store i32 %i.gd, ptr %i.a, align 4, !tbaa !23
  %.pre149 = sext i32 %i.gd to i64                ; 2 uses
  %.pre151 = add nsw i64 %.pre149, 4
  %i.ge = icmp sgt i64 %.pre151, %i.s
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float %i.gc, ptr %i.gf, align 4, !tbaa !345
  br i1 %i.ge, label %b3RecRdrCheck.exit.thread.i.i91, label %bb.b

b3RecRdrCheck.exit.thread.i.i91:                  ; preds = %b3RecR_F32.exit88.thread, %b3RecR_F32.exit88
  store i8 0, ptr %.phi.trans.insert.i.i, align 4, !tbaa !25
  br label %b3RecR_F32.exit92

b3RecRdrCheck.exit.i.i89:                         ; preds = %b3RecR_BOOL.exit84
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float 0.000000e+00, ptr %i.gg, align 4, !tbaa !345
  br label %b3RecR_F32.exit92

bb.b:                                             ; preds = %b3RecR_F32.exit88
  %i.gh = load ptr, ptr %1, align 8, !tbaa !27
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 %.pre149
  %i.gj = load float, ptr %i.gi, align 1
  %i.gk = add nsw i32 %i.b, 53
  store i32 %i.gk, ptr %i.a, align 4, !tbaa !23
  br label %b3RecR_F32.exit92

b3RecR_F32.exit92:                                ; preds = %b3RecRdrCheck.exit.i.i89, %b3RecRdrCheck.exit.thread.i.i91, %bb.b
  %i.gl = phi float [ %i.gj, %bb.b ], [ 0.000000e+00, %b3RecRdrCheck.exit.i.i89 ], [ 0.000000e+00, %b3RecRdrCheck.exit.thread.i.i91 ]
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 176
  store float %i.gl, ptr %i.gm, align 8, !tbaa !346
  ret void
}

declare void @b3DefaultWheelJointDef(ptr dead_on_unwind writable sret(%struct.b3WheelJointDef) align 8) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @b3RecEnsureHits(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23
  %i.g = sub nsw i32 %i.d, %i.f                   ; 2 uses
  %i.h = icmp slt i32 %1, 0
  %i.i = icmp slt i32 %i.g, 0
  %i.j = icmp sgt i32 %1, %i.g
  %i.k = or i1 %i.i, %i.j
  %or.cond36.i = select i1 %i.h, i1 true, i1 %i.k
  %i.l = icmp samesign ugt i32 %1, 19173961
  %or.cond = select i1 %or.cond36.i, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.m, align 4, !tbaa !25
  br label %b3RecReserveScratch.exit

bb.c:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.b, align 8, !tbaa !32
  %.not.i = icmp sgt i32 %1, %i.n
  br i1 %.not.i, label %bb.d, label %b3RecReserveScratch.exit

bb.d:                                             ; preds = %bb.c
  %.not34.i = icmp samesign ugt i32 %1, 19173953
  %i.o = add nuw nsw i32 %1, 8
  %i.p = select i1 %.not34.i, i32 %1, i32 %i.o    ; 2 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.q, 112
  %i.s = tail call ptr @b3Alloc(i64 noundef %i.r) #23 ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not35.i = icmp eq ptr %i.t, null
  br i1 %.not35.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.b, align 8, !tbaa !32
  %i.v = sext i32 %i.u to i64
  %i.w = mul nsw i64 %i.v, 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.t, i64 %i.w, i1 false)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.y = load i32, ptr %i.b, align 8, !tbaa !32
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.z, 112
  tail call void @b3Free(ptr noundef %i.x, i64 noundef %i.aa) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.s, ptr %i.a, align 8, !tbaa !33
  store i32 %i.p, ptr %i.b, align 8, !tbaa !32
  br label %b3RecReserveScratch.exit

b3RecReserveScratch.exit:                         ; preds = %bb.b, %bb.c, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @b3ValidateReplay(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @b3CreatePlayer(ptr noundef %0, i32 noundef %1, i32 noundef %2) ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %.split

.split:                                           ; preds = %bb.a
  %i.c = tail call zeroext i1 @b3RecPlayer_StepFrame(ptr noundef nonnull %i.a)
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 189 ; 2 uses
  br i1 %i.c, label %bb.b, label %._crit_edge12

bb.b:                                             ; preds = %.split, %.split10
  %i.d = load i8, ptr %3, align 1, !tbaa !65, !range !26, !noundef !66
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %._crit_edge, label %.split10, !llvm.loop !347

.split10:                                         ; preds = %bb.b
  %i.f = tail call zeroext i1 @b3RecPlayer_StepFrame(ptr noundef nonnull %i.a)
  br i1 %i.f, label %bb.b, label %._crit_edge12, !llvm.loop !347

._crit_edge:                                      ; preds = %bb.b
  br label %._crit_edge12, !llvm.loop !347

._crit_edge12:                                    ; preds = %.split10, %._crit_edge, %.split
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.h = load i8, ptr %i.g, align 4, !tbaa !67, !range !26, !noundef !66
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge12
  %i.j = load i8, ptr %3, align 1, !tbaa !65, !range !26, !noundef !66
  %i.k = icmp eq i8 %i.j, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge12
  %i.l = phi i1 [ false, %._crit_edge12 ], [ %i.k, %bb.c ]
  tail call void @b3DestroyPlayer(ptr noundef nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i1 [ %i.l, %bb.d ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @b3CreatePlayer(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %1, 48
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts120 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %.sroa.074.0.copyload = load i32, ptr %0, align 1 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %.sroa.7.0.copyload = load i16, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 1 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.1178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.1178.0.copyload = load float, ptr %.sroa.1178.0..sroa_idx, align 1 ; 3 uses
  %.sroa.1481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.1481.0.copyload = load i64, ptr %.sroa.1481.0..sroa_idx, align 1 ; 4 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 1 ; 3 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.20.0.copyload = load i64, ptr %.sroa.20.0..sroa_idx, align 1
  %.not = icmp eq i32 %.sroa.074.0.copyload, 1129460546
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %.sroa.074.0.copyload) ; 0 uses
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.5.0.copyload = load i16, ptr %.sroa.5.0..sroa_idx, align 1 ; 2 uses
  %.not111 = icmp eq i16 %.sroa.5.0.copyload, 5
  br i1 %.not111, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = zext i16 %.sroa.5.0.copyload to i32
  %i.e = zext i16 %.sroa.7.0.copyload to i32
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.d, i32 noundef %i.e, i32 noundef 5, i32 noundef 4) ; 0 uses
  br label %bb.z

bb.g:                                             ; preds = %bb.e
  %.not112 = icmp eq i8 %.sroa.8.0.copyload, 8
  br i1 %.not112, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = zext i8 %.sroa.8.0.copyload to i32
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.g, i32 noundef 8) ; 0 uses
  br label %bb.z

bb.i:                                             ; preds = %bb.g
  %.not113 = icmp eq i8 %.sroa.10.0.copyload, 0
  br i1 %.not113, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %puts119 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.z

bb.k:                                             ; preds = %bb.i
  %i.i = icmp eq i64 %.sroa.1481.0.copyload, 0
  br i1 %i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %puts118 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.z

bb.m:                                             ; preds = %bb.k
  %i.j = add i64 %.sroa.1481.0.copyload, 48       ; 2 uses
  %.not114 = icmp eq i64 %.sroa.17.0.copyload, 0
  %i.k = zext nneg i32 %1 to i64                  ; 6 uses
  %i.l = select i1 %.not114, i64 %i.k, i64 %.sroa.17.0.copyload ; 3 uses
  %i.m = icmp ugt i64 %.sroa.1481.0.copyload, -49
  %i.n = icmp ugt i64 %i.j, %i.l
  %or.cond121 = select i1 %i.m, i1 true, i1 %i.n
  %i.o = icmp ugt i64 %i.l, %i.k
  %or.cond122 = select i1 %or.cond121, i1 true, i1 %i.o
  br i1 %or.cond122, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %puts117 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.p = trunc i64 %i.j to i32                    ; 3 uses
  %i.q = trunc nuw nsw i64 %i.l to i32
  %i.r = tail call ptr @b3Alloc(i64 noundef %i.k) #23 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %0, i64 %i.k, i1 false)
  %i.s = tail call ptr @b3Alloc(i64 noundef 1400) #23 ; 39 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1376) %i.t, i8 0, i64 1376, i1 false)
  store ptr %i.r, ptr %i.s, align 8, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.u, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %i.p, ptr %i.v, align 4, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %i.q, ptr %i.w, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store float %.sroa.1178.0.copyload, ptr %i.x, align 4, !tbaa !72
  %i.y = tail call float @b3GetLengthUnitsPerMeter() #23
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store float %i.y, ptr %i.z, align 8, !tbaa !73
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store i32 %2, ptr %i.ab, align 4, !tbaa !74
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store i8 0, ptr %i.ac, align 8, !tbaa !75
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 73
  store i8 0, ptr %i.ad, align 1, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 76
  store i32 -1, ptr %i.ae, align 4, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 1376
  store i32 16, ptr %i.af, align 8, !tbaa !78
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1380
  store i32 16, ptr %i.ag, align 4, !tbaa !79
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 1360
  store i64 536870912, ptr %i.ah, align 8, !tbaa !80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 1384
  store i32 0, ptr %i.ai, align 8, !tbaa !81
  %i.aj = fcmp ogt float %.sroa.1178.0.copyload, 0.000000e+00
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @b3SetLengthUnitsPerMeter(float noundef %.sroa.1178.0.copyload) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call fastcc void @b3RecScanFile(ptr noundef nonnull %i.s)
  %i.ak = tail call fastcc i32 @b3RecPlayerCreateWorld(ptr noundef nonnull %i.s) ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 168 ; 3 uses
  store ptr %i.r, ptr %i.al, align 8, !tbaa !82
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  store i32 %1, ptr %i.am, align 8, !tbaa !348
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 180 ; 2 uses
  store i32 %i.p, ptr %i.an, align 4, !tbaa !83
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 184
  store i32 %i.ak, ptr %i.ao, align 8, !tbaa !84
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 188
  store i8 1, ptr %i.ap, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 189
  store i8 0, ptr %i.aq, align 1, !tbaa !65
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  store ptr %i.s, ptr %i.ar, align 8, !tbaa !349
  %i.as = tail call fastcc zeroext i1 @b3RecLoadSlots(ptr noundef nonnull %i.al, ptr noundef %i.r, i32 noundef %1, i64 noundef %.sroa.17.0.copyload, i64 noundef %.sroa.20.0.copyload)
  br i1 %i.as, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @b3DestroyWorld(i32 %i.ak) #23
  tail call void @b3Free(ptr noundef %i.r, i64 noundef %i.k) #23
  tail call void @b3Free(ptr noundef nonnull %i.s, i64 noundef 1400) #23
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.at = trunc i64 %.sroa.1481.0.copyload to i32 ; 2 uses
  %i.au = tail call ptr @b3GetWorldFromId(i32 %i.ak) #23
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.aw = tail call zeroext i1 @b3DeserializeIntoShell(ptr noundef nonnull %i.av, i32 noundef %i.at, ptr noundef %i.au, ptr noundef nonnull %i.al) #23
  br i1 %i.aw, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @b3DestroyWorld(i32 %i.ak) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 1248
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !85
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 1256
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !86
  tail call fastcc void @b3RecFreeSlots(ptr noundef %i.ay, i32 noundef %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 1264
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !87 ; 2 uses
  %.not115 = icmp eq ptr %i.bc, null
  br i1 %.not115, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 1276
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !88
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul nsw i64 %i.bf, 88
  tail call void @b3Free(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #23
  br label %bb.v

end_hunk_0
