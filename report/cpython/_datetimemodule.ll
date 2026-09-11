Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_datetimemodule?download=true
inline.NumInlined: 580
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@time_repr:bb.a

append_keyword_tzinfo.exit:                       ; preds = %bb.n, %bb.m, %bb.l, %bb.h, %bb.g
  %.1 = phi ptr [ %i.ar, %bb.m ], [ %.0, %bb.g ], [ %i.ar, %bb.n ], [ %.0, %bb.h ], [ %i.ar, %bb.l ] ; 7 uses
  %i.av = icmp ne ptr %.1, null
  %i.aw = icmp ne i8 %i.aa, 0
  %or.cond = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond, label %bb.o, label %append_keyword_fold.exit

bb.o:                                             ; preds = %append_keyword_tzinfo.exit
  %i.ax = getelementptr i8, ptr %.1, i64 16
  %.val.i38 = load i64, ptr %i.ax, align 8, !tbaa !57
  %i.ay = add i64 %.val.i38, -1
  %i.az = tail call ptr @PyUnicode_Substring(ptr noundef nonnull %.1, i64 noundef 0, i64 noundef %i.ay) #16 ; 5 uses
  %i.ba = load i32, ptr %.1, align 8, !tbaa !35   ; 2 uses
  %.not.i12.i = icmp sgt i32 %i.ba, -1
  br i1 %.not.i12.i, label %bb.p, label %Py_DECREF.exit13.i

bb.p:                                             ; preds = %bb.o
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %.1, align 8, !tbaa !35
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.q, label %Py_DECREF.exit13.i

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1) #16
  br label %Py_DECREF.exit13.i

Py_DECREF.exit13.i:                               ; preds = %bb.q, %bb.p, %bb.o
  %i.bd = icmp eq ptr %i.az, null
  br i1 %i.bd, label %append_keyword_fold.exit, label %bb.r

bb.r:                                             ; preds = %Py_DECREF.exit13.i
  %i.be = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.168, ptr noundef nonnull %i.az, i32 noundef range(i32 1, 256) %i.ab) #16 ; 3 uses
  %i.bf = load i32, ptr %i.az, align 8, !tbaa !35 ; 2 uses
  %.not.i.i39 = icmp sgt i32 %i.bf, -1
  br i1 %.not.i.i39, label %bb.s, label %append_keyword_fold.exit

bb.s:                                             ; preds = %bb.r
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.az, align 8, !tbaa !35
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.t, label %append_keyword_fold.exit

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.az) #16
  br label %append_keyword_fold.exit

