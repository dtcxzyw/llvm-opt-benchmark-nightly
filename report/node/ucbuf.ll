inline.NumInlined: 21
inline.NumDeleted: 4
begin_hunk_0_@ucbuf_rewind:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @T_FileStream_rewind(ptr noundef %i.m) #13
  %i.n = load ptr, ptr %i.l, align 8
  %i.o = tail call i32 @T_FileStream_size(ptr noundef %i.n) #13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = sub nsw i32 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.r, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @ucnv_resetToUnicode_78(ptr noundef %i.u) #13
  %i.v = load i32, ptr %i.p, align 8              ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i16 0, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.x = load ptr, ptr %i.l, align 8
  %i.y = call i32 @T_FileStream_read(ptr noundef %i.x, ptr noundef nonnull %i.c, i32 noundef %i.v) #13 ; 2 uses
  store ptr %i.a, ptr %i.b, align 8
  store ptr %i.c, ptr %i.d, align 8
  %i.z = load ptr, ptr %i.t, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.ab = sext i32 %i.y to i64
  %i.ac = getelementptr inbounds i8, ptr %i.c, i64 %i.ab
  call void @ucnv_toUnicode_78(ptr noundef %i.z, ptr noundef nonnull %i.b, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ac, ptr noundef null, i8 noundef signext 0, ptr noundef nonnull %1) #13
  %i.ad = load i32, ptr %1, align 4               ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 15
  br i1 %i.ae, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store i32 0, ptr %1, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = icmp sgt i32 %i.ad, 0
  br i1 %i.af, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.ag = load i32, ptr %i.p, align 8
  %i.ah = icmp ne i32 %i.y, %i.ag
  %i.ai = load ptr, ptr %i.b, align 8
  %i.aj = icmp ne ptr %i.ai, %i.aa
  %or.cond5 = select i1 %i.ah, i1 true, i1 %i.aj
  %i.ak = load i16, ptr %i.a, align 2
  %i.al = icmp ne i16 %i.ak, -257
  %or.cond9 = select i1 %or.cond5, i1 true, i1 %i.al
  br i1 %or.cond9, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 5, ptr %1, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.a, %bb.b
  ret void
}

