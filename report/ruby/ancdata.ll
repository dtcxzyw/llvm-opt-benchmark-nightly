Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ancdata?download=true
inline.NumInlined: 213
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rsock_discard_cmsg_resource:bb.a
  %i.al = ptrtoint ptr %.012 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.ag
  %i.ao = sub nuw i64 %i.am, %i.ag
  %i.ap = icmp ult i64 %i.ao, %i.ac
  %or.cond.i = select i1 %i.an, i1 true, i1 %i.ap
  br i1 %or.cond.i, label %.loopexit, label %__cmsg_nxthdr.exit

__cmsg_nxthdr.exit:                               ; preds = %bb.e
  %i.aq = add nuw i64 %i.ac, 7
  %i.ar = and i64 %i.aq, -8
  %i.as = getelementptr inbounds nuw i8, ptr %.012, i64 %i.ar
  br label %.lr.ph, !llvm.loop !71

.loopexit:                                        ; preds = %bb.e, %discard_cmsg.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @rsock_bsock_recvmsg(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @bsock_recvmsg_internal(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef 20, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @bsock_recvmsg_internal(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %8 = alloca %struct.recvmsg_args_struct, align 8 ; 6 uses
  %9 = alloca %struct.msghdr, align 8             ; 12 uses
  %10 = alloca %struct.iovec, align 8             ; 5 uses
  %11 = alloca %union.union_sockaddr, align 8     ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i64 4, ptr %i.b, align 8, !tbaa !13
  %i.d = icmp eq i64 %1, 4                        ; 3 uses
  br i1 %i.d, label %rb_num2ull_inline.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %1 to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i64 %1, 1
  br label %rb_num2ull_inline.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i64 @rb_num2ull(i64 noundef %1) #9
  br label %rb_num2ull_inline.exit

rb_num2ull_inline.exit:                           ; preds = %bb.d, %bb.c, %bb.a
  %i.h = phi i64 [ 4096, %bb.a ], [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  %i.i = icmp eq i64 %3, 4                        ; 3 uses
  br i1 %i.i, label %rb_num2ull_inline.exit148, label %bb.e

bb.e:                                             ; preds = %rb_num2ull_inline.exit
  %i.j = trunc i64 %3 to i1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = ashr i64 %3, 1
  br label %rb_num2ull_inline.exit148

bb.g:                                             ; preds = %bb.e
  %i.l = tail call i64 @rb_num2ull(i64 noundef %3) #9
  br label %rb_num2ull_inline.exit148

rb_num2ull_inline.exit148:                        ; preds = %bb.g, %bb.f, %rb_num2ull_inline.exit
  %i.m = phi i64 [ 4096, %rb_num2ull_inline.exit ], [ %i.k, %bb.f ], [ %i.l, %bb.g ]
  %i.n = trunc i64 %2 to i1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_num2ull_inline.exit148
  %i.o = tail call i64 @rb_fix2int(i64 noundef %2) #9
  br label %rb_num2int_inline.exit

bb.i:                                             ; preds = %rb_num2ull_inline.exit148
  %i.p = tail call i64 @rb_num2int(i64 noundef %2) #9
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.h, %bb.i
  %.0.i149 = phi i64 [ %i.o, %bb.h ], [ %i.p, %bb.i ]
  %i.q = trunc i64 %.0.i149 to i32                ; 2 uses
  %.not = icmp ne i32 %6, 0                       ; 3 uses
  %i.r = or i32 %i.q, 64
  %spec.select = select i1 %.not, i32 %i.r, i32 %i.q ; 3 uses
  %i.s = and i64 %4, -5
  %.not193 = icmp eq i64 %i.s, 0
  %i.t = tail call i64 @rb_io_taint_check(i64 noundef %0) #9
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 8 uses
  tail call void @rb_io_check_closed(ptr noundef %i.w) #9
  %i.x = tail call i32 @rb_io_read_pending(ptr noundef %i.w) #12
  %.not129 = icmp eq i32 %i.x, 0
  br i1 %.not129, label %.preheader, label %bb.j

.preheader:                                       ; preds = %rb_num2int_inline.exit
  %narrow = or i1 %i.d, %i.i
  %i.y = zext i1 %narrow to i32
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %.outer.outer.outer

bb.j:                                             ; preds = %rb_num2int_inline.exit
  %i.ak = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ak, ptr noundef nonnull @.str.24) #11
  unreachable

bb.k:                                             ; preds = %.outer, %bb.w
  %.1119 = phi i32 [ %spec.select144, %bb.w ], [ %.1119.ph, %.outer ] ; 2 uses
  %.0115 = phi i64 [ %.1116, %bb.w ], [ %.0115.ph, %.outer ] ; 3 uses
  %i.al = icmp eq i64 %.0115, 4
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = call i64 @rb_str_tmp_new(i64 noundef %.0122.ph) #9
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.an = call i64 @rb_str_resize(i64 noundef %.0115, i64 noundef %.0122.ph) #9 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1116 = phi i64 [ %i.am, %bb.l ], [ %.0115, %bb.m ] ; 9 uses
  %i.ao = inttoptr i64 %.1116 to ptr              ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !19
  %i.aq = and i64 %i.ap, 8192
  %.not.i = icmp eq i64 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.n, %bb.o
  %i.at = phi ptr [ %i.as, %bb.o ], [ %i.ar, %bb.n ] ; 2 uses
  %i.au = load i64, ptr %i.b, align 8, !tbaa !13  ; 3 uses
  %i.av = icmp eq i64 %i.au, 4
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %RSTRING_PTR.exit
  %i.aw = call i64 @rb_str_tmp_new(i64 noundef %.0111.ph.ph.ph) #9 ; 2 uses
  store i64 %i.aw, ptr %i.b, align 8, !tbaa !13
  br label %bb.r

bb.q:                                             ; preds = %RSTRING_PTR.exit
  %i.ax = call i64 @rb_str_resize(i64 noundef %i.au, i64 noundef %.0111.ph.ph.ph) #9 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ay = phi i64 [ %i.au, %bb.q ], [ %i.aw, %bb.p ]
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !19
  %i.bb = and i64 %i.ba, 8192
  %.not.i150 = icmp eq i64 %i.bb, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  br i1 %.not.i150, label %RSTRING_PTR.exit151, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !20
  br label %RSTRING_PTR.exit151

RSTRING_PTR.exit151:                              ; preds = %bb.r, %bb.s
  %i.be = phi ptr [ %i.bd, %bb.s ], [ %i.bc, %bb.r ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %11, i8 0, i64 2048, i1 false)
  store ptr %11, ptr %9, align 8, !tbaa !28
  store i32 2048, ptr %i.z, align 8, !tbaa !29
  store ptr %10, ptr %i.aa, align 8, !tbaa !31
  store i64 1, ptr %i.ab, align 8, !tbaa !30
  store ptr %i.at, ptr %10, align 8, !tbaa !33
  store i64 %.0122.ph, ptr %i.ac, align 8, !tbaa !34
  store ptr %i.be, ptr %i.ad, align 8, !tbaa !35
  store i64 %i.he, ptr %i.ae, align 8, !tbaa !36
  %i.bf = or i32 %.1119, 2                        ; 4 uses
  %spec.select144 = select i1 %.not130, i32 %.1119, i32 %i.bf ; 5 uses
  call void @rb_io_check_closed(ptr noundef %i.w) #9
  %i.bg = load i32, ptr %i.af, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store i32 %i.bg, ptr %8, align 8, !tbaa !57
  store ptr %9, ptr %i.ag, align 8, !tbaa !58
  store i32 %spec.select144, ptr %i.ah, align 4, !tbaa !59
  %i.bh = call ptr @rb_thread_call_without_gvl(ptr noundef nonnull @nogvl_recvmsg_func, ptr noundef nonnull %8, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null) #9
  %i.bi = ptrtoint ptr %i.bh to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  switch i64 %i.bi, label %.loopexit195 [
    i64 0, label %bb.t
    i64 -1, label %bb.u
  ]

bb.t:                                             ; preds = %RSTRING_PTR.exit151
  %i.bj = call i32 @rsock_is_dgram(ptr noundef nonnull %i.w) #9
  %.not131 = icmp eq i32 %i.bj, 0
  br i1 %.not131, label %.loopexit, label %.loopexit195

bb.u:                                             ; preds = %RSTRING_PTR.exit151
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = call ptr @rb_errno_ptr() #9
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !11
  %i.bm = load i64, ptr %i.w, align 8, !tbaa !55
  %i.bn = call i32 @rb_io_maybe_wait_readable(i32 noundef %i.bl, i64 noundef %i.bm, i64 noundef 4) #9
  %.not142 = icmp eq i32 %i.bn, 0
  br i1 %.not142, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @rb_io_check_closed(ptr noundef nonnull %i.w) #9
  br label %bb.k

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bo = call ptr @rb_errno_ptr() #9
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !11 ; 3 uses
  %i.bq = icmp eq i32 %i.bp, 11
  %or.cond = select i1 %.not, i1 %i.bq, i1 false
  br i1 %or.cond, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.br = icmp eq i64 %5, 0
  br i1 %i.br, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bs = load i64, ptr @sym_wait_readable, align 8, !tbaa !13
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  call void @rb_readwrite_syserr_fail(i32 noundef 0, i32 noundef 11, ptr noundef nonnull @.str.25) #11
  unreachable

bb.ab:                                            ; preds = %bb.x
  %.not143 = icmp eq i32 %.0110.ph, 0
  br i1 %.not143, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  switch i32 %i.bp, label %bb.ad [
    i32 90, label %rsock_discard_cmsg_resource.exit.thread
    i32 24, label %rsock_discard_cmsg_resource.exit.thread
  ]

rsock_discard_cmsg_resource.exit.thread:          ; preds = %discard_cmsg.exit.i, %bb.ar, %bb.ao, %bb.an, %bb.ac, %bb.ac
  %.1123 = phi i64 [ %.0122.ph, %bb.ac ], [ %.0122.ph, %bb.ac ], [ %.2124, %bb.ao ], [ %.2124, %bb.an ], [ %.2124, %bb.ar ], [ %.2124, %discard_cmsg.exit.i ]
  %.1108 = phi i32 [ %.0107.ph, %bb.ac ], [ %.0107.ph, %bb.ac ], [ 1, %bb.ao ], [ 1, %bb.an ], [ 1, %bb.ar ], [ 1, %discard_cmsg.exit.i ]
  call void @rb_gc() #9
  br label %.outer

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @rb_syserr_fail(i32 noundef %i.bp, ptr noundef nonnull @.str.26) #11
  unreachable

.loopexit195:                                     ; preds = %RSTRING_PTR.exit151, %bb.t
  %12 = phi i64 [ 0, %bb.t ], [ %i.bi, %RSTRING_PTR.exit151 ] ; 3 uses
  br i1 %.not130, label %rsock_discard_cmsg_resource.exit.thread187, label %bb.ae

bb.ae:                                            ; preds = %.loopexit195
  %i.bt = load i64, ptr %i.ac, align 8
  %i.bu = icmp eq i64 %i.bt, %12
  %or.cond146 = select i1 %i.d, i1 %i.bu, i1 false ; 2 uses
  br i1 %or.cond146, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.bv = icmp slt i64 %.0122.ph, 0
  br i1 %i.bv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bw = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bw, ptr noundef nonnull @.str.27) #11
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.bx = shl nuw i64 %.0122.ph, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.2124 = phi i64 [ %i.bx, %bb.ah ], [ %.0122.ph, %bb.ae ] ; 6 uses
  br i1 %i.i, label %bb.aj, label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.by = load i32, ptr %i.ai, align 8, !tbaa !74
  %i.bz = and i32 %i.by, 8
  %.not132 = icmp eq i32 %i.bz, 0
  br i1 %.not132, label %bb.au, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.hf, label %bb.al, label %.thread178

bb.al:                                            ; preds = %bb.ak
  %i.ca = load i64, ptr %i.ae, align 8, !tbaa !36 ; 4 uses
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = icmp ugt i32 %i.hh, %i.cb
  br i1 %i.cc, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %.not133 = icmp eq i32 %.0110.ph, 0
  br i1 %.not133, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.cd = icmp eq i64 %i.ca, 0
  br i1 %i.cd, label %rsock_discard_cmsg_resource.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ca ; 2 uses
  %i.cg = icmp ult i64 %i.ca, 16
  %.not1116.i = icmp eq ptr %i.ce, null
  %.not11.i = select i1 %i.cg, i1 true, i1 %.not1116.i
  br i1 %.not11.i, label %rsock_discard_cmsg_resource.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ao, %__cmsg_nxthdr.exit.i
  %.012.i = phi ptr [ %i.ds, %__cmsg_nxthdr.exit.i ], [ %i.ce, %bb.ao ] ; 9 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !11
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.ap, label %discard_cmsg.exit.i

bb.ap:                                            ; preds = %.lr.ph.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !11
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.aq, label %discard_cmsg.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.cn = load i64, ptr %.012.i, align 8, !tbaa !13 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i, i64 20 ; 2 uses
  %i.cq = icmp samesign ugt i64 %i.cn, 19
  %i.cr = icmp ule ptr %i.cp, %i.cf
  %i.cs = and i1 %i.cr, %i.cq
  br i1 %i.cs, label %.lr.ph.preheader.i.i, label %discard_cmsg.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.aq
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.cu = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %i.cp, %.lr.ph.preheader.i.i ] ; 2 uses
  %.013.i.i = phi ptr [ %i.cu, %.lr.ph.i.i ], [ %i.ct, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.cv = load i32, ptr %.013.i.i, align 4, !tbaa !11
  call void @rb_update_max_fd(i32 noundef %i.cv) #9
  %i.cw = load i32, ptr %.013.i.i, align 4, !tbaa !11
  %i.cx = call i32 @close(i32 noundef %i.cw) #9   ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 3 uses
  %i.cz = icmp ule ptr %i.cy, %i.co
  %i.da = icmp ule ptr %i.cy, %i.cf
  %i.db = and i1 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph.i.i, label %discard_cmsg.exit.i, !llvm.loop !1

discard_cmsg.exit.i:                              ; preds = %.lr.ph.i.i, %bb.aq, %bb.ap, %.lr.ph.i
  %i.dc = load i64, ptr %.012.i, align 8, !tbaa !13 ; 4 uses
  %i.dd = icmp ult i64 %i.dc, 16
  br i1 %i.dd, label %rsock_discard_cmsg_resource.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %discard_cmsg.exit.i
  %i.de = sub i64 0, %i.dc
  %i.df = and i64 %i.de, 7
  %i.dg = or disjoint i64 %i.df, 16               ; 2 uses
  %i.dh = load ptr, ptr %i.ad, align 8, !tbaa !35
  %i.di = load i64, ptr %i.ae, align 8, !tbaa !36
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.di
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %.012.i to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dg
  %i.do = sub nuw i64 %i.dm, %i.dg
  %i.dp = icmp ult i64 %i.do, %i.dc
  %or.cond.i.i = select i1 %i.dn, i1 true, i1 %i.dp
  br i1 %or.cond.i.i, label %rsock_discard_cmsg_resource.exit.thread, label %__cmsg_nxthdr.exit.i

__cmsg_nxthdr.exit.i:                             ; preds = %bb.ar
  %i.dq = add nuw i64 %i.dc, 7
  %i.dr = and i64 %i.dq, -8
  %i.ds = getelementptr inbounds nuw i8, ptr %.012.i, i64 %i.dr
  br label %.lr.ph.i

bb.as:                                            ; preds = %bb.al
  %i.dt = icmp slt i64 %.0111.ph.ph.ph, 0
  br i1 %i.dt, label %bb.at, label %.thread178

bb.at:                                            ; preds = %bb.as
  %i.du = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.du, ptr noundef nonnull @.str.28) #11
  unreachable

.thread178:                                       ; preds = %bb.ak, %bb.as
  %i.dv = shl nuw i64 %.0111.ph.ph.ph, 1
  br label %.loopexit559

bb.au:                                            ; preds = %bb.am, %bb.aj, %bb.ai
  br i1 %or.cond146, label %.loopexit559, label %bb.az

.loopexit559:                                     ; preds = %bb.au, %.thread178
  %.2113182 = phi i64 [ %i.dv, %.thread178 ], [ %.0111.ph.ph.ph, %bb.au ]
  %i.dw = load i64, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %.outer.outer.outer.backedge, label %bb.av

bb.av:                                            ; preds = %.loopexit559
  %i.dy = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw ; 2 uses
  %i.ea = icmp ult i64 %i.dw, 16
  %.not1116.i152 = icmp eq ptr %i.dy, null
  %.not11.i153 = select i1 %i.ea, i1 true, i1 %.not1116.i152
  br i1 %.not11.i153, label %.outer.outer.outer.backedge, label %.lr.ph.i154

.lr.ph.i154:                                      ; preds = %bb.av, %__cmsg_nxthdr.exit.i158
  %.012.i155 = phi ptr [ %i.fm, %__cmsg_nxthdr.exit.i158 ], [ %i.dy, %bb.av ] ; 9 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.012.i155, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !11
  %i.ed = icmp eq i32 %i.ec, 1
  br i1 %i.ed, label %bb.aw, label %discard_cmsg.exit.i156

bb.aw:                                            ; preds = %.lr.ph.i154
  %i.ee = getelementptr inbounds nuw i8, ptr %.012.i155, i64 12
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !11
  %i.eg = icmp eq i32 %i.ef, 1
  br i1 %i.eg, label %bb.ax, label %discard_cmsg.exit.i156

bb.ax:                                            ; preds = %bb.aw
  %i.eh = load i64, ptr %.012.i155, align 8, !tbaa !13 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i155, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i155, i64 20 ; 2 uses
  %i.ek = icmp samesign ugt i64 %i.eh, 19
  %i.el = icmp ule ptr %i.ej, %i.dz
  %i.em = and i1 %i.el, %i.ek
  br i1 %i.em, label %.lr.ph.preheader.i.i159, label %discard_cmsg.exit.i156

.lr.ph.preheader.i.i159:                          ; preds = %bb.ax
  %i.en = getelementptr inbounds nuw i8, ptr %.012.i155, i64 16
  br label %.lr.ph.i.i160

.lr.ph.i.i160:                                    ; preds = %.lr.ph.i.i160, %.lr.ph.preheader.i.i159
  %i.eo = phi ptr [ %i.es, %.lr.ph.i.i160 ], [ %i.ej, %.lr.ph.preheader.i.i159 ] ; 2 uses
  %.013.i.i161 = phi ptr [ %i.eo, %.lr.ph.i.i160 ], [ %i.en, %.lr.ph.preheader.i.i159 ] ; 2 uses
  %i.ep = load i32, ptr %.013.i.i161, align 4, !tbaa !11
  call void @rb_update_max_fd(i32 noundef %i.ep) #9
  %i.eq = load i32, ptr %.013.i.i161, align 4, !tbaa !11
  %i.er = call i32 @close(i32 noundef %i.eq) #9   ; 0 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 3 uses
  %i.et = icmp ule ptr %i.es, %i.ei
  %i.eu = icmp ule ptr %i.es, %i.dz
  %i.ev = and i1 %i.et, %i.eu
  br i1 %i.ev, label %.lr.ph.i.i160, label %discard_cmsg.exit.i156, !llvm.loop !1

discard_cmsg.exit.i156:                           ; preds = %.lr.ph.i.i160, %bb.ax, %bb.aw, %.lr.ph.i154
  %i.ew = load i64, ptr %.012.i155, align 8, !tbaa !13 ; 4 uses
  %i.ex = icmp ult i64 %i.ew, 16
  br i1 %i.ex, label %.outer.outer.outer.backedge, label %bb.ay

bb.ay:                                            ; preds = %discard_cmsg.exit.i156
  %i.ey = sub i64 0, %i.ew
  %i.ez = and i64 %i.ey, 7
  %i.fa = or disjoint i64 %i.ez, 16               ; 2 uses
  %i.fb = load ptr, ptr %i.ad, align 8, !tbaa !35
  %i.fc = load i64, ptr %i.ae, align 8, !tbaa !36
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fc
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %.012.i155 to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.fa
  %i.fi = sub nuw i64 %i.fg, %i.fa
  %i.fj = icmp ult i64 %i.fi, %i.ew
  %or.cond.i.i157 = select i1 %i.fh, i1 true, i1 %i.fj
  br i1 %or.cond.i.i157, label %.outer.outer.outer.backedge, label %__cmsg_nxthdr.exit.i158

__cmsg_nxthdr.exit.i158:                          ; preds = %bb.ay
  %i.fk = add nuw i64 %i.ew, 7
  %i.fl = and i64 %i.fk, -8
  %i.fm = getelementptr inbounds nuw i8, ptr %.012.i155, i64 %i.fl
  br label %.lr.ph.i154

bb.az:                                            ; preds = %bb.au
  %.not135 = icmp eq i32 %i.bf, %spec.select
  br i1 %.not135, label %rsock_discard_cmsg_resource.exit.thread187, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fn = load i64, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %.outer.outer.backedge, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fp = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fn ; 2 uses
  %i.fr = icmp ult i64 %i.fn, 16
  %.not1116.i163 = icmp eq ptr %i.fp, null
  %.not11.i164 = select i1 %i.fr, i1 true, i1 %.not1116.i163
  br i1 %.not11.i164, label %.outer.outer.backedge, label %.lr.ph.i165

.outer.outer.backedge:                            ; preds = %discard_cmsg.exit.i167, %bb.be, %bb.bb, %bb.ba
  br label %.outer.outer

.lr.ph.i165:                                      ; preds = %bb.bb, %__cmsg_nxthdr.exit.i169
  %.012.i166 = phi ptr [ %i.hd, %__cmsg_nxthdr.exit.i169 ], [ %i.fp, %bb.bb ] ; 9 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.012.i166, i64 8
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !11
  %i.fu = icmp eq i32 %i.ft, 1
  br i1 %i.fu, label %bb.bc, label %discard_cmsg.exit.i167

bb.bc:                                            ; preds = %.lr.ph.i165
  %i.fv = getelementptr inbounds nuw i8, ptr %.012.i166, i64 12
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !11
  %i.fx = icmp eq i32 %i.fw, 1
  br i1 %i.fx, label %bb.bd, label %discard_cmsg.exit.i167

bb.bd:                                            ; preds = %bb.bc
  %i.fy = load i64, ptr %.012.i166, align 8, !tbaa !13 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.012.i166, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %.012.i166, i64 20 ; 2 uses
  %i.gb = icmp samesign ugt i64 %i.fy, 19
  %i.gc = icmp ule ptr %i.ga, %i.fq
  %i.gd = and i1 %i.gc, %i.gb
  br i1 %i.gd, label %.lr.ph.preheader.i.i170, label %discard_cmsg.exit.i167

.lr.ph.preheader.i.i170:                          ; preds = %bb.bd
  %i.ge = getelementptr inbounds nuw i8, ptr %.012.i166, i64 16
  br label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171, %.lr.ph.preheader.i.i170
  %i.gf = phi ptr [ %i.gj, %.lr.ph.i.i171 ], [ %i.ga, %.lr.ph.preheader.i.i170 ] ; 2 uses
  %.013.i.i172 = phi ptr [ %i.gf, %.lr.ph.i.i171 ], [ %i.ge, %.lr.ph.preheader.i.i170 ] ; 2 uses
  %i.gg = load i32, ptr %.013.i.i172, align 4, !tbaa !11
  call void @rb_update_max_fd(i32 noundef %i.gg) #9
  %i.gh = load i32, ptr %.013.i.i172, align 4, !tbaa !11
  %i.gi = call i32 @close(i32 noundef %i.gh) #9   ; 0 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 3 uses
  %i.gk = icmp ule ptr %i.gj, %i.fz
  %i.gl = icmp ule ptr %i.gj, %i.fq
  %i.gm = and i1 %i.gk, %i.gl
  br i1 %i.gm, label %.lr.ph.i.i171, label %discard_cmsg.exit.i167, !llvm.loop !1

discard_cmsg.exit.i167:                           ; preds = %.lr.ph.i.i171, %bb.bd, %bb.bc, %.lr.ph.i165
  %i.gn = load i64, ptr %.012.i166, align 8, !tbaa !13 ; 4 uses
  %i.go = icmp ult i64 %i.gn, 16
  br i1 %i.go, label %.outer.outer.backedge, label %bb.be

bb.be:                                            ; preds = %discard_cmsg.exit.i167
  %i.gp = sub i64 0, %i.gn
  %i.gq = and i64 %i.gp, 7
  %i.gr = or disjoint i64 %i.gq, 16               ; 2 uses
  %i.gs = load ptr, ptr %i.ad, align 8, !tbaa !35
  %i.gt = load i64, ptr %i.ae, align 8, !tbaa !36
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gt
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %.012.i166 to i64
  %i.gx = sub i64 %i.gv, %i.gw                    ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.gr
  %i.gz = sub nuw i64 %i.gx, %i.gr
  %i.ha = icmp ult i64 %i.gz, %i.gn
  %or.cond.i.i168 = select i1 %i.gy, i1 true, i1 %i.ha
  br i1 %or.cond.i.i168, label %.outer.outer.backedge, label %__cmsg_nxthdr.exit.i169

__cmsg_nxthdr.exit.i169:                          ; preds = %bb.be
  %i.hb = add nuw i64 %i.gn, 7
  %i.hc = and i64 %i.hb, -8
  %i.hd = getelementptr inbounds nuw i8, ptr %.012.i166, i64 %i.hc
  br label %.lr.ph.i165

.outer.outer.outer.backedge:                      ; preds = %discard_cmsg.exit.i156, %bb.ay, %bb.av, %.loopexit559
  %.1119.ph.ph.ph.be = phi i32 [ %i.bf, %.loopexit559 ], [ %i.bf, %bb.av ], [ %spec.select144, %bb.ay ], [ %spec.select144, %discard_cmsg.exit.i156 ]
  br label %.outer.outer.outer

.outer.outer.outer:                               ; preds = %.outer.outer.outer.backedge, %.preheader
  %.0122.ph.ph.ph = phi i64 [ %i.h, %.preheader ], [ %.2124, %.outer.outer.outer.backedge ]
  %.1119.ph.ph.ph = phi i32 [ %spec.select, %.preheader ], [ %.1119.ph.ph.ph.be, %.outer.outer.outer.backedge ]
  %.0115.ph.ph.ph = phi i64 [ 4, %.preheader ], [ %.1116, %.outer.outer.outer.backedge ]
  %.0111.ph.ph.ph = phi i64 [ %i.m, %.preheader ], [ %.2113182, %.outer.outer.outer.backedge ] ; 8 uses
  %.0110.ph.ph.ph = phi i32 [ 0, %.preheader ], [ %.0110.ph, %.outer.outer.outer.backedge ]
  %.0107.ph.ph.ph = phi i32 [ %i.y, %.preheader ], [ 1, %.outer.outer.outer.backedge ]
  %i.he = and i64 %.0111.ph.ph.ph, 4294967295
  %i.hf = icmp ugt i64 %.0111.ph.ph.ph, 65536
  %i.hg = trunc i64 %.0111.ph.ph.ph to i32
  %i.hh = add i32 %i.hg, -65536
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %.outer.outer.outer
  %.0122.ph.ph = phi i64 [ %.0122.ph.ph.ph, %.outer.outer.outer ], [ %.2124, %.outer.outer.backedge ]
  %.1119.ph.ph = phi i32 [ %.1119.ph.ph.ph, %.outer.outer.outer ], [ %spec.select, %.outer.outer.backedge ]
  %.0115.ph.ph = phi i64 [ %.0115.ph.ph.ph, %.outer.outer.outer ], [ %.1116, %.outer.outer.backedge ]
  %.0110.ph.ph = phi i32 [ %.0110.ph.ph.ph, %.outer.outer.outer ], [ %.0110.ph, %.outer.outer.backedge ]
  %.0107.ph.ph = phi i32 [ %.0107.ph.ph.ph, %.outer.outer.outer ], [ 0, %.outer.outer.backedge ]
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %rsock_discard_cmsg_resource.exit.thread
  %.0122.ph = phi i64 [ %.1123, %rsock_discard_cmsg_resource.exit.thread ], [ %.0122.ph.ph, %.outer.outer ] ; 8 uses
  %.1119.ph = phi i32 [ %spec.select144, %rsock_discard_cmsg_resource.exit.thread ], [ %.1119.ph.ph, %.outer.outer ]
  %.0115.ph = phi i64 [ %.1116, %rsock_discard_cmsg_resource.exit.thread ], [ %.0115.ph.ph, %.outer.outer ]
  %.0110.ph = phi i32 [ 1, %rsock_discard_cmsg_resource.exit.thread ], [ %.0110.ph.ph, %.outer.outer ] ; 4 uses
  %.0107.ph = phi i32 [ %.1108, %rsock_discard_cmsg_resource.exit.thread ], [ %.0107.ph.ph, %.outer.outer ] ; 3 uses
  %.not130 = icmp eq i32 %.0107.ph, 0             ; 2 uses
  br label %bb.k

rsock_discard_cmsg_resource.exit.thread187:       ; preds = %bb.az, %.loopexit195
  %i.hi = icmp eq i64 %.1116, 4
  br i1 %i.hi, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %rsock_discard_cmsg_resource.exit.thread187
  %i.hj = call i64 @rb_str_new(ptr noundef %i.at, i64 noundef %12) #9
  br label %bb.bh

bb.bg:                                            ; preds = %rsock_discard_cmsg_resource.exit.thread187
  %i.hk = call i64 @rb_str_resize(i64 noundef %.1116, i64 noundef %12) #9 ; 0 uses
  %i.hl = load i64, ptr @rb_cString, align 8, !tbaa !13
  %i.hm = call i64 @rb_obj_reveal(i64 noundef %.1116, i64 noundef %i.hl) #9 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.2117 = phi i64 [ %i.hj, %bb.bf ], [ %.1116, %bb.bg ]
  %i.hn = load i32, ptr %i.ai, align 8, !tbaa !74
  %i.ho = sext i32 %i.hn to i64
  %i.hp = shl nsw i64 %i.ho, 1
  %i.hq = or disjoint i64 %i.hp, 1
  %i.hr = load ptr, ptr %9, align 8, !tbaa !28
  %i.hs = load i32, ptr %i.z, align 8, !tbaa !29
  %i.ht = call i64 @rsock_io_socket_addrinfo(i64 noundef %0, ptr noundef %i.hr, i32 noundef %i.hs) #9
  %i.hu = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 3, i64 noundef %.2117, i64 noundef %i.ht, i64 noundef %i.hq) #9 ; 3 uses
  %i.hv = call i32 @rsock_getfamily(ptr noundef nonnull %i.w) #9
  %i.hw = load i64, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %.not138 = icmp eq i64 %i.hw, 0
  br i1 %.not138, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hx = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hw ; 6 uses
  %i.hz = icmp ult i64 %i.hw, 16
  %.not139295297 = icmp eq ptr %i.hx, null
  %.not139295 = select i1 %i.hz, i1 true, i1 %.not139295297
  br i1 %.not139295, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bi
  %i.ia = sext i32 %i.hv to i64
  %i.ib = shl nsw i64 %i.ia, 1
  %i.ic = or disjoint i64 %i.ib, 1
  %i.id = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ie = load i64, ptr %i.hx, align 8, !tbaa !13 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %._crit_edge, label %.lr.ph554

