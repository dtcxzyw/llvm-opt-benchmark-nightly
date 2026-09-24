Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/ceval?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@pk_format_object:bb.a

bb.q:                                             ; preds = %bb.p
  %i.an = tail call zeroext i1 @py_istype(ptr noundef %1, i16 noundef signext 4) #11
  %i.ao = select i1 %i.an, i32 62, i32 60
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n, %bb.o, %bb.m
  %.0116 = phi i32 [ 94, %bb.m ], [ 62, %bb.n ], [ 60, %bb.o ], [ 62, %bb.p ], [ %i.ao, %bb.q ]
  %.sroa.078.3 = phi ptr [ %i.ae, %bb.m ], [ %i.ah, %bb.n ], [ %i.ak, %bb.o ], [ %.sroa.078.2, %bb.p ], [ %.sroa.078.2, %bb.q ] ; 4 uses
  %.sroa.27.4 = phi i32 [ %i.af, %bb.m ], [ %i.ai, %bb.n ], [ %i.al, %bb.o ], [ %.sroa.27.3, %bb.p ], [ %.sroa.27.3, %bb.q ] ; 4 uses
  %i.ap = tail call i32 @c11_sv__index(ptr %.sroa.078.3, i32 %.sroa.27.4, i8 noundef signext 46) #11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.ar = icmp eq i32 %i.ap, 0
  br i1 %i.ar, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 -1, ptr %i.a, align 8, !tbaa !125
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.as = tail call { ptr, i32 } @c11_sv__slice2(ptr %.sroa.078.3, i32 %.sroa.27.4, i32 noundef 0, i32 noundef %i.ap) #11 ; 2 uses
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  %i.au = extractvalue { ptr, i32 } %i.as, 1
  %i.av = call i32 @c11__parse_uint(ptr %i.at, i32 %i.au, ptr noundef nonnull %i.a, i32 noundef 10) #11
  %.not129 = icmp eq i32 %i.av, 0
  br i1 %.not129, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.53) #11
  br label %bb.az

.thread:                                          ; preds = %bb.u, %bb.t
  %i.ax = add nuw nsw i32 %i.ap, 1
  %i.ay = call { ptr, i32 } @c11_sv__slice(ptr %.sroa.078.3, i32 %.sroa.27.4, i32 noundef %i.ax) #11 ; 2 uses
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  %i.ba = extractvalue { ptr, i32 } %i.ay, 1
  %i.bb = call i32 @c11__parse_uint(ptr %i.az, i32 %i.ba, ptr noundef nonnull %i.b, i32 noundef 10) #11
  %.not130 = icmp eq i32 %i.bb, 0
  br i1 %.not130, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.thread
  %i.bc = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.53) #11
  br label %bb.az

bb.x:                                             ; preds = %bb.r
  %i.bd = call i32 @c11__parse_uint(ptr %.sroa.078.3, i32 %.sroa.27.4, ptr noundef nonnull %i.a, i32 noundef 10) #11
  %.not128 = icmp eq i32 %i.bd, 0
  br i1 %.not128, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.53) #11
  br label %bb.az

bb.z:                                             ; preds = %.thread
  %.not141 = icmp eq i32 %.0114, 102
  br i1 %.not141, label %.thread148, label %bb.aa

.thread148:                                       ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @c11_sbuf__ctor(ptr noundef nonnull %4) #11
  br label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bf = call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 47, ptr noundef nonnull @.str.54) #11
  br label %bb.az

bb.ab:                                            ; preds = %bb.x
  store i64 -1, ptr %i.b, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @c11_sbuf__ctor(ptr noundef nonnull %4) #11
  switch i32 %.0114, label %bb.am [
    i32 102, label %bb.ac
    i32 100, label %bb.ag
    i32 115, label %bb.aj
  ]

bb.ac:                                            ; preds = %.thread148, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.bg = call zeroext i1 @py_castfloat(ptr noundef %1, ptr noundef nonnull %i.c) #11
  br i1 %i.bg, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !125 ; 2 uses
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %bb.ae, label %.thread139

bb.ae:                                            ; preds = %bb.ad
  store i64 6, ptr %i.b, align 8, !tbaa !125
  br label %.thread139