append_keyword_fold.exit:                         ; preds = %Py_DECREF.exit14.i, %bb.f, %bb.t, %bb.s, %bb.r, %Py_DECREF.exit13.i, %append_keyword_tzinfo.exit
  %.2 = phi ptr [ %i.be, %bb.t ], [ %.1, %append_keyword_tzinfo.exit ], [ null, %Py_DECREF.exit13.i ], [ %i.be, %bb.r ], [ %i.be, %bb.s ], [ null, %bb.f ], [ null, %Py_DECREF.exit14.i ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal i64 @time_hash(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 31
  %i.e = load i8, ptr %i.d, align 1, !tbaa !45
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 25
  %i.g = load i8, ptr %i.f, align 1, !tbaa !35
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr i8, ptr %0, i64 26
  %i.j = load i8, ptr %i.i, align 2, !tbaa !35
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr i8, ptr %0, i64 27
  %i.m = load i8, ptr %i.l, align 1, !tbaa !35
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr i8, ptr %0, i64 28
  %i.p = load i8, ptr %i.o, align 4, !tbaa !35
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 16
  %i.s = getelementptr i8, ptr %0, i64 29
  %i.t = load i8, ptr %i.s, align 1, !tbaa !35
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 8
  %i.w = or disjoint i32 %i.v, %i.r
  %i.x = getelementptr i8, ptr %0, i64 30
  %i.y = load i8, ptr %i.x, align 2, !tbaa !35
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.w, %i.z
  %i.ab = getelementptr i8, ptr %0, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !54
  %.not60 = icmp eq i8 %i.ac, 0
  br i1 %.not60, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.af = phi ptr [ %i.ae, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  %i.ag = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.ag, align 8, !tbaa !42
  %i.ah = tail call ptr @new_time_ex2(i32 noundef %i.h, i32 noundef %i.k, i32 noundef %i.n, i32 noundef %i.aa, ptr noundef %i.af, i32 noundef 0, ptr noundef %.val) ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.critedge, label %_Py_NewRef.exit

bb.f:                                             ; preds = %bb.b
  %i.aj = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, -1073741825
  br i1 %i.ak, label %_Py_NewRef.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = add nuw i32 %i.aj, 1
  store i32 %i.al, ptr %0, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.g, %bb.f, %bb.e
  %.046 = phi ptr [ %i.ah, %bb.e ], [ %0, %bb.f ], [ %0, %bb.g ] ; 5 uses
  %i.am = getelementptr i8, ptr %.046, i64 24
  %i.an = load i8, ptr %i.am, align 8, !tbaa !54
  %.not.i79 = icmp eq i8 %i.an, 0
  br i1 %.not.i79, label %time_utcoffset.exit, label %bb.h

bb.h:                                             ; preds = %_Py_NewRef.exit
  %i.ao = getelementptr i8, ptr %.046, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !44
  br label %time_utcoffset.exit

time_utcoffset.exit:                              ; preds = %_Py_NewRef.exit, %bb.h
  %i.aq = phi ptr [ %i.ap, %bb.h ], [ @_Py_NoneStruct, %_Py_NewRef.exit ]
  %i.ar = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.aq, ptr noundef nonnull @.str.10, ptr noundef nonnull @_Py_NoneStruct) ; 12 uses
  %i.as = load i32, ptr %.046, align 8, !tbaa !35 ; 2 uses
  %.not.i71 = icmp sgt i32 %i.as, -1
  br i1 %.not.i71, label %bb.i, label %Py_DECREF.exit72

bb.i:                                             ; preds = %time_utcoffset.exit
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %.046, align 8, !tbaa !35
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.j, label %Py_DECREF.exit72

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %.046) #16
  br label %Py_DECREF.exit72

Py_DECREF.exit72:                                 ; preds = %time_utcoffset.exit, %bb.i, %bb.j
  %i.av = icmp eq ptr %i.ar, null
  br i1 %i.av, label %.critedge, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit72
  %i.aw = icmp eq ptr %i.ar, @_Py_NoneStruct
  %i.ax = getelementptr i8, ptr %0, i64 25        ; 2 uses
  br i1 %i.aw, label %.split, label %bb.m

.split:                                           ; preds = %bb.k
  %i.ay = tail call i64 @Py_HashBuffer(ptr noundef %i.ax, i64 noundef 6) #16 ; 4 uses
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !40
  %i.az = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !35 ; 2 uses
  %.not.i61 = icmp sgt i32 %i.az, -1
  br i1 %.not.i61, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.split
  %i.ba = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.ba, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %.critedge.sink.split, label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.bc = load i8, ptr %i.ax, align 1, !tbaa !35
  %i.bd = zext i8 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.bd, 3600
  %i.bf = getelementptr i8, ptr %0, i64 26
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !35
  %i.bh = zext i8 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.bh, 60
  %i.bj = add nuw nsw i32 %i.bi, %i.be
  %i.bk = getelementptr i8, ptr %0, i64 27
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !35
  %i.bm = zext i8 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.bj, %i.bm            ; 2 uses
  %i.bo = getelementptr i8, ptr %0, i64 28
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !35
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 16
  %i.bs = getelementptr i8, ptr %0, i64 29
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !35
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 8
  %i.bw = or disjoint i32 %i.bv, %i.br
  %i.bx = getelementptr i8, ptr %0, i64 30
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !35
  %i.bz = zext i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bw, %i.bz            ; 4 uses
  %or.cond.i.i = icmp samesign ugt i32 %i.ca, 999999
  br i1 %or.cond.i.i, label %normalize_pair.exit.i.i, label %._crit_edge.i.i

normalize_pair.exit.i.i:                          ; preds = %bb.m
  %i.cb = udiv i32 %i.ca, 1000000                 ; 2 uses
  %.neg.i.i = mul nsw i32 %i.cb, -1000000
  %storemerge.i.i.i.i = add nsw i32 %.neg.i.i, %i.ca ; 2 uses
  %.lobit.i.i.i.i = ashr i32 %storemerge.i.i.i.i, 31
  %.0.i.i.i.i = add nuw nsw i32 %i.cb, %i.bn
  %i.cc = add nsw i32 %.0.i.i.i.i, %.lobit.i.i.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %normalize_pair.exit.i.i, %bb.m
  %.131.i = phi i32 [ %i.cc, %normalize_pair.exit.i.i ], [ %i.bn, %bb.m ] ; 4 uses
  %.1.i = phi i32 [ %storemerge.i.i.i.i, %normalize_pair.exit.i.i ], [ %i.ca, %bb.m ] ; 2 uses
  %or.cond9.i.i = icmp samesign ugt i32 %.131.i, 86399
  br i1 %or.cond9.i.i, label %normalize_d_s_us.exit.i, label %check_delta_day_range.exit.i

normalize_d_s_us.exit.i:                          ; preds = %._crit_edge.i.i
  %i.cd = udiv i32 %.131.i, 86400                 ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.cd, -86400
  %storemerge.i.i11.i.i = add nsw i32 %.neg15.i.i, %.131.i ; 2 uses
  %.lobit.i.i12.i.i = ashr i32 %storemerge.i.i11.i.i, 31
  %i.ce = add nsw i32 %.lobit.i.i12.i.i, %i.cd
  br label %check_delta_day_range.exit.i

check_delta_day_range.exit.i:                     ; preds = %normalize_d_s_us.exit.i, %._crit_edge.i.i
  %.030.i84 = phi i32 [ %storemerge.i.i11.i.i, %normalize_d_s_us.exit.i ], [ %.131.i, %._crit_edge.i.i ] ; 2 uses
  %.032.i83 = phi i32 [ %i.ce, %normalize_d_s_us.exit.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %i.cf = or i32 %.030.i84, %.1.i
  %i.cg = or i32 %i.cf, %.032.i83
  %or.cond3.i.i = icmp ne i32 %i.cg, 0
  %zero_delta.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zero_delta, i64 8), align 8
  %i.ch = icmp ne ptr %zero_delta.val.i.i, @PyDateTime_DeltaType
  %or.cond.i17.not.i = select i1 %or.cond3.i.i, i1 true, i1 %i.ch
  br i1 %or.cond.i17.not.i, label %bb.n, label %new_delta_ex.exit

bb.n:                                             ; preds = %check_delta_day_range.exit.i
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 304), align 8, !tbaa !28
  %i.cj = tail call ptr %i.ci(ptr noundef nonnull @PyDateTime_DeltaType, i64 noundef 0) #16, !inline_history !29 ; 6 uses
  %.not15.i = icmp eq ptr %i.cj, null
  br i1 %.not15.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  store i64 -1, ptr %i.ck, align 8, !tbaa !31
  %i.cl = getelementptr i8, ptr %i.cj, i64 24
  store i32 %.032.i83, ptr %i.cl, align 8, !tbaa !32
  %i.cm = getelementptr i8, ptr %i.cj, i64 28
  store i32 %.030.i84, ptr %i.cm, align 4, !tbaa !33
  %i.cn = getelementptr i8, ptr %i.cj, i64 32
  store i32 %.1.i, ptr %i.cn, align 8, !tbaa !34
  br label %new_delta_ex.exit

