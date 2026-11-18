Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3252
inline.NumDeleted: 430
loop-unroll.NumCompletelyUnrolled: 78
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 138
begin_hunk_0_@getAutoVacuum:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i21, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !838 ; 2 uses
  %.not.i28 = icmp eq i8 %i.at, 0
  br i1 %.not.i28, label %..critedge.loopexit.i23_crit_edge, label %.lr.ph.i20, !llvm.loop !10

..critedge.loopexit.i23_crit_edge:                ; preds = %bb.d
  br label %sqlite3StrICmp.exit29, !llvm.loop !10

.critedge.loopexit.i23split:                      ; preds = %.lr.ph.i20
  %i.au = zext i8 %i.ai to i64
  br label %sqlite3StrICmp.exit29

sqlite3StrICmp.exit29:                            ; preds = %bb.a, %..critedge.loopexit.i23_crit_edge, %.critedge.loopexit.i23split
  %.0.lcssa.i26 = phi ptr [ @.str.493, %bb.a ], [ %.012.i21, %.critedge.loopexit.i23split ], [ %i.as, %..critedge.loopexit.i23_crit_edge ]
  %.lcssa.i27 = phi i64 [ 0, %bb.a ], [ %i.au, %.critedge.loopexit.i23split ], [ 0, %..critedge.loopexit.i23_crit_edge ]
  %i.av = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.lcssa.i27
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !838
  %i.ax = load i8, ptr %.0.lcssa.i26, align 1, !tbaa !838
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !838
  %i.bb = icmp eq i8 %i.aw, %i.ba
  br i1 %i.bb, label %bb.f, label %bb.e

bb.e:                                             ; preds = %sqlite3StrICmp.exit29
  %i.bc = tail call i64 @__isoc23_strtol(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10) #44, !inline_history !61
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %or.cond = icmp ult i32 %i.bd, 3
  %i.be = select i1 %or.cond, i32 %i.bd, i32 0
  br label %bb.f