.thread139:                                       ; preds = %bb.ad, %bb.ae
  %i.bj = phi i64 [ %i.bh, %bb.ad ], [ 6, %bb.ae ]
  %i.bk = load double, ptr %i.c, align 8, !tbaa !127
  %i.bl = trunc i64 %i.bj to i32
  call void @c11_sbuf__write_f64(ptr noundef nonnull %4, double noundef %i.bk, i32 noundef %i.bl) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.ap

bb.af:                                            ; preds = %bb.ac
  call void @c11_sbuf__dtor(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.ay

bb.ag:                                            ; preds = %bb.ab
  %i.bm = call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 3) #11
  br i1 %i.bm, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @c11_sbuf__dtor(ptr noundef nonnull %4) #11
  br label %bb.ay

bb.ai:                                            ; preds = %bb.ag
  %i.bn = call i64 @py_toint(ptr noundef %1) #11
  call void @c11_sbuf__write_i64(ptr noundef nonnull %4, i64 noundef %i.bn) #11
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ab
  %i.bo = call zeroext i1 @py_checktype(ptr noundef %1, i16 noundef signext 6) #11
  br i1 %i.bo, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @c11_sbuf__dtor(ptr noundef nonnull %4) #11
  br label %bb.ay

bb.al:                                            ; preds = %bb.aj
  %i.bp = call { ptr, i32 } @py_tosv(ptr noundef %1) #11 ; 2 uses
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = extractvalue { ptr, i32 } %i.bp, 1
  call void @c11_sbuf__write_sv(ptr noundef nonnull %4, ptr %i.bq, i32 %i.br) #11
  br label %bb.ap

bb.am:                                            ; preds = %bb.ab
  %i.bs = call zeroext i1 @py_str(ptr noundef %1) #11
  br i1 %i.bs, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @c11_sbuf__dtor(ptr noundef nonnull %4) #11
  br label %bb.ay

bb.ao:                                            ; preds = %bb.am
  %i.bt = call ptr (...) @py_retval() #11
  %i.bu = call { ptr, i32 } @py_tosv(ptr noundef %i.bt) #11 ; 2 uses
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  %i.bw = extractvalue { ptr, i32 } %i.bu, 1
  call void @c11_sbuf__write_sv(ptr noundef nonnull %4, ptr %i.bv, i32 %i.bw) #11
  br label %bb.ap

bb.ap:                                            ; preds = %.thread139, %bb.ai, %bb.ao, %bb.al
  %i.bx = call ptr @c11_sbuf__submit(ptr noundef nonnull %4) #11 ; 6 uses
  %i.by = call { ptr, i32 } @c11_string__sv(ptr noundef %i.bx) #11 ; 2 uses
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  %i.ca = extractvalue { ptr, i32 } %i.by, 1
  %i.cb = call i32 @c11_sv__u8_length(ptr %i.bz, i32 %i.ca) #11 ; 3 uses
  call void @c11_sbuf__ctor(ptr noundef nonnull %4) #11
  %i.cc = load i64, ptr %i.a, align 8, !tbaa !125 ; 4 uses
  %.not131 = icmp eq i64 %i.cc, -1
  br i1 %.not131, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cd = sext i32 %i.cb to i64                   ; 2 uses
  %i.ce = icmp sgt i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  switch i32 %.0116, label %bb.av [
    i32 62, label %bb.as
    i32 60, label %bb.at
    i32 94, label %bb.au
  ]

bb.as:                                            ; preds = %bb.ar
  %i.cf = trunc i64 %i.cc to i32
  %i.cg = sub i32 %i.cf, %i.cb
  call void @c11_sbuf__write_pad(ptr noundef nonnull %4, i32 noundef %i.cg, i8 noundef signext %.0115) #11
  %i.ch = call { ptr, i32 } @c11_string__sv(ptr noundef %i.bx) #11 ; 2 uses
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  %i.cj = extractvalue { ptr, i32 } %i.ch, 1
  call void @c11_sbuf__write_sv(ptr noundef nonnull %4, ptr %i.ci, i32 %i.cj) #11
  br label %bb.ax

