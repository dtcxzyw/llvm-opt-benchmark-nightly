inline.NumInlined: 213
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@bsock_sendmsg_internal:bb.a
  %i.eb = and i64 %i.ea, 8192
  %.not.i102 = icmp eq i64 %i.eb, 0
  br i1 %.not.i102, label %RSTRING_PTR.exit103, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ec = load ptr, ptr %i.dg, align 8, !tbaa !18
  br label %RSTRING_PTR.exit103

RSTRING_PTR.exit103:                              ; preds = %bb.ad, %bb.ae
  %i.ed = phi ptr [ %i.ec, %bb.ae ], [ %i.dg, %bb.ad ]
  store ptr %i.ed, ptr %9, align 8, !tbaa !33
  %i.ee = load i64, ptr %i.dh, align 8, !tbaa !21
  store i64 %i.ee, ptr %i.di, align 8, !tbaa !35
  %i.ef = load i64, ptr %i.d, align 8, !tbaa !10  ; 2 uses
  %.not75 = icmp eq i64 %i.ef, 0
  br i1 %.not75, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %RSTRING_PTR.exit103
  %i.eg = inttoptr i64 %i.ef to ptr               ; 3 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !17
  %i.ei = and i64 %i.eh, 8192
  %.not.i104 = icmp eq i64 %i.ei, 0
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 2 uses
  br i1 %.not.i104, label %RSTRING_PTR.exit105, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !18
  br label %RSTRING_PTR.exit105

RSTRING_PTR.exit105:                              ; preds = %bb.af, %bb.ag
  %i.el = phi ptr [ %i.ek, %bb.ag ], [ %i.ej, %bb.af ]
  store ptr %i.el, ptr %i.dj, align 8, !tbaa !36
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !21 ; 3 uses
  %i.eo = add i64 %i.en, 2147483648
  %.not.i.i106 = icmp ult i64 %i.eo, 4294967296
  br i1 %.not.i.i106, label %RSTRING_LENINT.exit107, label %bb.ah

bb.ah:                                            ; preds = %RSTRING_PTR.exit105
  call void @rb_out_of_int(i64 noundef %i.en) #10
  unreachable

RSTRING_LENINT.exit107:                           ; preds = %RSTRING_PTR.exit105
  %i.ep = and i64 %i.en, 4294967295
  store i64 %i.ep, ptr %i.dk, align 8, !tbaa !37
  br label %bb.ai

bb.ai:                                            ; preds = %RSTRING_LENINT.exit107, %RSTRING_PTR.exit103
  call void @rb_io_check_closed(ptr noundef %i.k) #9
  %i.eq = load i32, ptr %i.dl, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  store i32 %i.eq, ptr %7, align 8, !tbaa !51
  store ptr %8, ptr %i.dm, align 8, !tbaa !54
  store i32 %spec.select, ptr %i.dn, align 4, !tbaa !55
  %i.er = call ptr @rb_thread_call_without_gvl(ptr noundef nonnull @nogvl_sendmsg_func, ptr noundef nonnull %7, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.es = icmp eq ptr %i.er, inttoptr (i64 -1 to ptr)
  br i1 %i.es, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not74, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.et = call ptr @rb_errno_ptr() #9
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !6
  %i.ev = load i64, ptr %i.k, align 8, !tbaa !56
  %i.ew = call i32 @rb_io_maybe_wait_writable(i32 noundef %i.eu, i64 noundef %i.ev, i64 noundef 4) #9
  %.not76 = icmp eq i32 %i.ew, 0
  br i1 %.not76, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ex = call ptr @rb_errno_ptr() #9
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !6  ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 11
  %or.cond = select i1 %.not74, i1 %i.ez, i1 false
  br i1 %or.cond, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fa = icmp eq i64 %5, 0
  br i1 %i.fa, label %.thread, label %bb.an

.thread:                                          ; preds = %bb.am
  %i.fb = load i64, ptr @sym_wait_writable, align 8, !tbaa !10
  br label %rb_ll2num_inline.exit

bb.an:                                            ; preds = %bb.am
  call void @rb_readwrite_syserr_fail(i32 noundef 1, i32 noundef 11, ptr noundef nonnull @.str.22) #11
  unreachable

bb.ao:                                            ; preds = %bb.al
  call void @rb_syserr_fail(i32 noundef %i.ey, ptr noundef nonnull @.str.23) #11
  unreachable

bb.ap:                                            ; preds = %bb.ak
  call void @rb_io_check_closed(ptr noundef nonnull %i.k) #9
  br label %bb.z

bb.aq:                                            ; preds = %bb.ai
  %i.fc = ptrtoint ptr %i.er to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store ptr %i.d, ptr %i.g, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.g) #9, !srcloc !57
  %i.fd = load ptr, ptr %i.g, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  %i.fe = load volatile i64, ptr %i.fd, align 8, !tbaa !10 ; 0 uses
  %i.ff = load i64, ptr %i.a, align 8, !tbaa !10
  call void @rb_str_tmp_frozen_release(i64 noundef %i.ff, i64 noundef %i.o) #9
  %i.fg = add i64 %i.fc, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.fg, -1
  br i1 %or.cond.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fh = shl nsw i64 %i.fc, 1
  %i.fi = or disjoint i64 %i.fh, 1
  br label %rb_ll2num_inline.exit

bb.as:                                            ; preds = %bb.aq
  %i.fj = call i64 @rb_ll2inum(i64 noundef range(i64 0, -1) %i.fc) #9
  br label %rb_ll2num_inline.exit

