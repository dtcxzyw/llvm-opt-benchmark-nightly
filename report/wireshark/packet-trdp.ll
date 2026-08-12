inline.NumInlined: 68
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@TrdpDict_parseType:bb.a
.fold.split145:                                   ; preds = %bb.s
  br label %bb.o

.fold.split146:                                   ; preds = %bb.t
  br label %bb.o

.fold.split147:                                   ; preds = %bb.u
  br label %bb.o

.fold.split148:                                   ; preds = %bb.w
  br label %bb.o

.fold.split149:                                   ; preds = %bb.x
  br label %bb.o

.fold.split150:                                   ; preds = %bb.y
  br label %bb.o

.fold.split151:                                   ; preds = %bb.z
  br label %bb.o

.fold.split152:                                   ; preds = %bb.aa
  br label %bb.o

.fold.split153:                                   ; preds = %bb.ae
  br label %bb.o

switch.lookup:                                    ; preds = %bb.n
  %i.cp = zext nneg i32 %i.cm to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.TrdpDict_parseType, i64 %i.cp
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.o

bb.o:                                             ; preds = %switch.lookup, %bb.ae, %.fold.split153, %bb.aa, %.fold.split152, %bb.z, %.fold.split151, %bb.y, %.fold.split150, %bb.x, %.fold.split149, %bb.w, %.fold.split148, %bb.u, %.fold.split147, %bb.t, %.fold.split146, %bb.s, %.fold.split145, %bb.q, %.fold.split144, %bb.ad, %bb.ac, %bb.ab, %bb.v, %bb.r, %bb.p
  %.lcssa = phi ptr [ %switch.load, %switch.lookup ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 1728), %.fold.split152 ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 2088), %.fold.split153 ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 288), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 360), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 2016), %bb.ae ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 504), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 576), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 432), %.fold.split144 ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 720), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 648), %.fold.split145 ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 864), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 792), %.fold.split146 ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 1008), %bb.v ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 1080), %bb.w ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 936), %.fold.split147 ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 1224), %bb.x ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 1152), %.fold.split148 ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 1368), %bb.y ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 1296), %.fold.split149 ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 1512), %bb.z ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 1440), %.fold.split150 ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 1656), %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 1584), %.fold.split151 ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 1800), %bb.ab ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 1872), %bb.ac ], [ getelementptr inbounds nuw (i8, ptr @ElBasics, i64 1944), %bb.ad ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %.lcssa, i64 72, i1 false)
  br label %.loopexit

bb.p:                                             ; preds = %.preheader
  %i.cq = icmp eq i32 %i.cm, 0
  br i1 %i.cq, label %bb.o, label %.loopexit

bb.q:                                             ; preds = %.preheader
  switch i32 %i.cm, label %.loopexit [
    i32 0, label %bb.o
    i32 1, label %.fold.split144
  ]

bb.r:                                             ; preds = %.preheader
  %i.cr = icmp eq i32 %i.cm, 0
  br i1 %i.cr, label %bb.o, label %.loopexit

bb.s:                                             ; preds = %.preheader
  switch i32 %i.cm, label %.loopexit [
    i32 0, label %bb.o
    i32 1, label %.fold.split145
  ]

bb.t:                                             ; preds = %.preheader
  switch i32 %i.cm, label %.loopexit [
    i32 0, label %bb.o
    i32 1, label %.fold.split146
  ]

bb.u:                                             ; preds = %.preheader
  switch i32 %i.cm, label %.loopexit [
    i32 0, label %bb.o
    i32 1, label %.fold.split147
  ]

bb.v:                                             ; preds = %.preheader
  %i.cs = icmp eq i32 %i.cm, 0
  br i1 %i.cs, label %bb.o, label %.loopexit

bb.w:                                             ; preds = %.preheader
  switch i32 %i.cm, label %.loopexit [
    i32 0, label %bb.o
    i32 1, label %.fold.split148
  ]

bb.x:                                             ; preds = %.preheader
  switch i32 %i.cm, label %.loopexit [
    i32 0, label %bb.o
    i32 1, label %.fold.split149
  ]

