Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/py_str?download=true
inline.NumInlined: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@str_find:bb.a
  br i1 %i.j, label %bb.f, label %bb.j

bb.f:                                             ; preds = %pk_tostr.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.k, i16 noundef signext 3) #10
  br i1 %i.l, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i64 @py_toint(ptr noundef nonnull %i.k) #10
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = tail call { ptr, i32 } @c11_string__sv(ptr noundef %.0.i) #10 ; 2 uses
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = extractvalue { ptr, i32 } %i.p, 1
  %i.s = tail call i32 @c11_sv__u8_length(ptr %i.q, i32 %i.r) #10
  %i.t = add nsw i32 %i.s, %i.n
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.019 = phi i32 [ %i.t, %bb.h ], [ %i.n, %bb.g ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %.019, i32 0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %pk_tostr.exit
  %.120 = phi i32 [ %spec.store.select, %bb.i ], [ 0, %pk_tostr.exit ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = tail call zeroext i1 @py_checktype(ptr noundef nonnull %i.u, i16 noundef signext 6) #10
  br i1 %i.v, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.x = load i8, ptr %i.w, align 2, !tbaa !11, !range !12, !noundef !13
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28
  br label %pk_tostr.exit25

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ac = tail call ptr @PyObject__userdata(ptr noundef %i.ab) #10
  br label %pk_tostr.exit25

pk_tostr.exit25:                                  ; preds = %bb.l, %bb.m
  %.0.i24 = phi ptr [ %i.ac, %bb.m ], [ %i.z, %bb.l ]
  %i.ad = tail call { ptr, i32 } @c11_string__sv(ptr noundef %.0.i) #10 ; 2 uses
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = extractvalue { ptr, i32 } %i.ad, 1
  %i.ag = tail call { ptr, i32 } @c11_string__sv(ptr noundef %.0.i24) #10 ; 2 uses
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = extractvalue { ptr, i32 } %i.ag, 1
  %i.aj = tail call i32 @c11_sv__index2(ptr %i.ae, i32 %i.af, ptr %i.ah, i32 %i.ai, i32 noundef %.120) #10
  %i.ak = tail call ptr (...) @py_retval() #10
  %i.al = sext i32 %i.aj to i64
  tail call void @py_newint(ptr noundef %i.ak, i64 noundef %i.al) #10
  br label %bb.n

bb.n:                                             ; preds = %pk_tostr.exit25, %bb.f, %bb.j, %bb.b
  %.1 = phi i1 [ %i.b, %bb.b ], [ true, %pk_tostr.exit25 ], [ false, %bb.f ], [ false, %bb.j ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @str_index(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call zeroext i1 @str_find(i32 noundef %0, ptr noundef %1)
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr (...) @py_retval() #10
  %i.c = tail call i64 @py_toint(ptr noundef %i.b) #10
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.41) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.e, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @str_encode(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.20, i32 noundef 1, i32 noundef %0) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.c = call ptr @py_tostrn(ptr noundef %1, ptr noundef nonnull %i.a) #10
  %i.d = call ptr (...) @py_retval() #10
  %i.e = load i32, ptr %i.a, align 4, !tbaa !18
  %i.f = call ptr @py_newbytes(ptr noundef %i.d, i32 noundef %i.e) #10
  %i.g = load i32, ptr %i.a, align 4, !tbaa !18
  %i.h = sext i32 %i.g to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %i.c, i64 %i.h, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @str_format(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.c11_sbuf, align 8           ; 16 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = tail call { ptr, i32 } @py_tosv(ptr noundef %1) #10 ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0        ; 3 uses
  %i.d = extractvalue { ptr, i32 } %i.b, 1        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = sext i32 %i.d to i64                     ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @c11_sbuf__ctor(ptr noundef nonnull %2) #10
  %i.h = icmp sgt i32 %i.d, 0
  br i1 %i.h, label %.lr.ph127, label %._crit_edge

.lr.ph127:                                        ; preds = %bb.a
  %i.i = ptrtoaddr ptr %i.c to i64
  %i.j = add nsw i32 %0, -1
  %i.k = sext i32 %i.j to i64
  %i.l = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @pk_current_vm)
  %i.m = add i64 %i.i, %i.f                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph127, %bb.ae
  %.068126 = phi ptr [ %i.c, %.lr.ph127 ], [ %.775, %bb.ae ] ; 8 uses
  %.076125 = phi i1 [ false, %.lr.ph127 ], [ %.581, %bb.ae ] ; 4 uses
  %.082124 = phi i64 [ -1, %.lr.ph127 ], [ %.486, %bb.ae ] ; 6 uses
  %.068126132 = ptrtoaddr ptr %.068126 to i64
  %i.n = load i8, ptr %.068126, align 1, !tbaa !14 ; 2 uses
  switch i8 %i.n, label %bb.ad [
    i8 123, label %bb.c
    i8 125, label %bb.z
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.068126, i64 1 ; 5 uses
  %i.p = icmp ult ptr %i.o, %i.g
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.o, align 1, !tbaa !14
  %i.r = icmp eq i8 %i.q, 123
  br i1 %i.r, label %bb.e, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %scevgep = getelementptr i8, ptr %.068126, i64 %i.m
  %i.s = sub i64 0, %.068126132
  %scevgep133 = getelementptr i8, ptr %scevgep, i64 %i.s ; 2 uses
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  call void @c11_sbuf__write_char(ptr noundef nonnull %2, i8 noundef signext 123) #10
  %i.t = getelementptr inbounds nuw i8, ptr %.068126, i64 2
  br label %bb.ae

bb.f:                                             ; preds = %bb.c
  call void @c11_sbuf__dtor(ptr noundef nonnull %2) #10
  %i.u = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.42) #10
  br label %bb.af

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.169120 = phi ptr [ %i.w, %bb.g ], [ %i.o, %.lr.ph.preheader ] ; 4 uses
  %i.v = load i8, ptr %.169120, align 1, !tbaa !14
  switch i8 %i.v, label %bb.g [
    i8 125, label %.critedge
    i8 58, label %.critedge
  ]

bb.g:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.169120, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.w, %scevgep133
  br i1 %exitcond.not, label %.critedge99, label %.lr.ph, !llvm.loop !38

.critedge:                                        ; preds = %.lr.ph, %.lr.ph
  %i.x = ptrtoint ptr %.169120 to i64
  %i.y = ptrtoint ptr %i.o to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  br label %.critedge99

.critedge99:                                      ; preds = %bb.g, %.critedge
  %.169118 = phi ptr [ %.169120, %.critedge ], [ %scevgep133, %bb.g ] ; 8 uses
  %.sroa.59.0 = phi i32 [ %i.aa, %.critedge ], [ 0, %bb.g ] ; 2 uses
  %.169122137 = ptrtoaddr ptr %.169118 to i64
  %i.ab = load i8, ptr %.169118, align 1, !tbaa !14 ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 58
  %i.ad = icmp ult ptr %.169118, %i.g             ; 2 uses
  br i1 %i.ac, label %.preheader, label %.critedge100

.preheader:                                       ; preds = %.critedge99
  br i1 %i.ad, label %.lr.ph122.preheader, label %.thread104.a

.lr.ph122.preheader:                              ; preds = %.preheader
  %scevgep134 = getelementptr i8, ptr %.169118, i64 %i.m
  %i.ae = sub i64 0, %.169122137
  %scevgep136 = getelementptr i8, ptr %scevgep134, i64 %i.ae
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %bb.h
  %.270121 = phi ptr [ %i.ag, %bb.h ], [ %.169118, %.lr.ph122.preheader ] ; 5 uses
  %i.af = load i8, ptr %.270121, align 1, !tbaa !14
  %.not96 = icmp eq i8 %i.af, 125
  br i1 %.not96, label %.critedge3, label %bb.h

bb.h:                                             ; preds = %.lr.ph122
  %i.ag = getelementptr inbounds nuw i8, ptr %.270121, i64 1 ; 2 uses
  %exitcond137.not = icmp eq ptr %i.ag, %scevgep136
  br i1 %exitcond137.not, label %.thread104.a, label %.lr.ph122, !llvm.loop !39

.critedge100:                                     ; preds = %.critedge99
  br i1 %i.ad, label %bb.i, label %.thread104.a

.critedge3:                                       ; preds = %.lr.ph122
  %i.ah = ptrtoint ptr %.270121 to i64
  %i.ai = ptrtoint ptr %.169118 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %3 = icmp ult ptr %.270121, %i.g
  br i1 %3, label %bb.k, label %.thread104.a

bb.i:                                             ; preds = %.critedge100
  %i.al = icmp eq i8 %i.ab, 125
  br i1 %i.al, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.an = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.am, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #12 ; 0 uses
  %i.ao = call i32 @putchar(i32 noundef 10)       ; 0 uses
  call void @abort() #13
  unreachable

.thread104.a:                                     ; preds = %.critedge100, %.preheader, %.critedge3, %bb.h
  call void @c11_sbuf__dtor(ptr noundef nonnull %2) #10
  %i.ap = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.45) #10
  br label %bb.af

bb.k:                                             ; preds = %.critedge3, %bb.i
  %.371148153 = phi ptr [ %.169118, %bb.i ], [ %.270121, %.critedge3 ]
  %.sroa.5.0149152 = phi i32 [ 0, %bb.i ], [ %i.ak, %.critedge3 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.aq = icmp sgt i32 %.sroa.59.0, 0             ; 2 uses
  br i1 %i.aq, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp sgt i64 %.082124, -1
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @c11_sbuf__dtor(ptr noundef nonnull %2) #10
  %i.as = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.46) #10
  br label %.thread110

bb.n:                                             ; preds = %bb.l
  %i.at = call i32 @c11__parse_uint(ptr nonnull %i.o, i32 %.sroa.59.0, ptr noundef nonnull %i.a, i32 noundef 10) #10
  %.not97 = icmp eq i32 %i.at, 0
  br i1 %.not97, label %.thread101, label %bb.o

.thread101:                                       ; preds = %bb.n
  %.pr = load i64, ptr %i.a, align 8, !tbaa !44
  br label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @c11_sbuf__dtor(ptr noundef nonnull %2) #10
  %i.au = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.47) #10
  br label %.thread110

bb.p:                                             ; preds = %bb.k
  br i1 %.076125, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @c11_sbuf__dtor(ptr noundef nonnull %2) #10
  %i.av = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.48) #10
  br label %.thread110