bb.p:                                             ; preds = %bb.n
  %i.co = load i32, ptr %i.ar, align 8, !tbaa !35 ; 2 uses
  %.not.i69 = icmp sgt i32 %i.co, -1
  br i1 %.not.i69, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cp, ptr %i.ar, align 8, !tbaa !35
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %.critedge.sink.split, label %.critedge

new_delta_ex.exit:                                ; preds = %bb.o, %check_delta_day_range.exit.i
  %.0.i = phi ptr [ @zero_delta, %check_delta_day_range.exit.i ], [ %i.cj, %bb.o ] ; 4 uses
  %i.cr = tail call ptr @delta_subtract(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.ar) ; 5 uses
  %i.cs = load i32, ptr %.0.i, align 8, !tbaa !35 ; 2 uses
  %.not.i67 = icmp sgt i32 %i.cs, -1
  br i1 %.not.i67, label %bb.r, label %Py_DECREF.exit68

bb.r:                                             ; preds = %new_delta_ex.exit
  %i.ct = add nsw i32 %i.cs, -1                   ; 2 uses
  store i32 %i.ct, ptr %.0.i, align 8, !tbaa !35
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.s, label %Py_DECREF.exit68

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #16
  br label %Py_DECREF.exit68

Py_DECREF.exit68:                                 ; preds = %new_delta_ex.exit, %bb.r, %bb.s
  %i.cv = icmp eq ptr %i.cr, null
  br i1 %i.cv, label %bb.t, label %bb.v

bb.t:                                             ; preds = %Py_DECREF.exit68
  %i.cw = load i32, ptr %i.ar, align 8, !tbaa !35 ; 2 uses
  %.not.i65 = icmp sgt i32 %i.cw, -1
  br i1 %.not.i65, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.cx = add nsw i32 %i.cw, -1                   ; 2 uses
  store i32 %i.cx, ptr %i.ar, align 8, !tbaa !35
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %.critedge.sink.split, label %.critedge

bb.v:                                             ; preds = %Py_DECREF.exit68
  %i.cz = tail call i64 @PyObject_Hash(ptr noundef nonnull %i.cr) #16 ; 4 uses
  store i64 %i.cz, ptr %i.a, align 8, !tbaa !40
  %i.da = load i32, ptr %i.cr, align 8, !tbaa !35 ; 2 uses
  %.not.i63 = icmp sgt i32 %i.da, -1
  br i1 %.not.i63, label %bb.w, label %.split53

bb.w:                                             ; preds = %bb.v
  %i.db = add nsw i32 %i.da, -1                   ; 2 uses
  store i32 %i.db, ptr %i.cr, align 8, !tbaa !35
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.x, label %.split53

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cr) #16
  br label %.split53

