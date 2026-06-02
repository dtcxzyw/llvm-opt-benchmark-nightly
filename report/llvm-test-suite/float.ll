inline.NumInlined: 10
inline.NumDeleted: 2
begin_hunk_0
@F_floatmul.man2 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.result = internal unnamed_addr global ptr null, align 8
@F_floatmul.needinit = internal unnamed_addr global i1 false, align 4
@F_floatmagadd.result = internal unnamed_addr global ptr null, align 8
@F_floatmagadd.needinit = internal unnamed_addr global i1 false, align 4
@F_floatmagadd.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmagadd.man2 = internal global [200 x i8] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [40 x i8] c"numbers differ by too much in magnitude\00", align 1
@_F_stradd.result = internal global [200 x i8] zeroinitializer, align 16

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @F_isfloat(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !8
  switch i8 %i.a, label %bb.d [
    i8 43, label %bb.c
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.039 = phi ptr [ %i.b, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.035 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = tail call ptr @__ctype_b_loc() #12
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 6 uses
  %i.e = load i8, ptr %.039, align 1, !tbaa !8    ; 2 uses
  %i.f = sext i8 %i.e to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !12
  %i.i = and i16 %i.h, 2048
  %.not4655 = icmp eq i16 %i.i, 0                 ; 2 uses
  br i1 %.not4655, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.13657 = phi i32 [ %i.k, %.lr.ph ], [ %.035, %bb.d ]
  %.14056 = phi ptr [ %i.j, %.lr.ph ], [ %.039, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %.14056, i64 1 ; 3 uses
  %i.k = add nuw nsw i32 %.13657, 1               ; 2 uses
  %i.l = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %i.m = sext i8 %i.l to i64
  %i.n = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !12
  %i.p = and i16 %i.o, 2048
  %.not46 = icmp eq i16 %i.p, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.140.lcssa = phi ptr [ %.039, %bb.d ], [ %i.j, %.lr.ph ] ; 2 uses
  %.136.lcssa = phi i32 [ %.035, %bb.d ], [ %i.k, %.lr.ph ] ; 2 uses
  %.lcssa52 = phi i8 [ %i.e, %bb.d ], [ %i.l, %.lr.ph ] ; 2 uses
  %i.q = icmp eq i8 %.lcssa52, 46
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %.140.lcssa, i64 1 ; 2 uses
  %i.s = add nuw nsw i32 %.136.lcssa, 1
  %.pre = load i8, ptr %i.r, align 1, !tbaa !8
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %.not47 = icmp eq i32 %1, 0
  br i1 %.not47, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi i8 [ %.pre, %bb.e ], [ %.lcssa52, %bb.f ] ; 2 uses
  %.241 = phi ptr [ %i.r, %bb.e ], [ %.140.lcssa, %bb.f ] ; 2 uses
  %.237 = phi i32 [ %i.s, %bb.e ], [ %.136.lcssa, %bb.f ] ; 2 uses
  %i.u = sext i8 %i.t to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !12
  %i.x = and i16 %i.w, 2048
  %.not4862 = icmp eq i16 %i.x, 0
  br i1 %.not4862, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.g, %.lr.ph66
  %.364 = phi i32 [ %i.z, %.lr.ph66 ], [ %.237, %bb.g ]
  %.34263 = phi ptr [ %i.y, %.lr.ph66 ], [ %.241, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %.34263, i64 1 ; 3 uses
  %i.z = add nsw i32 %.364, 1                     ; 2 uses
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !8    ; 2 uses
  %i.ab = sext i8 %i.aa to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !12
  %i.ae = and i16 %i.ad, 2048
  %.not48 = icmp eq i16 %i.ae, 0
  br i1 %.not48, label %._crit_edge67.thread, label %.lr.ph66, !llvm.loop !16

._crit_edge67:                                    ; preds = %bb.g
  br i1 %.not4655, label %bb.k, label %._crit_edge67.thread

._crit_edge67.thread:                             ; preds = %.lr.ph66, %._crit_edge67
  %.lcssa91 = phi i8 [ %i.t, %._crit_edge67 ], [ %i.aa, %.lr.ph66 ]
  %.3.lcssa90 = phi i32 [ %.237, %._crit_edge67 ], [ %i.z, %.lr.ph66 ] ; 2 uses
  %.342.lcssa89 = phi ptr [ %.241, %._crit_edge67 ], [ %i.y, %.lr.ph66 ] ; 2 uses
  switch i8 %.lcssa91, label %.loopexit [
    i8 101, label %bb.h
    i8 69, label %bb.h
    i8 100, label %bb.h
    i8 68, label %bb.h
  ]

bb.h:                                             ; preds = %._crit_edge67.thread, %._crit_edge67.thread, %._crit_edge67.thread, %._crit_edge67.thread
  %i.af = getelementptr inbounds nuw i8, ptr %.342.lcssa89, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8   ; 2 uses
  switch i8 %i.ag, label %bb.j [
    i8 43, label %bb.i
    i8 45, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.342.lcssa89, i64 2 ; 2 uses
  %.pre84 = load i8, ptr %i.ah, align 1, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ai = phi i8 [ %.pre84, %bb.i ], [ %i.ag, %bb.h ]
  %.4 = phi ptr [ %i.ah, %bb.i ], [ %i.af, %bb.h ]
  %.033 = phi i32 [ 2, %bb.i ], [ 1, %bb.h ]
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !12
  %i.am = and i16 %i.al, 2048
  %.not50 = icmp eq i16 %i.am, 0
  br i1 %.not50, label %bb.k, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.j, %.lr.ph75
  %.13474 = phi i32 [ %i.ao, %.lr.ph75 ], [ %.033, %bb.j ]
  %.573 = phi ptr [ %i.an, %.lr.ph75 ], [ %.4, %bb.j ]
  %i.an = getelementptr inbounds nuw i8, ptr %.573, i64 1 ; 2 uses
  %i.ao = add nuw nsw i32 %.13474, 1              ; 2 uses
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !8
  %i.aq = sext i8 %i.ap to i64
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !12
  %i.at = and i16 %i.as, 2048
  %.not51 = icmp eq i16 %i.at, 0
  br i1 %.not51, label %.loopexit, label %.lr.ph75, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph75, %._crit_edge67.thread
  %.2 = phi i32 [ 0, %._crit_edge67.thread ], [ %i.ao, %.lr.ph75 ]
  %i.au = add nsw i32 %.2, %.3.lcssa90
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge67, %bb.f, %.loopexit
  %.038 = phi i32 [ %i.au, %.loopexit ], [ 0, %._crit_edge67 ], [ 0, %bb.f ], [ %.3.lcssa90, %bb.j ]
  ret i32 %.038
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @F_atof(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = tail call ptr (...) @R_makefloat() #13   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !18
  store i8 0, ptr %i.a, align 16, !tbaa !8
  %i.d = load i8, ptr %0, align 1, !tbaa !8
  switch i8 %i.d, label %.preheader152 [
    i8 43, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %.preheader152

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %i.c, align 4, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %.preheader152

.preheader152:                                    ; preds = %bb.a, %bb.c, %bb.b
  %.157.ph = phi ptr [ %0, %bb.a ], [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  br label %bb.d

bb.d:                                             ; preds = %.preheader152, %bb.d
  %.157 = phi ptr [ %i.i, %bb.d ], [ %.157.ph, %.preheader152 ] ; 4 uses
  %i.g = load i8, ptr %.157, align 1, !tbaa !8    ; 4 uses
  %i.h = icmp eq i8 %i.g, 48
  %i.i = getelementptr inbounds nuw i8, ptr %.157, i64 1
  br i1 %i.h, label %bb.d, label %.preheader68, !llvm.loop !21

.preheader68:                                     ; preds = %bb.d
  %i.j = tail call ptr @__ctype_b_loc() #12       ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9    ; 3 uses
  %i.l = sext i8 %i.g to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !12
  %i.o = and i16 %i.n, 2048
  %.not72 = icmp eq i16 %i.o, 0
  br i1 %.not72, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader68, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader68 ] ; 2 uses
  %i.p = phi i8 [ %i.u, %.lr.ph ], [ %i.g, %.preheader68 ]
  %.05175 = phi i32 [ %i.r, %.lr.ph ], [ 0, %.preheader68 ]
  %.25873 = phi ptr [ %i.q, %.lr.ph ], [ %.157, %.preheader68 ]
  %i.q = getelementptr inbounds nuw i8, ptr %.25873, i64 1 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.r = add nuw nsw i32 %.05175, 1               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.p, ptr %i.s, align 1, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  store i8 0, ptr %i.t, align 1, !tbaa !8
  %2 = load ptr, ptr %i.j, align 8, !tbaa !9      ; 2 uses
  %i.u = load i8, ptr %i.q, align 1, !tbaa !8     ; 3 uses
  %i.v = sext i8 %i.u to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %2, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !12
  %i.y = and i16 %i.x, 2048
  %.not = icmp eq i16 %i.y, 0
  br i1 %.not, label %._crit_edge..loopexit_crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge..loopexit_crit_edge:                  ; preds = %.lr.ph
  %i.z = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aa = icmp eq i8 %i.u, 46
  %spec.select.idx = zext i1 %i.aa to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.q, i64 %spec.select.idx ; 2 uses
  %.pre = load i8, ptr %spec.select, align 1, !tbaa !8
  br label %.loopexit

.preheader:                                       ; preds = %.preheader68
  %i.ab = icmp eq i8 %i.g, 46
  %spec.select.idx120 = zext i1 %i.ab to i64
  %spec.select121 = getelementptr inbounds nuw i8, ptr %.157, i64 %spec.select.idx120 ; 3 uses
  %i.ac = load i8, ptr %spec.select121, align 1, !tbaa !8 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 48
  br i1 %i.ad, label %.lr.ph83, label %.loopexit

.lr.ph83:                                         ; preds = %.preheader, %.lr.ph83
  %.182 = phi i32 [ %i.af, %.lr.ph83 ], [ 0, %.preheader ]
  %.481 = phi ptr [ %i.ae, %.lr.ph83 ], [ %spec.select121, %.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.481, i64 1 ; 3 uses
  %i.af = add nsw i32 %.182, -1                   ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 1, !tbaa !8   ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 48
  br i1 %i.ah, label %.lr.ph83, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %.lr.ph83, %._crit_edge..loopexit_crit_edge, %.preheader
  %.054.lcssa122 = phi i32 [ %i.z, %._crit_edge..loopexit_crit_edge ], [ 0, %.preheader ], [ 0, %.lr.ph83 ] ; 2 uses
  %3 = phi ptr [ %2, %._crit_edge..loopexit_crit_edge ], [ %i.k, %.preheader ], [ %i.k, %.lr.ph83 ]
  %i.ai = phi i8 [ %.pre, %._crit_edge..loopexit_crit_edge ], [ %i.ac, %.preheader ], [ %i.ag, %.lr.ph83 ] ; 3 uses
  %.5 = phi ptr [ %spec.select, %._crit_edge..loopexit_crit_edge ], [ %spec.select121, %.preheader ], [ %i.ae, %.lr.ph83 ] ; 2 uses
  %.2 = phi i32 [ %i.r, %._crit_edge..loopexit_crit_edge ], [ 0, %.preheader ], [ %i.af, %.lr.ph83 ] ; 2 uses
  %i.aj = sext i8 %i.ai to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %3, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !12
  %i.am = and i16 %i.al, 2048
  %.not6386 = icmp eq i16 %i.am, 0
  br i1 %.not6386, label %._crit_edge91, label %.lr.ph90.preheader

.lr.ph90.preheader:                               ; preds = %.loopexit
  %i.an = zext nneg i32 %.054.lcssa122 to i64
  br label %.lr.ph90

.lr.ph90:                                         ; preds = %.lr.ph90.preheader, %.lr.ph90
  %indvars.iv109 = phi i64 [ %i.an, %.lr.ph90.preheader ], [ %indvars.iv.next110, %.lr.ph90 ] ; 2 uses
  %i.ao = phi i8 [ %i.ai, %.lr.ph90.preheader ], [ %i.as, %.lr.ph90 ]
  %.687 = phi ptr [ %.5, %.lr.ph90.preheader ], [ %i.ap, %.lr.ph90 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.687, i64 1 ; 3 uses
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv109
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next110
  store i8 0, ptr %i.ar, align 1, !tbaa !8
  %4 = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !8   ; 3 uses
  %i.at = sext i8 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %4, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !12
  %i.aw = and i16 %i.av, 2048
  %.not63 = icmp eq i16 %i.aw, 0
  br i1 %.not63, label %._crit_edge91.loopexit, label %.lr.ph90, !llvm.loop !24

._crit_edge91.loopexit:                           ; preds = %.lr.ph90
  %i.ax = trunc nuw i64 %indvars.iv.next110 to i32
  br label %._crit_edge91

._crit_edge91:                                    ; preds = %._crit_edge91.loopexit, %.loopexit
  %.6.lcssa = phi ptr [ %.5, %.loopexit ], [ %i.ap, %._crit_edge91.loopexit ] ; 2 uses
  %.155.lcssa = phi i32 [ %.054.lcssa122, %.loopexit ], [ %i.ax, %._crit_edge91.loopexit ] ; 2 uses
  %.lcssa69 = phi i8 [ %i.ai, %.loopexit ], [ %i.as, %._crit_edge91.loopexit ]
  switch i8 %.lcssa69, label %bb.f [
    i8 101, label %bb.e
    i8 69, label %bb.e
    i8 100, label %bb.e
    i8 68, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge91, %._crit_edge91, %._crit_edge91, %._crit_edge91
  %i.ay = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 1 ; 2 uses
  %i.az = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ay, ptr noundef null, i32 noundef 10) #13, !inline_history !25
  %i.ba = trunc i64 %i.az to i32
  %i.bb = add nsw i32 %.2, %i.ba
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge91, %bb.e
  %.7 = phi ptr [ %i.ay, %bb.e ], [ %.6.lcssa, %._crit_edge91 ] ; 3 uses
  %.3 = phi i32 [ %i.bb, %bb.e ], [ %.2, %._crit_edge91 ]
  %.not64 = icmp eq i32 %1, 0
  br i1 %.not64, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load i8, ptr %.7, align 1, !tbaa !8
  switch i8 %i.bc, label %bb.i [
    i8 43, label %bb.h
    i8 45, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %.7, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.8 = phi ptr [ %i.bd, %bb.h ], [ %.7, %bb.g ]
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.9 = phi ptr [ %.8, %bb.i ], [ %i.bk, %bb.j ]  ; 2 uses
  %i.bf = load i8, ptr %.9, align 1, !tbaa !8     ; 2 uses
  %i.bg = sext i8 %i.bf to i64
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !12
  %i.bj = and i16 %i.bi, 2048
  %.not65 = icmp eq i16 %i.bj, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %.9, i64 1
  br i1 %.not65, label %bb.k, label %bb.j, !llvm.loop !26

bb.k:                                             ; preds = %bb.j
  %.not66 = icmp eq i8 %i.bf, 0
  br i1 %.not66, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %0) #13 ; 0 uses
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @Z_err_buf) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.f
  %.not99 = icmp eq i32 %.155.lcssa, 0
  br i1 %.not99, label %._crit_edge98, label %.lr.ph97.preheader

.lr.ph97.preheader:                               ; preds = %bb.m
  %wide.trip.count = zext i32 %.155.lcssa to i64
  br label %.lr.ph97

bb.n:                                             ; preds = %.lr.ph97
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge98, label %.lr.ph97, !llvm.loop !27

.lr.ph97:                                         ; preds = %.lr.ph97.preheader, %bb.n
  %indvars.iv111 = phi i64 [ 0, %.lr.ph97.preheader ], [ %indvars.iv.next112, %bb.n ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv111
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !8
  %.not67 = icmp eq i8 %i.bn, 48
  br i1 %.not67, label %bb.n, label %bb.o

bb.o:                                             ; preds = %.lr.ph97
  call void (ptr, ...) @S_trimzeros(ptr noundef nonnull %i.a) #13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !28
  %i.bq = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bp, ptr noundef nonnull dereferenceable(1) %i.a) #13 ; 0 uses
  store i32 %.3, ptr %i.b, align 8, !tbaa !29
  br label %bb.p

._crit_edge98:                                    ; preds = %bb.n, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !28
  store i16 48, ptr %i.bs, align 1
  store i32 0, ptr %i.b, align 8, !tbaa !29
  store i32 0, ptr %i.c, align 4, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge98, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.b
}

declare ptr @R_makefloat(...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @Z_fatal(...) local_unnamed_addr #4

declare void @S_trimzeros(...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @F_floatsub(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %.b = load i1, ptr @F_floatsub.needinit, align 4
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr (...) @R_makefloat() #13
  store ptr %i.a, ptr @F_floatsub.result, align 8, !tbaa !30
  store i1 true, ptr @F_floatsub.needinit, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 0, ptr @F_floatsub.man1, align 16, !tbaa !8
  store i8 0, ptr @F_floatsub.man2, align 16, !tbaa !8
  %i.b = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #13 ; 8 uses
  %i.c = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #13 ; 6 uses
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %.preheader67

.preheader67:                                     ; preds = %bb.c
  %i.e = icmp sgt i32 %i.b, %i.c
  br i1 %i.e, label %.lr.ph70, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.04468 = phi i32 [ %i.f, %.lr.ph ], [ %i.b, %bb.c ]
  %strlen55 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatsub.man1)
  %endptr56 = getelementptr inbounds i8, ptr @F_floatsub.man1, i64 %strlen55
  store i16 48, ptr %endptr56, align 1
  %i.f = add nsw i32 %.04468, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.f, %i.c
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !32

.lr.ph70:                                         ; preds = %.preheader67, %.lr.ph70
  %.04369 = phi i32 [ %i.g, %.lr.ph70 ], [ %i.c, %.preheader67 ]
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatsub.man2)
  %endptr = getelementptr inbounds i8, ptr @F_floatsub.man2, i64 %strlen
  store i16 48, ptr %endptr, align 1
  %i.g = add nsw i32 %.04369, 1                   ; 2 uses
  %exitcond87.not = icmp eq i32 %i.g, %i.b
  br i1 %exitcond87.not, label %._crit_edge.thread, label %.lr.ph70, !llvm.loop !33

._crit_edge:                                      ; preds = %.preheader67
  %.not = icmp eq i32 %i.b, %i.c
  br i1 %.not, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.2) #13
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph70, %.lr.ph, %bb.d, %._crit_edge
  %.044.lcssa99103 = phi i32 [ %i.b, %._crit_edge ], [ %i.b, %bb.d ], [ %i.c, %.lr.ph ], [ %i.b, %.lr.ph70 ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @F_floatsub.man1, ptr noundef nonnull dereferenceable(1) %i.i) #13 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.m = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @F_floatsub.man2, ptr noundef nonnull dereferenceable(1) %i.l) #13 ; 0 uses
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @F_floatsub.man1, ptr noundef nonnull dereferenceable(1) @F_floatsub.man2) #14 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.thread
  %i.p = load ptr, ptr @F_floatsub.result, align 8, !tbaa !30 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  store i16 48, ptr %i.r, align 1
  store i32 0, ptr %i.p, align 8, !tbaa !29
  br label %bb.n

bb.f:                                             ; preds = %._crit_edge.thread
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatsub.man1) #14 ; 4 uses
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatsub.man2) #14 ; 4 uses
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = sub nuw i64 %i.s, %i.t
end_hunk_0