._crit_edge:                                      ; preds = %__cmsg_nxthdr.exit, %.lr.ph
  %i.ig = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ig, ptr noundef nonnull @.str.29) #11
  unreachable

.lr.ph554:                                        ; preds = %.lr.ph, %__cmsg_nxthdr.exit
  %i.ih = phi i64 [ %i.ls, %__cmsg_nxthdr.exit ], [ %i.ie, %.lr.ph ]
  %.0114296553 = phi ptr [ %i.lr, %__cmsg_nxthdr.exit ], [ %i.hx, %.lr.ph ] ; 13 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.0114296553, i64 %i.ih ; 2 uses
  %.not140 = icmp ugt ptr %i.ii, %i.hy
  %i.ij = select i1 %.not140, ptr %i.hy, ptr %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %.0114296553, i64 16 ; 4 uses
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %.0114296553, i64 8 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !11
  %i.iq = getelementptr inbounds nuw i8, ptr %.0114296553, i64 12 ; 3 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !11
  %i.is = call i64 @rb_str_new(ptr noundef nonnull %i.ik, i64 noundef %i.in) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.is, ptr %i.a, align 8, !tbaa !13
  %i.it = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !13
  %i.iu = call i64 @rb_obj_alloc(i64 noundef %i.it) #9 ; 4 uses
  %i.iv = call i64 @rb_string_value(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.iw = sext i32 %i.ip to i64
  %i.ix = shl nsw i64 %i.iw, 1
  %i.iy = or disjoint i64 %i.ix, 1
  %i.iz = sext i32 %i.ir to i64
  %i.ja = shl nsw i64 %i.iz, 1
  %i.jb = or disjoint i64 %i.ja, 1
  %i.jc = load i64, ptr %i.a, align 8, !tbaa !13
  %i.jd = call i64 @ancillary_initialize(i64 noundef %i.iu, i64 noundef %i.ic, i64 noundef %i.iy, i64 noundef %i.jb, i64 noundef %i.jc) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.je = load i32, ptr %i.io, align 8, !tbaa !11
  %i.jf = icmp eq i32 %i.je, 1                    ; 2 uses
  br i1 %.not193, label %bb.br, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph554
  br i1 %i.jf, label %bb.bk, label %make_io_for_unix_rights.exit

bb.bk:                                            ; preds = %bb.bj
  %i.jg = load i32, ptr %i.iq, align 4, !tbaa !11
  %i.jh = icmp eq i32 %i.jg, 1
  br i1 %i.jh, label %bb.bl, label %make_io_for_unix_rights.exit

bb.bl:                                            ; preds = %bb.bk
  %i.ji = call i64 @rb_ary_new() #9               ; 2 uses
  %.pr.i.i = load i64, ptr @make_io_for_unix_rights.rbimpl_id, align 8, !tbaa !13 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i175, label %rbimpl_intern_const.exit.i

.lr.ph.i.i175:                                    ; preds = %bb.bl, %.lr.ph.i.i175
  %i.jj = call i64 @rb_intern2(ptr noundef nonnull @.str.9, i64 noundef 11) #9 ; 3 uses
  store i64 %i.jj, ptr @make_io_for_unix_rights.rbimpl_id, align 8, !tbaa !13
  %.not.i.i = icmp eq i64 %i.jj, 0
  br i1 %.not.i.i, label %.lr.ph.i.i175, label %rbimpl_intern_const.exit.i, !llvm.loop !0

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i175, %bb.bl
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.bl ], [ %i.jj, %.lr.ph.i.i175 ]
  %i.jk = call i64 @rb_ivar_set(i64 noundef %i.iu, i64 noundef %.lcssa.i.i, i64 noundef %i.ji) #9 ; 0 uses
  %i.jl = load i64, ptr %.0114296553, align 8, !tbaa !13 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0114296553, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %.0114296553, i64 20 ; 2 uses
  %i.jo = icmp samesign ugt i64 %i.jl, 19
  %i.jp = icmp ule ptr %i.jn, %i.hy
  %i.jq = and i1 %i.jp, %i.jo
  br i1 %i.jq, label %.lr.ph.i174, label %._crit_edge.i