bb.r:                                             ; preds = %bb.p
  %i.aw = add nsw i64 %.082124, 1                 ; 3 uses
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !44
  br label %bb.s

bb.s:                                             ; preds = %.thread101, %bb.r
  %i.ax = phi i64 [ %.pr, %.thread101 ], [ %i.aw, %bb.r ] ; 3 uses
  %.183 = phi i64 [ %.082124, %.thread101 ], [ %i.aw, %bb.r ]
  %i.ay = icmp sgt i64 %i.ax, -1
  %.not98 = icmp slt i64 %i.ax, %i.k
  %or.cond = select i1 %i.ay, i1 %.not98, i1 false
  br i1 %or.cond, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @c11_sbuf__dtor(ptr noundef nonnull %2) #10
  %i.az = load i64, ptr %i.a, align 8, !tbaa !44
  %i.ba = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 46, ptr noundef nonnull @.str.49, i64 noundef %i.az) #10
  br label %.thread110

bb.u:                                             ; preds = %bb.s
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.ax
  %i.bd = call zeroext i1 @pk_format_object(ptr noundef %i.bb, ptr noundef nonnull %i.bc, ptr nonnull %.169118, i32 %.sroa.5.0149152) #10
  br i1 %i.bd, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @c11_sbuf__dtor(ptr noundef nonnull %2) #10
  br label %.thread110