.split53:                                         ; preds = %bb.v, %bb.w, %bb.x
  %i.dd = load i32, ptr %i.ar, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.dd, -1
  br i1 %.not.i, label %bb.y, label %.critedge

bb.y:                                             ; preds = %.split53
  %i.de = add nsw i32 %i.dd, -1                   ; 2 uses
  store i32 %i.de, ptr %i.ar, align 8, !tbaa !35
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %.critedge.sink.split, label %.critedge

.critedge.sink.split:                             ; preds = %bb.y, %bb.u, %bb.q, %bb.l
  %.sink = phi ptr [ @_Py_NoneStruct, %bb.l ], [ %i.ar, %bb.q ], [ %i.ar, %bb.u ], [ %i.ar, %bb.y ]
  %.352.ph = phi i64 [ %i.ay, %bb.l ], [ -1, %bb.q ], [ -1, %bb.u ], [ %i.cz, %bb.y ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #16
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.u, %bb.t, %bb.q, %bb.p, %bb.y, %.split53, %bb.l, %.split, %bb.e, %Py_DECREF.exit72, %bb.a
  %.352 = phi i64 [ -1, %bb.p ], [ %i.b, %bb.a ], [ -1, %bb.q ], [ -1, %Py_DECREF.exit72 ], [ -1, %bb.e ], [ %i.ay, %.split ], [ %i.ay, %bb.l ], [ %i.cz, %.split53 ], [ %i.cz, %bb.y ], [ -1, %bb.t ], [ -1, %bb.u ], [ %.352.ph, %.critedge.sink.split ]
  ret i64 %.352
}

; Function Attrs: nounwind uwtable
define internal ptr @time_str(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !tbaa !41
  %i.b = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88496), ptr noundef nonnull %i.a, i64 noundef -9223372036854775807, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @time_richcompare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val68 = load ptr, ptr %i.a, align 8, !tbaa !42 ; 2 uses
  %.not.i69 = icmp eq ptr %.val68, @PyDateTime_TimeType
  br i1 %.not.i69, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val68, ptr noundef nonnull @PyDateTime_TimeType) #16
  %.not103 = icmp eq i32 %i.b, 0
  br i1 %.not103, label %diff_to_bool.exit, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !54
  %.not58 = icmp eq i8 %i.d, 0                    ; 2 uses
  br i1 %.not58, label %bb.c, label %bb.b

bb.b:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.thread, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ @_Py_NoneStruct, %PyObject_TypeCheck.exit.thread ]
  %i.h = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !54
  %.not59 = icmp eq i8 %i.i, 0
  br i1 %.not59, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  %i.m = icmp eq ptr %i.g, %i.l
  br i1 %i.m, label %loadbb, label %bb.m

loadbb:                                           ; preds = %bb.e
  %i.n = getelementptr i8, ptr %0, i64 25         ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 25         ; 2 uses
  %i.p = load i32, ptr %i.n, align 1
  %i.q = load i32, ptr %i.o, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.p)  ; 2 uses
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.q)  ; 2 uses
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %loadbb128, label %res_block

res_block:                                        ; preds = %loadbb128, %loadbb
  %phi.src1 = phi i32 [ %i.r, %loadbb ], [ %i.ac, %loadbb128 ]
  %phi.src2 = phi i32 [ %i.s, %loadbb ], [ %i.ad, %loadbb128 ]
  %i.u = icmp ult i32 %phi.src1, %phi.src2
  %i.v = select i1 %i.u, i32 -1, i32 1
  br label %endblock