.lr.ph.i174:                                      ; preds = %rbimpl_intern_const.exit.i, %rbimpl_intern_const.exit31.i
  %i.jr = phi ptr [ %i.kg, %rbimpl_intern_const.exit31.i ], [ %i.jn, %rbimpl_intern_const.exit.i ] ; 2 uses
  %.034.i = phi ptr [ %i.jr, %rbimpl_intern_const.exit31.i ], [ %i.ik, %rbimpl_intern_const.exit.i ]
  %i.js = load i32, ptr %.034.i, align 4, !tbaa !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.jt = call i32 @fstat(i32 noundef %i.js, ptr noundef nonnull %7) #9
  %i.ju = icmp eq i32 %i.jt, -1
  br i1 %i.ju, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i174
  %i.jv = load i64, ptr @rb_eSocket, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.jv, ptr noundef nonnull @.str.30) #11
  unreachable

bb.bn:                                            ; preds = %.lr.ph.i174
  call void @rb_update_max_fd(i32 noundef %i.js) #9
  call void @rb_maygvl_fd_fix_cloexec(i32 noundef %i.js) #9
  %i.jw = load i32, ptr %i.id, align 8, !tbaa !76
  %i.jx = and i32 %i.jw, 61440
  %i.jy = icmp eq i32 %i.jx, 49152
  br i1 %i.jy, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jz = load i64, ptr @rb_cSocket, align 8, !tbaa !13
  %i.ka = call i64 @rb_obj_alloc(i64 noundef %i.jz) #9
  %i.kb = call i64 @rsock_init_sock(i64 noundef %i.ka, i32 noundef %i.js) #9
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.kc = call i64 @rb_io_fdopen(i32 noundef %i.js, i32 noundef 2, ptr noundef null) #9
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.023.i = phi i64 [ %i.kb, %bb.bo ], [ %i.kc, %bb.bp ]
  %.pr.i26.i = load i64, ptr @make_io_for_unix_rights.rbimpl_id.31, align 8, !tbaa !13 ; 2 uses
  %.not4.i27.i = icmp eq i64 %.pr.i26.i, 0
  br i1 %.not4.i27.i, label %.lr.ph.i29.i, label %rbimpl_intern_const.exit31.i