bb.w:                                             ; preds = %bb.u
  %i.be = call ptr (...) @py_retval() #10
  %i.bf = call zeroext i1 @py_istype(ptr noundef %i.be, i16 noundef signext 6) #10
  br i1 %i.bf, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !42
  %i.bh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bg, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.50) #12 ; 0 uses
  %i.bi = call i32 @putchar(i32 noundef 10)       ; 0 uses
  call void @abort() #13
  unreachable

.thread110:                                       ; preds = %bb.m, %bb.t, %bb.q, %bb.o, %bb.v
  %.4.ph = phi i1 [ false, %bb.v ], [ %i.au, %bb.o ], [ %i.av, %bb.q ], [ %i.ba, %bb.t ], [ %i.as, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.af

bb.y:                                             ; preds = %bb.w
  %i.bj = call ptr (...) @py_retval() #10
  %i.bk = call { ptr, i32 } @py_tosv(ptr noundef %i.bj) #10 ; 2 uses
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  %i.bm = extractvalue { ptr, i32 } %i.bk, 1
  call void @c11_sbuf__write_sv(ptr noundef nonnull %2, ptr %i.bl, i32 %i.bm) #10
  %i.bn = getelementptr inbounds nuw i8, ptr %.371148153, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ae

bb.z:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %.068126, i64 1 ; 2 uses
  %i.bp = icmp ult ptr %i.bo, %i.g
  br i1 %i.bp, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !14
  %i.br = icmp eq i8 %i.bq, 125
  br i1 %i.br, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @c11_sbuf__write_char(ptr noundef nonnull %2, i8 noundef signext 125) #10
  %i.bs = getelementptr inbounds nuw i8, ptr %.068126, i64 2
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa, %bb.z
  call void @c11_sbuf__dtor(ptr noundef nonnull %2) #10
  %i.bt = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.51) #10
  br label %bb.af