bb.at:                                            ; preds = %bb.ar
  %i.ck = call { ptr, i32 } @c11_string__sv(ptr noundef %i.bx) #11 ; 2 uses
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  %i.cm = extractvalue { ptr, i32 } %i.ck, 1
  call void @c11_sbuf__write_sv(ptr noundef nonnull %4, ptr %i.cl, i32 %i.cm) #11
  %i.cn = load i64, ptr %i.a, align 8, !tbaa !125
  %i.co = trunc i64 %i.cn to i32
  %i.cp = sub i32 %i.co, %i.cb
  call void @c11_sbuf__write_pad(ptr noundef nonnull %4, i32 noundef %i.cp, i8 noundef signext %.0115) #11
  br label %bb.ax

bb.au:                                            ; preds = %bb.ar
  %i.cq = sub nsw i64 %i.cc, %i.cd                ; 2 uses
  %i.cr = sdiv i64 %i.cq, 2                       ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = sub nuw nsw i64 %i.cq, %i.cr
  %i.cu = trunc i64 %i.ct to i32
  call void @c11_sbuf__write_pad(ptr noundef nonnull %4, i32 noundef %i.cs, i8 noundef signext %.0115) #11
  %i.cv = call { ptr, i32 } @c11_string__sv(ptr noundef %i.bx) #11 ; 2 uses
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  %i.cx = extractvalue { ptr, i32 } %i.cv, 1
  call void @c11_sbuf__write_sv(ptr noundef nonnull %4, ptr %i.cw, i32 %i.cx) #11
  call void @c11_sbuf__write_pad(ptr noundef nonnull %4, i32 noundef %i.cu, i8 noundef signext %.0115) #11
  br label %bb.ax

bb.av:                                            ; preds = %bb.ar
  unreachable

bb.aw:                                            ; preds = %bb.aq, %bb.ap
  %i.cy = call { ptr, i32 } @c11_string__sv(ptr noundef %i.bx) #11 ; 2 uses
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  %i.da = extractvalue { ptr, i32 } %i.cy, 1
  call void @c11_sbuf__write_sv(ptr noundef nonnull %4, ptr %i.cz, i32 %i.da) #11
  br label %bb.ax

bb.ax:                                            ; preds = %bb.as, %bb.at, %bb.au, %bb.aw
  call void @c11_string__delete(ptr noundef %i.bx) #11
  %i.db = call ptr (...) @py_retval() #11
  call void @c11_sbuf__py_submit(ptr noundef nonnull %4, ptr noundef %i.db) #11
  br label %bb.ay