.lr.ph.i29.i:                                     ; preds = %bb.bq, %.lr.ph.i29.i
  %i.kd = call i64 @rb_intern2(ptr noundef nonnull @.str.9, i64 noundef 11) #9 ; 3 uses
  store i64 %i.kd, ptr @make_io_for_unix_rights.rbimpl_id.31, align 8, !tbaa !13
  %.not.i30.i = icmp eq i64 %i.kd, 0
  br i1 %.not.i30.i, label %.lr.ph.i29.i, label %rbimpl_intern_const.exit31.i, !llvm.loop !0

rbimpl_intern_const.exit31.i:                     ; preds = %.lr.ph.i29.i, %bb.bq
  %.lcssa.i28.i = phi i64 [ %.pr.i26.i, %bb.bq ], [ %i.kd, %.lr.ph.i29.i ]
  %i.ke = call i64 @rb_attr_get(i64 noundef %i.iu, i64 noundef %.lcssa.i28.i) #9 ; 2 uses
  %i.kf = call i64 @rb_ary_push(i64 noundef %i.ke, i64 noundef %.023.i) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jr, i64 4 ; 3 uses
  %i.kh = icmp ule ptr %i.kg, %i.jm
  %i.ki = icmp ule ptr %i.kg, %i.hy
  %i.kj = and i1 %i.kh, %i.ki
  br i1 %i.kj, label %.lr.ph.i174, label %._crit_edge.i, !llvm.loop !72

