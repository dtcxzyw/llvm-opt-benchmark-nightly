Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MCPlusBuilder?download=true
inline.NumInlined: 1508
inline.NumDeleted: 841
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK4llvm4bolt13MCPlusBuilder18getDynamicBranchIDERKNS_6MCInstE:bb.a

bb.c:                                             ; preds = %bb.b
  switch i8 %i.h, label %.loopexit [
    i8 6, label %.backedge.i.i.i
    i8 2, label %.backedge.i.i.i
  ]

.backedge.i.i.i:                                  ; preds = %bb.c, %bb.c
  %.013.i.i.i = add nsw i32 %.01318.i.i.i, -1
  %i.n = icmp sgt i32 %.01318.i.i.i, 0
  br i1 %i.n, label %bb.b, label %.loopexit

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i: ; preds = %bb.b
  %.not.i.not.i = icmp ne i32 %i.b, %.01318.i.i.i ; 2 uses
  %i.o = add nuw i32 %.01318.i.i.i, 1
  %spec.select.i.i = select i1 %.not.i.not.i, i32 %i.o, i32 undef ; 2 uses
  %.not1324.i = icmp ult i32 %spec.select.i.i, %i.b
  %or.cond.i = select i1 %.not.i.not.i, i1 %.not1324.i, i1 false
  br i1 %or.cond.i, label %.critedge.lr.ph.i, label %.loopexit

.critedge.lr.ph.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i
  %i.p = zext i32 %spec.select.i.i to i64
  %wide.trip.count.i = zext i32 %i.b to i64
  br label %.critedge.i

bb.d:                                             ; preds = %.critedge.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.d, %.critedge.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.p, %.critedge.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !42   ; 2 uses
  %.mask = and i64 %i.s, -72057594037927936
  %.not.i = icmp eq i64 %.mask, 648518346341351424
  br i1 %.not.i, label %bb.e, label %bb.d