rb_ll2num_inline.exit:                            ; preds = %bb.as, %bb.ar, %.thread
  %.2 = phi i64 [ %i.fb, %.thread ], [ %i.fi, %bb.ar ], [ %i.fj, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define i64 @rsock_bsock_sendmsg_nonblock(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @bsock_sendmsg_internal(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i64 @rsock_recvmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %2, 1073741824
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = tail call i64 @recvmsg(i32 noundef %0, ptr noundef %1, i32 noundef %i.a) #9 ; 2 uses
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.b, align 8, !tbaa !30
  %i.f = icmp ult i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.c, ptr %i.b, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i64 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @recvmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @rsock_discard_cmsg_resource(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b ; 2 uses
  %i.g = icmp ult i64 %i.b, 16
  %.not1116 = icmp eq ptr %i.e, null
  %.not11 = select i1 %i.g, i1 true, i1 %.not1116
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %__cmsg_nxthdr.exit
  %.012 = phi ptr [ %i.as, %__cmsg_nxthdr.exit ], [ %i.e, %bb.b ] ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !6
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %discard_cmsg.exit

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.012, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !6
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.d, label %discard_cmsg.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %.012, align 8, !tbaa !10  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.012, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.012, i64 20 ; 2 uses
  %i.q = icmp ugt i64 %i.n, 19
  %i.r = icmp ule ptr %i.p, %i.f
  %i.s = and i1 %i.r, %i.q
  br i1 %i.s, label %.lr.ph.preheader.i, label %discard_cmsg.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.012, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.u = phi ptr [ %i.y, %.lr.ph.i ], [ %i.p, %.lr.ph.preheader.i ] ; 2 uses
  %.013.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.t, %.lr.ph.preheader.i ] ; 2 uses
  %i.v = load i32, ptr %.013.i, align 4, !tbaa !6
  tail call void @rb_update_max_fd(i32 noundef %i.v) #9
  %i.w = load i32, ptr %.013.i, align 4, !tbaa !6
  %i.x = tail call i32 @close(i32 noundef %i.w) #9 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 3 uses
  %i.z = icmp ule ptr %i.y, %i.o
  %i.aa = icmp ule ptr %i.y, %i.f
  %i.ab = and i1 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i, label %discard_cmsg.exit, !llvm.loop !58

discard_cmsg.exit:                                ; preds = %.lr.ph.i, %.lr.ph, %bb.c, %bb.d
  %i.ac = load i64, ptr %.012, align 8, !tbaa !10 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, 16
  br i1 %i.ad, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %discard_cmsg.exit
  %i.ae = sub i64 0, %i.ac
  %i.af = and i64 %i.ae, 7
  %i.ag = or disjoint i64 %i.af, 16               ; 2 uses
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  %i.ak = ptrtoint ptr %i.aj to i64
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
  br label %.lr.ph, !llvm.loop !59

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
  store i64 4, ptr %i.b, align 8, !tbaa !10
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12   ; 8 uses
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
  br label %.outer.outer

bb.j:                                             ; preds = %rb_num2int_inline.exit
  %i.ak = load i64, ptr @rb_eIOError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ak, ptr noundef nonnull @.str.24) #11
  unreachable

bb.k:                                             ; preds = %.outer195, %bb.w
  %.0113 = phi i64 [ %.1114, %bb.w ], [ %.0113.ph197, %.outer195 ] ; 3 uses
  %.1111 = phi i32 [ %spec.select144, %bb.w ], [ %.1111.ph198, %.outer195 ] ; 2 uses
  %i.al = icmp eq i64 %.0113, 4
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = call i64 @rb_str_tmp_new(i64 noundef %.0107.ph199) #9
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.an = call i64 @rb_str_resize(i64 noundef %.0113, i64 noundef %.0107.ph199) #9 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1114 = phi i64 [ %i.am, %bb.l ], [ %.0113, %bb.m ] ; 9 uses
  %i.ao = inttoptr i64 %.1114 to ptr              ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !17
  %i.aq = and i64 %i.ap, 8192
  %.not.i = icmp eq i64 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !18
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.n, %bb.o
  %i.at = phi ptr [ %i.as, %bb.o ], [ %i.ar, %bb.n ] ; 2 uses
  %i.au = load i64, ptr %i.b, align 8, !tbaa !10  ; 3 uses
  %i.av = icmp eq i64 %i.au, 4
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %RSTRING_PTR.exit
  %i.aw = call i64 @rb_str_tmp_new(i64 noundef %.0121.ph.ph) #9 ; 2 uses
  store i64 %i.aw, ptr %i.b, align 8, !tbaa !10
  br label %bb.r

bb.q:                                             ; preds = %RSTRING_PTR.exit
  %i.ax = call i64 @rb_str_resize(i64 noundef %i.au, i64 noundef %.0121.ph.ph) #9 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ay = phi i64 [ %i.au, %bb.q ], [ %i.aw, %bb.p ]
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !17
  %i.bb = and i64 %i.ba, 8192
  %.not.i150 = icmp eq i64 %i.bb, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  br i1 %.not.i150, label %RSTRING_PTR.exit151, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !18
  br label %RSTRING_PTR.exit151

RSTRING_PTR.exit151:                              ; preds = %bb.r, %bb.s
  %i.be = phi ptr [ %i.bd, %bb.s ], [ %i.bc, %bb.r ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %11, i8 0, i64 2048, i1 false)
  store ptr %11, ptr %9, align 8, !tbaa !27
  store i32 2048, ptr %i.z, align 8, !tbaa !30
  store ptr %10, ptr %i.aa, align 8, !tbaa !32
  store i64 1, ptr %i.ab, align 8, !tbaa !31
  store ptr %i.at, ptr %10, align 8, !tbaa !33
  store i64 %.0107.ph199, ptr %i.ac, align 8, !tbaa !35
  store ptr %i.be, ptr %i.ad, align 8, !tbaa !36
  store i64 %i.dy, ptr %i.ae, align 8, !tbaa !37
  %i.bf = or i32 %.1111, 2                        ; 4 uses
  %spec.select144 = select i1 %.not130, i32 %.1111, i32 %i.bf ; 5 uses
  call void @rb_io_check_closed(ptr noundef %i.w) #9
  %i.bg = load i32, ptr %i.af, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store i32 %i.bg, ptr %8, align 8, !tbaa !60
  store ptr %9, ptr %i.ag, align 8, !tbaa !62
  store i32 %spec.select144, ptr %i.ah, align 4, !tbaa !63
  %i.bh = call ptr @rb_thread_call_without_gvl(ptr noundef nonnull @nogvl_recvmsg_func, ptr noundef nonnull %8, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null) #9
  %i.bi = ptrtoint ptr %i.bh to i64               ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  switch i64 %i.bi, label %.loopexit201 [
    i64 0, label %bb.t
    i64 -1, label %bb.u
  ]

bb.t:                                             ; preds = %RSTRING_PTR.exit151
  %i.bj = call i32 @rsock_is_dgram(ptr noundef nonnull %i.w) #9
  %.not131 = icmp eq i32 %i.bj, 0
  br i1 %.not131, label %.loopexit, label %.loopexit201

bb.u:                                             ; preds = %RSTRING_PTR.exit151
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = call ptr @rb_errno_ptr() #9
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !6
  %i.bm = load i64, ptr %i.w, align 8, !tbaa !56
  %i.bn = call i32 @rb_io_maybe_wait_readable(i32 noundef %i.bl, i64 noundef %i.bm, i64 noundef 4) #9
  %.not142 = icmp eq i32 %i.bn, 0
  br i1 %.not142, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @rb_io_check_closed(ptr noundef nonnull %i.w) #9
  br label %bb.k

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bo = call ptr @rb_errno_ptr() #9
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !6  ; 3 uses
  %i.bq = icmp eq i32 %i.bp, 11
  %or.cond = select i1 %.not, i1 %i.bq, i1 false
  br i1 %or.cond, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.br = icmp eq i64 %5, 0
  br i1 %i.br, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bs = load i64, ptr @sym_wait_readable, align 8, !tbaa !10
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  call void @rb_readwrite_syserr_fail(i32 noundef 0, i32 noundef 11, ptr noundef nonnull @.str.25) #11
  unreachable

bb.ab:                                            ; preds = %bb.x
  %.not143 = icmp eq i32 %.0120.ph196, 0
  br i1 %.not143, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  switch i32 %i.bp, label %bb.ad [
    i32 90, label %rsock_discard_cmsg_resource.exit.thread
    i32 24, label %rsock_discard_cmsg_resource.exit.thread
  ]

rsock_discard_cmsg_resource.exit.thread:          ; preds = %discard_cmsg.exit.i, %bb.ar, %bb.ao, %bb.an, %bb.ac, %bb.ac
  %.1108 = phi i64 [ %.0107.ph199, %bb.ac ], [ %.0107.ph199, %bb.ac ], [ %.2109, %bb.ao ], [ %.2109, %bb.an ], [ %.2109, %bb.ar ], [ %.2109, %discard_cmsg.exit.i ]
  %.1 = phi i32 [ %.0106.ph200, %bb.ac ], [ %.0106.ph200, %bb.ac ], [ 1, %bb.ao ], [ 1, %bb.an ], [ 1, %bb.ar ], [ 1, %discard_cmsg.exit.i ]
  call void @rb_gc() #9
  br label %.outer195

.outer195:                                        ; preds = %.outer, %rsock_discard_cmsg_resource.exit.thread
  %.0120.ph196 = phi i32 [ %.0120.ph, %.outer ], [ 1, %rsock_discard_cmsg_resource.exit.thread ] ; 4 uses
  %.0113.ph197 = phi i64 [ %.0113.ph, %.outer ], [ %.1114, %rsock_discard_cmsg_resource.exit.thread ]
  %.1111.ph198 = phi i32 [ %.1111.ph, %.outer ], [ %spec.select144, %rsock_discard_cmsg_resource.exit.thread ]
  %.0107.ph199 = phi i64 [ %.0107.ph, %.outer ], [ %.1108, %rsock_discard_cmsg_resource.exit.thread ] ; 8 uses
  %.0106.ph200 = phi i32 [ %.0106.ph, %.outer ], [ %.1, %rsock_discard_cmsg_resource.exit.thread ] ; 3 uses
  %.not130 = icmp eq i32 %.0106.ph200, 0          ; 2 uses
  br label %bb.k

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @rb_syserr_fail(i32 noundef %i.bp, ptr noundef nonnull @.str.26) #11
  unreachable

.loopexit201:                                     ; preds = %RSTRING_PTR.exit151, %bb.t
  br i1 %.not130, label %rsock_discard_cmsg_resource.exit.thread187, label %bb.ae

bb.ae:                                            ; preds = %.loopexit201
  %i.bt = load i64, ptr %i.ac, align 8
  %i.bu = icmp eq i64 %i.bt, %i.bi
  %or.cond146 = select i1 %i.d, i1 %i.bu, i1 false ; 2 uses
  br i1 %or.cond146, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.bv = icmp slt i64 %.0107.ph199, 0
  br i1 %i.bv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bw = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bw, ptr noundef nonnull @.str.27) #11
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.bx = shl nuw i64 %.0107.ph199, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.2109 = phi i64 [ %i.bx, %bb.ah ], [ %.0107.ph199, %bb.ae ] ; 6 uses
  br i1 %i.i, label %bb.aj, label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.by = load i32, ptr %i.ai, align 8, !tbaa !64
  %i.bz = and i32 %i.by, 8
  %.not132 = icmp eq i32 %i.bz, 0
  br i1 %.not132, label %bb.au, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.dz, label %bb.al, label %.thread178

bb.al:                                            ; preds = %bb.ak
  %i.ca = load i64, ptr %i.ae, align 8, !tbaa !37 ; 4 uses
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = icmp ugt i32 %i.eb, %i.cb
  br i1 %i.cc, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %.not133 = icmp eq i32 %.0120.ph196, 0
  br i1 %.not133, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.cd = icmp eq i64 %i.ca, 0
  br i1 %i.cd, label %rsock_discard_cmsg_resource.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ca ; 2 uses
  %i.cg = icmp ult i64 %i.ca, 16
  %.not1116.i = icmp eq ptr %i.ce, null
  %.not11.i = select i1 %i.cg, i1 true, i1 %.not1116.i
  br i1 %.not11.i, label %rsock_discard_cmsg_resource.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ao, %__cmsg_nxthdr.exit.i
  %.012.i = phi ptr [ %i.ds, %__cmsg_nxthdr.exit.i ], [ %i.ce, %bb.ao ] ; 9 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !6
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.ap, label %discard_cmsg.exit.i

bb.ap:                                            ; preds = %.lr.ph.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !6
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.aq, label %discard_cmsg.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.cn = load i64, ptr %.012.i, align 8, !tbaa !10 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i, i64 20 ; 2 uses
  %i.cq = icmp ugt i64 %i.cn, 19
  %i.cr = icmp ule ptr %i.cp, %i.cf
  %i.cs = and i1 %i.cr, %i.cq
  br i1 %i.cs, label %.lr.ph.preheader.i.i, label %discard_cmsg.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.aq
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.cu = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %i.cp, %.lr.ph.preheader.i.i ] ; 2 uses
  %.013.i.i = phi ptr [ %i.cu, %.lr.ph.i.i ], [ %i.ct, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.cv = load i32, ptr %.013.i.i, align 4, !tbaa !6
  call void @rb_update_max_fd(i32 noundef %i.cv) #9
  %i.cw = load i32, ptr %.013.i.i, align 4, !tbaa !6
  %i.cx = call i32 @close(i32 noundef %i.cw) #9   ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 3 uses
  %i.cz = icmp ule ptr %i.cy, %i.co
  %i.da = icmp ule ptr %i.cy, %i.cf
  %i.db = and i1 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph.i.i, label %discard_cmsg.exit.i, !llvm.loop !58

discard_cmsg.exit.i:                              ; preds = %.lr.ph.i.i, %bb.aq, %bb.ap, %.lr.ph.i
  %i.dc = load i64, ptr %.012.i, align 8, !tbaa !10 ; 4 uses
  %i.dd = icmp ult i64 %i.dc, 16
  br i1 %i.dd, label %rsock_discard_cmsg_resource.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %discard_cmsg.exit.i
  %i.de = sub i64 0, %i.dc
  %i.df = and i64 %i.de, 7
  %i.dg = or disjoint i64 %i.df, 16               ; 2 uses
  %i.dh = load ptr, ptr %i.ad, align 8, !tbaa !36
  %i.di = load i64, ptr %i.ae, align 8, !tbaa !37
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
  %i.dt = icmp slt i64 %.0121.ph.ph, 0
  br i1 %i.dt, label %bb.at, label %.thread178

bb.at:                                            ; preds = %bb.as
  %i.du = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.du, ptr noundef nonnull @.str.28) #11
  unreachable