bb.ad:                                            ; preds = %bb.b
  call void @c11_sbuf__write_char(ptr noundef nonnull %2, i8 noundef signext %i.n) #10
  %i.bu = getelementptr inbounds nuw i8, ptr %.068126, i64 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.y, %bb.ab, %bb.ad, %bb.e
  %.486 = phi i64 [ %.082124, %bb.e ], [ %.183, %bb.y ], [ %.082124, %bb.ab ], [ %.082124, %bb.ad ]
  %.581 = phi i1 [ %.076125, %bb.e ], [ %i.aq, %bb.y ], [ %.076125, %bb.ab ], [ %.076125, %bb.ad ]
  %.775 = phi ptr [ %i.t, %bb.e ], [ %i.bn, %bb.y ], [ %i.bs, %bb.ab ], [ %i.bu, %bb.ad ] ; 2 uses
  %i.bv = icmp ult ptr %.775, %i.g
  br i1 %i.bv, label %bb.b, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.ae, %bb.a
  %i.bw = call ptr (...) @py_retval() #10
  call void @c11_sbuf__py_submit(ptr noundef nonnull %2, ptr noundef %i.bw) #10
  br label %bb.af

bb.af:                                            ; preds = %.thread110, %.thread104.a, %._crit_edge, %bb.ac, %bb.f
  %.7 = phi i1 [ %i.u, %bb.f ], [ %.4.ph, %.thread110 ], [ %i.bt, %bb.ac ], [ true, %._crit_edge ], [ %i.ap, %.thread104.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i1 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define zeroext i1 @str_iterator__next__(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.20, i32 noundef 1, i32 noundef %0) #10
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @py_touserdata(ptr noundef %1) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.d = tail call ptr @py_getslot(ptr noundef %1, i32 noundef 0) #10
  %i.e = call ptr @py_tostrn(ptr noundef %i.d, ptr noundef nonnull %i.a) #10
  %i.f = load i32, ptr %i.c, align 4, !tbaa !18   ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !18
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call zeroext i1 (...) @StopIteration() #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = sext i32 %i.f to i64
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = call i32 @c11__u8_header(i8 noundef zeroext %i.l, i1 noundef zeroext false) #10 ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !18
  %i.o = add nsw i32 %i.n, %i.m
  store i32 %i.o, ptr %i.c, align 4, !tbaa !18
  %i.p = call ptr (...) @py_retval() #10
  call void @py_newstrv(ptr noundef %i.p, ptr nonnull %i.k, i32 %i.m) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ %i.i, %bb.d ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.1 = phi i1 [ %i.b, %bb.b ], [ %.0, %bb.f ]
  ret i1 %.1
}