loadbb128:                                        ; preds = %loadbb
  %i.w = getelementptr i8, ptr %i.n, i64 4
  %i.x = getelementptr i8, ptr %i.o, i64 4
  %i.y = load i16, ptr %i.w, align 1
  %i.z = load i16, ptr %i.x, align 1
  %i.aa = tail call i16 @llvm.bswap.i16(i16 %i.y)
  %i.ab = tail call i16 @llvm.bswap.i16(i16 %i.z)
  %i.ac = zext i16 %i.aa to i32                   ; 2 uses
  %i.ad = zext i16 %i.ab to i32                   ; 2 uses
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb128
  %phi.res = phi i32 [ 0, %loadbb128 ], [ %i.v, %res_block ] ; 6 uses
  switch i32 %2, label %bb.l [
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 0, label %bb.h
end_hunk_0
begin_hunk_1_@datetime_hash:bb.a
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = getelementptr i8, ptr %0, i64 26
  %i.k = load i8, ptr %i.j, align 2, !tbaa !35
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l
  %i.n = getelementptr i8, ptr %0, i64 27
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr i8, ptr %0, i64 28
  %i.r = load i8, ptr %i.q, align 4, !tbaa !35
  %i.s = zext i8 %i.r to i32
  %i.t = getelementptr i8, ptr %0, i64 29
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr i8, ptr %0, i64 30
  %i.x = load i8, ptr %i.w, align 2, !tbaa !35
  %i.y = zext i8 %i.x to i32
  %i.z = getelementptr i8, ptr %0, i64 31
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr i8, ptr %0, i64 32
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !35
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 16
  %i.ag = getelementptr i8, ptr %0, i64 33
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !35
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = or disjoint i32 %i.aj, %i.af
  %i.al = getelementptr i8, ptr %0, i64 34
  %i.am = load i8, ptr %i.al, align 2, !tbaa !35
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ak, %i.an
  %i.ap = getelementptr i8, ptr %0, i64 24
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !54
  %.not68 = icmp eq i8 %i.aq, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.at = phi ptr [ %i.as, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  %i.au = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.au, align 8, !tbaa !42
  %i.av = tail call ptr @new_datetime_ex2(i32 noundef %i.m, i32 noundef %i.p, i32 noundef %i.s, i32 noundef %i.v, i32 noundef %i.y, i32 noundef %i.ab, i32 noundef %i.ao, ptr noundef %i.at, i32 noundef 0, ptr noundef %.val) ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.critedge, label %_Py_NewRef.exit

bb.f:                                             ; preds = %bb.b
  %i.ax = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, -1073741825
  br i1 %i.ay, label %_Py_NewRef.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = add nuw i32 %i.ax, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !35
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.g, %bb.f, %bb.e
  %.054 = phi ptr [ %i.av, %bb.e ], [ %0, %bb.f ], [ %0, %bb.g ] ; 6 uses
  %i.ba = getelementptr i8, ptr %.054, i64 24
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !54
  %.not.i87 = icmp eq i8 %i.bb, 0
  br i1 %.not.i87, label %datetime_utcoffset.exit, label %bb.h

bb.h:                                             ; preds = %_Py_NewRef.exit
  %i.bc = getelementptr i8, ptr %.054, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !48
  br label %datetime_utcoffset.exit

datetime_utcoffset.exit:                          ; preds = %_Py_NewRef.exit, %bb.h
  %i.be = phi ptr [ %i.bd, %bb.h ], [ @_Py_NoneStruct, %_Py_NewRef.exit ]
  %i.bf = tail call fastcc ptr @call_tzinfo_method(ptr noundef %i.be, ptr noundef nonnull @.str.10, ptr noundef nonnull %.054) ; 12 uses
  %i.bg = load i32, ptr %.054, align 8, !tbaa !35 ; 2 uses
  %.not.i79 = icmp sgt i32 %i.bg, -1
  br i1 %.not.i79, label %bb.i, label %Py_DECREF.exit80

bb.i:                                             ; preds = %datetime_utcoffset.exit
  %i.bh = add nsw i32 %i.bg, -1                   ; 2 uses
  store i32 %i.bh, ptr %.054, align 8, !tbaa !35
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.j, label %Py_DECREF.exit80

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %.054) #16
  br label %Py_DECREF.exit80

Py_DECREF.exit80:                                 ; preds = %datetime_utcoffset.exit, %bb.i, %bb.j
  %i.bj = icmp eq ptr %i.bf, null
  br i1 %i.bj, label %.critedge, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit80
  %i.bk = icmp eq ptr %i.bf, @_Py_NoneStruct
  %i.bl = getelementptr i8, ptr %0, i64 25        ; 2 uses
  br i1 %i.bk, label %.split, label %bb.m

.split:                                           ; preds = %bb.k
  %i.bm = tail call i64 @Py_HashBuffer(ptr noundef %i.bl, i64 noundef 10) #16 ; 4 uses
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !87
  %i.bn = load i32, ptr @_Py_NoneStruct, align 8, !tbaa !35 ; 2 uses
  %.not.i69 = icmp sgt i32 %i.bn, -1
  br i1 %.not.i69, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.split
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr @_Py_NoneStruct, align 8, !tbaa !35
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.critedge.sink.split, label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.bq = load i8, ptr %i.bl, align 1, !tbaa !35
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = getelementptr i8, ptr %0, i64 26
  %i.bu = load i8, ptr %i.bt, align 2, !tbaa !35
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = or disjoint i32 %i.bs, %i.bv            ; 2 uses
  %i.bx = getelementptr i8, ptr %0, i64 27
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !35  ; 2 uses
  %i.bz = getelementptr i8, ptr %0, i64 28
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !35
  %i.cb = zext i8 %i.ca to i32
  %i.cc = zext i8 %i.by to i64
  %i.cd = getelementptr [4 x i8], ptr @_days_before_month, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !15 ; 4 uses
  %i.cf = icmp ugt i8 %i.by, 2
  br i1 %i.cf, label %bb.n, label %ymd_to_ord.exit

bb.n:                                             ; preds = %bb.m
  %i.cg = and i32 %i.bv, 3
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.o, label %is_leap.exit.thread.i.i

bb.o:                                             ; preds = %bb.n
  %.lhs.trunc = trunc nuw i32 %i.bw to i16        ; 2 uses
  %i.ci = urem i16 %.lhs.trunc, 100
  %.not.i.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i.i, label %is_leap.exit.i.i, label %is_leap.exit.thread6.i.i

is_leap.exit.thread6.i.i:                         ; preds = %bb.o
  %i.cj = add i32 %i.ce, 1
  br label %ymd_to_ord.exit

is_leap.exit.i.i:                                 ; preds = %bb.o
  %i.ck = urem i16 %.lhs.trunc, 400
  %.not.i.i = icmp eq i16 %i.ck, 0
  %i.cl = add i32 %i.ce, 1
  br i1 %.not.i.i, label %ymd_to_ord.exit, label %is_leap.exit.thread.i.i

is_leap.exit.thread.i.i:                          ; preds = %is_leap.exit.i.i, %bb.n
  br label %ymd_to_ord.exit

ymd_to_ord.exit:                                  ; preds = %bb.m, %is_leap.exit.thread6.i.i, %is_leap.exit.i.i, %is_leap.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.ce, %bb.m ], [ %i.ce, %is_leap.exit.thread.i.i ], [ %i.cl, %is_leap.exit.i.i ], [ %i.cj, %is_leap.exit.thread6.i.i ]
  %i.cm = add nsw i32 %i.bw, -1                   ; 4 uses
  %i.cn = mul nsw i32 %i.cm, 365
  %i.co = sdiv i32 %i.cm, 4
  %.neg.i.i = sdiv i32 %i.cm, -100
  %i.cp = sdiv i32 %i.cm, 400
  %i.cq = add nuw nsw i32 %i.co, %i.cb
  %i.cr = add nsw i32 %i.cq, %i.cn
  %i.cs = add nsw i32 %i.cr, %.neg.i.i
  %i.ct = add nsw i32 %i.cs, %i.cp
  %i.cu = add i32 %i.ct, %.0.i.i                  ; 2 uses
  %i.cv = getelementptr i8, ptr %0, i64 29
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !35
  %i.cx = zext i8 %i.cw to i32
  %i.cy = mul nuw nsw i32 %i.cx, 3600
  %i.cz = getelementptr i8, ptr %0, i64 30
  %i.da = load i8, ptr %i.cz, align 2, !tbaa !35
  %i.db = zext i8 %i.da to i32
  %i.dc = mul nuw nsw i32 %i.db, 60
  %i.dd = add nuw nsw i32 %i.dc, %i.cy
  %i.de = getelementptr i8, ptr %0, i64 31
  %i.df = load i8, ptr %i.de, align 1, !tbaa !35
  %i.dg = zext i8 %i.df to i32
  %i.dh = add nuw nsw i32 %i.dd, %i.dg            ; 2 uses
  %i.di = getelementptr i8, ptr %0, i64 32
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !35
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 16
  %i.dm = getelementptr i8, ptr %0, i64 33
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !35
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 8
  %i.dq = or disjoint i32 %i.dp, %i.dl
  %i.dr = getelementptr i8, ptr %0, i64 34
  %i.ds = load i8, ptr %i.dr, align 2, !tbaa !35
  %i.dt = zext i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dq, %i.dt            ; 4 uses
  %or.cond.i.i = icmp samesign ugt i32 %i.du, 999999
  br i1 %or.cond.i.i, label %normalize_pair.exit.i.i, label %._crit_edge.i.i