.thread178:                                       ; preds = %bb.ak, %bb.as
  %i.dv = shl nuw i64 %.0121.ph.ph, 1
  br label %.loopexit566

bb.au:                                            ; preds = %bb.am, %bb.aj, %bb.ai
  br i1 %or.cond146, label %.loopexit566, label %bb.az

.loopexit566:                                     ; preds = %bb.au, %.thread178
  %.2123182 = phi i64 [ %i.dv, %.thread178 ], [ %.0121.ph.ph, %bb.au ]
  %i.dw = load i64, ptr %i.ae, align 8, !tbaa !37 ; 3 uses
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %.outer.outer.backedge, label %bb.av

.outer.outer.backedge:                            ; preds = %discard_cmsg.exit.i156, %bb.ay, %.loopexit566, %bb.av
  %.1111.ph.ph.be = phi i32 [ %i.bf, %.loopexit566 ], [ %i.bf, %bb.av ], [ %spec.select144, %bb.ay ], [ %spec.select144, %discard_cmsg.exit.i156 ]
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %.preheader
  %.0121.ph.ph = phi i64 [ %i.m, %.preheader ], [ %.2123182, %.outer.outer.backedge ] ; 8 uses
  %.0120.ph.ph = phi i32 [ 0, %.preheader ], [ %.0120.ph196, %.outer.outer.backedge ]
  %.0113.ph.ph = phi i64 [ 4, %.preheader ], [ %.1114, %.outer.outer.backedge ]
  %.1111.ph.ph = phi i32 [ %spec.select, %.preheader ], [ %.1111.ph.ph.be, %.outer.outer.backedge ]
  %.0107.ph.ph = phi i64 [ %i.h, %.preheader ], [ %.2109, %.outer.outer.backedge ]
  %.0106.ph.ph = phi i32 [ %i.y, %.preheader ], [ 1, %.outer.outer.backedge ]
  %i.dy = and i64 %.0121.ph.ph, 4294967295
  %i.dz = icmp ugt i64 %.0121.ph.ph, 65536
  %i.ea = trunc i64 %.0121.ph.ph to i32
  %i.eb = add i32 %i.ea, -65536
  br label %.outer