bb.f:                                             ; preds = %sqlite3StrICmp.exit29, %sqlite3StrICmp.exit18, %sqlite3StrICmp.exit, %bb.e
  %.0 = phi i32 [ %i.be, %bb.e ], [ 0, %sqlite3StrICmp.exit ], [ 1, %sqlite3StrICmp.exit18 ], [ 2, %sqlite3StrICmp.exit29 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @changeTempStorage(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 !guid !3161 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !838     ; 4 uses
  %i.b = add i8 %i.a, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.b, 3
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i8 %i.b to i32
  br label %getTempStore.exit

bb.c:                                             ; preds = %bb.a
  %.not10.i.i = icmp eq i8 %i.a, 0
  br i1 %.not10.i.i, label %sqlite3StrICmp.exit16.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %i.d = phi i8 [ %i.o, %bb.d ], [ %i.a, %bb.c ]
  %.012.i.i = phi ptr [ %i.n, %bb.d ], [ @.str.465, %bb.c ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.m, %bb.d ], [ %1, %bb.c ]
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !838
  %i.h = load i8, ptr %.012.i.i, align 1, !tbaa !838
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !838
  %i.l = icmp eq i8 %i.g, %i.k
  br i1 %i.l, label %bb.d, label %.lr.ph.i7.i.preheader

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1 ; 2 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !838   ; 2 uses
  %.not.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i, label %sqlite3StrICmp.exit.i, label %.lr.ph.i.i, !llvm.loop !10

sqlite3StrICmp.exit.i:                            ; preds = %bb.d
  %.pre19.i = load i8, ptr %i.n, align 1, !tbaa !838
  %i.p = icmp eq i8 %.pre19.i, 0
  br i1 %i.p, label %getTempStore.exit, label %.lr.ph.i7.i.preheader

.lr.ph.i7.i.preheader:                            ; preds = %.lr.ph.i.i, %sqlite3StrICmp.exit.i
  br label %.lr.ph.i7.i

.lr.ph.i7.i:                                      ; preds = %.lr.ph.i7.i.preheader, %bb.e
  %i.q = phi i8 [ %i.ab, %bb.e ], [ %i.a, %.lr.ph.i7.i.preheader ]
  %.012.i8.i = phi ptr [ %i.aa, %bb.e ], [ @.str.494, %.lr.ph.i7.i.preheader ] ; 3 uses
  %.0911.i9.i = phi ptr [ %i.z, %bb.e ], [ %1, %.lr.ph.i7.i.preheader ]
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !838
  %i.u = load i8, ptr %.012.i8.i, align 1, !tbaa !838
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !838
  %i.y = icmp eq i8 %i.t, %i.x
  br i1 %i.y, label %bb.e, label %sqlite3StrICmp.exit16.i

bb.e:                                             ; preds = %.lr.ph.i7.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i9.i, i64 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !838  ; 2 uses
  %.not.i15.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i15.i, label %..critedge.loopexit.i10_crit_edge.i, label %.lr.ph.i7.i, !llvm.loop !10

..critedge.loopexit.i10_crit_edge.i:              ; preds = %bb.e
  br label %sqlite3StrICmp.exit16.i, !llvm.loop !10

sqlite3StrICmp.exit16.i:                          ; preds = %.lr.ph.i7.i, %..critedge.loopexit.i10_crit_edge.i, %bb.c
  %.0.lcssa.i13.i = phi ptr [ @.str.494, %bb.c ], [ %i.aa, %..critedge.loopexit.i10_crit_edge.i ], [ %.012.i8.i, %.lr.ph.i7.i ]
  %.lcssa.i14.i = phi i64 [ 0, %bb.c ], [ 0, %..critedge.loopexit.i10_crit_edge.i ], [ %i.r, %.lr.ph.i7.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.lcssa.i14.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !838
  %i.ae = load i8, ptr %.0.lcssa.i13.i, align 1, !tbaa !838
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !838
  %i.ai = icmp eq i8 %i.ad, %i.ah
  %..i = select i1 %i.ai, i32 2, i32 0
  br label %getTempStore.exit

getTempStore.exit:                                ; preds = %bb.b, %sqlite3StrICmp.exit.i, %sqlite3StrICmp.exit16.i
  %.0.i = phi i32 [ %i.c, %bb.b ], [ 1, %sqlite3StrICmp.exit.i ], [ %..i, %sqlite3StrICmp.exit16.i ] ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !991   ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 41 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !1438
  %i.am = zext i8 %i.al to i32
  %i.an = icmp eq i32 %.0.i, %i.am
  br i1 %i.an, label %bb.j, label %bb.f

bb.f:                                             ; preds = %getTempStore.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !979
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1121 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.at = load i8, ptr %i.as, align 8, !tbaa !1175
  %.not8.i = icmp eq i8 %i.at, 0
  br i1 %.not8.i, label %invalidateTempStorage.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @sqlite3BtreeClose(ptr noundef nonnull %i.ar)
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !979
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store ptr null, ptr %i.av, align 8, !tbaa !1121
  tail call fastcc void @sqlite3ResetInternalSchema(ptr noundef nonnull %i.aj, i32 noundef 0)
  br label %bb.i

invalidateTempStorage.exit:                       ; preds = %bb.g
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.495)
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.aw = trunc nuw nsw i32 %.0.i to i8
  store i8 %i.aw, ptr %i.ak, align 1, !tbaa !1438
  br label %bb.j

bb.j:                                             ; preds = %invalidateTempStorage.exit, %getTempStore.exit, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @invalidateTempStorage(ptr nofree noundef captures(none) %0) unnamed_addr #5 !guid !3162 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !991    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !979
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1121 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load i8, ptr %i.f, align 8, !tbaa !1175
  %.not8 = icmp eq i8 %i.g, 0
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.495)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @sqlite3BtreeClose(ptr noundef nonnull %i.e)
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !979
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr null, ptr %i.i, align 8, !tbaa !1121
  tail call fastcc void @sqlite3ResetInternalSchema(ptr noundef nonnull %i.a, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nounwind memory(read) uwtable
define internal fastcc i32 @getSafetyLevel(ptr noundef nonnull %0) unnamed_addr #38 !guid !3163 {
bb.a:
  %i.a = tail call ptr @__ctype_b_loc() #47
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !932
  %i.c = load i8, ptr %0, align 1, !tbaa !838
  %i.d = sext i8 %i.c to i64
  %i.e = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !933
  %i.g = and i16 %i.f, 2048
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @__isoc23_strtol(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10) #44, !inline_history !61
  %i.i = trunc i64 %i.h to i32
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #43
  %.fr26 = freeze i64 %i.j
  %i.k = trunc i64 %.fr26 to i32                  ; 4 uses
  switch i32 %i.k, label %sqlite3StrNICmp.exit.1 [
    i32 0, label %.loopexit
    i32 2, label %.lr.ph.i.171
  ]

.lr.ph.i.171:                                     ; preds = %bb.c
  %i.l = load i8, ptr %0, align 1, !tbaa !838
  %i.m = and i8 %i.l, -33
  %i.n = icmp eq i8 %i.m, 79
  br i1 %i.n, label %sqlite3StrNICmp.exit, label %.lr.ph.i.preheader.1

sqlite3StrNICmp.exit:                             ; preds = %.lr.ph.i.171
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !838
  %1 = and i8 %i.p, -33
  %i.q = icmp eq i8 %1, 78
  br i1 %i.q, label %sqlite3StrNICmp.exit.thread, label %.lr.ph.i.preheader.1

sqlite3StrNICmp.exit.thread:                      ; preds = %.lr.ph.i.6.3, %.lr.ph.i.5.3, %.lr.ph.i.4.2, %.lr.ph.i.3.4, %.lr.ph.i.2.2, %.lr.ph.i.1.1, %sqlite3StrNICmp.exit
  %2 = phi i64 [ 1, %.lr.ph.i.1.1 ], [ 2, %.lr.ph.i.2.2 ], [ 3, %.lr.ph.i.3.4 ], [ 4, %.lr.ph.i.4.2 ], [ 5, %.lr.ph.i.5.3 ], [ 0, %sqlite3StrNICmp.exit ], [ 6, %.lr.ph.i.6.3 ]
  %i.r = getelementptr inbounds nuw i8, ptr @getSafetyLevel.iValue, i64 %2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !838
  %i.t = zext i8 %i.s to i32
  br label %.loopexit

.lr.ph.i.preheader.1:                             ; preds = %.lr.ph.i.171, %sqlite3StrNICmp.exit
  %3 = load i8, ptr %0, align 1, !tbaa !838
  %i.u = and i8 %3, -33
  %i.v = icmp eq i8 %i.u, 78
  br i1 %i.v, label %.lr.ph.i.1.1, label %sqlite3StrNICmp.exit.1

.lr.ph.i.1.1:                                     ; preds = %.lr.ph.i.preheader.1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !838
  %i.y = and i8 %i.x, -33
  %i.z = icmp eq i8 %i.y, 79
  br i1 %i.z, label %sqlite3StrNICmp.exit.thread, label %sqlite3StrNICmp.exit.1

sqlite3StrNICmp.exit.1:                           ; preds = %.lr.ph.i.preheader.1, %.lr.ph.i.1.1, %bb.c
  %i.aa = icmp eq i32 %i.k, 3                     ; 2 uses
  br i1 %i.aa, label %.lr.ph.i.preheader.2, label %sqlite3StrNICmp.exit.2

.lr.ph.i.preheader.2:                             ; preds = %sqlite3StrNICmp.exit.1
  %4 = load i8, ptr %0, align 1, !tbaa !838
  %i.ab = and i8 %4, -33
  %i.ac = icmp eq i8 %i.ab, 79
  br i1 %i.ac, label %.lr.ph.i.2.1, label %sqlite3StrNICmp.exit.2

.lr.ph.i.2.1:                                     ; preds = %.lr.ph.i.preheader.2
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !838
  %i.af = and i8 %i.ae, -33
  %i.ag = icmp eq i8 %i.af, 70
  br i1 %i.ag, label %.lr.ph.i.2.2, label %sqlite3StrNICmp.exit.2

.lr.ph.i.2.2:                                     ; preds = %.lr.ph.i.2.1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !838
  %i.aj = and i8 %i.ai, -33
  %i.ak = icmp eq i8 %i.aj, 70
  br i1 %i.ak, label %sqlite3StrNICmp.exit.thread, label %sqlite3StrNICmp.exit.2

sqlite3StrNICmp.exit.2:                           ; preds = %.lr.ph.i.preheader.2, %.lr.ph.i.2.1, %.lr.ph.i.2.2, %sqlite3StrNICmp.exit.1
  %i.al = icmp eq i32 %i.k, 5
  br i1 %i.al, label %.lr.ph.i.preheader.3, label %sqlite3StrNICmp.exit.3

.lr.ph.i.preheader.3:                             ; preds = %sqlite3StrNICmp.exit.2
  %5 = load i8, ptr %0, align 1, !tbaa !838
  %i.am = and i8 %5, -33
  %i.an = icmp eq i8 %i.am, 70
  br i1 %i.an, label %.lr.ph.i.3.1, label %sqlite3StrNICmp.exit.3

.lr.ph.i.3.1:                                     ; preds = %.lr.ph.i.preheader.3
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !838
  %i.aq = and i8 %i.ap, -33
  %i.ar = icmp eq i8 %i.aq, 65
  br i1 %i.ar, label %.lr.ph.i.3.2, label %sqlite3StrNICmp.exit.3

.lr.ph.i.3.2:                                     ; preds = %.lr.ph.i.3.1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !838
  %i.au = and i8 %i.at, -33
  %i.av = icmp eq i8 %i.au, 76
  br i1 %i.av, label %.lr.ph.i.3.3, label %sqlite3StrNICmp.exit.3

.lr.ph.i.3.3:                                     ; preds = %.lr.ph.i.3.2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !838
  %i.ay = and i8 %i.ax, -33
  %i.az = icmp eq i8 %i.ay, 83
  br i1 %i.az, label %.lr.ph.i.3.4, label %sqlite3StrNICmp.exit.3

.lr.ph.i.3.4:                                     ; preds = %.lr.ph.i.3.3
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !838
  %i.bc = and i8 %i.bb, -33
  %i.bd = icmp eq i8 %i.bc, 69
  br i1 %i.bd, label %sqlite3StrNICmp.exit.thread, label %sqlite3StrNICmp.exit.3

sqlite3StrNICmp.exit.3:                           ; preds = %.lr.ph.i.preheader.3, %.lr.ph.i.3.1, %.lr.ph.i.3.2, %.lr.ph.i.3.3, %.lr.ph.i.3.4, %sqlite3StrNICmp.exit.2
  br i1 %i.aa, label %.lr.ph.i.preheader.4, label %sqlite3StrNICmp.exit.4

.lr.ph.i.preheader.4:                             ; preds = %sqlite3StrNICmp.exit.3
  %i.be = load i8, ptr %0, align 1, !tbaa !838
  %i.bf = and i8 %i.be, -33
  %i.bg = icmp eq i8 %i.bf, 89
  br i1 %i.bg, label %.lr.ph.i.4.1, label %sqlite3StrNICmp.exit.4

.lr.ph.i.4.1:                                     ; preds = %.lr.ph.i.preheader.4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !838
  %i.bj = and i8 %i.bi, -33
  %i.bk = icmp eq i8 %i.bj, 69
  br i1 %i.bk, label %.lr.ph.i.4.2, label %sqlite3StrNICmp.exit.4

.lr.ph.i.4.2:                                     ; preds = %.lr.ph.i.4.1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !838
  %i.bn = and i8 %i.bm, -33
  %i.bo = icmp eq i8 %i.bn, 83
  br i1 %i.bo, label %sqlite3StrNICmp.exit.thread, label %sqlite3StrNICmp.exit.4

sqlite3StrNICmp.exit.4:                           ; preds = %.lr.ph.i.preheader.4, %.lr.ph.i.4.1, %.lr.ph.i.4.2, %sqlite3StrNICmp.exit.3
  %i.bp = icmp eq i32 %i.k, 4
  br i1 %i.bp, label %.lr.ph.i.preheader.5, label %.loopexit

.lr.ph.i.preheader.5:                             ; preds = %sqlite3StrNICmp.exit.4
  %i.bq = load i8, ptr %0, align 1, !tbaa !838
  %i.br = and i8 %i.bq, -33
  %i.bs = icmp eq i8 %i.br, 84
  br i1 %i.bs, label %.lr.ph.i.5.1, label %.lr.ph.i.preheader.6

.lr.ph.i.5.1:                                     ; preds = %.lr.ph.i.preheader.5
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !838
  %i.bv = and i8 %i.bu, -33
  %i.bw = icmp eq i8 %i.bv, 82
  br i1 %i.bw, label %.lr.ph.i.5.2, label %.lr.ph.i.preheader.6

.lr.ph.i.5.2:                                     ; preds = %.lr.ph.i.5.1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !838
  %i.bz = and i8 %i.by, -33
  %i.ca = icmp eq i8 %i.bz, 85
  br i1 %i.ca, label %.lr.ph.i.5.3, label %.lr.ph.i.preheader.6

.lr.ph.i.5.3:                                     ; preds = %.lr.ph.i.5.2
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !838
  %i.cd = and i8 %i.cc, -33
  %i.ce = icmp eq i8 %i.cd, 69
  br i1 %i.ce, label %sqlite3StrNICmp.exit.thread, label %.lr.ph.i.preheader.6

.lr.ph.i.preheader.6:                             ; preds = %.lr.ph.i.preheader.5, %.lr.ph.i.5.1, %.lr.ph.i.5.2, %.lr.ph.i.5.3
  %i.cf = load i8, ptr %0, align 1, !tbaa !838
  %i.cg = and i8 %i.cf, -33
  %i.ch = icmp eq i8 %i.cg, 70
  br i1 %i.ch, label %.lr.ph.i.6.1, label %.loopexit

.lr.ph.i.6.1:                                     ; preds = %.lr.ph.i.preheader.6
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !838
  %i.ck = and i8 %i.cj, -33
  %i.cl = icmp eq i8 %i.ck, 85
  br i1 %i.cl, label %.lr.ph.i.6.2, label %.loopexit

.lr.ph.i.6.2:                                     ; preds = %.lr.ph.i.6.1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !838
  %i.co = and i8 %i.cn, -33
  %i.cp = icmp eq i8 %i.co, 76
  br i1 %i.cp, label %.lr.ph.i.6.3, label %.loopexit

.lr.ph.i.6.3:                                     ; preds = %.lr.ph.i.6.2
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !838
  %i.cs = and i8 %i.cr, -33
  %i.ct = icmp eq i8 %i.cs, 76
  br i1 %i.ct, label %sqlite3StrNICmp.exit.thread, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.preheader.6, %.lr.ph.i.6.1, %.lr.ph.i.6.2, %.lr.ph.i.6.3, %bb.c, %sqlite3StrNICmp.exit.4, %sqlite3StrNICmp.exit.thread, %bb.b
  %.011 = phi i32 [ %i.i, %bb.b ], [ %i.t, %sqlite3StrNICmp.exit.thread ], [ 1, %bb.c ], [ 1, %sqlite3StrNICmp.exit.4 ], [ 1, %.lr.ph.i.6.3 ], [ 1, %.lr.ph.i.6.2 ], [ 1, %.lr.ph.i.6.1 ], [ 1, %.lr.ph.i.preheader.6 ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @flagPragma(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #5 !guid !3164 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !838     ; 11 uses
  %.not10.i = icmp eq i8 %i.a, 0
  br i1 %.not10.i, label %sqlite3VdbeAddOp2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.b = phi i8 [ %i.m, %bb.b ], [ %i.a, %bb.a ]
  %.012.i = phi ptr [ %i.l, %bb.b ], [ @.str.496, %bb.a ] ; 2 uses
  %.0911.i = phi ptr [ %i.k, %bb.b ], [ %1, %bb.a ]
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !838
  %i.f = load i8, ptr %.012.i, align 1, !tbaa !838
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !838
  %i.j = icmp eq i8 %i.e, %i.i
  br i1 %i.j, label %bb.b, label %.lr.ph.i.1.preheader

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0911.i, i64 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.k, align 1, !tbaa !838   ; 2 uses
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %.critedge.loopexit.i, label %.lr.ph.i, !llvm.loop !10

.critedge.loopexit.i:                             ; preds = %bb.b
  %.pre37 = load i8, ptr %i.l, align 1, !tbaa !838
  %i.n = icmp eq i8 %.pre37, 0
  br i1 %i.n, label %.split28.us, label %.lr.ph.i.1.preheader

.lr.ph.i.1.preheader:                             ; preds = %.lr.ph.i, %.critedge.loopexit.i
  br label %.lr.ph.i.1

.split28.us:                                      ; preds = %.critedge.loopexit.i, %.critedge.loopexit.i.1, %.critedge.loopexit.i.2, %.critedge.loopexit.i.3, %.critedge.loopexit.i.4, %.critedge.loopexit.i.5, %.critedge.loopexit.i.6, %.critedge.loopexit.i.7, %.critedge.loopexit.i.8, %.critedge.loopexit.i.9
  %.026.lcssa = phi ptr [ @flagPragma.aPragma, %.critedge.loopexit.i ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 16), %.critedge.loopexit.i.1 ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 32), %.critedge.loopexit.i.2 ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 48), %.critedge.loopexit.i.3 ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 64), %.critedge.loopexit.i.4 ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 80), %.critedge.loopexit.i.5 ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 96), %.critedge.loopexit.i.6 ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 112), %.critedge.loopexit.i.7 ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 128), %.critedge.loopexit.i.8 ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 144), %.critedge.loopexit.i.9 ] ; 2 uses
  %.lcssa34 = phi ptr [ @.str.496, %.critedge.loopexit.i ], [ @.str.497, %.critedge.loopexit.i.1 ], [ @.str.498, %.critedge.loopexit.i.2 ], [ @.str.499, %.critedge.loopexit.i.3 ], [ @.str.500, %.critedge.loopexit.i.4 ], [ @.str.501, %.critedge.loopexit.i.5 ], [ @.str.502, %.critedge.loopexit.i.6 ], [ @.str.503, %.critedge.loopexit.i.7 ], [ @.str.504, %.critedge.loopexit.i.8 ], [ @.str.505, %.critedge.loopexit.i.9 ]
  %i.o = load ptr, ptr %0, align 8, !tbaa !991    ; 3 uses
  %i.p = tail call fastcc ptr @sqlite3GetVdbe(ptr noundef nonnull %0) ; 8 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %sqlite3VdbeAddOp2.exit, label %bb.c

