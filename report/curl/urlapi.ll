inline.NumInlined: 31
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 5
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@urlencode_str:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %bb.c, !llvm.loop !9

find_host_sep.exit:                               ; preds = %bb.c, %bb.c, %bb.c
  %i.g = ptrtoint ptr %.1.i to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = tail call i32 @curlx_dyn_addn(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.i) #8
  %i.k = sub i64 %2, %i.i
  br label %bb.e

bb.e:                                             ; preds = %find_host_sep.exit, %bb.a
  %.060 = phi ptr [ %1, %bb.a ], [ %.1.i, %find_host_sep.exit ]
  %.057 = phi i32 [ 0, %bb.a ], [ %i.j, %find_host_sep.exit ] ; 2 uses
  %.056 = phi i64 [ %2, %bb.a ], [ %i.k, %find_host_sep.exit ] ; 2 uses
  %.not93 = icmp ne i64 %.056, 0
  %.not7494 = icmp eq i32 %.057, 0                ; 2 uses
  %or.cond7795 = select i1 %.not93, i1 %.not7494, i1 false
  br i1 %or.cond7795, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.r
  %.198 = phi i64 [ %.056, %.lr.ph ], [ %i.aw, %bb.r ] ; 6 uses
  %.06197 = phi ptr [ %.060, %.lr.ph ], [ %i.av, %bb.r ] ; 10 uses
  %.06396 = phi i32 [ %4, %.lr.ph ], [ %.164, %bb.r ] ; 6 uses
  %i.n = load i8, ptr %.06197, align 1, !tbaa !8  ; 3 uses
  %i.o = icmp eq i8 %i.n, 32
  br i1 %i.o, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not76 = icmp eq i32 %.06396, 4
  br i1 %.not76, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 @curlx_dyn_addn(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef 3) #8
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.q = call i32 @curlx_dyn_addn(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef 1) #8
  br label %bb.r

bb.j:                                             ; preds = %bb.f
  %i.r = add i8 %i.n, -127
  %or.cond78 = icmp ult i8 %i.r, -95
  br i1 %or.cond78, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @__const.url_encode_part.out, i64 3, i1 false)
  %i.s = load i8, ptr %.06197, align 1, !tbaa !8
  call void @Curl_hexbyte(ptr noundef nonnull %i.m, i8 noundef zeroext %i.s) #8
  %i.t = call i32 @curlx_dyn_addn(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.u = icmp eq i8 %i.n, 37
  %i.v = icmp ugt i64 %.198, 2
  %or.cond = and i1 %i.v, %i.u
  br i1 %or.cond, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.06197, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  %.fr100 = freeze i8 %i.x                        ; 4 uses
  %i.y = add i8 %.fr100, -48
  %or.cond79 = icmp ult i8 %i.y, 10
  br i1 %or.cond79, label %bb.n, label %switch.early.test

switch.early.test:                                ; preds = %bb.m
  switch i8 %.fr100, label %bb.q [
    i8 102, label %bb.n
    i8 101, label %bb.n
    i8 100, label %bb.n
    i8 99, label %bb.n
    i8 98, label %bb.n
    i8 97, label %bb.n
    i8 70, label %bb.n
    i8 69, label %bb.n
    i8 68, label %bb.n
    i8 67, label %bb.n
    i8 66, label %bb.n
    i8 65, label %bb.n
  ]

bb.n:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.06197, i64 2 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %.fr101 = freeze i8 %i.aa                       ; 4 uses
  %i.ab = add i8 %.fr101, -48
  %or.cond82 = icmp ult i8 %i.ab, 10
  br i1 %or.cond82, label %bb.o, label %switch.early.test92

switch.early.test92:                              ; preds = %bb.n
  switch i8 %.fr101, label %bb.q [
    i8 102, label %bb.o
    i8 101, label %bb.o
    i8 100, label %bb.o
    i8 99, label %bb.o
    i8 98, label %bb.o
    i8 97, label %bb.o
    i8 70, label %bb.o
    i8 69, label %bb.o
    i8 68, label %bb.o
    i8 67, label %bb.o
    i8 66, label %bb.o
    i8 65, label %bb.o
  ]

bb.o:                                             ; preds = %switch.early.test92, %switch.early.test92, %switch.early.test92, %switch.early.test92, %switch.early.test92, %switch.early.test92, %switch.early.test92, %switch.early.test92, %switch.early.test92, %switch.early.test92, %switch.early.test92, %switch.early.test92, %bb.n
  %i.ac = icmp samesign ugt i8 %.fr100, 96
  %i.ad = icmp samesign ugt i8 %.fr101, 96
  %or.cond87 = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond87, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ae = zext nneg i8 %.fr100 to i64
  %i.af = getelementptr i8, ptr @curlx_hexasciitable, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -48
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = shl i8 %i.ah, 4
  %i.aj = zext nneg i8 %.fr101 to i64
  %i.ak = getelementptr i8, ptr @curlx_hexasciitable, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -48
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %i.an = and i8 %i.am, 15
  %i.ao = or disjoint i8 %i.an, %i.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) @__const.url_encode_part.out, i64 3, i1 false)
  call void @Curl_hexbyte(ptr noundef nonnull %i.l, i8 noundef zeroext %i.ao) #8
  %i.ap = call i32 @curlx_dyn_addn(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef 3) #8
  %i.aq = add i64 %.198, -2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.r