bb.av:                                            ; preds = %.loopexit566
  %i.ec = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dw ; 2 uses
  %i.ee = icmp ult i64 %i.dw, 16
  %.not1116.i152 = icmp eq ptr %i.ec, null
  %.not11.i153 = select i1 %i.ee, i1 true, i1 %.not1116.i152
  br i1 %.not11.i153, label %.outer.outer.backedge, label %.lr.ph.i154

.lr.ph.i154:                                      ; preds = %bb.av, %__cmsg_nxthdr.exit.i158
  %.012.i155 = phi ptr [ %i.fq, %__cmsg_nxthdr.exit.i158 ], [ %i.ec, %bb.av ] ; 9 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i155, i64 8
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !6
  %i.eh = icmp eq i32 %i.eg, 1
  br i1 %i.eh, label %bb.aw, label %discard_cmsg.exit.i156

bb.aw:                                            ; preds = %.lr.ph.i154
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i155, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !6
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %bb.ax, label %discard_cmsg.exit.i156

bb.ax:                                            ; preds = %bb.aw
  %i.el = load i64, ptr %.012.i155, align 8, !tbaa !10 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.012.i155, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %.012.i155, i64 20 ; 2 uses
  %i.eo = icmp ugt i64 %i.el, 19
  %i.ep = icmp ule ptr %i.en, %i.ed
  %i.eq = and i1 %i.ep, %i.eo
  br i1 %i.eq, label %.lr.ph.preheader.i.i159, label %discard_cmsg.exit.i156

.lr.ph.preheader.i.i159:                          ; preds = %bb.ax
  %i.er = getelementptr inbounds nuw i8, ptr %.012.i155, i64 16
  br label %.lr.ph.i.i160

.lr.ph.i.i160:                                    ; preds = %.lr.ph.i.i160, %.lr.ph.preheader.i.i159
  %i.es = phi ptr [ %i.ew, %.lr.ph.i.i160 ], [ %i.en, %.lr.ph.preheader.i.i159 ] ; 2 uses
  %.013.i.i161 = phi ptr [ %i.es, %.lr.ph.i.i160 ], [ %i.er, %.lr.ph.preheader.i.i159 ] ; 2 uses
  %i.et = load i32, ptr %.013.i.i161, align 4, !tbaa !6
  call void @rb_update_max_fd(i32 noundef %i.et) #9
  %i.eu = load i32, ptr %.013.i.i161, align 4, !tbaa !6
  %i.ev = call i32 @close(i32 noundef %i.eu) #9   ; 0 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 4 ; 3 uses
  %i.ex = icmp ule ptr %i.ew, %i.em
  %i.ey = icmp ule ptr %i.ew, %i.ed
  %i.ez = and i1 %i.ex, %i.ey
  br i1 %i.ez, label %.lr.ph.i.i160, label %discard_cmsg.exit.i156, !llvm.loop !58

discard_cmsg.exit.i156:                           ; preds = %.lr.ph.i.i160, %bb.ax, %bb.aw, %.lr.ph.i154
  %i.fa = load i64, ptr %.012.i155, align 8, !tbaa !10 ; 4 uses
  %i.fb = icmp ult i64 %i.fa, 16
  br i1 %i.fb, label %.outer.outer.backedge, label %bb.ay

bb.ay:                                            ; preds = %discard_cmsg.exit.i156
  %i.fc = sub i64 0, %i.fa
  %i.fd = and i64 %i.fc, 7
  %i.fe = or disjoint i64 %i.fd, 16               ; 2 uses
  %i.ff = load ptr, ptr %i.ad, align 8, !tbaa !36
  %i.fg = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %.012.i155 to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fe
  %i.fm = sub nuw i64 %i.fk, %i.fe
  %i.fn = icmp ult i64 %i.fm, %i.fa
  %or.cond.i.i157 = select i1 %i.fl, i1 true, i1 %i.fn
  br i1 %or.cond.i.i157, label %.outer.outer.backedge, label %__cmsg_nxthdr.exit.i158

__cmsg_nxthdr.exit.i158:                          ; preds = %bb.ay
  %i.fo = add nuw i64 %i.fa, 7
  %i.fp = and i64 %i.fo, -8
  %i.fq = getelementptr inbounds nuw i8, ptr %.012.i155, i64 %i.fp
  br label %.lr.ph.i154

bb.az:                                            ; preds = %bb.au
  %.not135 = icmp eq i32 %i.bf, %spec.select
  br i1 %.not135, label %rsock_discard_cmsg_resource.exit.thread187, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fr = load i64, ptr %i.ae, align 8, !tbaa !37 ; 3 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %.outer.backedge, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ft = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fr ; 2 uses
  %i.fv = icmp ult i64 %i.fr, 16
  %.not1116.i163 = icmp eq ptr %i.ft, null
  %.not11.i164 = select i1 %i.fv, i1 true, i1 %.not1116.i163
  br i1 %.not11.i164, label %.outer.backedge, label %.lr.ph.i165

.outer.backedge:                                  ; preds = %discard_cmsg.exit.i167, %bb.be, %bb.bb, %bb.ba
  br label %.outer

.lr.ph.i165:                                      ; preds = %bb.bb, %__cmsg_nxthdr.exit.i169
  %.012.i166 = phi ptr [ %i.hh, %__cmsg_nxthdr.exit.i169 ], [ %i.ft, %bb.bb ] ; 9 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.012.i166, i64 8
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !6
  %i.fy = icmp eq i32 %i.fx, 1
  br i1 %i.fy, label %bb.bc, label %discard_cmsg.exit.i167

bb.bc:                                            ; preds = %.lr.ph.i165
  %i.fz = getelementptr inbounds nuw i8, ptr %.012.i166, i64 12
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !6
  %i.gb = icmp eq i32 %i.ga, 1
  br i1 %i.gb, label %bb.bd, label %discard_cmsg.exit.i167