bb.e:                                             ; preds = %.critedge.i
  %i.t = and i64 %i.s, 4294967295
  %i.u = or disjoint i64 %i.t, 4294967296
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge.i.i.i, %bb.c, %bb.d, %bb.a, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i, %bb.e
  %.sroa.2.1 = phi i64 [ %i.u, %bb.e ], [ 0, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %.backedge.i.i.i ]
  ret i64 %.sroa.2.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm4bolt13MCPlusBuilder16setDynamicBranchERNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  tail call void @_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef 9, i64 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm4bolt13MCPlusBuilder16stripAnnotationsERNS_6MCInstEb(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36   ; 6 uses
  %.01317.i.i.i.i = add i32 %i.b, -1              ; 2 uses
  %i.c = icmp sgt i32 %.01317.i.i.i.i, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 5 uses
  br i1 %i.c, label %.lr.ph.i.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.backedge.i.i.i.i
  %.01318.i.i.i.i = phi i32 [ %.013.i.i.i.i, %.backedge.i.i.i.i ], [ %.01317.i.i.i.i, %bb.a ] ; 5 uses
  %i.f = zext nneg i32 %.01318.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !39    ; 2 uses
  %i.i = icmp eq i8 %i.h, 6
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  switch i8 %i.h, label %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj.exit [
    i8 6, label %.backedge.i.i.i.i
    i8 2, label %.backedge.i.i.i.i
  ]

.backedge.i.i.i.i:                                ; preds = %bb.b, %bb.b
  %.013.i.i.i.i = add nsw i32 %.01318.i.i.i.i, -1
  %i.n = icmp sgt i32 %.01318.i.i.i.i, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not.i.not.i.i = icmp ne i32 %i.b, %.01318.i.i.i.i ; 2 uses
  %i.o = add nuw i32 %.01318.i.i.i.i, 1
  %spec.select.i.i.i = select i1 %.not.i.not.i.i, i32 %i.o, i32 undef ; 2 uses
  %.not1324.i.i = icmp ult i32 %spec.select.i.i.i, %i.b
  %or.cond.i.i = select i1 %.not.i.not.i.i, i1 %.not1324.i.i, i1 false
  br i1 %or.cond.i.i, label %.critedge.lr.ph.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj.exit

.critedge.lr.ph.i.i:                              ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i
  %i.p = zext i32 %spec.select.i.i.i to i64
  %wide.trip.count.i.i = zext i32 %i.b to i64
  br label %.critedge.i.i

bb.c:                                             ; preds = %.critedge.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj.exit, label %.critedge.i.i, !llvm.loop !2

.critedge.i.i:                                    ; preds = %bb.c, %.critedge.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.p, %.critedge.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !42
  %.mask = and i64 %i.s, -72057594037927936
  %.not.i.i = icmp eq i64 %.mask, 288230376151711744
  br i1 %.not.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj.exit, label %bb.c

_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj.exit: ; preds = %bb.b, %.backedge.i.i.i.i, %bb.c, %.critedge.i.i, %bb.a, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i
  %.sroa.2.0.i.i = phi i1 [ %2, %.critedge.i.i ], [ false, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i ], [ false, %bb.a ], [ false, %bb.c ], [ false, %.backedge.i.i.i.i ], [ false, %bb.b ]
  %i.t = zext i32 %i.b to i64
  %.idx.i.i = shl nuw nsw i64 %i.t, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i ; 3 uses
  %.not11.i.i = icmp eq i32 %i.b, 0
  br i1 %.not11.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder17removeAnnotationsERNS_6MCInstE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj.exit, %bb.d
  %.0812.i.i = phi ptr [ %i.ab, %bb.d ], [ %i.e, %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj.exit ] ; 4 uses
  %i.v = load i8, ptr %.0812.i.i, align 8, !tbaa !39
  %i.w = icmp eq i8 %i.v, 6
  %i.x = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = icmp eq ptr %i.y, null
  %i.aa = select i1 %i.w, i1 %i.z, i1 false
  br i1 %i.aa, label %_ZNK4llvm4bolt13MCPlusBuilder17removeAnnotationsERNS_6MCInstE.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 16 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.ab, %i.u
  br i1 %.not.i.i5, label %_ZNK4llvm4bolt13MCPlusBuilder17removeAnnotationsERNS_6MCInstE.exit, label %.lr.ph.i.i, !llvm.loop !206

_ZNK4llvm4bolt13MCPlusBuilder17removeAnnotationsERNS_6MCInstE.exit: ; preds = %.lr.ph.i.i, %bb.d, %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj.exit
  %.1.i.i = phi ptr [ %i.u, %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj.exit ], [ %i.u, %bb.d ], [ %.0812.i.i, %.lr.ph.i.i ]
  %i.ac = ptrtoint ptr %.1.i.i to i64
  %i.ad = ptrtoint ptr %i.e to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 4
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !36
  br i1 %.sroa.2.0.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder17removeAnnotationsERNS_6MCInstE.exit
  tail call void @_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef 4, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK4llvm4bolt13MCPlusBuilder17removeAnnotationsERNS_6MCInstE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm4bolt13MCPlusBuilder16printAnnotationsERKNS_6MCInstERNS_11raw_ostreamEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !36   ; 3 uses
  %.01317.i.i = add i32 %i.c, -1                  ; 2 uses
  %i.d = icmp sgt i32 %.01317.i.i, -1
  br i1 %i.d, label %.lr.ph.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = zext nneg i32 %.01317.i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.backedge.i.i ], [ %i.g, %.lr.ph.i.i ] ; 4 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !39    ; 2 uses
  %i.j = icmp eq i8 %i.i, 6
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.l, null
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i8 %i.i, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.thread [
    i8 6, label %.backedge.i.i
    i8 2, label %.backedge.i.i
  ]

.backedge.i.i:                                    ; preds = %bb.c, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.o = icmp sgt i64 %indvars.iv, 0
  br i1 %i.o, label %bb.b, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.thread

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit: ; preds = %bb.b
  %i.p = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %.not.i.not = icmp ne i32 %i.c, %i.p
  %i.q = add nuw i32 %i.p, 1                      ; 2 uses
  %i.r = icmp ult i32 %i.q, %i.c
  %or.cond = select i1 %.not.i.not, i1 %i.r, i1 false
  br i1 %or.cond, label %.lr.ph, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.thread