declare void @ucnv_resetToUnicode_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @ucbuf_size(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.b = load i8, ptr %i.a, align 1
  %.not8 = icmp eq i8 %i.b, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @T_FileStream_size(ptr noundef %i.d) #13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = sub nsw i32 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call signext i8 @ucnv_getMinCharSize_78(ptr noundef %i.j) #13
  %i.l = sext i8 %i.k to i32
  %i.m = sdiv i32 %i.h, %i.l
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %0, align 8
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 1
  %i.u = trunc i64 %i.t to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.m, %bb.c ], [ %i.u, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

declare signext i8 @ucnv_getMinCharSize_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @ucbuf_getBuffer(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %2, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %0, align 8
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 1
  %i.m = trunc i64 %i.l to i32
  store i32 %i.m, ptr %1, align 4
  %i.n = load ptr, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %bb.d
  %.0 = phi ptr [ %i.n, %bb.e ], [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @ucbuf_resolveFileName(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.f
  br i1 %or.cond3, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %2, null                     ; 3 uses
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %3, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.c
  store i32 1, ptr %4, align 4
  br label %bb.r

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17 ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.m = trunc i64 %i.l to i32
  %i.n = shl i64 %i.j, 32                         ; 3 uses
  %sext = add i64 %i.n, -4294967296
  %i.o = ashr exact i64 %sext, 32
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1
  %.not55 = icmp eq i8 %i.q, 47
  %i.r = add nsw i32 %i.m, %i.k                   ; 3 uses
  br i1 %.not55, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add nsw i32 %i.r, 2                      ; 2 uses
  %5 = load i32, ptr %3, align 4
  %i.t = icmp slt i32 %5, %i.s
  %or.cond5 = or i1 %i.g, %i.t
  br i1 %or.cond5, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.s, ptr %3, align 4
  store i32 15, ptr %4, align 4
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  store i8 0, ptr %2, align 1
  %i.u = load i8, ptr %1, align 1
  %.not56 = icmp eq i8 %i.u, 47
  br i1 %.not56, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load i8, ptr %i.p, align 1
  %.not57 = icmp eq i8 %i.v, 46
  br i1 %.not57, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %0) #13 ; 0 uses
  %i.x = ashr exact i64 %i.n, 32
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store i8 47, ptr %i.y, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %sext59 = add i64 %i.n, 4294967296
  %i.z = ashr exact i64 %sext59, 32
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.z
  store i8 0, ptr %i.aa, align 1
  br label %bb.q

bb.n:                                             ; preds = %bb.g
  %6 = load i32, ptr %3, align 4
  %7 = icmp sle i32 %6, %i.r
  %or.cond7 = or i1 %i.g, %7
  br i1 %or.cond7, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %8 = add nsw i32 %i.r, 1
  store i32 %8, ptr %3, align 4
  store i32 15, ptr %4, align 4
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ab = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %0) #13 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.ac = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %1) #13 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.b, %bb.q, %bb.o, %bb.i, %bb.f
  %.0 = phi ptr [ null, %bb.o ], [ null, %bb.f ], [ null, %bb.i ], [ %2, %bb.q ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @ucbuf_readline(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.d = load i8, ptr %i.c, align 1
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %_ZL19ucbuf_isCharNewLineDs.exit73.preheader, label %_ZL19ucbuf_isCharNewLineDs.exit.preheader

_ZL19ucbuf_isCharNewLineDs.exit.preheader:        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %_ZL19ucbuf_isCharNewLineDs.exit

_ZL19ucbuf_isCharNewLineDs.exit73.preheader:      ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp eq ptr %i.b, %i.h
  br i1 %i.i, label %.loopexit, label %_ZL19ucbuf_isCharNewLineDs.exit73

_ZL19ucbuf_isCharNewLineDs.exit:                  ; preds = %_ZL19ucbuf_isCharNewLineDs.exit.preheader, %bb.j
  %.0 = phi ptr [ %i.j, %bb.j ], [ %i.b, %_ZL19ucbuf_isCharNewLineDs.exit.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 8 uses
  %i.k = load i16, ptr %.0, align 2               ; 2 uses
  %i.l = load i32, ptr %i.e, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZL19ucbuf_isCharNewLineDs.exit
  %i.n = load ptr, ptr %i.f, align 8
  %.not67 = icmp ult ptr %i.j, %i.n
  br i1 %.not67, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = load ptr, ptr %0, align 8
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 11, ptr %2, align 4
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.r = tail call fastcc noundef ptr @_ZL15ucbuf_fillucbufP8UCHARBUFP10UErrorCode(ptr noundef nonnull %0, ptr noundef %2) ; 0 uses
  %i.s = load i32, ptr %2, align 4
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.u = icmp ne i16 %i.k, 13
  %.pre = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not69 = icmp ugt ptr %i.j, %.pre
  %or.cond114 = select i1 %i.u, i1 true, i1 %.not69
  br i1 %or.cond114, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i16, ptr %i.j, align 2
  %i.w = icmp eq i16 %i.v, 10
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = ptrtoint ptr %i.j to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 1
  %i.ad = trunc i64 %i.ac to i32
  store i32 %i.ad, ptr %1, align 4
  %i.ae = load ptr, ptr %i.a, align 8
  store ptr %i.x, ptr %i.a, align 8
  br label %.loopexit

bb.i:                                             ; preds = %bb.g, %bb.f
  %.not70 = icmp ult ptr %i.j, %.pre
  br i1 %.not70, label %bb.j, label %_ZL19ucbuf_isCharNewLineDs.exit.thread

bb.j:                                             ; preds = %bb.i
  switch i16 %i.k, label %_ZL19ucbuf_isCharNewLineDs.exit [
    i16 10, label %_ZL19ucbuf_isCharNewLineDs.exit.thread
    i16 13, label %_ZL19ucbuf_isCharNewLineDs.exit.thread
    i16 12, label %_ZL19ucbuf_isCharNewLineDs.exit.thread
    i16 133, label %_ZL19ucbuf_isCharNewLineDs.exit.thread
    i16 8232, label %_ZL19ucbuf_isCharNewLineDs.exit.thread
    i16 8233, label %_ZL19ucbuf_isCharNewLineDs.exit.thread
  ], !llvm.loop !5

_ZL19ucbuf_isCharNewLineDs.exit.thread:           ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.i
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = ptrtoint ptr %i.j to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = lshr exact i64 %i.ai, 1
  %i.ak = trunc i64 %i.aj to i32
  store i32 %i.ak, ptr %1, align 4
  %i.al = load ptr, ptr %i.a, align 8
  store ptr %i.j, ptr %i.a, align 8
  br label %.loopexit

_ZL19ucbuf_isCharNewLineDs.exit73:                ; preds = %_ZL19ucbuf_isCharNewLineDs.exit73.preheader, %bb.n
  %.1 = phi ptr [ %i.am, %bb.n ], [ %i.b, %_ZL19ucbuf_isCharNewLineDs.exit73.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 7 uses
  %i.an = load i16, ptr %.1, align 2              ; 2 uses
  %i.ao = icmp ne i16 %i.an, 13
  %.not64 = icmp ugt ptr %i.am, %i.h
  %or.cond = select i1 %i.ao, i1 true, i1 %.not64
  br i1 %or.cond, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZL19ucbuf_isCharNewLineDs.exit73
  %i.ap = load i16, ptr %i.am, align 2
  %i.aq = icmp eq i16 %i.ap, 10
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = ptrtoint ptr %i.b to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = lshr exact i64 %i.au, 1
  %i.aw = trunc i64 %i.av to i32
  store i32 %i.aw, ptr %1, align 4
  %i.ax = load ptr, ptr %i.a, align 8
  store ptr %i.ar, ptr %i.a, align 8
  br label %.loopexit

bb.m:                                             ; preds = %bb.k, %_ZL19ucbuf_isCharNewLineDs.exit73
  %.not65 = icmp ult ptr %i.am, %i.h
  br i1 %.not65, label %bb.n, label %_ZL19ucbuf_isCharNewLineDs.exit73.thread

bb.n:                                             ; preds = %bb.m
  switch i16 %i.an, label %_ZL19ucbuf_isCharNewLineDs.exit73 [
    i16 10, label %_ZL19ucbuf_isCharNewLineDs.exit73.thread
    i16 13, label %_ZL19ucbuf_isCharNewLineDs.exit73.thread
    i16 12, label %_ZL19ucbuf_isCharNewLineDs.exit73.thread
    i16 133, label %_ZL19ucbuf_isCharNewLineDs.exit73.thread
    i16 8232, label %_ZL19ucbuf_isCharNewLineDs.exit73.thread
    i16 8233, label %_ZL19ucbuf_isCharNewLineDs.exit73.thread
  ], !llvm.loop !7

_ZL19ucbuf_isCharNewLineDs.exit73.thread:         ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.m
  %i.ay = ptrtoint ptr %i.am to i64
  %i.az = ptrtoint ptr %i.b to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = lshr exact i64 %i.ba, 1
  %i.bc = trunc i64 %i.bb to i32
  store i32 %i.bc, ptr %1, align 4
  %i.bd = load ptr, ptr %i.a, align 8
  store ptr %i.am, ptr %i.a, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %_ZL19ucbuf_isCharNewLineDs.exit, %_ZL19ucbuf_isCharNewLineDs.exit73.preheader, %_ZL19ucbuf_isCharNewLineDs.exit73.thread, %bb.l, %_ZL19ucbuf_isCharNewLineDs.exit.thread, %bb.h, %bb.d
  %.057 = phi ptr [ %i.bd, %_ZL19ucbuf_isCharNewLineDs.exit73.thread ], [ null, %bb.d ], [ %i.ax, %bb.l ], [ %i.ae, %bb.h ], [ %i.al, %_ZL19ucbuf_isCharNewLineDs.exit.thread ], [ null, %_ZL19ucbuf_isCharNewLineDs.exit73.preheader ], [ null, %_ZL19ucbuf_isCharNewLineDs.exit ], [ null, %bb.e ]
  ret ptr %.057
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @ucnv_setToUCallBack_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @UCNV_TO_U_CALLBACK_STOP_78(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

declare void @ucnv_getInvalidChars_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @ucnv_reset_78(ptr noundef) local_unnamed_addr #3

declare void @UCNV_TO_U_CALLBACK_SUBSTITUTE_78(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

declare void @u_charsToUChars_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

end_hunk_0