bb.bd:                                            ; preds = %bb.bc
  %i.gc = load i64, ptr %.012.i166, align 8, !tbaa !10 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.012.i166, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %.012.i166, i64 20 ; 2 uses
  %i.gf = icmp ugt i64 %i.gc, 19
  %i.gg = icmp ule ptr %i.ge, %i.fu
  %i.gh = and i1 %i.gg, %i.gf
  br i1 %i.gh, label %.lr.ph.preheader.i.i170, label %discard_cmsg.exit.i167

.lr.ph.preheader.i.i170:                          ; preds = %bb.bd
  %i.gi = getelementptr inbounds nuw i8, ptr %.012.i166, i64 16
  br label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171, %.lr.ph.preheader.i.i170
  %i.gj = phi ptr [ %i.gn, %.lr.ph.i.i171 ], [ %i.ge, %.lr.ph.preheader.i.i170 ] ; 2 uses
  %.013.i.i172 = phi ptr [ %i.gj, %.lr.ph.i.i171 ], [ %i.gi, %.lr.ph.preheader.i.i170 ] ; 2 uses
  %i.gk = load i32, ptr %.013.i.i172, align 4, !tbaa !6
  call void @rb_update_max_fd(i32 noundef %i.gk) #9
  %i.gl = load i32, ptr %.013.i.i172, align 4, !tbaa !6
  %i.gm = call i32 @close(i32 noundef %i.gl) #9   ; 0 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 4 ; 3 uses
  %i.go = icmp ule ptr %i.gn, %i.gd
  %i.gp = icmp ule ptr %i.gn, %i.fu
  %i.gq = and i1 %i.go, %i.gp
  br i1 %i.gq, label %.lr.ph.i.i171, label %discard_cmsg.exit.i167, !llvm.loop !58

discard_cmsg.exit.i167:                           ; preds = %.lr.ph.i.i171, %bb.bd, %bb.bc, %.lr.ph.i165
  %i.gr = load i64, ptr %.012.i166, align 8, !tbaa !10 ; 4 uses
  %i.gs = icmp ult i64 %i.gr, 16
  br i1 %i.gs, label %.outer.backedge, label %bb.be

bb.be:                                            ; preds = %discard_cmsg.exit.i167
  %i.gt = sub i64 0, %i.gr
  %i.gu = and i64 %i.gt, 7
  %i.gv = or disjoint i64 %i.gu, 16               ; 2 uses
  %i.gw = load ptr, ptr %i.ad, align 8, !tbaa !36
  %i.gx = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gx
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %.012.i166 to i64
  %i.hb = sub i64 %i.gz, %i.ha                    ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.gv
  %i.hd = sub nuw i64 %i.hb, %i.gv
  %i.he = icmp ult i64 %i.hd, %i.gr
  %or.cond.i.i168 = select i1 %i.hc, i1 true, i1 %i.he
  br i1 %or.cond.i.i168, label %.outer.backedge, label %__cmsg_nxthdr.exit.i169

__cmsg_nxthdr.exit.i169:                          ; preds = %bb.be
  %i.hf = add nuw i64 %i.gr, 7
  %i.hg = and i64 %i.hf, -8
  %i.hh = getelementptr inbounds nuw i8, ptr %.012.i166, i64 %i.hg
  br label %.lr.ph.i165

.outer:                                           ; preds = %.outer.backedge, %.outer.outer
  %.0120.ph = phi i32 [ %.0120.ph.ph, %.outer.outer ], [ %.0120.ph196, %.outer.backedge ]
  %.0113.ph = phi i64 [ %.0113.ph.ph, %.outer.outer ], [ %.1114, %.outer.backedge ]
  %.1111.ph = phi i32 [ %.1111.ph.ph, %.outer.outer ], [ %spec.select, %.outer.backedge ]
  %.0107.ph = phi i64 [ %.0107.ph.ph, %.outer.outer ], [ %.2109, %.outer.backedge ]
  %.0106.ph = phi i32 [ %.0106.ph.ph, %.outer.outer ], [ 0, %.outer.backedge ]
  br label %.outer195

rsock_discard_cmsg_resource.exit.thread187:       ; preds = %bb.az, %.loopexit201
  %i.hi = icmp eq i64 %.1114, 4
  br i1 %i.hi, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %rsock_discard_cmsg_resource.exit.thread187
  %i.hj = call i64 @rb_str_new(ptr noundef %i.at, i64 noundef %i.bi) #9
  br label %bb.bh

bb.bg:                                            ; preds = %rsock_discard_cmsg_resource.exit.thread187
  %i.hk = call i64 @rb_str_resize(i64 noundef %.1114, i64 noundef %i.bi) #9 ; 0 uses
  %i.hl = load i64, ptr @rb_cString, align 8, !tbaa !10
  %i.hm = call i64 @rb_obj_reveal(i64 noundef %.1114, i64 noundef %i.hl) #9 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.2115 = phi i64 [ %i.hj, %bb.bf ], [ %.1114, %bb.bg ]
  %i.hn = load i32, ptr %i.ai, align 8, !tbaa !64
  %i.ho = sext i32 %i.hn to i64
  %i.hp = shl nsw i64 %i.ho, 1
  %i.hq = or disjoint i64 %i.hp, 1
  %i.hr = load ptr, ptr %9, align 8, !tbaa !27
  %i.hs = load i32, ptr %i.z, align 8, !tbaa !30
  %i.ht = call i64 @rsock_io_socket_addrinfo(i64 noundef %0, ptr noundef %i.hr, i32 noundef %i.hs) #9
  %i.hu = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 3, i64 noundef %.2115, i64 noundef %i.ht, i64 noundef %i.hq) #9 ; 3 uses
  %i.hv = call i32 @rsock_getfamily(ptr noundef nonnull %i.w) #9
  %i.hw = load i64, ptr %i.ae, align 8, !tbaa !37 ; 3 uses
  %.not138 = icmp eq i64 %i.hw, 0
  br i1 %.not138, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hx = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hw ; 6 uses
  %i.hz = icmp ult i64 %i.hw, 16
  %.not139301303 = icmp eq ptr %i.hx, null
  %.not139301 = select i1 %i.hz, i1 true, i1 %.not139301303
  br i1 %.not139301, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bi
  %i.ia = sext i32 %i.hv to i64
  %i.ib = shl nsw i64 %i.ia, 1
  %i.ic = or disjoint i64 %i.ib, 1
  %i.id = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ie = load i64, ptr %i.hx, align 8, !tbaa !10 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %._crit_edge, label %.lr.ph561

._crit_edge:                                      ; preds = %__cmsg_nxthdr.exit, %.lr.ph
  %i.ig = load i64, ptr @rb_eTypeError, align 8, !tbaa !10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ig, ptr noundef nonnull @.str.29) #11
  unreachable