declare zeroext i1 @py_exception(i16 noundef signext, ptr noundef, ...) local_unnamed_addr #1

declare ptr @py_touserdata(ptr noundef) local_unnamed_addr #1

declare ptr @py_tostrn(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @py_getslot(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @StopIteration(...) local_unnamed_addr #1

declare i32 @c11__u8_header(i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare void @py_newstrv(ptr noundef, ptr, i32) local_unnamed_addr #1

declare ptr @py_retval(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef signext i16 @pk_str_iterator__register() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call signext i16 @pk_newtype(ptr noundef nonnull @.str.21, i16 noundef signext 1, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #10 ; 3 uses
  %i.b = load ptr, ptr @__iter__, align 8, !tbaa !17
  tail call void @py_bindmagic(i16 noundef signext %i.a, ptr noundef %i.b, ptr noundef nonnull @pk_wrapper__self) #10
  %i.c = load ptr, ptr @__next__, align 8, !tbaa !17
  tail call void @py_bindmagic(i16 noundef signext %i.a, ptr noundef %i.c, ptr noundef nonnull @str_iterator__next__) #10
  ret i16 %i.a
}

declare zeroext i1 @pk_wrapper__self(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @bytes_iterator__next__(i32 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.20, i32 noundef 1, i32 noundef %0) #10
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @py_touserdata(ptr noundef %1) #10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.d = tail call ptr @py_getslot(ptr noundef %1, i32 noundef 0) #10
  %i.e = call ptr @py_tobytes(ptr noundef %i.d, ptr noundef nonnull %i.a) #10
  %i.f = load i32, ptr %i.c, align 4, !tbaa !18
  %i.g = load i32, ptr %i.a, align 4, !tbaa !18
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call zeroext i1 (...) @StopIteration() #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = call ptr (...) @py_retval() #10
  %i.k = load i32, ptr %i.c, align 4, !tbaa !18
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = zext i8 %i.n to i64
  call void @py_newint(ptr noundef %i.j, i64 noundef %i.o) #10
  %i.p = load i32, ptr %i.c, align 4, !tbaa !18
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.c, align 4, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ %i.i, %bb.d ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.1 = phi i1 [ %i.b, %bb.b ], [ %.0, %bb.f ]
  ret i1 %.1
}

declare ptr @py_tobytes(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @py_newint(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef signext i16 @pk_bytes_iterator__register() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call signext i16 @pk_newtype(ptr noundef nonnull @.str.22, i16 noundef signext 1, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #10 ; 3 uses
  %i.b = load ptr, ptr @__iter__, align 8, !tbaa !17
  tail call void @py_bindmagic(i16 noundef signext %i.a, ptr noundef %i.b, ptr noundef nonnull @pk_wrapper__self) #10
  %i.c = load ptr, ptr @__next__, align 8, !tbaa !17
  tail call void @py_bindmagic(i16 noundef signext %i.a, ptr noundef %i.c, ptr noundef nonnull @bytes_iterator__next__) #10
  ret i16 %i.a
}

; Function Attrs: nounwind uwtable
define signext i16 @pk_bytes__register() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call signext i16 @pk_newtype(ptr noundef nonnull @.str.23, i16 noundef signext 1, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %i.b = load ptr, ptr @__new__, align 8, !tbaa !17
  tail call void @py_bindmagic(i16 noundef signext 22, ptr noundef %i.b, ptr noundef nonnull @bytes__new__) #10
  %i.c = load ptr, ptr @__repr__, align 8, !tbaa !17
  tail call void @py_bindmagic(i16 noundef signext 22, ptr noundef %i.c, ptr noundef nonnull @bytes__repr__) #10
  %i.d = load ptr, ptr @__getitem__, align 8, !tbaa !17
  tail call void @py_bindmagic(i16 noundef signext 22, ptr noundef %i.d, ptr noundef nonnull @bytes__getitem__) #10
  %i.e = load ptr, ptr @__eq__, align 8, !tbaa !17
  tail call void @py_bindmagic(i16 noundef signext 22, ptr noundef %i.e, ptr noundef nonnull @bytes__eq__) #10
end_hunk_0
