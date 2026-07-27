inline.NumInlined: 591
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@rb_inflate_addstr:bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @zstream_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.d ] ; 6 uses
  %i.v = load i64, ptr %.1.i.i, align 8, !tbaa !40 ; 2 uses
  %i.w = and i64 %i.v, 1
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %bb.e, label %get_zstream.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = load i64, ptr @cZError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.150) #18
  unreachable

get_zstream.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.y = and i64 %i.v, 4
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %get_zstream.exit
  %i.z = icmp eq i64 %1, 4
  br i1 %i.z, label %zstream_passthrough_input.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = call i64 @rb_string_value(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !14
  %i.ae = and i64 %i.ad, 8192
  %.not.i7 = icmp eq i64 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  br i1 %.not.i7, label %RSTRING_PTR.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.g, %bb.h
  %i.ah = phi ptr [ %i.ag, %bb.h ], [ %i.af, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !17
  call fastcc void @zstream_append_buffer(ptr noundef nonnull %.1.i.i, ptr noundef %i.ah, i64 noundef %i.aj)
  br label %zstream_passthrough_input.exit

bb.i:                                             ; preds = %get_zstream.exit
  tail call fastcc void @do_inflate(ptr noundef nonnull %.1.i.i, i64 noundef %1)
  %i.ak = load i64, ptr %.1.i.i, align 8, !tbaa !40
  %i.al = and i64 %i.ak, 4
  %.not6 = icmp eq i64 %i.al, 0
  br i1 %.not6, label %zstream_passthrough_input.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !43 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4
  br i1 %i.ao, label %zstream_passthrough_input.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !14
  %i.ar = and i64 %i.aq, 8192
  %.not.i.i8 = icmp eq i64 %i.ar, 0
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  br i1 %.not.i.i8, label %RSTRING_PTR.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.l, %bb.k
  %i.au = phi ptr [ %i.at, %bb.l ], [ %i.as, %bb.k ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !17
  tail call fastcc void @zstream_append_buffer(ptr noundef nonnull %.1.i.i, ptr noundef %i.au, i64 noundef %i.aw)
  store i64 4, ptr %i.am, align 8, !tbaa !43
  br label %zstream_passthrough_input.exit

zstream_passthrough_input.exit:                   ; preds = %RSTRING_PTR.exit.i, %bb.j, %bb.i, %bb.f, %RSTRING_PTR.exit
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @rb_inflate_sync(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !22

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !23

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @zstream_data_type to i64)
  br i1 %i.q, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !28

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.s, %bb.d ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %i.t = icmp eq ptr %i.s, @zstream_data_type
  br i1 %i.t, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !34

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @zstream_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.p, %bb.d ] ; 8 uses
  %i.v = load i64, ptr %.1.i.i, align 8, !tbaa !40
  %i.w = and i64 %i.v, 1
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %bb.e, label %get_zstream.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = load i64, ptr @cZError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.150) #18
  unreachable

get_zstream.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.y = call i64 @rb_string_value(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.z = load i64, ptr %i.a, align 8, !tbaa !10
  %i.aa = inttoptr i64 %i.z to ptr                ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !14
  %i.ac = and i64 %i.ab, 8192
  %.not.i1 = icmp eq i64 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  br i1 %.not.i1, label %RSTRING_PTR.exit, label %bb.f

bb.f:                                             ; preds = %get_zstream.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %get_zstream.exit, %bb.f
  %i.af = phi ptr [ %i.ae, %bb.f ], [ %i.ad, %get_zstream.exit ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !17 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16 ; 14 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !43 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4
  br i1 %i.ak, label %bb.z, label %bb.g

bb.g:                                             ; preds = %RSTRING_PTR.exit
  %i.al = inttoptr i64 %i.aj to ptr               ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !14
  %i.an = and i64 %i.am, 8192
  %.not.i.i2 = icmp eq i64 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  br i1 %.not.i.i2, label %RSTRING_PTR.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !16
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.h, %bb.g
  %i.aq = phi ptr [ %i.ap, %bb.h ], [ %i.ao, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !17
  %spec.store.select.i.i = call i64 @llvm.smin.i64(i64 %i.at, i64 4294967295)
  %i.au = trunc i64 %spec.store.select.i.i to i32
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40 ; 2 uses
  store i32 %i.au, ptr %i.av, align 8, !tbaa !68
  %i.aw = call i32 @inflateSync(ptr noundef nonnull %i.ar) #17 ; 3 uses
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = load i64, ptr %i.ai, align 8, !tbaa !43 ; 7 uses
  br i1 %i.ax, label %bb.i, label %bb.u

bb.i:                                             ; preds = %RSTRING_PTR.exit.i
  %i.az = inttoptr i64 %i.ay to ptr               ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !17
  %i.bc = load i32, ptr %i.av, align 8, !tbaa !68 ; 3 uses
  %i.bd = zext i32 %i.bc to i64                   ; 5 uses
  %i.be = sub nsw i64 %i.bb, %i.bd                ; 2 uses
  %i.bf = icmp eq i64 %i.ay, 4
  br i1 %i.bf, label %zstream_discard_input.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !53
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bj = load i64, ptr %i.az, align 8, !tbaa !14
  %i.bk = and i64 %i.bj, 8192
  %.not.i.i.i = icmp eq i64 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  br i1 %.not.i.i.i, label %RSTRING_PTR.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !16
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.l, %bb.k
  %i.bn = phi ptr [ %i.bm, %bb.l ], [ %i.bl, %bb.k ] ; 2 uses
  %.not38.i = icmp eq i32 %i.bc, 0
  br i1 %.not38.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %RSTRING_PTR.exit.i.i
  %i.bo = call i64 @rb_str_resize(i64 noundef %i.ay, i64 noundef 0) #17 ; 0 uses
  store i64 4, ptr %i.ai, align 8, !tbaa !43
  br label %zstream_discard_input.exit.i

bb.n:                                             ; preds = %RSTRING_PTR.exit.i.i
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.be
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bp, i64 %i.bd, i1 false)
  %.pre.i.i = load i64, ptr %i.ai, align 8, !tbaa !43
  %i.bq = call i64 @rb_str_resize(i64 noundef %.pre.i.i, i64 noundef %i.bd) #17 ; 0 uses
  %i.br = load i64, ptr %i.ai, align 8, !tbaa !43
  call void @rb_str_set_len(i64 noundef %i.br, i64 noundef %i.bd) #17
  br label %zstream_discard_input.exit.i

bb.o:                                             ; preds = %bb.j
  %.not.i34.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i34.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 4, ptr %i.ai, align 8, !tbaa !43
  br label %zstream_discard_input.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bs = call i64 @rb_str_subseq(i64 noundef %i.ay, i64 noundef %i.be, i64 noundef %i.bd) #17
  store i64 %i.bs, ptr %i.ai, align 8, !tbaa !43
  br label %zstream_discard_input.exit.i

zstream_discard_input.exit.i:                     ; preds = %bb.q, %bb.p, %bb.n, %bb.m, %bb.i
  %i.bt = icmp slt i64 %i.ah, 1
  br i1 %i.bt, label %zstream_sync.exit, label %bb.r

bb.r:                                             ; preds = %zstream_discard_input.exit.i
  %i.bu = load i64, ptr %i.ai, align 8, !tbaa !43 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = call i64 @rb_str_buf_new(i64 noundef %i.ah) #17 ; 2 uses
  store i64 %i.bw, ptr %i.ai, align 8, !tbaa !43
  %i.bx = call i64 @rb_str_cat(i64 noundef %i.bw, ptr noundef %i.af, i64 noundef %i.ah) #17 ; 0 uses
  %i.by = load i64, ptr %i.ai, align 8, !tbaa !43
  %i.bz = call i64 @rb_obj_hide(i64 noundef %i.by) #17 ; 0 uses
  br label %zstream_sync.exit

bb.t:                                             ; preds = %bb.r
  %i.ca = call i64 @rb_str_cat(i64 noundef %i.bu, ptr noundef %i.af, i64 noundef %i.ah) #17 ; 0 uses
  br label %zstream_sync.exit

bb.u:                                             ; preds = %RSTRING_PTR.exit.i
  %i.cb = icmp eq i64 %i.ay, 4
  br i1 %i.cb, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = inttoptr i64 %i.ay to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !53
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cg = call i64 @rb_str_resize(i64 noundef %i.ay, i64 noundef 0) #17 ; 0 uses
  br label %zstream_reset_input.exit.i

bb.x:                                             ; preds = %bb.v, %bb.u
  store i64 4, ptr %i.ai, align 8, !tbaa !43
  br label %zstream_reset_input.exit.i

zstream_reset_input.exit.i:                       ; preds = %bb.x, %bb.w
  %.not.i3 = icmp eq i32 %i.aw, -3
  br i1 %.not.i3, label %bb.z, label %bb.y

bb.y:                                             ; preds = %zstream_reset_input.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !52
  call fastcc void @raise_zlib_error(i32 noundef %i.aw, ptr noundef %i.ci) #19
  unreachable

bb.z:                                             ; preds = %zstream_reset_input.exit.i, %RSTRING_PTR.exit
  %i.cj = icmp slt i64 %i.ah, 1
  br i1 %i.cj, label %zstream_sync.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 3 uses
  store ptr %i.af, ptr %i.ck, align 8, !tbaa !67
  %i.cl = call i64 @llvm.umin.i64(i64 %i.ah, i64 4294967295)
  %i.cm = trunc nuw i64 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40 ; 2 uses
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !68
  %i.co = call i32 @inflateSync(ptr noundef nonnull %i.ck) #17 ; 2 uses
  switch i32 %i.co, label %bb.af [
    i32 0, label %bb.ab
    i32 -3, label %zstream_sync.exit
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !67 ; 2 uses
  %i.cq = load i32, ptr %i.cn, align 8, !tbaa !68 ; 2 uses
  %i.cr = zext i32 %i.cq to i64                   ; 3 uses
  %i.cs = icmp eq i32 %i.cq, 0
  br i1 %i.cs, label %zstream_sync.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = load i64, ptr %i.ai, align 8, !tbaa !43 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4
  br i1 %i.cu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cv = call i64 @rb_str_buf_new(i64 noundef %i.cr) #17 ; 2 uses
  store i64 %i.cv, ptr %i.ai, align 8, !tbaa !43
  %i.cw = call i64 @rb_str_cat(i64 noundef %i.cv, ptr noundef %i.cp, i64 noundef %i.cr) #17 ; 0 uses
  %i.cx = load i64, ptr %i.ai, align 8, !tbaa !43
  %i.cy = call i64 @rb_obj_hide(i64 noundef %i.cx) #17 ; 0 uses
  br label %zstream_sync.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cz = call i64 @rb_str_cat(i64 noundef %i.ct, ptr noundef %i.cp, i64 noundef %i.cr) #17 ; 0 uses
  br label %zstream_sync.exit

bb.af:                                            ; preds = %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 80
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !52
  call fastcc void @raise_zlib_error(i32 noundef %i.co, ptr noundef %i.db) #19
  unreachable

zstream_sync.exit:                                ; preds = %zstream_discard_input.exit.i, %bb.s, %bb.t, %bb.z, %bb.aa, %bb.ab, %bb.ad, %bb.ae
  %.0.i = phi i64 [ 0, %bb.aa ], [ 20, %bb.t ], [ 0, %bb.z ], [ 20, %zstream_discard_input.exit.i ], [ 20, %bb.s ], [ 20, %bb.ab ], [ 20, %bb.ad ], [ 20, %bb.ae ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @rb_inflate_sync_point_p(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !22

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !23

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @zstream_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !28

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29   ; 2 uses
  %i.s = icmp eq ptr %i.r, @zstream_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !34

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @zstream_data_type) #17
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.u = load i64, ptr %.1.i.i, align 8, !tbaa !40
  %i.v = and i64 %i.u, 1
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.e, label %get_zstream.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.w = load i64, ptr @cZError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.150) #18
  unreachable

get_zstream.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  %i.y = tail call i32 @inflateSyncPoint(ptr noundef nonnull %i.x) #17 ; 2 uses
  switch i32 %i.y, label %bb.f [
    i32 1, label %bb.h
    i32 0, label %bb.g
  ]

bb.f:                                             ; preds = %get_zstream.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !52
  tail call fastcc void @raise_zlib_error(i32 noundef %i.y, ptr noundef %i.aa) #19
end_hunk_0