._crit_edge.i:                                    ; preds = %rbimpl_intern_const.exit31.i, %rbimpl_intern_const.exit.i
  %.024.lcssa.i = phi i64 [ %i.ji, %rbimpl_intern_const.exit.i ], [ %i.ke, %rbimpl_intern_const.exit31.i ]
  call void @rb_obj_freeze_inline(i64 noundef %.024.lcssa.i) #9
  br label %make_io_for_unix_rights.exit

bb.br:                                            ; preds = %.lr.ph554
  br i1 %i.jf, label %bb.bs, label %make_io_for_unix_rights.exit

bb.bs:                                            ; preds = %bb.br
  %i.kk = load i32, ptr %i.iq, align 4, !tbaa !11
  %i.kl = icmp eq i32 %i.kk, 1
  br i1 %i.kl, label %bb.bt, label %make_io_for_unix_rights.exit

bb.bt:                                            ; preds = %bb.bs
  %i.km = load i64, ptr %.0114296553, align 8, !tbaa !13 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.0114296553, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %.0114296553, i64 20 ; 2 uses
  %i.kp = icmp samesign ugt i64 %i.km, 19
  %i.kq = icmp ule ptr %i.ko, %i.hy
  %i.kr = and i1 %i.kq, %i.kp
  br i1 %i.kr, label %.lr.ph.i176, label %make_io_for_unix_rights.exit