.lr.ph:                                           ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.x = zext i32 %i.q to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv36 = phi i64 [ %i.x, %.lr.ph ], [ %indvars.iv.next37, %bb.m ] ; 2 uses
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !42 ; 3 uses
  %i.ac = shl i64 %i.ab, 8
  %i.ad = ashr exact i64 %i.ac, 8
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = icmp ugt i64 %i.ab, 1080863910568919039
  br i1 %i.af, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.ag = lshr i64 %i.ab, 56
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.ai = getelementptr [32 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 -480
  store ptr %i.t, ptr %4, align 8, !tbaa !120
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !122 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 -472
  %i.am = load i64, ptr %i.al, align 8, !tbaa !123 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.am, ptr %i.a, align 8, !tbaa !116
  %i.an = icmp ugt i64 %i.am, 15
  br i1 %i.an, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %bb.e
  %i.ao = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.ao, ptr %4, align 8, !tbaa !122
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !116
  store i64 %i.ap, ptr %i.t, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.aq = phi ptr [ %i.ao, %bb.f ], [ %i.t, %bb.e ] ; 2 uses
  switch i64 %i.am, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ar = load i8, ptr %i.ak, align 1, !tbaa !42
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.ak, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.as = load i64, ptr %i.a, align 8, !tbaa !116 ; 2 uses
  store i64 %i.as, ptr %i.u, align 8, !tbaa !123
  %i.at = load ptr, ptr %4, align 8, !tbaa !122
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.av = load i64, ptr %i.u, align 8
  %i.aw = icmp ne i64 %i.av, 19
  %or.cond45.not = select i1 %3, i1 true, i1 %i.aw
  br i1 %or.cond45.not, label %.critedge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !122   ; 4 uses
  %i.ay = load i128, ptr %i.ax, align 1
  %i.az = xor i128 %i.ay, 136159919090036883725635472316798166349
  %i.ba = getelementptr i8, ptr %i.ax, i64 3
  %i.bb = load i128, ptr %i.ba, align 1
  %i.bc = xor i128 %i.bb, 134814933403770257980137485662282150511
  %i.bd = or i128 %i.az, %i.bc
  %i.be = icmp ne i128 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bh = load ptr, ptr %i.v, align 8, !tbaa !211
  %i.bi = load ptr, ptr %i.w, align 8, !tbaa !212 ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = icmp ult i64 %i.bl, 3
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.bn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull @.str.7, i64 noundef 3) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.j:                                             ; preds = %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bi, ptr noundef nonnull align 1 dereferenceable(3) @.str.7, i64 3, i1 false)
  %i.bo = load ptr, ptr %i.w, align 8, !tbaa !212
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  store ptr %i.bp, ptr %i.w, align 8, !tbaa !212
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.i, %bb.j
  %.0.i.i = phi ptr [ %i.bn, %bb.i ], [ %2, %bb.j ]
  %i.bq = load ptr, ptr %4, align 8, !tbaa !122
  %i.br = load i64, ptr %i.u, align 8, !tbaa !123
  %i.bs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.bq, i64 noundef %i.br) #20 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !211
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 32 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !212 ; 2 uses
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = icmp ult i64 %i.bz, 2
  br i1 %i.ca, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.cb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull @.str.8, i64 noundef 2) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i16 8250, ptr %i.bw, align 1
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !212
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store ptr %i.cd, ptr %i.bv, align 8, !tbaa !212
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit20

_ZN4llvm11raw_ostreamlsEPKc.exit20:               ; preds = %bb.k, %bb.l
  %i.ce = load ptr, ptr %i.ae, align 8, !tbaa !17
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %2) #20
  %i.cg = load ptr, ptr %4, align 8, !tbaa !122   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.t
  br i1 %i.ch, label %.sink.split, label %.sink.split.sink.split

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ci = icmp ne ptr %i.ax, %i.t
  call void @llvm.assume(i1 %i.ci)
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit20, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.sink = phi ptr [ %i.ax, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.cg, %_ZN4llvm11raw_ostreamlsEPKc.exit20 ]
  %i.cj = load i64, ptr %i.t, align 8, !tbaa !42
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ck) #22
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_ZN4llvm11raw_ostreamlsEPKc.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.d
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %i.cl = load i32, ptr %i.b, align 8, !tbaa !36
  %i.cm = zext i32 %i.cl to i64
  %i.cn = icmp samesign ult i64 %indvars.iv.next37, %i.cm
  br i1 %i.cn, label %bb.d, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.thread, !llvm.loop !207

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.thread: ; preds = %.backedge.i.i, %bb.c, %bb.m, %bb.a, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm4bolt13MCPlusBuilder16getClobberedRegsERKNS_6MCInstERNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(68) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) #20
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1560
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) #20
  br i1 %i.h, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !95
  %i.k = load i32, ptr %1, align 8, !tbaa !35
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !100  ; 2 uses
  %i.m = zext i32 %i.k to i64
  %i.n = sub nsw i64 0, %i.m                      ; 2 uses
  %i.o = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.n ; 5 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !124
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  %i.u = load i16, ptr %i.t, align 2, !tbaa !125
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %i.y = load i8, ptr %i.x, align 2, !tbaa !126
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 11
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !127 ; 2 uses
  %i.ad = zext i8 %i.ac to i64
  %.idx = shl nuw nsw i64 %i.ad, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx
  %.not26 = icmp eq i8 %i.ac, 0
end_hunk_0