normalize_pair.exit.i.i:                          ; preds = %ymd_to_ord.exit
  %i.dv = udiv i32 %i.du, 1000000                 ; 2 uses
  %.neg.i.i88 = mul nsw i32 %i.dv, -1000000
  %storemerge.i.i.i.i = add nsw i32 %.neg.i.i88, %i.du ; 2 uses
  %.lobit.i.i.i.i = ashr i32 %storemerge.i.i.i.i, 31
  %.0.i.i.i.i = add nuw nsw i32 %i.dv, %i.dh
  %i.dw = add nsw i32 %.0.i.i.i.i, %.lobit.i.i.i.i
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %normalize_pair.exit.i.i, %ymd_to_ord.exit
  %.131.i = phi i32 [ %i.dw, %normalize_pair.exit.i.i ], [ %i.dh, %ymd_to_ord.exit ] ; 4 uses
  %.1.i = phi i32 [ %storemerge.i.i.i.i, %normalize_pair.exit.i.i ], [ %i.du, %ymd_to_ord.exit ] ; 2 uses
  %or.cond9.i.i = icmp samesign ugt i32 %.131.i, 86399
  br i1 %or.cond9.i.i, label %normalize_pair.exit14.i.i, label %normalize_d_s_us.exit.i

normalize_pair.exit14.i.i:                        ; preds = %._crit_edge.i.i
  %i.dx = udiv i32 %.131.i, 86400                 ; 2 uses
  %.neg15.i.i = mul nsw i32 %i.dx, -86400
  %storemerge.i.i11.i.i = add nsw i32 %.neg15.i.i, %.131.i ; 2 uses
  %.lobit.i.i12.i.i = ashr i32 %storemerge.i.i11.i.i, 31
  %.0.i.i13.i.i = add i32 %i.dx, %i.cu
  %i.dy = add i32 %.0.i.i13.i.i, %.lobit.i.i12.i.i
  br label %normalize_d_s_us.exit.i