bb.q:                                             ; preds = %switch.early.test92, %switch.early.test, %bb.o, %bb.l
  %i.ar = call i32 @curlx_dyn_addn(ptr noundef %0, ptr noundef nonnull %.06197, i64 noundef 1) #8
  %i.as = load i8, ptr %.06197, align 1, !tbaa !8
  %i.at = icmp eq i8 %i.as, 63
  %i.au = icmp eq i32 %.06396, 3
  %or.cond3 = select i1 %i.at, i1 %i.au, i1 false
  %spec.store.select = select i1 %or.cond3, i32 4, i32 %.06396
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.i, %bb.h, %bb.p, %bb.k
  %.164 = phi i32 [ %.06396, %bb.h ], [ 4, %bb.i ], [ %.06396, %bb.k ], [ %.06396, %bb.p ], [ %spec.store.select, %bb.q ]
  %.162 = phi ptr [ %.06197, %bb.h ], [ %.06197, %bb.i ], [ %.06197, %bb.k ], [ %i.z, %bb.p ], [ %.06197, %bb.q ]
  %.259 = phi i32 [ %i.p, %bb.h ], [ %i.q, %bb.i ], [ %i.t, %bb.k ], [ %i.ap, %bb.p ], [ %i.ar, %bb.q ] ; 2 uses
  %.2 = phi i64 [ %.198, %bb.h ], [ %.198, %bb.i ], [ %.198, %bb.k ], [ %i.aq, %bb.p ], [ %.198, %bb.q ]
  %i.av = getelementptr inbounds nuw i8, ptr %.162, i64 1
  %i.aw = add i64 %.2, -1                         ; 2 uses
  %.not = icmp ne i64 %i.aw, 0
  %.not74 = icmp eq i32 %.259, 0                  ; 2 uses
  %or.cond77 = select i1 %.not, i1 %.not74, i1 false
  br i1 %or.cond77, label %bb.f, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %bb.r, %bb.e
  %.158.lcssa = phi i32 [ %.057, %bb.e ], [ %.259, %bb.r ]
  %.not74.lcssa = phi i1 [ %.not7494, %bb.e ], [ %.not74, %bb.r ]
  %i.ax = icmp eq i32 %.158.lcssa, 100
  %i.ay = select i1 %i.ax, i32 31, i32 7
  %.0 = select i1 %.not74.lcssa, i32 0, i32 %i.ay
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @curlx_dyn_addn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @Curl_hexbyte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @Curl_is_absolute_url(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !8
  %i.b = and i8 %i.a, -33
  %i.c = add i8 %i.b, -65
  %or.cond73 = icmp ult i8 %i.c, 26
  br i1 %or.cond73, label %.preheader, label %.thread.thread

.preheader:                                       ; preds = %bb.c, %bb.g
  %.05575 = phi i64 [ %i.q, %bb.g ], [ 1, %bb.c ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.05575
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %.fr72 = freeze i8 %i.e                         ; 5 uses
  %.not61 = icmp eq i8 %.fr72, 0
  br i1 %.not61, label %.thread.thread, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.f = add i8 %.fr72, -48
  %or.cond = icmp ult i8 %i.f, 10
  %i.g = and i8 %.fr72, -33
  %i.h = add i8 %i.g, -65
  %i.i = icmp ult i8 %i.h, 26
  %or.cond74 = or i1 %or.cond, %i.i
  br i1 %or.cond74, label %bb.e, label %switch.early.test

switch.early.test:                                ; preds = %bb.d
  switch i8 %.fr72, label %.thread [
    i8 46, label %bb.e
    i8 45, label %bb.e
    i8 43, label %bb.e
  ]

bb.e:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %bb.d
  %i.j = add nuw nsw i64 %.05575, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, 40
  br i1 %exitcond.not, label %..thread_crit_edge, label %.preheader.1

.preheader.1:                                     ; preds = %bb.e
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 %.05575
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %.fr72.1 = freeze i8 %i.l                       ; 5 uses
  %.not61.1 = icmp eq i8 %.fr72.1, 0
  br i1 %.not61.1, label %.thread.thread, label %bb.f

bb.f:                                             ; preds = %.preheader.1
  %i.m = add i8 %.fr72.1, -48
  %or.cond.1 = icmp ult i8 %i.m, 10
  %i.n = and i8 %.fr72.1, -33
  %i.o = add i8 %i.n, -65
  %i.p = icmp ult i8 %i.o, 26
  %or.cond74.1 = or i1 %or.cond.1, %i.p
  br i1 %or.cond74.1, label %bb.g, label %switch.early.test.1

switch.early.test.1:                              ; preds = %bb.f
  switch i8 %.fr72.1, label %.thread [
    i8 46, label %bb.g
    i8 45, label %bb.g
    i8 43, label %bb.g
  ]

bb.g:                                             ; preds = %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %bb.f
  %i.q = add nuw nsw i64 %.05575, 2
  br label %.preheader

..thread_crit_edge:                               ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !8
  br label %.thread, !llvm.loop !12

.thread:                                          ; preds = %switch.early.test, %switch.early.test.1, %..thread_crit_edge
  %i.r = phi i8 [ %.pre, %..thread_crit_edge ], [ %.fr72, %switch.early.test ], [ %.fr72.1, %switch.early.test.1 ]
  %.055.lcssa = phi i64 [ 40, %..thread_crit_edge ], [ %.05575, %switch.early.test ], [ %i.j, %switch.early.test.1 ] ; 5 uses
  %i.s = icmp eq i8 %i.r, 58
  br i1 %i.s, label %bb.h, label %.thread.thread

bb.h:                                             ; preds = %.thread
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.055.lcssa
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = icmp ne i8 %i.v, 47
  %or.cond19 = and i1 %3, %i.w                    ; 2 uses
  %brmerge = or i1 %.not, %or.cond19
  %.mux = select i1 %or.cond19, i64 0, i64 %.055.lcssa
  br i1 %brmerge, label %.thread.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @Curl_strntolower(ptr noundef nonnull %1, ptr noundef nonnull %0, i64 noundef %.055.lcssa) #8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.055.lcssa
  store i8 0, ptr %i.x, align 1, !tbaa !8
  br label %.thread.thread

.thread.thread:                                   ; preds = %.preheader, %.preheader.1, %bb.c, %bb.h, %.thread, %bb.i
  %.0 = phi i64 [ 0, %.thread ], [ %.055.lcssa, %bb.i ], [ %.mux, %bb.h ], [ 0, %bb.c ], [ 0, %.preheader.1 ], [ 0, %.preheader ]
  ret i64 %.0
}

declare void @Curl_strntolower(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 4) i32 @Curl_junkscan(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #7 ; 4 uses
  %i.b = icmp ugt i64 %i.a, 8000000
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not18 = icmp eq i64 %i.a, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = select i1 %2, i32 31, i32 32
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = add nuw i64 %.01417, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.d, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !13

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01417 = phi i64 [ 0, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.01417
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8     ; 2 uses
  %i.g = zext i8 %i.f to i32
  %.not = icmp samesign uge i32 %i.c, %i.g
  %i.h = icmp eq i8 %i.f, 127
  %or.cond = or i1 %i.h, %.not
  br i1 %or.cond, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader
  store i64 %i.a, ptr %1, align 8, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ 3, %bb.a ], [ 3, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 0, 9) i32 @parse_hostname_login(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store ptr null, ptr %i.c, align 8, !tbaa !16
  store i64 0, ptr %4, align 8, !tbaa !14
  %i.d = tail call ptr @memchr(ptr noundef %1, i32 noundef 64, i64 noundef %2) #7 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %.not34 = icmp eq ptr %i.f, null
  br i1 %.not34, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @Curl_get_scheme(ptr noundef nonnull %i.f) #8 ; 2 uses
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %.not35 = icmp eq ptr %i.j, null
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !22
  %i.p = and i32 %i.o, 1024
  %.not36 = icmp eq i32 %i.p, 0
  %spec.select = select i1 %.not36, ptr null, ptr %i.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.thread
  %i.q = phi i64 [ %i.m, %bb.d ], [ %i.i, %.thread ], [ %i.m, %bb.c ] ; 2 uses
  %i.r = phi ptr [ %spec.select, %bb.d ], [ null, %.thread ], [ null, %bb.c ]
  %i.s = add nsw i64 %i.q, -1
  %i.t = call i32 @Curl_parse_login_details(ptr noundef %1, i64 noundef %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.r) #8
  %.not37 = icmp eq i32 %i.t, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !16  ; 3 uses
  br i1 %.not37, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %.not38 = icmp eq ptr %.pre, null
  br i1 %.not38, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = and i32 %3, 32
  %.not39 = icmp eq i32 %i.u, 0
  br i1 %.not39, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr @Curl_cfree, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26
  call void %i.v(ptr noundef %i.x) #8
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !16
  store ptr %i.y, ptr %i.w, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !16
  %.not40 = icmp eq ptr %i.z, null
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr @Curl_cfree, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27
  call void %i.aa(ptr noundef %i.ac) #8
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !16
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !16
  %.not41 = icmp eq ptr %i.ae, null
  br i1 %.not41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr @Curl_cfree, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !28
  call void %i.af(ptr noundef %i.ah) #8
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !16
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !28
  br label %bb.m
end_hunk_0
begin_hunk_1_@curl_url_set:bb.a
  call void %i.gt(ptr noundef %i.gc) #8, !inline_history !55
  %i.gu = call ptr @curlx_dyn_ptr(ptr noundef nonnull %5) #8
  store ptr %i.gu, ptr %i.gb, align 8, !tbaa !38
  br label %url_append_query.exit.thread

bb.br:                                            ; preds = %.loopexit
  %i.gv = icmp eq i32 %1, 5
  br i1 %i.gv, label %url_encode_part.exit, label %url_encode_part.exit.thread104

url_encode_part.exit:                             ; preds = %bb.br
  %i.gw = call fastcc i32 @url_sethost(ptr noundef %0, ptr noundef %5, i1 noundef zeroext %.175, i32 noundef %3) ; 2 uses
  %.not89 = icmp eq i32 %i.gw, 0
  br i1 %.not89, label %url_encode_part.exit.thread104, label %url_append_query.exit.thread

url_append_query.exit.thread:                     ; preds = %bb.ad, %url_encode_part.exit, %bb.bq, %.critedge.i, %bb.bb, %.split.loop.exit51.i
  %.4.ph = phi i32 [ %i.cy, %bb.ad ], [ 0, %.critedge.i ], [ %.0.i95, %bb.bq ], [ %i.gw, %url_encode_part.exit ], [ %i.fh, %.split.loop.exit51.i ], [ %i.fk, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %urlset_clear.exit

url_encode_part.exit.thread104:                   ; preds = %bb.br, %url_encode_part.exit
  %i.gx = load ptr, ptr @Curl_cfree, align 8, !tbaa !25
  %i.gy = load ptr, ptr %.170, align 8, !tbaa !16
  call void %i.gx(ptr noundef %i.gy) #8
  store ptr %i.fz, ptr %.170, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %urlset_clear.exit

urlset_clear.exit:                                ; preds = %url_encode_part.exit.thread104, %url_append_query.exit.thread, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.p, %bb.o, %bb.a, %bb.q, %bb.aa, %bb.w
  %.5 = phi i32 [ 1, %bb.a ], [ 3, %bb.o ], [ 9, %bb.p ], [ 0, %bb.d ], [ %i.bv, %bb.q ], [ %i.ce, %bb.w ], [ %i.cq, %bb.aa ], [ 9, %bb.c ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %url_encode_part.exit.thread104 ], [ %.4.ph, %url_append_query.exit.thread ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 28) i32 @set_url_scheme(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #7 ; 2 uses
  %i.b = add i64 %i.a, -41
  %or.cond = icmp ult i64 %i.b, -40
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @Curl_get_scheme(ptr noundef nonnull %1) #8 ; 2 uses
  %i.d = and i32 %2, 8
  %.not = icmp eq i32 %i.d, 0
  %.not40 = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %.not40, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56
  %.not41 = icmp eq ptr %i.f, null
  br i1 %.not41, label %.critedge, label %.thread

bb.e:                                             ; preds = %bb.b
  br i1 %.not40, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.g = load i8, ptr %1, align 1, !tbaa !8
  %i.h = and i8 %i.g, -33
  %i.i = add i8 %i.h, -65
  %or.cond50 = icmp ult i8 %i.i, 26
  br i1 %or.cond50, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.f
  %i.j = add nsw i64 %i.a, -1                     ; 2 uses
  %.not4354 = icmp eq i64 %i.j, 0
  br i1 %.not4354, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %i.k = phi i64 [ %i.q, %bb.h ], [ %i.j, %.preheader ]
  %.055.pn = phi ptr [ %.055, %bb.h ], [ %1, %.preheader ]
  %.055 = getelementptr inbounds nuw i8, ptr %.055.pn, i64 1 ; 2 uses
  %i.l = load i8, ptr %.055, align 1, !tbaa !8    ; 3 uses
  %i.m = add i8 %i.l, -48
  %or.cond46 = icmp ult i8 %i.m, 10
  %i.n = and i8 %i.l, -33
  %i.o = add i8 %i.n, -65
  %i.p = icmp ult i8 %i.o, 26
  %or.cond52 = or i1 %or.cond46, %i.p
  br i1 %or.cond52, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  switch i8 %i.l, label %.critedge [
    i8 43, label %bb.h
    i8 45, label %bb.h
    i8 46, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %.lr.ph
  %i.q = add nsw i64 %i.k, -1                     ; 2 uses
  %.not43 = icmp eq i64 %i.q, 0
  br i1 %.not43, label %.thread, label %.lr.ph, !llvm.loop !57

.thread:                                          ; preds = %bb.h, %.preheader, %bb.d, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 2 uses
  %i.s = load i8, ptr %i.r, align 2
  %i.t = and i8 %i.s, -5
  store i8 %i.t, ptr %i.r, align 2
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.c, %bb.d, %bb.a, %.thread
  %.1 = phi i32 [ 27, %bb.a ], [ 0, %.thread ], [ 5, %bb.c ], [ 5, %bb.d ], [ 27, %bb.f ], [ 27, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @set_url_port(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = load i8, ptr %1, align 1, !tbaa !8
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @curlx_str_number(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 65535) #8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8
  %.not7 = icmp eq i8 %i.g, 0
  br i1 %.not7, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.b, align 8, !tbaa !14
  %i.i = call ptr (ptr, ...) @curl_maprintf(ptr noundef nonnull @.str.3, i64 noundef %i.h) #8 ; 2 uses
  %.not8 = icmp eq ptr %i.i, null
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @Curl_cfree, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  call void %i.j(ptr noundef %i.l) #8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !30
  %i.m = load i64, ptr %i.b, align 8, !tbaa !14
  %i.n = trunc i64 %i.m to i16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 %i.n, ptr %i.o, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %bb.e
  %.0 = phi i32 [ 4, %bb.a ], [ 0, %bb.e ], [ 4, %bb.b ], [ 4, %bb.c ], [ 7, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 32) i32 @set_url(ptr nofree noundef nonnull captures(address_is_null) %0, ptr noundef nonnull %1, i64 noundef range(i64 0, 8000001) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.dynbuf, align 8             ; 7 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !16
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @curl_url_get(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef %3) ; 2 uses
  switch i32 %i.b, label %bb.d [
    i32 0, label %bb.c
    i32 7, label %bb.ae
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @Curl_cfree, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  call void %i.c(ptr noundef %i.e) #8
  store ptr null, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 2 uses
  %i.g = load i8, ptr %i.f, align 2
  %i.h = and i8 %i.g, -3
  store i8 %i.h, ptr %i.f, align 2
  %i.i = load ptr, ptr @Curl_cfree, align 8, !tbaa !25
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !16
  call void %i.i(ptr noundef %i.j) #8
  br label %bb.ae

bb.d:                                             ; preds = %bb.b
  br label %bb.ae

bb.e:                                             ; preds = %bb.a
  %i.k = and i32 %3, 516
  %i.l = icmp ne i32 %i.k, 0
  %i.m = load i8, ptr %1, align 1, !tbaa !8
  %i.n = and i8 %i.m, -33
  %i.o = add i8 %i.n, -65
  %or.cond73.i = icmp ult i8 %i.o, 26
  br i1 %or.cond73.i, label %.preheader.i, label %select.unfold

.preheader.i:                                     ; preds = %bb.e, %bb.i
  %.05575.i = phi i64 [ %i.ac, %bb.i ], [ 1, %bb.e ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.05575.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %.fr72.i = freeze i8 %i.q                       ; 5 uses
  %.not61.i = icmp eq i8 %.fr72.i, 0
  br i1 %.not61.i, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %i.r = add i8 %.fr72.i, -48
  %or.cond.i = icmp ult i8 %i.r, 10
  %i.s = and i8 %.fr72.i, -33
  %i.t = add i8 %i.s, -65
  %i.u = icmp ult i8 %i.t, 26
  %or.cond74.i = or i1 %or.cond.i, %i.u
  br i1 %or.cond74.i, label %bb.g, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.f
  switch i8 %.fr72.i, label %.thread.i [
    i8 46, label %bb.g
    i8 45, label %bb.g
    i8 43, label %bb.g
  ]

bb.g:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.f
  %i.v = add nuw nsw i64 %.05575.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, 40
  br i1 %exitcond.not.i, label %..thread_crit_edge.i, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %bb.g
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 %.05575.i
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8
  %.fr72.i.1 = freeze i8 %i.x                     ; 5 uses
  %.not61.i.1 = icmp eq i8 %.fr72.i.1, 0
  br i1 %.not61.i.1, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %.preheader.i.1
  %i.y = add i8 %.fr72.i.1, -48
  %or.cond.i.1 = icmp ult i8 %i.y, 10
  %i.z = and i8 %.fr72.i.1, -33
  %i.aa = add i8 %i.z, -65
  %i.ab = icmp ult i8 %i.aa, 26
  %or.cond74.i.1 = or i1 %or.cond.i.1, %i.ab
  br i1 %or.cond74.i.1, label %bb.i, label %switch.early.test.i.1

switch.early.test.i.1:                            ; preds = %bb.h
  switch i8 %.fr72.i.1, label %.thread.i [
    i8 46, label %bb.i
    i8 45, label %bb.i
    i8 43, label %bb.i
  ]

bb.i:                                             ; preds = %switch.early.test.i.1, %switch.early.test.i.1, %switch.early.test.i.1, %bb.h
  %i.ac = add nuw nsw i64 %.05575.i, 2
  br label %.preheader.i

..thread_crit_edge.i:                             ; preds = %bb.g
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !8
  br label %.thread.i, !llvm.loop !12

.thread.i:                                        ; preds = %switch.early.test.i, %switch.early.test.i.1, %..thread_crit_edge.i
  %i.ad = phi i8 [ %.pre.i, %..thread_crit_edge.i ], [ %.fr72.i, %switch.early.test.i ], [ %.fr72.i.1, %switch.early.test.i.1 ]
  %.055.lcssa.i = phi i64 [ 40, %..thread_crit_edge.i ], [ %.05575.i, %switch.early.test.i ], [ %i.v, %switch.early.test.i.1 ]
  %i.ae = icmp eq i8 %i.ad, 58
  br i1 %i.ae, label %bb.j, label %select.unfold

bb.j:                                             ; preds = %.thread.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.055.lcssa.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = icmp ne i8 %i.ah, 47
  %or.cond19.i = and i1 %i.l, %i.ai
  br i1 %or.cond19.i, label %select.unfold, label %Curl_is_absolute_url.exit

Curl_is_absolute_url.exit:                        ; preds = %bb.j
  %i.aj = tail call fastcc i32 @parseurl_and_replace(ptr noundef nonnull %1, ptr noundef %0, i32 noundef %3)
  br label %bb.ae

select.unfold:                                    ; preds = %.preheader.i, %.preheader.i.1, %bb.j, %.thread.i, %bb.e
  %i.ak = and i32 %3, -32769
  %i.al = call i32 @curl_url_get(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef %i.ak) ; 2 uses
  switch i32 %i.al, label %bb.k [
    i32 7, label %bb.ae
    i32 0, label %bb.l
  ]

bb.k:                                             ; preds = %select.unfold
  %i.am = call fastcc i32 @parseurl_and_replace(ptr noundef nonnull %1, ptr noundef %0, i32 noundef %3)
  br label %bb.ae

bb.l:                                             ; preds = %select.unfold
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !16  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.ao = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  %spec.select.i = select i1 %.not.i, ptr @.str.17, ptr %i.ao
  %i.ap = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i) #7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3 ; 6 uses
  %.not49.i = icmp eq ptr %i.an, null
  br i1 %.not49.i, label %redirect_url.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i8, ptr %1, align 1, !tbaa !8      ; 2 uses
  switch i8 %i.as, label %bb.q [
    i8 47, label %bb.n
    i8 35, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  %i.av = icmp eq i8 %i.au, 47
  br i1 %i.av, label %bb.o, label %.sink.split77.i

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %.thread68.i

bb.p:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !39
  %.not50.i = icmp eq ptr %i.ay, null
  br i1 %.not50.i, label %.thread.i32, label %.sink.split77.i

bb.q:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !38 ; 2 uses
  %.not51.i = icmp eq ptr %i.ba, null
  br i1 %.not51.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %.not52.i = icmp eq i8 %i.bb, 0
  br i1 %.not52.i, label %bb.s, label %.sink.split.i

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !39 ; 2 uses
  %.not53.i = icmp eq ptr %i.bd, null
  br i1 %.not53.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !8
  %.not54.i = icmp eq i8 %i.be, 0
  br i1 %.not54.i, label %bb.u, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %bb.r
  %.sink.i = phi i32 [ 63, %bb.r ], [ 35, %bb.t ]
  %i.bf = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ar, i32 noundef %.sink.i) #7
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i, %bb.t, %bb.s
  %.042.i = phi ptr [ null, %bb.t ], [ null, %bb.s ], [ %i.bf, %.sink.split.i ] ; 3 uses
  %.not55.i = icmp eq i8 %i.as, 63
  br i1 %.not55.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not56.i = icmp eq ptr %.042.i, null
  br i1 %.not56.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = ptrtoint ptr %.042.i to i64
  %i.bh = ptrtoint ptr %i.ar to i64
  %i.bi = sub i64 %i.bg, %i.bh
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ar) #7
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bk = phi i64 [ %i.bi, %bb.w ], [ %i.bj, %bb.x ]
  %i.bl = call ptr @memrchr(ptr noundef nonnull %i.ar, i32 noundef 47, i64 noundef %i.bk) #7 ; 2 uses
  %.not57.i = icmp eq ptr %i.bl, null
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  br i1 %.not57.i, label %.thread.i32, label %.thread68.i

.sink.split77.i:                                  ; preds = %bb.p, %bb.n
  %.sink78.i = phi i32 [ 47, %bb.n ], [ 35, %bb.p ]
  %i.bn = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ar, i32 noundef %.sink78.i) #7
  br label %bb.z

bb.z:                                             ; preds = %.sink.split77.i, %bb.u
  %.1.i = phi ptr [ %.042.i, %bb.u ], [ %i.bn, %.sink.split77.i ] ; 2 uses
  %.not58.i = icmp eq ptr %.1.i, null
  br i1 %.not58.i, label %.thread.i32, label %.thread68.i

.thread68.i:                                      ; preds = %bb.z, %bb.y, %bb.o
  %i.bo = phi i1 [ true, %bb.z ], [ false, %bb.o ], [ true, %bb.y ]
  %.04173.i = phi ptr [ %1, %bb.z ], [ %i.aw, %bb.o ], [ %1, %bb.y ]
  %.172.i = phi ptr [ %.1.i, %bb.z ], [ %i.ar, %bb.o ], [ %i.bm, %bb.y ]
  %i.bp = ptrtoint ptr %.172.i to i64
  %i.bq = ptrtoint ptr %i.an to i64
  %i.br = sub i64 %i.bp, %i.bq
  br label %bb.aa

.thread.i32:                                      ; preds = %bb.z, %bb.y, %bb.p
  %i.bs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #7
  br label %bb.aa

bb.aa:                                            ; preds = %.thread.i32, %.thread68.i
  %i.bt = phi i1 [ %i.bo, %.thread68.i ], [ true, %.thread.i32 ]
  %.04165.i = phi ptr [ %.04173.i, %.thread68.i ], [ %1, %.thread.i32 ] ; 2 uses
  %i.bu = phi i64 [ %i.br, %.thread68.i ], [ %i.bs, %.thread.i32 ]
  call void @curlx_dyn_init(ptr noundef nonnull %4, i64 noundef 8000000) #8
  %i.bv = call i32 @curlx_dyn_addn(ptr noundef nonnull %4, ptr noundef nonnull %i.an, i64 noundef %i.bu) #8
  %.not59.i = icmp eq i32 %i.bv, 0
  br i1 %.not59.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.bw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.04165.i) #7
  %i.bx = call i32 @urlencode_str(ptr noundef nonnull %4, ptr noundef nonnull %.04165.i, i64 noundef %i.bw, i1 noundef zeroext %i.bt, i32 noundef 3)
  %.not60.i = icmp eq i32 %i.bx, 0
  br i1 %.not60.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.by = call ptr @curlx_dyn_ptr(ptr noundef nonnull %4) #8
  %i.bz = and i32 %3, -17
  %i.ca = call fastcc i32 @parseurl_and_replace(ptr noundef %i.by, ptr noundef nonnull %0, i32 noundef %i.bz)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.040.i = phi i32 [ %i.ca, %bb.ac ], [ 7, %bb.ab ], [ 7, %bb.aa ]
  call void @curlx_dyn_free(ptr noundef nonnull %4) #8
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !16
  br label %redirect_url.exit

redirect_url.exit:                                ; preds = %bb.l, %bb.ad
  %i.cb = phi ptr [ %.pre, %bb.ad ], [ null, %bb.l ]
end_hunk_1
begin_hunk_2_@Curl_url_same_origin:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %.not38 = icmp eq ptr %i.k, null
  %spec.select = select i1 %.not38, ptr @.str.8, ptr %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 2 uses
  %.not39 = icmp eq ptr %i.m, null
  %i.n = select i1 %.not39, ptr @.str.8, ptr %i.m
  %i.o = tail call i32 @curl_strequal(ptr noundef nonnull %spec.select, ptr noundef nonnull %i.n) #8
  %.not40 = icmp eq i32 %i.o, 0
  br i1 %.not40, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = tail call i32 @curl_strequal(ptr noundef %i.q, ptr noundef %i.s) #8
  %.not41 = icmp eq i32 %i.t, 0
  br i1 %.not41, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !30
  %.not42 = icmp eq ptr %i.u, null
  br i1 %.not42, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !30
  %.not43 = icmp eq ptr %i.v, null
  br i1 %.not43, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !19
  %i.x = tail call ptr @Curl_get_scheme(ptr noundef %i.w) #8 ; 3 uses
  %.not44 = icmp eq ptr %i.x, null
  br i1 %.not44, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !30
  %.not45 = icmp eq ptr %i.y, null
  br i1 %.not45, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !42
  %.not46 = icmp eq i16 %i.aa, %i.ac
  br i1 %.not46, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !30
  %.not47 = icmp eq ptr %i.ad, null
  br i1 %.not47, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %i.ah = load i16, ptr %i.ag, align 4, !tbaa !42
  %.not48 = icmp eq i16 %i.af, %i.ah
  br i1 %.not48, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !30
  %.not36 = icmp eq ptr %i.aj, null
  br i1 %.not36, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.h, %bb.o, %bb.n
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.m, %bb.o, %bb.k, %bb.j, %bb.g, %bb.f, %bb.d, %bb.a, %bb.b, %bb.q
  %.0 = phi i1 [ true, %bb.q ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.m ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.o ], [ false, %bb.p ]
  ret i1 %.0
}

declare i32 @curl_strequal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 23) i32 @hostname_check(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !8       ; 2 uses
  %i.b = icmp eq i8 %i.a, 91
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @ipv6_parse(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i64 @strcspn(ptr noundef nonnull %1, ptr noundef nonnull @.str.14) #7
  %.not16 = icmp eq i64 %2, %i.d
  br i1 %.not16, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %cond = icmp eq i64 %2, 1
  br i1 %cond, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr i8, ptr %1, i64 %2         ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8
  %i.h = icmp eq i8 %i.g, 46
  br i1 %i.h, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr i8, ptr %i.e, i64 -2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8
  %i.k = icmp eq i8 %i.j, 46
  br i1 %i.k, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.l = icmp eq i8 %i.a, 46
  br i1 %i.l, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.a, %bb.i, %bb.c
  %.0 = phi i32 [ %i.c, %bb.c ], [ 14, %bb.a ], [ 21, %bb.d ], [ 21, %bb.g ], [ 0, %bb.i ], [ 21, %bb.h ]
  ret i32 %.0
}

declare i32 @Curl_urldecode(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @curl_easy_escape(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @Curl_is_ASCII_name(ptr noundef) local_unnamed_addr #2

declare ptr @curlx_memdup0(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 32) i32 @parseurl_and_replace(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.dynbuf, align 8             ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.dynbuf, align 8             ; 6 uses
  %5 = alloca %struct.dynbuf, align 8             ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %i.d = alloca [41 x i8], align 16               ; 10 uses
  %6 = alloca %struct.dynbuf, align 8             ; 9 uses
  %7 = alloca %struct.Curl_URL, align 8           ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %7, i8 0, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @curlx_dyn_init(ptr noundef nonnull %6, i64 noundef 8000000) #8
  %i.e = and i32 %2, 2048
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #7 ; 5 uses
  %i.g = icmp ugt i64 %i.f, 8000000
  br i1 %i.g, label %parseurl.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a
  %.not18.i.i = icmp eq i64 %i.f, 0
  br i1 %.not18.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.h = select i1 %.not.i, i32 32, i32 31
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.i = add nuw nsw i64 %.01417.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.i, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.c, !llvm.loop !13

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.01417.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.01417.i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %i.l = zext i8 %i.k to i32
  %.not.i.i = icmp samesign uge i32 %i.h, %i.l
  %i.m = icmp eq i8 %i.k, 127
  %or.cond.i.i = or i1 %i.m, %.not.i.i
  br i1 %or.cond.i.i, label %parseurl.exit, label %bb.b

.loopexit.i:                                      ; preds = %bb.b, %.preheader.i.i
  %i.n = and i32 %2, 516                          ; 2 uses
  %i.o = icmp ne i32 %i.n, 0
  store i8 0, ptr %i.d, align 16, !tbaa !8
  %i.p = load i8, ptr %0, align 1, !tbaa !8
  %i.q = and i8 %i.p, -33
  %i.r = add i8 %i.q, -65
  %or.cond73.i.i = icmp ult i8 %i.r, 26
  br i1 %or.cond73.i.i, label %.preheader.i80.i, label %.split.i

.preheader.i80.i:                                 ; preds = %.loopexit.i, %bb.g
  %.05575.i.i = phi i64 [ %i.af, %bb.g ], [ 1, %.loopexit.i ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.05575.i.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8
  %.fr72.i.i = freeze i8 %i.t                     ; 5 uses
  %.not61.i.i = icmp eq i8 %.fr72.i.i, 0
  br i1 %.not61.i.i, label %.split.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i80.i
  %i.u = add i8 %.fr72.i.i, -48
  %or.cond.i81.i = icmp ult i8 %i.u, 10
  %i.v = and i8 %.fr72.i.i, -33
  %i.w = add i8 %i.v, -65
  %i.x = icmp ult i8 %i.w, 26
  %or.cond74.i.i = or i1 %or.cond.i81.i, %i.x
  br i1 %or.cond74.i.i, label %bb.e, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.d
  switch i8 %.fr72.i.i, label %.thread.i.i [
    i8 46, label %bb.e
    i8 45, label %bb.e
    i8 43, label %bb.e
  ]

bb.e:                                             ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.d
  %i.y = add nuw nsw i64 %.05575.i.i, 1           ; 2 uses
  %exitcond.not.i82.i = icmp eq i64 %i.y, 40
  br i1 %exitcond.not.i82.i, label %..thread_crit_edge.i.i, label %.preheader.i80.i.1

.preheader.i80.i.1:                               ; preds = %bb.e
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %.05575.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %.fr72.i.i.1 = freeze i8 %i.aa                  ; 5 uses
  %.not61.i.i.1 = icmp eq i8 %.fr72.i.i.1, 0
  br i1 %.not61.i.i.1, label %.split.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i80.i.1
  %i.ab = add i8 %.fr72.i.i.1, -48
  %or.cond.i81.i.1 = icmp ult i8 %i.ab, 10
  %i.ac = and i8 %.fr72.i.i.1, -33
  %i.ad = add i8 %i.ac, -65
  %i.ae = icmp ult i8 %i.ad, 26
  %or.cond74.i.i.1 = or i1 %or.cond.i81.i.1, %i.ae
  br i1 %or.cond74.i.i.1, label %bb.g, label %switch.early.test.i.i.1

switch.early.test.i.i.1:                          ; preds = %bb.f
  switch i8 %.fr72.i.i.1, label %.thread.i.i [
    i8 46, label %bb.g
    i8 45, label %bb.g
    i8 43, label %bb.g
  ]

bb.g:                                             ; preds = %switch.early.test.i.i.1, %switch.early.test.i.i.1, %switch.early.test.i.i.1, %bb.f
  %i.af = add nuw nsw i64 %.05575.i.i, 2
  br label %.preheader.i80.i

..thread_crit_edge.i.i:                           ; preds = %bb.e
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !tbaa !8
  br label %.thread.i.i, !llvm.loop !12

.thread.i.i:                                      ; preds = %switch.early.test.i.i, %switch.early.test.i.i.1, %..thread_crit_edge.i.i
  %i.ag = phi i8 [ %.pre.i.i, %..thread_crit_edge.i.i ], [ %.fr72.i.i, %switch.early.test.i.i ], [ %.fr72.i.i.1, %switch.early.test.i.i.1 ]
  %.055.lcssa.i.i = phi i64 [ 40, %..thread_crit_edge.i.i ], [ %.05575.i.i, %switch.early.test.i.i ], [ %i.y, %switch.early.test.i.i.1 ] ; 3 uses
  %i.ah = icmp eq i8 %i.ag, 58
  br i1 %i.ah, label %bb.h, label %.split.i

bb.h:                                             ; preds = %.thread.i.i
  %i.ai = getelementptr i8, ptr %0, i64 %.055.lcssa.i.i ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = icmp ne i8 %i.ak, 47
  %or.cond19.i.i = and i1 %i.o, %i.al
  br i1 %or.cond19.i.i, label %.split.thread.i, label %Curl_is_absolute_url.exit.thread111.i

Curl_is_absolute_url.exit.thread111.i:            ; preds = %bb.h
  call void @Curl_strntolower(ptr noundef nonnull %i.d, ptr noundef nonnull %0, i64 noundef %.055.lcssa.i.i) #8
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %.055.lcssa.i.i
  store i8 0, ptr %i.am, align 1, !tbaa !8
  %i.an = load i32, ptr %i.d, align 16
  %i.ao = xor i32 %i.an, 1701603686
  %i.ap = getelementptr i8, ptr %i.d, i64 4
  %i.aq = load i8, ptr %i.ap, align 4
  %i.ar = zext i8 %i.aq to i32
  %i.as = or i32 %i.ao, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %.not62.i = icmp eq i32 %i.au, 0
  br i1 %.not62.i, label %bb.k, label %.split53.i

.split.i:                                         ; preds = %.preheader.i80.i, %.preheader.i80.i.1, %.thread.i.i, %.loopexit.i
  %.not30.i.i = icmp eq i32 %i.n, 0
  br i1 %.not30.i.i, label %parseurl.exit, label %.split.thread.i

.split.thread.i:                                  ; preds = %.split.i, %bb.h
  %i.av = and i32 %2, 4
  %.not31.i.i = icmp eq i32 %i.av, 0
  br i1 %.not31.i.i, label %parse_scheme.exit.i, label %bb.i

bb.i:                                             ; preds = %.split.thread.i
  %i.aw = load ptr, ptr @Curl_cstrdup, align 8, !tbaa !25
  %i.ax = call ptr %i.aw(ptr noundef nonnull @.str.17) #8, !inline_history !58 ; 2 uses
  store ptr %i.ax, ptr %7, align 8, !tbaa !19
  %.not35.i.i = icmp eq ptr %i.ax, null
  br i1 %.not35.i.i, label %parseurl.exit, label %parse_scheme.exit.i

.split53.i:                                       ; preds = %Curl_is_absolute_url.exit.thread111.i
  %.024.i.i = getelementptr i8, ptr %i.ai, i64 1  ; 2 uses
  %i.ay = load i8, ptr %.024.i.i, align 1, !tbaa !8
  %i.az = icmp eq i8 %i.ay, 47
  br i1 %i.az, label %.split53.i.1, label %.split53.i.4

.split53.i.1:                                     ; preds = %.split53.i
  %.024.i.i.1 = getelementptr i8, ptr %i.ai, i64 2 ; 2 uses
  %i.ba = load i8, ptr %.024.i.i.1, align 1, !tbaa !8
  %i.bb = icmp eq i8 %i.ba, 47
  br i1 %i.bb, label %.split53.i.2, label %.split53.i.4

.split53.i.2:                                     ; preds = %.split53.i.1
  %.024.i.i.2 = getelementptr i8, ptr %i.ai, i64 3 ; 2 uses
  %i.bc = load i8, ptr %.024.i.i.2, align 1, !tbaa !8
  %i.bd = icmp eq i8 %i.bc, 47
  br i1 %i.bd, label %.split53.i.3, label %.split53.i.4

.split53.i.3:                                     ; preds = %.split53.i.2
  %.024.i.i.3 = getelementptr i8, ptr %i.ai, i64 4 ; 2 uses
  %i.be = load i8, ptr %.024.i.i.3, align 1, !tbaa !8
  %i.bf = icmp eq i8 %i.be, 47                    ; 2 uses
  %.024.i.i.4 = getelementptr i8, ptr %i.ai, i64 5
  %spec.select = select i1 %i.bf, i1 true, i1 false
  %spec.select46 = select i1 %i.bf, ptr %.024.i.i.4, ptr %.024.i.i.3
  br label %.split53.i.4

.split53.i.4:                                     ; preds = %.split53.i.3, %.split53.i.2, %.split53.i.1, %.split53.i
  %or.cond.i85.i = phi i1 [ true, %.split53.i ], [ false, %.split53.i.1 ], [ false, %.split53.i.2 ], [ %spec.select, %.split53.i.3 ]
  %.024.i.i.lcssa = phi ptr [ %.024.i.i, %.split53.i ], [ %.024.i.i.1, %.split53.i.1 ], [ %.024.i.i.2, %.split53.i.2 ], [ %spec.select46, %.split53.i.3 ]
  %i.bg = call ptr @Curl_get_scheme(ptr noundef nonnull %i.d) #8
  %.not32.i.i = icmp eq ptr %i.bg, null
  %i.bh = and i32 %2, 8
  %.not33.i.i = icmp eq i32 %i.bh, 0
  %or.cond36.i.i = and i1 %.not33.i.i, %.not32.i.i ; 2 uses
  %brmerge = or i1 %or.cond36.i.i, %or.cond.i85.i
  %.mux = select i1 %or.cond36.i.i, i32 5, i32 28
  br i1 %brmerge, label %parseurl.exit, label %bb.j

bb.j:                                             ; preds = %.split53.i.4
  %i.bi = load ptr, ptr @Curl_cstrdup, align 8, !tbaa !25
  %i.bj = call ptr %i.bi(ptr noundef nonnull %i.d) #8, !inline_history !58 ; 2 uses
  store ptr %i.bj, ptr %7, align 8, !tbaa !19
  %.not35.i86.i = icmp eq ptr %i.bj, null
  br i1 %.not35.i86.i, label %parseurl.exit, label %parse_scheme.exit.i

bb.k:                                             ; preds = %Curl_is_absolute_url.exit.thread111.i
  %i.bk = call i32 @parse_file(ptr noundef nonnull %0, i64 noundef %i.f, ptr noundef nonnull %7, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  br label %.thread.i

parse_scheme.exit.i:                              ; preds = %bb.j, %bb.i, %.split.thread.i
  %i.bl = phi i1 [ false, %.split.thread.i ], [ true, %bb.i ], [ true, %bb.j ]
  %.0102.i = phi ptr [ %0, %.split.thread.i ], [ %0, %bb.i ], [ %.024.i.i.lcssa, %bb.j ] ; 3 uses
  %i.bm = call i64 @strcspn(ptr noundef nonnull %.0102.i, ptr noundef nonnull @.str.25) #7 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0102.i, i64 %i.bm ; 4 uses
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !16
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %0 to i64
  %.neg.i = add i64 %i.f, %i.bp
  %i.bq = sub i64 %.neg.i, %i.bo                  ; 3 uses
  store i64 %i.bq, ptr %i.c, align 8, !tbaa !14
  %.not64.i = icmp eq i64 %i.bm, 0
  br i1 %.not64.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %parse_scheme.exit.i
  %i.br = call fastcc i32 @parse_authority(ptr noundef nonnull %7, ptr noundef nonnull %.0102.i, i64 noundef %i.bm, i32 noundef %2, ptr noundef %6, i1 noundef zeroext %i.bl) ; 2 uses
  %.not67.i = icmp eq i32 %i.br, 0
  br i1 %.not67.i, label %bb.m, label %parseurl.exit

bb.m:                                             ; preds = %bb.l
  %i.bs = and i32 %2, 512
  %.not68.i = icmp ne i32 %i.bs, 0
  %i.bt = load ptr, ptr %7, align 8
  %.not69.i = icmp eq ptr %i.bt, null
  %or.cond = select i1 %.not68.i, i1 %.not69.i, i1 false
  br i1 %or.cond, label %bb.n, label %.thread.thread.i

bb.n:                                             ; preds = %bb.m
  %i.bu = call fastcc i32 @guess_scheme(ptr noundef nonnull %7, ptr noundef %6)
  br label %.thread.i

bb.o:                                             ; preds = %parse_scheme.exit.i
  %i.bv = and i32 %2, 1024
  %.not65.i = icmp eq i32 %i.bv, 0
  br i1 %.not65.i, label %parseurl.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = call i32 @curlx_dyn_add(ptr noundef nonnull %6, ptr noundef nonnull @.str.8) #8
  %.not66.i = icmp eq i32 %i.bw, 0
  br i1 %.not66.i, label %.thread.thread.i, label %parseurl.exit

.thread.i:                                        ; preds = %bb.n, %bb.k
  %.051.i = phi i64 [ 1, %bb.k ], [ 2, %bb.n ]
  %.2.i = phi i32 [ %i.bk, %bb.k ], [ %i.bu, %bb.n ] ; 2 uses
  %.not70.i = icmp eq i32 %.2.i, 0
  br i1 %.not70.i, label %.thread..thread.thread_crit_edge.i, label %parseurl.exit

.thread..thread.thread_crit_edge.i:               ; preds = %.thread.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !16
  %.pre163.pre.i = load i64, ptr %i.c, align 8, !tbaa !14
  br label %.thread.thread.i

.thread.thread.i:                                 ; preds = %.thread..thread.thread_crit_edge.i, %bb.p, %bb.m
  %.pre163.i = phi i64 [ %.pre163.pre.i, %.thread..thread.thread_crit_edge.i ], [ %i.bq, %bb.m ], [ %i.bq, %bb.p ] ; 2 uses
  %i.bx = phi ptr [ %.pre.i, %.thread..thread.thread_crit_edge.i ], [ %i.bn, %bb.m ], [ %i.bn, %bb.p ] ; 6 uses
  %.051147.i = phi i64 [ %.051.i, %.thread..thread.thread_crit_edge.i ], [ 2, %bb.m ], [ 2, %bb.p ]
  %i.by = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bx, i32 noundef 35) #7 ; 4 uses
  %.not71.i = icmp eq ptr %i.by, null
  br i1 %.not71.i, label %.thread121.i, label %bb.q

bb.q:                                             ; preds = %.thread.thread.i
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %.neg72.i = sub i64 %i.ca, %i.bz                ; 2 uses
  %i.cb = add i64 %.neg72.i, %.pre163.i           ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 82 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 2
  %i.ce = or i8 %i.cd, 2
  store i8 %i.ce, ptr %i.cc, align 2
  %i.cf = icmp ugt i64 %i.cb, 1
  br i1 %i.cf, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cg = and i32 %2, 128
  %.not.i92.i = icmp eq i32 %i.cg, 0
end_hunk_2