bb.c:                                             ; preds = %.split28.us
  %i.q = icmp eq ptr %2, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1052
  %i.t = getelementptr inbounds nuw i8, ptr %.026.lcssa, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !3166
  %i.v = and i32 %i.u, %i.s
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  tail call fastcc void @returnSingleInt(ptr noundef nonnull %0, ptr noundef nonnull %.lcssa34, i32 noundef %i.x)
  br label %sqlite3VdbeAddOp2.exit

bb.e:                                             ; preds = %bb.c
  %i.y = tail call fastcc i32 @getSafetyLevel(ptr noundef nonnull %2)
  %i.z = and i32 %i.y, 1
  %.not23 = icmp eq i32 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %.026.lcssa, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !3166 ; 2 uses
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1052
  %i.ae = or i32 %i.ad, %i.ab
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !1052
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = xor i32 %i.ab, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1052
  %i.ai = and i32 %i.ah, %i.af
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !1052
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !907 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !915 ; 6 uses
  %.not.i.i = icmp sgt i32 %i.am, %i.ak
  br i1 %.not.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not23.i.i = icmp eq i32 %i.am, 0
  %i.an = shl nsw i32 %i.am, 1
  %spec.select.i.i = select i1 %.not23.i.i, i32 42, i32 %i.an ; 4 uses
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !878
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 42 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !901
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.j, label %resizeOpArray.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.at = mul i32 %spec.select.i.i, 24
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !908
  %i.av = tail call ptr @sqlite3_realloc(ptr noundef %i.au, i32 noundef %i.at) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %bb.k, label %sqlite3DbRealloc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.aq, align 2, !tbaa !901
  br label %resizeOpArray.exit.i.i

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.j
  store i32 %spec.select.i.i, ptr %i.al, align 4, !tbaa !915
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !908
  %i.aw = icmp sgt i32 %spec.select.i.i, %i.am
  br i1 %i.aw, label %bb.l, label %resizeOpArray.exit.i.i