bb.ay:                                            ; preds = %bb.af, %bb.ax, %bb.an, %bb.ak, %bb.ah
  %.6 = phi i1 [ true, %bb.ax ], [ false, %bb.af ], [ false, %bb.ah ], [ false, %bb.ak ], [ false, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.az

bb.az:                                            ; preds = %bb.y, %bb.w, %bb.v, %bb.ay, %bb.aa
  %.7 = phi i1 [ %i.bf, %bb.aa ], [ %.6, %bb.ay ], [ %i.bc, %bb.w ], [ %i.aw, %bb.v ], [ %i.be, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ba

bb.ba:                                            ; preds = %bb.f, %bb.e, %bb.az, %bb.g, %bb.b
  %.8 = phi i1 [ %i.e, %bb.b ], [ false, %bb.e ], [ %.7, %bb.az ], [ %i.n, %bb.g ], [ true, %bb.f ]
  ret i1 %.8
}

declare void @py_BaseException__stpush(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Frame__lineno(ptr noundef) local_unnamed_addr #2

declare i32 @Frame__goto_exception_handler(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @pk_op2str(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @__eq__, align 8, !tbaa !43
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @__ne__, align 8, !tbaa !43
  %i.d = icmp eq ptr %i.c, %0
  br i1 %i.d, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @__lt__, align 8, !tbaa !43
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @__le__, align 8, !tbaa !43
  %i.h = icmp eq ptr %i.g, %0
  br i1 %i.h, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr @__gt__, align 8, !tbaa !43
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @__ge__, align 8, !tbaa !43
  %i.l = icmp eq ptr %i.k, %0
  br i1 %i.l, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @__add__, align 8, !tbaa !43
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr @__sub__, align 8, !tbaa !43
  %i.p = icmp eq ptr %i.o, %0
  br i1 %i.p, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr @__mul__, align 8, !tbaa !43
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr @__truediv__, align 8, !tbaa !43
  %i.t = icmp eq ptr %i.s, %0
  br i1 %i.t, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load ptr, ptr @__floordiv__, align 8, !tbaa !43
  %i.v = icmp eq ptr %i.u, %0
  br i1 %i.v, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load ptr, ptr @__mod__, align 8, !tbaa !43
  %i.x = icmp eq ptr %i.w, %0
  br i1 %i.x, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr @__pow__, align 8, !tbaa !43
  %i.z = icmp eq ptr %i.y, %0
  br i1 %i.z, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = load ptr, ptr @__lshift__, align 8, !tbaa !43
  %i.ab = icmp eq ptr %i.aa, %0
  br i1 %i.ab, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr @__rshift__, align 8, !tbaa !43
  %i.ad = icmp eq ptr %i.ac, %0
  br i1 %i.ad, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = load ptr, ptr @__and__, align 8, !tbaa !43
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr @__or__, align 8, !tbaa !43
  %i.ah = icmp eq ptr %i.ag, %0
  br i1 %i.ah, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = load ptr, ptr @__xor__, align 8, !tbaa !43
  %i.aj = icmp eq ptr %i.ai, %0
  br i1 %i.aj, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = load ptr, ptr @__neg__, align 8, !tbaa !43
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr @__invert__, align 8, !tbaa !43
  %i.an = icmp eq ptr %i.am, %0
  br i1 %i.an, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = load ptr, ptr @__matmul__, align 8, !tbaa !43
  %i.ap = icmp eq ptr %i.ao, %0
  br i1 %i.ap, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = tail call ptr @py_name2str(ptr noundef %0) #11
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.v
  %.0 = phi ptr [ %i.aq, %bb.v ], [ @.str.29, %bb.a ], [ @.str.30, %bb.b ], [ @.str.31, %bb.c ], [ @.str.32, %bb.d ], [ @.str.33, %bb.e ], [ @.str.34, %bb.f ], [ @.str.35, %bb.g ], [ @.str.36, %bb.h ], [ @.str.37, %bb.i ], [ @.str.38, %bb.j ], [ @.str.39, %bb.k ], [ @.str.40, %bb.l ], [ @.str.41, %bb.m ], [ @.str.42, %bb.n ], [ @.str.43, %bb.o ], [ @.str.44, %bb.p ], [ @.str.45, %bb.q ], [ @.str.46, %bb.r ], [ @.str.36, %bb.s ], [ @.str.47, %bb.t ], [ @.str.48, %bb.u ]
  ret ptr %.0
}

declare zeroext i1 @py_call(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @c11_sv__startswith(ptr, i32, ptr, i32) local_unnamed_addr #2

declare { ptr, i32 } @c11_sv__slice(ptr, i32, i32 noundef) local_unnamed_addr #2

declare i32 @c11_sv__index(ptr, i32, i8 noundef signext) local_unnamed_addr #2

declare i32 @c11__parse_uint(ptr, i32, ptr noundef, i32 noundef) local_unnamed_addr #2

declare { ptr, i32 } @c11_sv__slice2(ptr, i32, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @py_castfloat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @c11_sbuf__dtor(ptr noundef) local_unnamed_addr #2

declare void @c11_sbuf__write_f64(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare void @c11_sbuf__write_i64(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @py_toint(ptr noundef) local_unnamed_addr #2

declare ptr @c11_sbuf__submit(ptr noundef) local_unnamed_addr #2

declare i32 @c11_sv__u8_length(ptr, i32) local_unnamed_addr #2

declare { ptr, i32 } @c11_string__sv(ptr noundef) local_unnamed_addr #2

declare void @c11_sbuf__write_pad(ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #2

declare void @c11_string__delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #8
end_hunk_0