normalize_d_s_us.exit.i:                          ; preds = %normalize_pair.exit14.i.i, %._crit_edge.i.i
  %.032.i = phi i32 [ %i.cu, %._crit_edge.i.i ], [ %i.dy, %normalize_pair.exit14.i.i ] ; 4 uses
  %.030.i = phi i32 [ %.131.i, %._crit_edge.i.i ], [ %storemerge.i.i11.i.i, %normalize_pair.exit14.i.i ] ; 2 uses
  %i.dz = add i32 %.032.i, 999999999
  %or.cond.i16.i = icmp ult i32 %i.dz, 1999999999
  br i1 %or.cond.i16.i, label %check_delta_day_range.exit.i, label %check_delta_day_range.exit.thread.i

check_delta_day_range.exit.thread.i:              ; preds = %normalize_d_s_us.exit.i
  %i.ea = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !41
  %i.eb = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ea, ptr noundef nonnull @.str.71, i32 noundef %.032.i, i32 noundef 999999999) #16, !inline_history !29 ; 0 uses
  br label %bb.r

check_delta_day_range.exit.i:                     ; preds = %normalize_d_s_us.exit.i
  %i.ec = or i32 %.032.i, %.1.i
  %i.ed = or i32 %i.ec, %.030.i
  %or.cond3.i.i = icmp ne i32 %i.ed, 0
  %zero_delta.val.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @zero_delta, i64 8), align 8
  %i.ee = icmp ne ptr %zero_delta.val.i.i, @PyDateTime_DeltaType
  %or.cond.i17.not.i = select i1 %or.cond3.i.i, i1 true, i1 %i.ee
  br i1 %or.cond.i17.not.i, label %bb.p, label %new_delta_ex.exit

bb.p:                                             ; preds = %check_delta_day_range.exit.i
  %i.ef = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyDateTime_DeltaType, i64 304), align 8, !tbaa !28
  %i.eg = tail call ptr %i.ef(ptr noundef nonnull @PyDateTime_DeltaType, i64 noundef 0) #16, !inline_history !29 ; 6 uses
  %.not15.i = icmp eq ptr %i.eg, null
  br i1 %.not15.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  store i64 -1, ptr %i.eh, align 8, !tbaa !31
  %i.ei = getelementptr i8, ptr %i.eg, i64 24
  store i32 %.032.i, ptr %i.ei, align 8, !tbaa !32
  %i.ej = getelementptr i8, ptr %i.eg, i64 28
  store i32 %.030.i, ptr %i.ej, align 4, !tbaa !33
  %i.ek = getelementptr i8, ptr %i.eg, i64 32
  store i32 %.1.i, ptr %i.ek, align 8, !tbaa !34
  br label %new_delta_ex.exit

bb.r:                                             ; preds = %check_delta_day_range.exit.thread.i, %bb.p
  %i.el = load i32, ptr %i.bf, align 8, !tbaa !35 ; 2 uses
  %.not.i77 = icmp sgt i32 %i.el, -1
  br i1 %.not.i77, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.em = add nsw i32 %i.el, -1                   ; 2 uses
  store i32 %i.em, ptr %i.bf, align 8, !tbaa !35
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %.critedge.sink.split, label %.critedge

new_delta_ex.exit:                                ; preds = %bb.q, %check_delta_day_range.exit.i
  %.0.i = phi ptr [ @zero_delta, %check_delta_day_range.exit.i ], [ %i.eg, %bb.q ] ; 4 uses
  %i.eo = tail call ptr @delta_subtract(ptr noundef nonnull %.0.i, ptr noundef nonnull %i.bf) ; 5 uses
  %i.ep = load i32, ptr %.0.i, align 8, !tbaa !35 ; 2 uses
  %.not.i75 = icmp sgt i32 %i.ep, -1
  br i1 %.not.i75, label %bb.t, label %Py_DECREF.exit76