.lr.ph561:                                        ; preds = %.lr.ph, %__cmsg_nxthdr.exit
  %i.ih = phi i64 [ %i.ls, %__cmsg_nxthdr.exit ], [ %i.ie, %.lr.ph ]
  %.0118302560 = phi ptr [ %i.lr, %__cmsg_nxthdr.exit ], [ %i.hx, %.lr.ph ] ; 13 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.0118302560, i64 %i.ih ; 2 uses
  %.not140 = icmp ugt ptr %i.ii, %i.hy
  %i.ij = select i1 %.not140, ptr %i.hy, ptr %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %.0118302560, i64 16 ; 4 uses
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %.0118302560, i64 8 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !6
  %i.iq = getelementptr inbounds nuw i8, ptr %.0118302560, i64 12 ; 3 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !6
  %i.is = call i64 @rb_str_new(ptr noundef nonnull %i.ik, i64 noundef %i.in) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.is, ptr %i.a, align 8, !tbaa !10
  %i.it = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  %i.iu = call i64 @rb_obj_alloc(i64 noundef %i.it) #9 ; 4 uses
  %i.iv = call i64 @rb_string_value(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.iw = sext i32 %i.ip to i64
  %i.ix = shl nsw i64 %i.iw, 1
  %i.iy = or disjoint i64 %i.ix, 1
  %i.iz = sext i32 %i.ir to i64
  %i.ja = shl nsw i64 %i.iz, 1
  %i.jb = or disjoint i64 %i.ja, 1
  %i.jc = load i64, ptr %i.a, align 8, !tbaa !10
  %i.jd = call i64 @ancillary_initialize(i64 noundef %i.iu, i64 noundef %i.ic, i64 noundef %i.iy, i64 noundef %i.jb, i64 noundef %i.jc) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.je = load i32, ptr %i.io, align 8, !tbaa !6
  %i.jf = icmp eq i32 %i.je, 1                    ; 2 uses
  br i1 %.not193, label %bb.br, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph561
  br i1 %i.jf, label %bb.bk, label %make_io_for_unix_rights.exit

bb.bk:                                            ; preds = %bb.bj
  %i.jg = load i32, ptr %i.iq, align 4, !tbaa !6
  %i.jh = icmp eq i32 %i.jg, 1
  br i1 %i.jh, label %bb.bl, label %make_io_for_unix_rights.exit

bb.bl:                                            ; preds = %bb.bk
  %i.ji = call i64 @rb_ary_new() #9               ; 2 uses
  %.pr.i.i = load i64, ptr @make_io_for_unix_rights.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i175, label %rbimpl_intern_const.exit.i

.lr.ph.i.i175:                                    ; preds = %bb.bl, %.lr.ph.i.i175
  %i.jj = call i64 @rb_intern2(ptr noundef nonnull @.str.9, i64 noundef 11) #9 ; 3 uses
  store i64 %i.jj, ptr @make_io_for_unix_rights.rbimpl_id, align 8, !tbaa !10
  %.not.i.i = icmp eq i64 %i.jj, 0
  br i1 %.not.i.i, label %.lr.ph.i.i175, label %rbimpl_intern_const.exit.i, !llvm.loop !19

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i175, %bb.bl
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.bl ], [ %i.jj, %.lr.ph.i.i175 ]
  %i.jk = call i64 @rb_ivar_set(i64 noundef %i.iu, i64 noundef %.lcssa.i.i, i64 noundef %i.ji) #9 ; 0 uses
  %i.jl = load i64, ptr %.0118302560, align 8, !tbaa !10 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0118302560, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %.0118302560, i64 20 ; 2 uses
  %i.jo = icmp ugt i64 %i.jl, 19
  %i.jp = icmp ule ptr %i.jn, %i.hy
  %i.jq = and i1 %i.jp, %i.jo
  br i1 %i.jq, label %.lr.ph.i174, label %._crit_edge.i

.lr.ph.i174:                                      ; preds = %rbimpl_intern_const.exit.i, %rbimpl_intern_const.exit31.i
  %i.jr = phi ptr [ %i.kg, %rbimpl_intern_const.exit31.i ], [ %i.jn, %rbimpl_intern_const.exit.i ] ; 2 uses
  %.034.i = phi ptr [ %i.jr, %rbimpl_intern_const.exit31.i ], [ %i.ik, %rbimpl_intern_const.exit.i ]
  %i.js = load i32, ptr %.034.i, align 4, !tbaa !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.jt = call i32 @fstat(i32 noundef %i.js, ptr noundef nonnull %7) #9
  %i.ju = icmp eq i32 %i.jt, -1
  br i1 %i.ju, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i174
  %i.jv = load i64, ptr @rb_eSocket, align 8, !tbaa !10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.jv, ptr noundef nonnull @.str.30) #11
  unreachable

bb.bn:                                            ; preds = %.lr.ph.i174
  call void @rb_update_max_fd(i32 noundef %i.js) #9
  call void @rb_maygvl_fd_fix_cloexec(i32 noundef %i.js) #9
  %i.jw = load i32, ptr %i.id, align 8, !tbaa !65
  %i.jx = and i32 %i.jw, 61440
  %i.jy = icmp eq i32 %i.jx, 49152
  br i1 %i.jy, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jz = load i64, ptr @rb_cSocket, align 8, !tbaa !10
  %i.ka = call i64 @rb_obj_alloc(i64 noundef %i.jz) #9
  %i.kb = call i64 @rsock_init_sock(i64 noundef %i.ka, i32 noundef %i.js) #9
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.kc = call i64 @rb_io_fdopen(i32 noundef %i.js, i32 noundef 2, ptr noundef null) #9
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.023.i = phi i64 [ %i.kb, %bb.bo ], [ %i.kc, %bb.bp ]
  %.pr.i26.i = load i64, ptr @make_io_for_unix_rights.rbimpl_id.31, align 8, !tbaa !10 ; 2 uses
  %.not4.i27.i = icmp eq i64 %.pr.i26.i, 0
  br i1 %.not4.i27.i, label %.lr.ph.i29.i, label %rbimpl_intern_const.exit31.i

.lr.ph.i29.i:                                     ; preds = %bb.bq, %.lr.ph.i29.i
  %i.kd = call i64 @rb_intern2(ptr noundef nonnull @.str.9, i64 noundef 11) #9 ; 3 uses
  store i64 %i.kd, ptr @make_io_for_unix_rights.rbimpl_id.31, align 8, !tbaa !10
  %.not.i30.i = icmp eq i64 %i.kd, 0
  br i1 %.not.i30.i, label %.lr.ph.i29.i, label %rbimpl_intern_const.exit31.i, !llvm.loop !19

rbimpl_intern_const.exit31.i:                     ; preds = %.lr.ph.i29.i, %bb.bq
  %.lcssa.i28.i = phi i64 [ %.pr.i26.i, %bb.bq ], [ %i.kd, %.lr.ph.i29.i ]
  %i.ke = call i64 @rb_attr_get(i64 noundef %i.iu, i64 noundef %.lcssa.i28.i) #9 ; 2 uses
  %i.kf = call i64 @rb_ary_push(i64 noundef %i.ke, i64 noundef %.023.i) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jr, i64 4 ; 3 uses
  %i.kh = icmp ule ptr %i.kg, %i.jm
  %i.ki = icmp ule ptr %i.kg, %i.hy
  %i.kj = and i1 %i.kh, %i.ki
  br i1 %i.kj, label %.lr.ph.i174, label %._crit_edge.i, !llvm.loop !68