bb.l:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.ax = sext i32 %i.am to i64
  %i.ay = getelementptr inbounds [24 x i8], ptr %i.av, i64 %i.ax
  %i.az = sub nsw i32 %spec.select.i.i, %i.am
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = mul nuw nsw i64 %i.ba, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ay, i8 0, i64 %i.bb, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.l, %sqlite3DbRealloc.exit.i.i.i, %bb.k, %bb.i
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !878
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 42
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !901
  %.not24.i.i = icmp eq i8 %i.be, 0
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp2.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i
  %.pre.i.i = load i32, ptr %i.aj, align 8, !tbaa !907
  br label %bb.m

bb.m:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i, %bb.h
  %i.bf = phi i32 [ %.pre.i.i, %resizeOpArray.exit._crit_edge.i.i ], [ %i.ak, %bb.h ]
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.aj, align 8, !tbaa !907
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !908
  %i.bj = sext i32 %i.ak to i64
  %i.bk = getelementptr inbounds [24 x i8], ptr %i.bi, i64 %i.bj ; 3 uses
  store i8 13, ptr %i.bk, align 8, !tbaa !910
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store i8 0, ptr %i.bm, align 1, !tbaa !946
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 339
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bl, i8 0, i64 20, i1 false)
  store i8 0, ptr %i.bn, align 1, !tbaa !876
  br label %sqlite3VdbeAddOp2.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1.preheader, %bb.n
  %i.bo = phi i8 [ %i.bz, %bb.n ], [ %i.a, %.lr.ph.i.1.preheader ]
  %.012.i.1 = phi ptr [ %i.by, %bb.n ], [ @.str.497, %.lr.ph.i.1.preheader ] ; 2 uses
  %.0911.i.1 = phi ptr [ %i.bx, %bb.n ], [ %1, %.lr.ph.i.1.preheader ]
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !838
  %i.bs = load i8, ptr %.012.i.1, align 1, !tbaa !838
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !838
  %i.bw = icmp eq i8 %i.br, %i.bv
  br i1 %i.bw, label %bb.n, label %.lr.ph.i.2.preheader