bb.y:                                             ; preds = %.preheader
  switch i32 %i.cm, label %.loopexit [
    i32 0, label %bb.o
    i32 1, label %.fold.split150
  ]

bb.z:                                             ; preds = %.preheader
  switch i32 %i.cm, label %.loopexit [
    i32 0, label %bb.o
    i32 1, label %.fold.split151
  ]

bb.aa:                                            ; preds = %.preheader
  switch i32 %i.cm, label %.loopexit [
    i32 0, label %bb.o
    i32 1, label %.fold.split152
  ]

bb.ab:                                            ; preds = %.preheader
  %i.ct = icmp eq i32 %i.cm, 0
  br i1 %i.ct, label %bb.o, label %.loopexit

bb.ac:                                            ; preds = %.preheader
  %i.cu = icmp eq i32 %i.cm, 0
  br i1 %i.cu, label %bb.o, label %.loopexit

bb.ad:                                            ; preds = %.preheader
  %i.cv = icmp eq i32 %i.cm, 0
  br i1 %i.cv, label %bb.o, label %.loopexit

bb.ae:                                            ; preds = %.preheader
  switch i32 %i.cm, label %.loopexit [
    i32 0, label %bb.o
    i32 1, label %.fold.split153
  ]

.loopexit:                                        ; preds = %bb.n, %bb.ae, %.preheader, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %bb.r, %bb.v, %bb.ab, %bb.ac, %bb.ad, %bb.i, %bb.m, %bb.o, %bb.a, %bb.g
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.i ], [ false, %bb.g ], [ true, %bb.o ], [ true, %bb.m ], [ true, %bb.ad ], [ true, %bb.ae ], [ true, %bb.n ], [ true, %bb.ac ], [ true, %bb.ab ], [ true, %bb.z ], [ true, %bb.x ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.y ], [ true, %bb.aa ], [ true, %bb.t ], [ true, %bb.r ], [ true, %bb.s ], [ true, %bb.u ], [ true, %bb.p ], [ true, %bb.q ], [ true, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @str_to_ip(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @ComId_connection_add(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 6 uses
  %i.c = load ptr, ptr @wmem_dic, align 8
  %i.d = tail call noalias dereferenceable_or_null(88) ptr @wmem_alloc0(ptr noundef %i.c, i64 noundef 88) #11 ; 19 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @wmem_dic, align 8
  %i.f = tail call noalias ptr @wmem_strdup(ptr noundef %i.e, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ @.str.93, %bb.a ]
  store ptr %i.g, ptr %i.d, align 8
  %i.h = getelementptr i8, ptr %i.d, i64 56       ; 3 uses
  store i32 %2, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.d, i64 60       ; 3 uses
  store i32 %3, ptr %i.i, align 4
  %i.j = getelementptr i8, ptr %i.d, i64 8
  store i32 2, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.d, i64 12
  store i32 4, ptr %i.k, align 4
  %i.l = getelementptr i8, ptr %i.d, i64 16
  store ptr %i.h, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.d, i64 24
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.d, i64 32
  store i32 2, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %i.d, i64 36
  store i32 4, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %i.d, i64 40
  store ptr %i.i, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.d, i64 48
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %i.d, i64 64       ; 2 uses
  store i16 %4, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %i.d, i64 68       ; 2 uses
  store i32 %5, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %.not37 = icmp eq ptr %i.u, null
  br i1 %.not37, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.preheader.split.us.preheader, label %.preheader.split

.preheader.split.us.preheader:                    ; preds = %.preheader
  %i.v = load ptr, ptr %6, align 8
  %.not38.us = icmp eq ptr %i.v, null
  br label %ComId_connection_equals.exit.thread.us

ComId_connection_equals.exit.thread.us:           ; preds = %bb.d, %.preheader.split.us.preheader
  %.032.us = phi ptr [ %i.x, %bb.d ], [ %i.u, %.preheader.split.us.preheader ] ; 2 uses
  br i1 %.not38.us, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %ComId_connection_equals.exit.thread.us
  %i.w = getelementptr i8, ptr %.032.us, i64 80
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not39.us = icmp eq ptr %i.x, null
  br i1 %.not39.us, label %.split.us, label %ComId_connection_equals.exit.thread.us, !llvm.loop !41

.preheader.split:                                 ; preds = %.preheader, %bb.m
  %.032 = phi ptr [ %i.ay, %bb.m ], [ %i.u, %.preheader ] ; 9 uses
  %i.y = icmp eq ptr %.032, %i.d
  br i1 %i.y, label %ComId_connection_equals.exit.thread43, label %bb.e

bb.e:                                             ; preds = %.preheader.split
  %i.z = getelementptr i8, ptr %.032, i64 56
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = load i32, ptr %i.h, align 8
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %ComId_connection_equals.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %.032, i64 60
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = load i32, ptr %i.i, align 4
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.g, label %ComId_connection_equals.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.ah = getelementptr i8, ptr %.032, i64 8
  call void @address_to_str_buf(ptr noundef %i.ah, ptr noundef nonnull %i.a, i32 noundef 16)
  %i.ai = getelementptr i8, ptr %.032, i64 32
  call void @address_to_str_buf(ptr noundef %i.ai, ptr noundef nonnull %i.b, i32 noundef 16)
  %i.aj = getelementptr i8, ptr %.032, i64 64
  %i.ak = load i16, ptr %i.aj, align 8            ; 2 uses
  %i.al = load i16, ptr %i.r, align 8             ; 2 uses
  %.not31.i = icmp eq i16 %i.ak, %i.al
  br i1 %.not31.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = zext i16 %i.al to i32
  %i.an = zext i16 %i.ak to i32
  %i.ao = load i32, ptr @q_xml, align 4
  call void (ptr, i32, i32, ptr, ...) @g_set_error(ptr noundef %6, i32 noundef %i.ao, i32 noundef 5, ptr noundef nonnull @.str.203, i32 noundef %i.an, i32 noundef %i.am, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %ComId_connection_equals.exit.thread46

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr i8, ptr %.032, i64 68
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %i.ar = load i32, ptr %i.s, align 4             ; 2 uses
  %.not32.i = icmp eq i32 %i.aq, %i.ar
  br i1 %.not32.i, label %ComId_connection_equals.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load i32, ptr @q_xml, align 4
  call void (ptr, i32, i32, ptr, ...) @g_set_error(ptr noundef %6, i32 noundef %i.as, i32 noundef 5, ptr noundef nonnull @.str.204, i32 noundef %i.aq, i32 noundef %i.ar, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %ComId_connection_equals.exit.thread46

ComId_connection_equals.exit.thread46:            ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %ComId_connection_equals.exit.thread

ComId_connection_equals.exit:                     ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %ComId_connection_equals.exit.thread43

ComId_connection_equals.exit.thread43:            ; preds = %.preheader.split, %ComId_connection_equals.exit
  %i.at = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not40 = icmp eq ptr %i.at, null
  %.not41 = icmp eq ptr %i.at, @.str.93
  %or.cond = or i1 %.not40, %.not41
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %ComId_connection_equals.exit.thread43
  %i.au = load ptr, ptr @wmem_dic, align 8
  call void @wmem_free(ptr noundef %i.au, ptr noundef nonnull %i.at)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %ComId_connection_equals.exit.thread43
  %i.av = load ptr, ptr @wmem_dic, align 8
  call void @wmem_free(ptr noundef %i.av, ptr noundef nonnull %i.d)
  br label %.loopexit

ComId_connection_equals.exit.thread:              ; preds = %bb.e, %bb.f, %ComId_connection_equals.exit.thread46
  %i.aw = load ptr, ptr %6, align 8
  %.not38 = icmp eq ptr %i.aw, null
  br i1 %.not38, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %ComId_connection_equals.exit.thread
  %i.ax = getelementptr i8, ptr %.032, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not39 = icmp eq ptr %i.ay, null
  br i1 %.not39, label %.split.us, label %.preheader.split, !llvm.loop !41

.split.us:                                        ; preds = %bb.m, %bb.d
  %.us-phi = phi ptr [ %.032.us, %bb.d ], [ %.032, %bb.m ]
  %i.az = getelementptr i8, ptr %.us-phi, i64 80
  store ptr %i.d, ptr %i.az, align 8
  br label %.loopexit

bb.n:                                             ; preds = %bb.c
  store ptr %i.d, ptr %i.t, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %ComId_connection_equals.exit.thread, %ComId_connection_equals.exit.thread.us, %bb.l, %.split.us, %bb.n
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @address_to_str_buf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i64 @g_ascii_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare double @g_ascii_strtod(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strsplit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @Dataset_preCalculate(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef captures(address_is_null) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  %i.a = icmp ugt i64 %3, 15
  %or.cond3 = or i1 %.not, %i.a
  br i1 %or.cond3, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add nuw nsw i64 %3, 1                    ; 3 uses
  %.not36 = icmp ugt i64 %i.c, %3
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.d, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi i64 [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 8                ; 2 uses
  %.not37 = icmp eq i32 %i.g, 0
  br i1 %.not37, label %bb.f, label %bb.x

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr [8 x i8], ptr %2, i64 %3
  store ptr %0, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %0, i64 96
  %.060 = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not3861 = icmp eq ptr %.060, null
  br i1 %.not3861, label %Element_checkConsistency.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.not.i = icmp eq ptr %2, null
  %i.j = icmp samesign ugt i64 %3, 14
  %or.cond5.i = or i1 %.not.i, %i.j
  %i.k = getelementptr i8, ptr %1, i64 32
  br i1 %or.cond5.i, label %Element_checkConsistency.exit.thread, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.thread52
  %.064 = phi ptr [ %.0, %.thread52 ], [ %.060, %.lr.ph ] ; 7 uses
  %.03063 = phi i1 [ %.155, %.thread52 ], [ false, %.lr.ph ]
  %.03162 = phi i32 [ %.2, %.thread52 ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = getelementptr i8, ptr %.064, i64 24      ; 6 uses
  %i.m = getelementptr i8, ptr %.064, i64 88      ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add i32 %i.n, -18
  %or.cond.i = icmp ult i32 %i.o, -17
  br i1 %or.cond.i, label %bb.g, label %Element_checkConsistency.exit.thread50

bb.g:                                             ; preds = %.lr.ph.split
  %i.p = getelementptr i8, ptr %.064, i64 152     ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.not47.i = icmp eq ptr %i.q, null
  br i1 %.not47.i, label %bb.h, label %.preheader

bb.h:                                             ; preds = %bb.g
  %.not56 = icmp eq ptr %i.l, null
  br i1 %.not56, label %TrdpDict_get_Dataset.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.01523.i = load ptr, ptr %i.k, align 8         ; 2 uses
  %.not24.i = icmp eq ptr %.01523.i, null
  br i1 %.not24.i, label %TrdpDict_get_Dataset.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.m
  %.01525.i = phi ptr [ %.015.i, %bb.m ], [ %.01523.i, %bb.i ] ; 6 uses
  %i.r = load i32, ptr %i.m, align 8              ; 2 uses
  %.not20.i = icmp eq i32 %i.r, 0
  br i1 %.not20.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr i8, ptr %.01525.i, i64 68
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp eq i32 %i.t, %i.r
  br i1 %i.u, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %i.v = load i8, ptr %i.l, align 8
  %.not21.i = icmp eq i8 %i.v, 0
  br i1 %.not21.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr i8, ptr %.01525.i, i64 4
  %i.x = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.w, ptr noundef nonnull %i.l)
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.z = getelementptr i8, ptr %.01525.i, i64 112
  %.015.i = load ptr, ptr %i.z, align 8           ; 2 uses
  %.not.i45 = icmp eq ptr %.015.i, null
  br i1 %.not.i45, label %TrdpDict_get_Dataset.exit.thread, label %.lr.ph.i, !llvm.loop !30

TrdpDict_get_Dataset.exit.thread:                 ; preds = %bb.m, %bb.h, %bb.i
  store ptr null, ptr %i.p, align 8
  br label %.preheader

bb.n:                                             ; preds = %bb.l, %bb.j
  store ptr %.01525.i, ptr %i.p, align 8
  %i.aa = load i8, ptr %i.l, align 8
  %.not49.i = icmp eq i8 %i.aa, 0
  br i1 %.not49.i, label %bb.o, label %.preheader

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr i8, ptr %.01525.i, i64 4  ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4
  %.not50.i = icmp eq i8 %i.ac, 0
  br i1 %.not50.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.l, ptr noundef align 1 dereferenceable(64) %i.ab, i64 noundef 64, i1 noundef false) #10
  br label %.preheader

bb.q:                                             ; preds = %bb.o
  %i.ad = getelementptr i8, ptr %.01525.i, i64 68
  %i.ae = load i32, ptr %i.ad, align 4
  tail call void @uint32_to_str_buf(i32 noundef %i.ae, ptr noundef nonnull %i.l, i64 noundef 64), !inline_history !42
  br label %.preheader

.preheader:                                       ; preds = %TrdpDict_get_Dataset.exit.thread, %bb.q, %bb.p, %bb.n, %bb.g
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.t
  %.040.i59 = phi i64 [ %i.aj, %bb.t ], [ 0, %.preheader ] ; 3 uses
  %i.af = getelementptr [8 x i8], ptr %2, i64 %.040.i59
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %.not51.i = icmp eq ptr %i.ag, null
  br i1 %.not51.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = load ptr, ptr %i.p, align 8
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aj = add nuw i64 %.040.i59, 1
  %exitcond.not = icmp eq i64 %.040.i59, %3
  br i1 %exitcond.not, label %Element_checkConsistency.exit, label %bb.r, !llvm.loop !43

bb.u:                                             ; preds = %bb.s
  %i.ak = getelementptr i8, ptr %1, i64 40
  store ptr %i.ag, ptr %i.ak, align 8
  br label %Element_checkConsistency.exit.thread

Element_checkConsistency.exit:                    ; preds = %bb.t
  %i.al = load ptr, ptr %i.p, align 8
  %i.am = tail call fastcc i32 @Dataset_preCalculate(ptr noundef %i.al, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %i.d), !inline_history !42 ; 2 uses
  %i.an = getelementptr i8, ptr %.064, i64 148
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = icmp sgt i32 %i.am, -1
  br i1 %i.ao, label %Element_checkConsistency.exit.thread50, label %Element_checkConsistency.exit.thread

Element_checkConsistency.exit.thread50:           ; preds = %.lr.ph.split, %Element_checkConsistency.exit
  %i.ap = getelementptr i8, ptr %.064, i64 96
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  %.not39 = icmp eq i32 %i.aq, 0
  br i1 %.not39, label %.thread52, label %bb.v

bb.v:                                             ; preds = %Element_checkConsistency.exit.thread50
  %i.ar = getelementptr i8, ptr %.064, i64 148
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %.not40 = icmp eq i32 %i.as, 0                  ; 2 uses
  %brmerge = or i1 %.03063, %.not40
  %.mux = select i1 %.not40, i32 0, i32 %.03162
  br i1 %brmerge, label %.thread52, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.at = mul i32 %i.as, %i.aq
  %i.au = add i32 %i.at, %.03162
  br label %.thread52

.thread52:                                        ; preds = %bb.v, %Element_checkConsistency.exit.thread50, %bb.w
  %.155 = phi i1 [ true, %bb.v ], [ false, %bb.w ], [ true, %Element_checkConsistency.exit.thread50 ]
  %.2 = phi i32 [ %.mux, %bb.v ], [ %i.au, %bb.w ], [ 0, %Element_checkConsistency.exit.thread50 ] ; 2 uses
  %i.av = getelementptr i8, ptr %.064, i64 168
  %.0 = load ptr, ptr %i.av, align 8              ; 2 uses
end_hunk_0