._crit_edge.i:                                    ; preds = %rbimpl_intern_const.exit31.i, %rbimpl_intern_const.exit.i
  %.024.lcssa.i = phi i64 [ %i.ji, %rbimpl_intern_const.exit.i ], [ %i.ke, %rbimpl_intern_const.exit31.i ]
  call void @rb_obj_freeze_inline(i64 noundef %.024.lcssa.i) #9
  br label %make_io_for_unix_rights.exit

bb.br:                                            ; preds = %.lr.ph561
  br i1 %i.jf, label %bb.bs, label %make_io_for_unix_rights.exit

bb.bs:                                            ; preds = %bb.br
  %i.kk = load i32, ptr %i.iq, align 4, !tbaa !6
  %i.kl = icmp eq i32 %i.kk, 1
  br i1 %i.kl, label %bb.bt, label %make_io_for_unix_rights.exit

bb.bt:                                            ; preds = %bb.bs
  %i.km = load i64, ptr %.0118302560, align 8, !tbaa !10 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.0118302560, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %.0118302560, i64 20 ; 2 uses
  %i.kp = icmp ugt i64 %i.km, 19
  %i.kq = icmp ule ptr %i.ko, %i.hy
  %i.kr = and i1 %i.kq, %i.kp
  br i1 %i.kr, label %.lr.ph.i176, label %make_io_for_unix_rights.exit

.lr.ph.i176:                                      ; preds = %bb.bt, %.lr.ph.i176
  %i.ks = phi ptr [ %i.kw, %.lr.ph.i176 ], [ %i.ko, %bb.bt ] ; 2 uses
  %.013.i = phi ptr [ %i.ks, %.lr.ph.i176 ], [ %i.ik, %bb.bt ] ; 2 uses
  %i.kt = load i32, ptr %.013.i, align 4, !tbaa !6
  call void @rb_update_max_fd(i32 noundef %i.kt) #9
  %i.ku = load i32, ptr %.013.i, align 4, !tbaa !6
  %i.kv = call i32 @close(i32 noundef %i.ku) #9   ; 0 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 4 ; 3 uses
  %i.kx = icmp ule ptr %i.kw, %i.kn
  %i.ky = icmp ule ptr %i.kw, %i.hy
  %i.kz = and i1 %i.kx, %i.ky
  br i1 %i.kz, label %.lr.ph.i176, label %make_io_for_unix_rights.exit, !llvm.loop !58

make_io_for_unix_rights.exit:                     ; preds = %.lr.ph.i176, %bb.bt, %bb.bs, %bb.br, %._crit_edge.i, %bb.bk, %bb.bj
  %i.la = call i64 @rb_ary_push(i64 noundef %i.hu, i64 noundef %i.iu) #9 ; 0 uses
  %i.lb = load i64, ptr %.0118302560, align 8, !tbaa !10 ; 4 uses
  %i.lc = icmp ult i64 %i.lb, 16
  br i1 %i.lc, label %select.unfold._crit_edge, label %bb.bu

bb.bu:                                            ; preds = %make_io_for_unix_rights.exit
  %i.ld = sub i64 0, %i.lb
  %i.le = and i64 %i.ld, 7
  %i.lf = or disjoint i64 %i.le, 16               ; 2 uses
  %i.lg = load ptr, ptr %i.ad, align 8, !tbaa !36
  %i.lh = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lh
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = ptrtoint ptr %.0118302560 to i64
  %i.ll = sub i64 %i.lj, %i.lk                    ; 2 uses
  %i.lm = icmp ult i64 %i.ll, %i.lf
  %i.ln = sub nuw i64 %i.ll, %i.lf
  %i.lo = icmp ult i64 %i.ln, %i.lb
  %or.cond.i = select i1 %i.lm, i1 true, i1 %i.lo
  br i1 %or.cond.i, label %select.unfold._crit_edge, label %__cmsg_nxthdr.exit

__cmsg_nxthdr.exit:                               ; preds = %bb.bu
  %i.lp = add nuw i64 %i.lb, 7
  %i.lq = and i64 %i.lp, -8
  %i.lr = getelementptr inbounds nuw i8, ptr %.0118302560, i64 %i.lq ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !10 ; 2 uses
  %i.lt = icmp eq i64 %i.ls, 0
  br i1 %i.lt, label %._crit_edge, label %.lr.ph561, !llvm.loop !69