bb.n:                                             ; preds = %.lr.ph.i.1
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.1, i64 1 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.1, i64 1 ; 2 uses
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !838 ; 2 uses
  %.not.i.1 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.1, label %.critedge.loopexit.i.1, label %.lr.ph.i.1, !llvm.loop !10

.critedge.loopexit.i.1:                           ; preds = %bb.n
  %.pre41 = load i8, ptr %i.by, align 1, !tbaa !838
  %i.ca = icmp eq i8 %.pre41, 0
  br i1 %i.ca, label %.split28.us, label %.lr.ph.i.2.preheader

.lr.ph.i.2.preheader:                             ; preds = %.lr.ph.i.1, %.critedge.loopexit.i.1
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.2.preheader, %bb.o
  %i.cb = phi i8 [ %i.cm, %bb.o ], [ %i.a, %.lr.ph.i.2.preheader ]
  %.012.i.2 = phi ptr [ %i.cl, %bb.o ], [ @.str.498, %.lr.ph.i.2.preheader ] ; 2 uses
  %.0911.i.2 = phi ptr [ %i.ck, %bb.o ], [ %1, %.lr.ph.i.2.preheader ]
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !838
  %i.cf = load i8, ptr %.012.i.2, align 1, !tbaa !838
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !838
  %i.cj = icmp eq i8 %i.ce, %i.ci
  br i1 %i.cj, label %bb.o, label %.lr.ph.i.3.preheader
end_hunk_0