.lr.ph.i176:                                      ; preds = %bb.bt, %.lr.ph.i176
  %i.ks = phi ptr [ %i.kw, %.lr.ph.i176 ], [ %i.ko, %bb.bt ] ; 2 uses
  %.013.i = phi ptr [ %i.ks, %.lr.ph.i176 ], [ %i.ik, %bb.bt ] ; 2 uses
  %i.kt = load i32, ptr %.013.i, align 4, !tbaa !11
  call void @rb_update_max_fd(i32 noundef %i.kt) #9
  %i.ku = load i32, ptr %.013.i, align 4, !tbaa !11
  %i.kv = call i32 @close(i32 noundef %i.ku) #9   ; 0 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 4 ; 3 uses
  %i.kx = icmp ule ptr %i.kw, %i.kn
  %i.ky = icmp ule ptr %i.kw, %i.hy
  %i.kz = and i1 %i.kx, %i.ky
  br i1 %i.kz, label %.lr.ph.i176, label %make_io_for_unix_rights.exit, !llvm.loop !1

make_io_for_unix_rights.exit:                     ; preds = %.lr.ph.i176, %bb.bt, %bb.bs, %bb.br, %._crit_edge.i, %bb.bk, %bb.bj
  %i.la = call i64 @rb_ary_push(i64 noundef %i.hu, i64 noundef %i.iu) #9 ; 0 uses
  %i.lb = load i64, ptr %.0114296553, align 8, !tbaa !13 ; 4 uses
  %i.lc = icmp ult i64 %i.lb, 16
  br i1 %i.lc, label %select.unfold._crit_edge, label %bb.bu
end_hunk_0