select.unfold._crit_edge:                         ; preds = %bb.bu, %make_io_for_unix_rights.exit, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store ptr %i.b, ptr %i.c, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #9, !srcloc !70
  %i.lu = load ptr, ptr %i.c, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.lv = load volatile i64, ptr %i.lu, align 8, !tbaa !10 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %bb.bh, %select.unfold._crit_edge, %bb.z
  %.0 = phi i64 [ %i.bs, %bb.z ], [ %i.hu, %bb.bh ], [ %i.hu, %select.unfold._crit_edge ], [ 4, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @rsock_bsock_recvmsg_nonblock(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @bsock_recvmsg_internal(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define void @rsock_init_ancdata() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cSocket, align 8, !tbaa !10
  %i.b = load i64, ptr @rb_cObject, align 8, !tbaa !10
  %i.c = tail call i64 @rb_define_class_under(i64 noundef %i.a, ptr noundef nonnull @.str, i64 noundef %i.b) #9 ; 2 uses
  store i64 %i.c, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.c, ptr noundef nonnull @.str.1, ptr noundef nonnull @ancillary_initialize, i32 noundef 4) #9
  %i.d = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.d, ptr noundef nonnull @.str.2, ptr noundef nonnull @ancillary_inspect, i32 noundef 0) #9
  %i.e = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.e, ptr noundef nonnull @.str.3, ptr noundef nonnull @ancillary_family_m, i32 noundef 0) #9
  %i.f = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.f, ptr noundef nonnull @.str.4, ptr noundef nonnull @ancillary_level_m, i32 noundef 0) #9
  %i.g = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.g, ptr noundef nonnull @.str.5, ptr noundef nonnull @ancillary_type_m, i32 noundef 0) #9
  %i.h = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.h, ptr noundef nonnull @.str.6, ptr noundef nonnull @ancillary_data, i32 noundef 0) #9
  %i.i = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @ancillary_cmsg_is_p, i32 noundef 2) #9
  %i.j = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_singleton_method(i64 noundef %i.j, ptr noundef nonnull @.str.8, ptr noundef nonnull @ancillary_s_int, i32 noundef 4) #9
  %i.k = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.k, ptr noundef nonnull @.str.8, ptr noundef nonnull @ancillary_int, i32 noundef 0) #9
  %i.l = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_singleton_method(i64 noundef %i.l, ptr noundef nonnull @.str.9, ptr noundef nonnull @ancillary_s_unix_rights, i32 noundef -1) #9
  %i.m = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.m, ptr noundef nonnull @.str.9, ptr noundef nonnull @ancillary_unix_rights, i32 noundef 0) #9
  %i.n = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.n, ptr noundef nonnull @.str.10, ptr noundef nonnull @ancillary_timestamp, i32 noundef 0) #9
  %i.o = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_singleton_method(i64 noundef %i.o, ptr noundef nonnull @.str.11, ptr noundef nonnull @ancillary_s_ip_pktinfo, i32 noundef -1) #9
  %i.p = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.p, ptr noundef nonnull @.str.11, ptr noundef nonnull @ancillary_ip_pktinfo, i32 noundef 0) #9
  %i.q = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_singleton_method(i64 noundef %i.q, ptr noundef nonnull @.str.12, ptr noundef nonnull @ancillary_s_ipv6_pktinfo, i32 noundef 2) #9
  %i.r = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.r, ptr noundef nonnull @.str.12, ptr noundef nonnull @ancillary_ipv6_pktinfo, i32 noundef 0) #9
  %i.s = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.s, ptr noundef nonnull @.str.13, ptr noundef nonnull @ancillary_ipv6_pktinfo_addr, i32 noundef 0) #9
  %i.t = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.t, ptr noundef nonnull @.str.14, ptr noundef nonnull @ancillary_ipv6_pktinfo_ifindex, i32 noundef 0) #9
  %i.u = tail call i64 @rb_intern(ptr noundef nonnull @.str.15) #9
  %i.v = tail call i64 @rb_id2sym(i64 noundef %i.u) #9
  store i64 %i.v, ptr @sym_wait_readable, align 8, !tbaa !10
  %i.w = tail call i64 @rb_intern(ptr noundef nonnull @.str.16) #9
  %i.x = tail call i64 @rb_id2sym(i64 noundef %i.w) #9
  store i64 %i.x, ptr @sym_wait_writable, align 8, !tbaa !10
  ret void
}

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i64 @ancillary_initialize(i64 noundef returned %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %4, ptr %i.a, align 8, !tbaa !10
  %i.b = tail call i32 @rsock_family_arg(i64 noundef %1) #9 ; 3 uses
  %i.c = tail call i32 @rsock_level_arg(i32 noundef %i.b, i64 noundef %2) #9 ; 2 uses
  %i.d = tail call i32 @rsock_cmsg_type_arg(i32 noundef %i.b, i32 noundef %i.c, i64 noundef %3) #9
  %i.e = call i64 @rb_string_value(ptr noundef nonnull %i.a) #9 ; 0 uses
  %.pr.i = load i64, ptr @ancillary_initialize.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.f = call i64 @rb_intern2(ptr noundef nonnull @.str.3, i64 noundef 6) #9 ; 3 uses
  store i64 %i.f, ptr @ancillary_initialize.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !19

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.f, %.lr.ph.i ]
  %i.g = sext i32 %i.b to i64
  %i.h = shl nsw i64 %i.g, 1
  %i.i = or disjoint i64 %i.h, 1
  %i.j = call i64 @rb_ivar_set(i64 noundef %0, i64 noundef %.lcssa.i, i64 noundef %i.i) #9 ; 0 uses
  %.pr.i18 = load i64, ptr @ancillary_initialize.rbimpl_id.32, align 8, !tbaa !10 ; 2 uses
  %.not4.i19 = icmp eq i64 %.pr.i18, 0
  br i1 %.not4.i19, label %.lr.ph.i21, label %rbimpl_intern_const.exit23

.lr.ph.i21:                                       ; preds = %rbimpl_intern_const.exit, %.lr.ph.i21
  %i.k = call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 5) #9 ; 3 uses
  store i64 %i.k, ptr @ancillary_initialize.rbimpl_id.32, align 8, !tbaa !10
  %.not.i22 = icmp eq i64 %i.k, 0
  br i1 %.not.i22, label %.lr.ph.i21, label %rbimpl_intern_const.exit23, !llvm.loop !19

rbimpl_intern_const.exit23:                       ; preds = %.lr.ph.i21, %rbimpl_intern_const.exit
  %.lcssa.i20 = phi i64 [ %.pr.i18, %rbimpl_intern_const.exit ], [ %i.k, %.lr.ph.i21 ]
  %i.l = sext i32 %i.c to i64
  %i.m = shl nsw i64 %i.l, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = call i64 @rb_ivar_set(i64 noundef %0, i64 noundef %.lcssa.i20, i64 noundef %i.n) #9 ; 0 uses
  %.pr.i24 = load i64, ptr @ancillary_initialize.rbimpl_id.33, align 8, !tbaa !10 ; 2 uses
  %.not4.i25 = icmp eq i64 %.pr.i24, 0
  br i1 %.not4.i25, label %.lr.ph.i27, label %rbimpl_intern_const.exit29

.lr.ph.i27:                                       ; preds = %rbimpl_intern_const.exit23, %.lr.ph.i27
  %i.p = call i64 @rb_intern2(ptr noundef nonnull @.str.5, i64 noundef 4) #9 ; 3 uses
  store i64 %i.p, ptr @ancillary_initialize.rbimpl_id.33, align 8, !tbaa !10
  %.not.i28 = icmp eq i64 %i.p, 0
  br i1 %.not.i28, label %.lr.ph.i27, label %rbimpl_intern_const.exit29, !llvm.loop !19

rbimpl_intern_const.exit29:                       ; preds = %.lr.ph.i27, %rbimpl_intern_const.exit23
  %.lcssa.i26 = phi i64 [ %.pr.i24, %rbimpl_intern_const.exit23 ], [ %i.p, %.lr.ph.i27 ]
  %i.q = sext i32 %i.d to i64
  %i.r = shl nsw i64 %i.q, 1
  %i.s = or disjoint i64 %i.r, 1
  %i.t = call i64 @rb_ivar_set(i64 noundef %0, i64 noundef %.lcssa.i26, i64 noundef %i.s) #9 ; 0 uses
  %.pr.i30 = load i64, ptr @ancillary_initialize.rbimpl_id.34, align 8, !tbaa !10 ; 2 uses
  %.not4.i31 = icmp eq i64 %.pr.i30, 0
  br i1 %.not4.i31, label %.lr.ph.i33, label %rbimpl_intern_const.exit35

.lr.ph.i33:                                       ; preds = %rbimpl_intern_const.exit29, %.lr.ph.i33
  %i.u = call i64 @rb_intern2(ptr noundef nonnull @.str.6, i64 noundef 4) #9 ; 3 uses
  store i64 %i.u, ptr @ancillary_initialize.rbimpl_id.34, align 8, !tbaa !10
  %.not.i34 = icmp eq i64 %i.u, 0
  br i1 %.not.i34, label %.lr.ph.i33, label %rbimpl_intern_const.exit35, !llvm.loop !19

rbimpl_intern_const.exit35:                       ; preds = %.lr.ph.i33, %rbimpl_intern_const.exit29
  %.lcssa.i32 = phi i64 [ %.pr.i30, %rbimpl_intern_const.exit29 ], [ %i.u, %.lr.ph.i33 ]
  %i.v = load i64, ptr %i.a, align 8, !tbaa !10
  %i.w = call i64 @rb_ivar_set(i64 noundef %0, i64 noundef %.lcssa.i32, i64 noundef %i.v) #9 ; 0 uses
  ret i64 %0
}
end_hunk_0