bb.t:                                             ; preds = %new_delta_ex.exit
  %i.eq = add nsw i32 %i.ep, -1                   ; 2 uses
  store i32 %i.eq, ptr %.0.i, align 8, !tbaa !35
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.u, label %Py_DECREF.exit76

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #16
  br label %Py_DECREF.exit76

Py_DECREF.exit76:                                 ; preds = %new_delta_ex.exit, %bb.t, %bb.u
  %i.es = icmp eq ptr %i.eo, null
  br i1 %i.es, label %bb.v, label %bb.x

bb.v:                                             ; preds = %Py_DECREF.exit76
  %i.et = load i32, ptr %i.bf, align 8, !tbaa !35 ; 2 uses
  %.not.i73 = icmp sgt i32 %i.et, -1
  br i1 %.not.i73, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.eu = add nsw i32 %i.et, -1                   ; 2 uses
  store i32 %i.eu, ptr %i.bf, align 8, !tbaa !35
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %.critedge.sink.split, label %.critedge

bb.x:                                             ; preds = %Py_DECREF.exit76
  %i.ew = tail call i64 @PyObject_Hash(ptr noundef nonnull %i.eo) #16 ; 4 uses
  store i64 %i.ew, ptr %i.a, align 8, !tbaa !87
  %i.ex = load i32, ptr %i.eo, align 8, !tbaa !35 ; 2 uses
  %.not.i71 = icmp sgt i32 %i.ex, -1
  br i1 %.not.i71, label %bb.y, label %.split61

bb.y:                                             ; preds = %bb.x
  %i.ey = add nsw i32 %i.ex, -1                   ; 2 uses
  store i32 %i.ey, ptr %i.eo, align 8, !tbaa !35
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.z, label %.split61

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.eo) #16
  br label %.split61

.split61:                                         ; preds = %bb.x, %bb.y, %bb.z
  %i.fa = load i32, ptr %i.bf, align 8, !tbaa !35 ; 2 uses
  %.not.i = icmp sgt i32 %i.fa, -1
  br i1 %.not.i, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %.split61
  %i.fb = add nsw i32 %i.fa, -1                   ; 2 uses
  store i32 %i.fb, ptr %i.bf, align 8, !tbaa !35
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %.critedge.sink.split, label %.critedge

.critedge.sink.split:                             ; preds = %bb.aa, %bb.w, %bb.s, %bb.l
  %.sink = phi ptr [ @_Py_NoneStruct, %bb.l ], [ %i.bf, %bb.s ], [ %i.bf, %bb.w ], [ %i.bf, %bb.aa ]
  %.360.ph = phi i64 [ %i.bm, %bb.l ], [ -1, %bb.s ], [ -1, %bb.w ], [ %i.ew, %bb.aa ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink) #16
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.w, %bb.v, %bb.s, %bb.r, %bb.aa, %.split61, %bb.l, %.split, %bb.e, %Py_DECREF.exit80, %bb.a
  %.360 = phi i64 [ -1, %bb.r ], [ %i.b, %bb.a ], [ -1, %bb.s ], [ -1, %Py_DECREF.exit80 ], [ -1, %bb.e ], [ %i.bm, %.split ], [ %i.bm, %bb.l ], [ %i.ew, %.split61 ], [ %i.ew, %bb.aa ], [ -1, %bb.v ], [ -1, %bb.w ], [ %.360.ph, %.critedge.sink.split ]
  ret i64 %.360
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_str(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.207) #16 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %0, ptr %i.a, align 16, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !41
  %i.e = call ptr @PyObject_VectorcallMethod(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 88496), ptr noundef nonnull %i.a, i64 noundef -9223372036854775806, ptr noundef null) #16 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.f = load i32, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.b, align 8, !tbaa !35
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @datetime_richcompare(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val96 = load ptr, ptr %i.a, align 8, !tbaa !42 ; 2 uses
  %.not.i97 = icmp eq ptr %.val96, @PyDateTime_DateTimeType
  br i1 %.not.i97, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.b = tail call i32 @PyType_IsSubtype(ptr noundef %.val96, ptr noundef nonnull @PyDateTime_DateTimeType) #16
  %.not133 = icmp eq i32 %i.b, 0
  br i1 %.not133, label %diff_to_bool.exit, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !54
  %.not84 = icmp eq i8 %i.d, 0                    ; 2 uses
  br i1 %.not84, label %bb.c, label %bb.b

bb.b:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.thread, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ @_Py_NoneStruct, %PyObject_TypeCheck.exit.thread ]
  %i.h = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !54
  %.not85 = icmp eq i8 %i.i, 0
  br i1 %.not85, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %i.k, %bb.d ], [ @_Py_NoneStruct, %bb.c ]
  %i.m = icmp eq ptr %i.g, %i.l
  br i1 %i.m, label %loadbb, label %bb.m

loadbb:                                           ; preds = %bb.e
end_hunk_1
