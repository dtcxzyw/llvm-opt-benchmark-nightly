inline.NumInlined: 213
inline.NumDeleted: 54
begin_hunk_0_@bsock_sendmsg_internal:bb.a
  %.not.i99 = icmp eq i64 %i.dt, 0
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  br i1 %.not.i99, label %RSTRING_PTR.exit100, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !18
  br label %RSTRING_PTR.exit100

RSTRING_PTR.exit100:                              ; preds = %bb.aa, %bb.ab
  %i.dw = phi ptr [ %i.dv, %bb.ab ], [ %i.du, %bb.aa ]
  store ptr %i.dw, ptr %8, align 8, !tbaa !27
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !21 ; 3 uses
  %i.dz = add i64 %i.dy, 2147483648
  %.not.i.i101 = icmp ult i64 %i.dz, 4294967296
  br i1 %.not.i.i101, label %RSTRING_LENINT.exit, label %bb.ac

bb.ac:                                            ; preds = %RSTRING_PTR.exit100
  call void @rb_out_of_int(i64 noundef %i.dy) #11
  unreachable

RSTRING_LENINT.exit:                              ; preds = %RSTRING_PTR.exit100
  %i.ea = trunc nsw i64 %i.dy to i32
  store i32 %i.ea, ptr %i.dd, align 8, !tbaa !30
  br label %bb.ad

bb.ad:                                            ; preds = %RSTRING_LENINT.exit, %bb.z
  store i64 1, ptr %i.de, align 8, !tbaa !31
  store ptr %9, ptr %i.df, align 8, !tbaa !32
  %i.eb = load i64, ptr %i.dg, align 8, !tbaa !17
  %i.ec = and i64 %i.eb, 8192
  %.not.i102 = icmp eq i64 %i.ec, 0
  br i1 %.not.i102, label %RSTRING_PTR.exit103, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = load ptr, ptr %i.dh, align 8, !tbaa !18
  br label %RSTRING_PTR.exit103

RSTRING_PTR.exit103:                              ; preds = %bb.ad, %bb.ae
  %i.ee = phi ptr [ %i.ed, %bb.ae ], [ %i.dh, %bb.ad ]
  store ptr %i.ee, ptr %9, align 8, !tbaa !33
  %i.ef = load i64, ptr %i.di, align 8, !tbaa !21
  store i64 %i.ef, ptr %i.dj, align 8, !tbaa !35
  %i.eg = load i64, ptr %i.d, align 8, !tbaa !10  ; 2 uses
  %.not75 = icmp eq i64 %i.eg, 0
  br i1 %.not75, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %RSTRING_PTR.exit103
  %i.eh = inttoptr i64 %i.eg to ptr               ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !17
  %i.ej = and i64 %i.ei, 8192
  %.not.i104 = icmp eq i64 %i.ej, 0
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 2 uses
  br i1 %.not.i104, label %RSTRING_PTR.exit105, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !18
  br label %RSTRING_PTR.exit105

RSTRING_PTR.exit105:                              ; preds = %bb.af, %bb.ag
  %i.em = phi ptr [ %i.el, %bb.ag ], [ %i.ek, %bb.af ]
  store ptr %i.em, ptr %i.dk, align 8, !tbaa !36
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !21 ; 3 uses
  %i.ep = add i64 %i.eo, 2147483648
  %.not.i.i106 = icmp ult i64 %i.ep, 4294967296
  br i1 %.not.i.i106, label %RSTRING_LENINT.exit107, label %bb.ah

bb.ah:                                            ; preds = %RSTRING_PTR.exit105
  call void @rb_out_of_int(i64 noundef %i.eo) #11
  unreachable

RSTRING_LENINT.exit107:                           ; preds = %RSTRING_PTR.exit105
  %i.eq = and i64 %i.eo, 4294967295
  store i64 %i.eq, ptr %i.dl, align 8, !tbaa !37
  br label %bb.ai

bb.ai:                                            ; preds = %RSTRING_LENINT.exit107, %RSTRING_PTR.exit103
  call void @rb_io_check_closed(ptr noundef %i.k) #10
  %i.er = load i32, ptr %i.dm, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i32 %i.er, ptr %7, align 8, !tbaa !51
  store ptr %8, ptr %i.dn, align 8, !tbaa !54
  store i32 %spec.select, ptr %i.do, align 4, !tbaa !55
  %i.es = call ptr @rb_thread_call_without_gvl(ptr noundef nonnull @nogvl_sendmsg_func, ptr noundef nonnull %7, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null) #10 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.et = icmp eq ptr %i.es, inttoptr (i64 -1 to ptr)
  br i1 %i.et, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not74, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eu = call ptr @rb_errno_ptr() #10
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !6
  %i.ew = load i64, ptr %i.k, align 8, !tbaa !56
  %i.ex = call i32 @rb_io_maybe_wait_writable(i32 noundef %i.ev, i64 noundef %i.ew, i64 noundef 4) #10
  %.not76 = icmp eq i32 %i.ex, 0
  br i1 %.not76, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ey = call ptr @rb_errno_ptr() #10
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !6  ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 11
  %or.cond = select i1 %.not74, i1 %i.fa, i1 false
  br i1 %or.cond, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fb = icmp eq i64 %5, 0
  br i1 %i.fb, label %.thread, label %bb.an

.thread:                                          ; preds = %bb.am
  %i.fc = load i64, ptr @sym_wait_writable, align 8, !tbaa !10
  br label %rb_ll2num_inline.exit

bb.an:                                            ; preds = %bb.am
  call void @rb_readwrite_syserr_fail(i32 noundef 1, i32 noundef 11, ptr noundef nonnull @.str.22) #12
  unreachable

bb.ao:                                            ; preds = %bb.al
  call void @rb_syserr_fail(i32 noundef %i.ez, ptr noundef nonnull @.str.23) #12
  unreachable

bb.ap:                                            ; preds = %bb.ak
  call void @rb_io_check_closed(ptr noundef nonnull %i.k) #10
  br label %bb.z

bb.aq:                                            ; preds = %bb.ai
  %i.fd = ptrtoint ptr %i.es to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  store ptr %i.d, ptr %i.g, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.g) #10, !srcloc !57
  %i.fe = load ptr, ptr %i.g, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  %i.ff = load volatile i64, ptr %i.fe, align 8, !tbaa !10 ; 0 uses
  %i.fg = load i64, ptr %i.a, align 8, !tbaa !10
  call void @rb_str_tmp_frozen_release(i64 noundef %i.fg, i64 noundef %i.o) #10
  %i.fh = add i64 %i.fd, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.fh, -1
  br i1 %or.cond.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fi = shl nsw i64 %i.fd, 1
  %i.fj = or disjoint i64 %i.fi, 1
  br label %rb_ll2num_inline.exit

bb.as:                                            ; preds = %bb.aq
  %i.fk = call i64 @rb_ll2inum(i64 noundef range(i64 0, -1) %i.fd) #10
  br label %rb_ll2num_inline.exit

rb_ll2num_inline.exit:                            ; preds = %bb.as, %bb.ar, %.thread
  %.2 = phi i64 [ %i.fc, %.thread ], [ %i.fj, %bb.ar ], [ %i.fk, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
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
  %i.d = tail call i64 @recvmsg(i32 noundef %0, ptr noundef %1, i32 noundef %i.a) #10 ; 2 uses
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
define void @rsock_discard_cmsg_resource(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37
  %.fr = freeze i64 %i.b                          ; 3 uses
  %i.c = icmp eq i64 %.fr, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.fr ; 2 uses
  %i.g = icmp ult i64 %.fr, 16
  %.not1115 = icmp eq ptr %i.e, null
  %.not11 = select i1 %i.g, i1 true, i1 %.not1115
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
  tail call void @rb_update_max_fd(i32 noundef %i.v) #10
  %i.w = load i32, ptr %.013.i, align 4, !tbaa !6
  %i.x = tail call i32 @close(i32 noundef %i.w) #10 ; 0 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
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
  %i.g = tail call i64 @rb_num2ull(i64 noundef %1) #10
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
  %i.l = tail call i64 @rb_num2ull(i64 noundef %3) #10
  br label %rb_num2ull_inline.exit148

rb_num2ull_inline.exit148:                        ; preds = %bb.g, %bb.f, %rb_num2ull_inline.exit
  %i.m = phi i64 [ 4096, %rb_num2ull_inline.exit ], [ %i.k, %bb.f ], [ %i.l, %bb.g ]
  %i.n = trunc i64 %2 to i1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_num2ull_inline.exit148
  %i.o = tail call i64 @rb_fix2int(i64 noundef %2) #10
  br label %rb_num2int_inline.exit

bb.i:                                             ; preds = %rb_num2ull_inline.exit148
  %i.p = tail call i64 @rb_num2int(i64 noundef %2) #10
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.h, %bb.i
  %.0.i149 = phi i64 [ %i.o, %bb.h ], [ %i.p, %bb.i ]
  %i.q = trunc i64 %.0.i149 to i32                ; 2 uses
  %.not = icmp ne i32 %6, 0                       ; 3 uses
  %i.r = or i32 %i.q, 64
  %spec.select = select i1 %.not, i32 %i.r, i32 %i.q ; 3 uses
  %i.s = and i64 %4, -5
  %.not195 = icmp eq i64 %i.s, 0
  %i.t = tail call i64 @rb_io_taint_check(i64 noundef %0) #10
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12   ; 8 uses
  tail call void @rb_io_check_closed(ptr noundef %i.w) #10
  %i.x = tail call i32 @rb_io_read_pending(ptr noundef %i.w) #13
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
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ak, ptr noundef nonnull @.str.24) #12
  unreachable

bb.k:                                             ; preds = %.outer197, %bb.w
  %.0113 = phi i64 [ %.1114, %bb.w ], [ %.0113.ph199, %.outer197 ] ; 3 uses
  %.1111 = phi i32 [ %spec.select144, %bb.w ], [ %.1111.ph200, %.outer197 ] ; 2 uses
  %i.al = icmp eq i64 %.0113, 4
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = call i64 @rb_str_tmp_new(i64 noundef %.0107.ph201) #10
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.an = call i64 @rb_str_resize(i64 noundef %.0113, i64 noundef %.0107.ph201) #10 ; 0 uses
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
  %i.aw = call i64 @rb_str_tmp_new(i64 noundef %.0121.ph.ph) #10 ; 2 uses
  store i64 %i.aw, ptr %i.b, align 8, !tbaa !10
  br label %bb.r

bb.q:                                             ; preds = %RSTRING_PTR.exit
  %i.ax = call i64 @rb_str_resize(i64 noundef %i.au, i64 noundef %.0121.ph.ph) #10 ; 0 uses
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
  store i64 %.0107.ph201, ptr %i.ac, align 8, !tbaa !35
  store ptr %i.be, ptr %i.ad, align 8, !tbaa !36
  store i64 %i.dy, ptr %i.ae, align 8, !tbaa !37
  %i.bf = or i32 %.1111, 2                        ; 4 uses
  %spec.select144 = select i1 %.not130, i32 %.1111, i32 %i.bf ; 5 uses
  call void @rb_io_check_closed(ptr noundef %i.w) #10
  %i.bg = load i32, ptr %i.af, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  store i32 %i.bg, ptr %8, align 8, !tbaa !60
  store ptr %9, ptr %i.ag, align 8, !tbaa !62
  store i32 %spec.select144, ptr %i.ah, align 4, !tbaa !63
  %i.bh = call ptr @rb_thread_call_without_gvl(ptr noundef nonnull @nogvl_recvmsg_func, ptr noundef nonnull %8, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null) #10
  %i.bi = ptrtoint ptr %i.bh to i64               ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  switch i64 %i.bi, label %.loopexit203 [
    i64 0, label %bb.t
    i64 -1, label %bb.u
  ]

bb.t:                                             ; preds = %RSTRING_PTR.exit151
  %i.bj = call i32 @rsock_is_dgram(ptr noundef nonnull %i.w) #10
  %.not131 = icmp eq i32 %i.bj, 0
  br i1 %.not131, label %.loopexit, label %.loopexit203

bb.u:                                             ; preds = %RSTRING_PTR.exit151
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = call ptr @rb_errno_ptr() #10
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !6
  %i.bm = load i64, ptr %i.w, align 8, !tbaa !56
  %i.bn = call i32 @rb_io_maybe_wait_readable(i32 noundef %i.bl, i64 noundef %i.bm, i64 noundef 4) #10
  %.not142 = icmp eq i32 %i.bn, 0
  br i1 %.not142, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @rb_io_check_closed(ptr noundef nonnull %i.w) #10
  br label %bb.k

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bo = call ptr @rb_errno_ptr() #10
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
  call void @rb_readwrite_syserr_fail(i32 noundef 0, i32 noundef 11, ptr noundef nonnull @.str.25) #12
  unreachable

bb.ab:                                            ; preds = %bb.x
  %.not143 = icmp eq i32 %.0120.ph198, 0
  br i1 %.not143, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  switch i32 %i.bp, label %bb.ad [
    i32 90, label %rsock_discard_cmsg_resource.exit.thread
    i32 24, label %rsock_discard_cmsg_resource.exit.thread
  ]

rsock_discard_cmsg_resource.exit.thread:          ; preds = %discard_cmsg.exit.i, %bb.ar, %bb.ao, %bb.an, %bb.ac, %bb.ac
  %.1108 = phi i64 [ %.0107.ph201, %bb.ac ], [ %.0107.ph201, %bb.ac ], [ %.2109, %bb.ao ], [ %.2109, %bb.an ], [ %.2109, %bb.ar ], [ %.2109, %discard_cmsg.exit.i ]
  %.1 = phi i32 [ %.0106.ph202, %bb.ac ], [ %.0106.ph202, %bb.ac ], [ 1, %bb.ao ], [ 1, %bb.an ], [ 1, %bb.ar ], [ 1, %discard_cmsg.exit.i ]
  call void @rb_gc() #10
  br label %.outer197

.outer197:                                        ; preds = %.outer, %rsock_discard_cmsg_resource.exit.thread
  %.0120.ph198 = phi i32 [ %.0120.ph, %.outer ], [ 1, %rsock_discard_cmsg_resource.exit.thread ] ; 4 uses
  %.0113.ph199 = phi i64 [ %.0113.ph, %.outer ], [ %.1114, %rsock_discard_cmsg_resource.exit.thread ]
  %.1111.ph200 = phi i32 [ %.1111.ph, %.outer ], [ %spec.select144, %rsock_discard_cmsg_resource.exit.thread ]
  %.0107.ph201 = phi i64 [ %.0107.ph, %.outer ], [ %.1108, %rsock_discard_cmsg_resource.exit.thread ] ; 8 uses
  %.0106.ph202 = phi i32 [ %.0106.ph, %.outer ], [ %.1, %rsock_discard_cmsg_resource.exit.thread ] ; 3 uses
  %.not130 = icmp eq i32 %.0106.ph202, 0          ; 2 uses
  br label %bb.k

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @rb_syserr_fail(i32 noundef %i.bp, ptr noundef nonnull @.str.26) #12
  unreachable

.loopexit203:                                     ; preds = %RSTRING_PTR.exit151, %bb.t
  br i1 %.not130, label %rsock_discard_cmsg_resource.exit.thread189, label %bb.ae

bb.ae:                                            ; preds = %.loopexit203
  %i.bt = load i64, ptr %i.ac, align 8
  %i.bu = icmp eq i64 %i.bt, %i.bi
  %or.cond146 = select i1 %i.d, i1 %i.bu, i1 false ; 2 uses
  br i1 %or.cond146, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.bv = icmp slt i64 %.0107.ph201, 0
  br i1 %i.bv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bw = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bw, ptr noundef nonnull @.str.27) #12
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.bx = shl nuw i64 %.0107.ph201, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.2109 = phi i64 [ %i.bx, %bb.ah ], [ %.0107.ph201, %bb.ae ] ; 6 uses
  br i1 %i.i, label %bb.aj, label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.by = load i32, ptr %i.ai, align 8, !tbaa !64
  %i.bz = and i32 %i.by, 8
  %.not132 = icmp eq i32 %i.bz, 0
  br i1 %.not132, label %bb.au, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.dz, label %bb.al, label %.thread180

bb.al:                                            ; preds = %bb.ak
  %i.ca = load i64, ptr %i.ae, align 8, !tbaa !37
  %.fr.i = freeze i64 %i.ca                       ; 4 uses
  %i.cb = trunc i64 %.fr.i to i32
  %i.cc = icmp ugt i32 %i.eb, %i.cb
  br i1 %i.cc, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %.not133 = icmp eq i32 %.0120.ph198, 0
  br i1 %.not133, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.cd = icmp eq i64 %.fr.i, 0
  br i1 %i.cd, label %rsock_discard_cmsg_resource.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.fr.i ; 2 uses
  %i.cg = icmp ult i64 %.fr.i, 16
  %.not1115.i = icmp eq ptr %i.ce, null
  %.not11.i = select i1 %i.cg, i1 true, i1 %.not1115.i
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
  call void @rb_update_max_fd(i32 noundef %i.cv) #10
  %i.cw = load i32, ptr %.013.i.i, align 4, !tbaa !6
  %i.cx = call i32 @close(i32 noundef %i.cw) #10  ; 0 uses
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
  br i1 %i.dt, label %bb.at, label %.thread180

bb.at:                                            ; preds = %bb.as
  %i.du = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.du, ptr noundef nonnull @.str.28) #12
  unreachable

.thread180:                                       ; preds = %bb.ak, %bb.as
  %i.dv = shl nuw i64 %.0121.ph.ph, 1
  br label %.loopexit564

bb.au:                                            ; preds = %bb.am, %bb.aj, %bb.ai
  br i1 %or.cond146, label %.loopexit564, label %bb.az

.loopexit564:                                     ; preds = %bb.au, %.thread180
  %.2123184 = phi i64 [ %i.dv, %.thread180 ], [ %.0121.ph.ph, %bb.au ]
  %i.dw = load i64, ptr %i.ae, align 8, !tbaa !37
  %.fr.i152 = freeze i64 %i.dw                    ; 3 uses
  %i.dx = icmp eq i64 %.fr.i152, 0
  br i1 %i.dx, label %.outer.outer.backedge, label %bb.av

.outer.outer.backedge:                            ; preds = %discard_cmsg.exit.i157, %bb.ay, %.loopexit564, %bb.av
  %.1111.ph.ph.be = phi i32 [ %i.bf, %.loopexit564 ], [ %i.bf, %bb.av ], [ %spec.select144, %bb.ay ], [ %spec.select144, %discard_cmsg.exit.i157 ]
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %.preheader
  %.0121.ph.ph = phi i64 [ %i.m, %.preheader ], [ %.2123184, %.outer.outer.backedge ] ; 8 uses
  %.0120.ph.ph = phi i32 [ 0, %.preheader ], [ %.0120.ph198, %.outer.outer.backedge ]
  %.0113.ph.ph = phi i64 [ 4, %.preheader ], [ %.1114, %.outer.outer.backedge ]
  %.1111.ph.ph = phi i32 [ %spec.select, %.preheader ], [ %.1111.ph.ph.be, %.outer.outer.backedge ]
  %.0107.ph.ph = phi i64 [ %i.h, %.preheader ], [ %.2109, %.outer.outer.backedge ]
  %.0106.ph.ph = phi i32 [ %i.y, %.preheader ], [ 1, %.outer.outer.backedge ]
  %i.dy = and i64 %.0121.ph.ph, 4294967295
  %i.dz = icmp ugt i64 %.0121.ph.ph, 65536
  %i.ea = trunc i64 %.0121.ph.ph to i32
  %i.eb = add i32 %i.ea, -65536
  br label %.outer

bb.av:                                            ; preds = %.loopexit564
  %i.ec = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.fr.i152 ; 2 uses
  %i.ee = icmp ult i64 %.fr.i152, 16
  %.not1115.i153 = icmp eq ptr %i.ec, null
  %.not11.i154 = select i1 %i.ee, i1 true, i1 %.not1115.i153
  br i1 %.not11.i154, label %.outer.outer.backedge, label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %bb.av, %__cmsg_nxthdr.exit.i159
  %.012.i156 = phi ptr [ %i.fq, %__cmsg_nxthdr.exit.i159 ], [ %i.ec, %bb.av ] ; 9 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i156, i64 8
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !6
  %i.eh = icmp eq i32 %i.eg, 1
  br i1 %i.eh, label %bb.aw, label %discard_cmsg.exit.i157

bb.aw:                                            ; preds = %.lr.ph.i155
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i156, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !6
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %bb.ax, label %discard_cmsg.exit.i157

bb.ax:                                            ; preds = %bb.aw
  %i.el = load i64, ptr %.012.i156, align 8, !tbaa !10 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.012.i156, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %.012.i156, i64 20 ; 2 uses
  %i.eo = icmp ugt i64 %i.el, 19
  %i.ep = icmp ule ptr %i.en, %i.ed
  %i.eq = and i1 %i.ep, %i.eo
  br i1 %i.eq, label %.lr.ph.preheader.i.i160, label %discard_cmsg.exit.i157

.lr.ph.preheader.i.i160:                          ; preds = %bb.ax
  %i.er = getelementptr inbounds nuw i8, ptr %.012.i156, i64 16
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161, %.lr.ph.preheader.i.i160
  %i.es = phi ptr [ %i.ew, %.lr.ph.i.i161 ], [ %i.en, %.lr.ph.preheader.i.i160 ] ; 2 uses
  %.013.i.i162 = phi ptr [ %i.es, %.lr.ph.i.i161 ], [ %i.er, %.lr.ph.preheader.i.i160 ] ; 2 uses
  %i.et = load i32, ptr %.013.i.i162, align 4, !tbaa !6
  call void @rb_update_max_fd(i32 noundef %i.et) #10
  %i.eu = load i32, ptr %.013.i.i162, align 4, !tbaa !6
  %i.ev = call i32 @close(i32 noundef %i.eu) #10  ; 0 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 4 ; 3 uses
  %i.ex = icmp ule ptr %i.ew, %i.em
  %i.ey = icmp ule ptr %i.ew, %i.ed
  %i.ez = and i1 %i.ex, %i.ey
  br i1 %i.ez, label %.lr.ph.i.i161, label %discard_cmsg.exit.i157, !llvm.loop !58

discard_cmsg.exit.i157:                           ; preds = %.lr.ph.i.i161, %bb.ax, %bb.aw, %.lr.ph.i155
  %i.fa = load i64, ptr %.012.i156, align 8, !tbaa !10 ; 4 uses
  %i.fb = icmp ult i64 %i.fa, 16
  br i1 %i.fb, label %.outer.outer.backedge, label %bb.ay

bb.ay:                                            ; preds = %discard_cmsg.exit.i157
  %i.fc = sub i64 0, %i.fa
  %i.fd = and i64 %i.fc, 7
  %i.fe = or disjoint i64 %i.fd, 16               ; 2 uses
  %i.ff = load ptr, ptr %i.ad, align 8, !tbaa !36
  %i.fg = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %.012.i156 to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fe
  %i.fm = sub nuw i64 %i.fk, %i.fe
  %i.fn = icmp ult i64 %i.fm, %i.fa
  %or.cond.i.i158 = select i1 %i.fl, i1 true, i1 %i.fn
  br i1 %or.cond.i.i158, label %.outer.outer.backedge, label %__cmsg_nxthdr.exit.i159

__cmsg_nxthdr.exit.i159:                          ; preds = %bb.ay
  %i.fo = add nuw i64 %i.fa, 7
  %i.fp = and i64 %i.fo, -8
  %i.fq = getelementptr inbounds nuw i8, ptr %.012.i156, i64 %i.fp
  br label %.lr.ph.i155

bb.az:                                            ; preds = %bb.au
  %.not135 = icmp eq i32 %i.bf, %spec.select
  br i1 %.not135, label %rsock_discard_cmsg_resource.exit.thread189, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fr = load i64, ptr %i.ae, align 8, !tbaa !37
  %.fr.i164 = freeze i64 %i.fr                    ; 3 uses
  %i.fs = icmp eq i64 %.fr.i164, 0
  br i1 %i.fs, label %.outer.backedge, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ft = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.fr.i164 ; 2 uses
  %i.fv = icmp ult i64 %.fr.i164, 16
  %.not1115.i165 = icmp eq ptr %i.ft, null
  %.not11.i166 = select i1 %i.fv, i1 true, i1 %.not1115.i165
  br i1 %.not11.i166, label %.outer.backedge, label %.lr.ph.i167

.outer.backedge:                                  ; preds = %discard_cmsg.exit.i169, %bb.be, %bb.bb, %bb.ba
  br label %.outer

.lr.ph.i167:                                      ; preds = %bb.bb, %__cmsg_nxthdr.exit.i171
  %.012.i168 = phi ptr [ %i.hh, %__cmsg_nxthdr.exit.i171 ], [ %i.ft, %bb.bb ] ; 9 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.012.i168, i64 8
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !6
  %i.fy = icmp eq i32 %i.fx, 1
  br i1 %i.fy, label %bb.bc, label %discard_cmsg.exit.i169

bb.bc:                                            ; preds = %.lr.ph.i167
  %i.fz = getelementptr inbounds nuw i8, ptr %.012.i168, i64 12
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !6
  %i.gb = icmp eq i32 %i.ga, 1
  br i1 %i.gb, label %bb.bd, label %discard_cmsg.exit.i169

bb.bd:                                            ; preds = %bb.bc
  %i.gc = load i64, ptr %.012.i168, align 8, !tbaa !10 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.012.i168, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %.012.i168, i64 20 ; 2 uses
  %i.gf = icmp ugt i64 %i.gc, 19
  %i.gg = icmp ule ptr %i.ge, %i.fu
  %i.gh = and i1 %i.gg, %i.gf
  br i1 %i.gh, label %.lr.ph.preheader.i.i172, label %discard_cmsg.exit.i169

.lr.ph.preheader.i.i172:                          ; preds = %bb.bd
  %i.gi = getelementptr inbounds nuw i8, ptr %.012.i168, i64 16
  br label %.lr.ph.i.i173

.lr.ph.i.i173:                                    ; preds = %.lr.ph.i.i173, %.lr.ph.preheader.i.i172
  %i.gj = phi ptr [ %i.gn, %.lr.ph.i.i173 ], [ %i.ge, %.lr.ph.preheader.i.i172 ] ; 2 uses
  %.013.i.i174 = phi ptr [ %i.gj, %.lr.ph.i.i173 ], [ %i.gi, %.lr.ph.preheader.i.i172 ] ; 2 uses
  %i.gk = load i32, ptr %.013.i.i174, align 4, !tbaa !6
  call void @rb_update_max_fd(i32 noundef %i.gk) #10
  %i.gl = load i32, ptr %.013.i.i174, align 4, !tbaa !6
  %i.gm = call i32 @close(i32 noundef %i.gl) #10  ; 0 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 4 ; 3 uses
  %i.go = icmp ule ptr %i.gn, %i.gd
  %i.gp = icmp ule ptr %i.gn, %i.fu
  %i.gq = and i1 %i.go, %i.gp
  br i1 %i.gq, label %.lr.ph.i.i173, label %discard_cmsg.exit.i169, !llvm.loop !58

discard_cmsg.exit.i169:                           ; preds = %.lr.ph.i.i173, %bb.bd, %bb.bc, %.lr.ph.i167
  %i.gr = load i64, ptr %.012.i168, align 8, !tbaa !10 ; 4 uses
  %i.gs = icmp ult i64 %i.gr, 16
  br i1 %i.gs, label %.outer.backedge, label %bb.be

bb.be:                                            ; preds = %discard_cmsg.exit.i169
  %i.gt = sub i64 0, %i.gr
  %i.gu = and i64 %i.gt, 7
  %i.gv = or disjoint i64 %i.gu, 16               ; 2 uses
  %i.gw = load ptr, ptr %i.ad, align 8, !tbaa !36
  %i.gx = load i64, ptr %i.ae, align 8, !tbaa !37
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gx
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %.012.i168 to i64
  %i.hb = sub i64 %i.gz, %i.ha                    ; 2 uses
  %i.hc = icmp ult i64 %i.hb, %i.gv
  %i.hd = sub nuw i64 %i.hb, %i.gv
  %i.he = icmp ult i64 %i.hd, %i.gr
  %or.cond.i.i170 = select i1 %i.hc, i1 true, i1 %i.he
  br i1 %or.cond.i.i170, label %.outer.backedge, label %__cmsg_nxthdr.exit.i171

__cmsg_nxthdr.exit.i171:                          ; preds = %bb.be
  %i.hf = add nuw i64 %i.gr, 7
  %i.hg = and i64 %i.hf, -8
  %i.hh = getelementptr inbounds nuw i8, ptr %.012.i168, i64 %i.hg
  br label %.lr.ph.i167

.outer:                                           ; preds = %.outer.backedge, %.outer.outer
  %.0120.ph = phi i32 [ %.0120.ph.ph, %.outer.outer ], [ %.0120.ph198, %.outer.backedge ]
  %.0113.ph = phi i64 [ %.0113.ph.ph, %.outer.outer ], [ %.1114, %.outer.backedge ]
  %.1111.ph = phi i32 [ %.1111.ph.ph, %.outer.outer ], [ %spec.select, %.outer.backedge ]
  %.0107.ph = phi i64 [ %.0107.ph.ph, %.outer.outer ], [ %.2109, %.outer.backedge ]
  %.0106.ph = phi i32 [ %.0106.ph.ph, %.outer.outer ], [ 0, %.outer.backedge ]
  br label %.outer197

rsock_discard_cmsg_resource.exit.thread189:       ; preds = %bb.az, %.loopexit203
  %i.hi = icmp eq i64 %.1114, 4
  br i1 %i.hi, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %rsock_discard_cmsg_resource.exit.thread189
  %i.hj = call i64 @rb_str_new(ptr noundef %i.at, i64 noundef %i.bi) #10
  br label %bb.bh

bb.bg:                                            ; preds = %rsock_discard_cmsg_resource.exit.thread189
  %i.hk = call i64 @rb_str_resize(i64 noundef %.1114, i64 noundef %i.bi) #10 ; 0 uses
  %i.hl = load i64, ptr @rb_cString, align 8, !tbaa !10
  %i.hm = call i64 @rb_obj_reveal(i64 noundef %.1114, i64 noundef %i.hl) #10 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.2115 = phi i64 [ %i.hj, %bb.bf ], [ %.1114, %bb.bg ]
  %i.hn = load i32, ptr %i.ai, align 8, !tbaa !64
  %i.ho = sext i32 %i.hn to i64
  %i.hp = shl nsw i64 %i.ho, 1
  %i.hq = or disjoint i64 %i.hp, 1
  %i.hr = load ptr, ptr %9, align 8, !tbaa !27
  %i.hs = load i32, ptr %i.z, align 8, !tbaa !30
  %i.ht = call i64 @rsock_io_socket_addrinfo(i64 noundef %0, ptr noundef %i.hr, i32 noundef %i.hs) #10
  %i.hu = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 3, i64 noundef %.2115, i64 noundef %i.ht, i64 noundef %i.hq) #10 ; 3 uses
  %i.hv = call i32 @rsock_getfamily(ptr noundef nonnull %i.w) #10
  %i.hw = load i64, ptr %i.ae, align 8, !tbaa !37
  %.fr = freeze i64 %i.hw                         ; 3 uses
  %.not138 = icmp eq i64 %.fr, 0
  br i1 %.not138, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hx = load ptr, ptr %i.ad, align 8, !tbaa !36 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.fr ; 6 uses
  %i.hz = icmp ult i64 %.fr, 16
  %.not139303305 = icmp eq ptr %i.hx, null
  %.not139303 = select i1 %i.hz, i1 true, i1 %.not139303305
  br i1 %.not139303, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bi
  %i.ia = sext i32 %i.hv to i64
  %i.ib = shl nsw i64 %i.ia, 1
  %i.ic = or disjoint i64 %i.ib, 1
  %i.id = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ie = load i64, ptr %i.hx, align 8, !tbaa !10 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %._crit_edge, label %.lr.ph559

._crit_edge:                                      ; preds = %__cmsg_nxthdr.exit, %.lr.ph
  %i.ig = load i64, ptr @rb_eTypeError, align 8, !tbaa !10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ig, ptr noundef nonnull @.str.29) #12
  unreachable

.lr.ph559:                                        ; preds = %.lr.ph, %__cmsg_nxthdr.exit
  %i.ih = phi i64 [ %i.ls, %__cmsg_nxthdr.exit ], [ %i.ie, %.lr.ph ]
  %.0118304558 = phi ptr [ %i.lr, %__cmsg_nxthdr.exit ], [ %i.hx, %.lr.ph ] ; 13 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.0118304558, i64 %i.ih ; 2 uses
  %.not140 = icmp ugt ptr %i.ii, %i.hy
  %i.ij = select i1 %.not140, ptr %i.hy, ptr %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %.0118304558, i64 16 ; 4 uses
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %.0118304558, i64 8 ; 2 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !6
  %i.iq = getelementptr inbounds nuw i8, ptr %.0118304558, i64 12 ; 3 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !6
  %i.is = call i64 @rb_str_new(ptr noundef nonnull %i.ik, i64 noundef %i.in) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.is, ptr %i.a, align 8, !tbaa !10
  %i.it = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !10
  %i.iu = call i64 @rb_obj_alloc(i64 noundef %i.it) #10 ; 4 uses
  %i.iv = call i64 @rb_string_value(ptr noundef nonnull %i.a) #10 ; 0 uses
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
  br i1 %.not195, label %bb.br, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph559
  br i1 %i.jf, label %bb.bk, label %make_io_for_unix_rights.exit

bb.bk:                                            ; preds = %bb.bj
  %i.jg = load i32, ptr %i.iq, align 4, !tbaa !6
  %i.jh = icmp eq i32 %i.jg, 1
  br i1 %i.jh, label %bb.bl, label %make_io_for_unix_rights.exit

bb.bl:                                            ; preds = %bb.bk
  %i.ji = call i64 @rb_ary_new() #10              ; 2 uses
  %.pr.i.i = load i64, ptr @make_io_for_unix_rights.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i177, label %rbimpl_intern_const.exit.i

.lr.ph.i.i177:                                    ; preds = %bb.bl, %.lr.ph.i.i177
  %i.jj = call i64 @rb_intern2(ptr noundef nonnull @.str.9, i64 noundef 11) #10 ; 3 uses
  store i64 %i.jj, ptr @make_io_for_unix_rights.rbimpl_id, align 8, !tbaa !10
  %.not.i.i = icmp eq i64 %i.jj, 0
  br i1 %.not.i.i, label %.lr.ph.i.i177, label %rbimpl_intern_const.exit.i, !llvm.loop !19

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i177, %bb.bl
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.bl ], [ %i.jj, %.lr.ph.i.i177 ]
  %i.jk = call i64 @rb_ivar_set(i64 noundef %i.iu, i64 noundef %.lcssa.i.i, i64 noundef %i.ji) #10 ; 0 uses
  %i.jl = load i64, ptr %.0118304558, align 8, !tbaa !10 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0118304558, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %.0118304558, i64 20 ; 2 uses
  %i.jo = icmp ugt i64 %i.jl, 19
  %i.jp = icmp ule ptr %i.jn, %i.hy
  %i.jq = and i1 %i.jp, %i.jo
  br i1 %i.jq, label %.lr.ph.i176.a, label %._crit_edge.i

.lr.ph.i176.a:                                    ; preds = %rbimpl_intern_const.exit.i, %rbimpl_intern_const.exit31.i
  %i.jr = phi ptr [ %i.kg, %rbimpl_intern_const.exit31.i ], [ %i.jn, %rbimpl_intern_const.exit.i ] ; 2 uses
  %.034.i = phi ptr [ %i.jr, %rbimpl_intern_const.exit31.i ], [ %i.ik, %rbimpl_intern_const.exit.i ]
  %i.js = load i32, ptr %.034.i, align 4, !tbaa !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.jt = call i32 @fstat(i32 noundef %i.js, ptr noundef nonnull %7) #10
  %i.ju = icmp eq i32 %i.jt, -1
  br i1 %i.ju, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i176.a
  %i.jv = load i64, ptr @rb_eSocket, align 8, !tbaa !10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.jv, ptr noundef nonnull @.str.30) #12
  unreachable

bb.bn:                                            ; preds = %.lr.ph.i176.a
  call void @rb_update_max_fd(i32 noundef %i.js) #10
  call void @rb_maygvl_fd_fix_cloexec(i32 noundef %i.js) #10
  %i.jw = load i32, ptr %i.id, align 8, !tbaa !65
  %i.jx = and i32 %i.jw, 61440
  %i.jy = icmp eq i32 %i.jx, 49152
  br i1 %i.jy, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jz = load i64, ptr @rb_cSocket, align 8, !tbaa !10
  %i.ka = call i64 @rb_obj_alloc(i64 noundef %i.jz) #10
  %i.kb = call i64 @rsock_init_sock(i64 noundef %i.ka, i32 noundef %i.js) #10
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.kc = call i64 @rb_io_fdopen(i32 noundef %i.js, i32 noundef 2, ptr noundef null) #10
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.023.i = phi i64 [ %i.kb, %bb.bo ], [ %i.kc, %bb.bp ]
  %.pr.i26.i = load i64, ptr @make_io_for_unix_rights.rbimpl_id.31, align 8, !tbaa !10 ; 2 uses
  %.not4.i27.i = icmp eq i64 %.pr.i26.i, 0
  br i1 %.not4.i27.i, label %.lr.ph.i29.i, label %rbimpl_intern_const.exit31.i

.lr.ph.i29.i:                                     ; preds = %bb.bq, %.lr.ph.i29.i
  %i.kd = call i64 @rb_intern2(ptr noundef nonnull @.str.9, i64 noundef 11) #10 ; 3 uses
  store i64 %i.kd, ptr @make_io_for_unix_rights.rbimpl_id.31, align 8, !tbaa !10
  %.not.i30.i = icmp eq i64 %i.kd, 0
  br i1 %.not.i30.i, label %.lr.ph.i29.i, label %rbimpl_intern_const.exit31.i, !llvm.loop !19

rbimpl_intern_const.exit31.i:                     ; preds = %.lr.ph.i29.i, %bb.bq
  %.lcssa.i28.i = phi i64 [ %.pr.i26.i, %bb.bq ], [ %i.kd, %.lr.ph.i29.i ]
  %i.ke = call i64 @rb_attr_get(i64 noundef %i.iu, i64 noundef %.lcssa.i28.i) #10 ; 2 uses
  %i.kf = call i64 @rb_ary_push(i64 noundef %i.ke, i64 noundef %.023.i) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jr, i64 4 ; 3 uses
  %i.kh = icmp ule ptr %i.kg, %i.jm
  %i.ki = icmp ule ptr %i.kg, %i.hy
  %i.kj = and i1 %i.kh, %i.ki
  br i1 %i.kj, label %.lr.ph.i176.a, label %._crit_edge.i, !llvm.loop !68

._crit_edge.i:                                    ; preds = %rbimpl_intern_const.exit31.i, %rbimpl_intern_const.exit.i
  %.024.lcssa.i = phi i64 [ %i.ji, %rbimpl_intern_const.exit.i ], [ %i.ke, %rbimpl_intern_const.exit31.i ]
  call void @rb_obj_freeze_inline(i64 noundef %.024.lcssa.i) #10
  br label %make_io_for_unix_rights.exit

bb.br:                                            ; preds = %.lr.ph559
  br i1 %i.jf, label %bb.bs, label %make_io_for_unix_rights.exit

bb.bs:                                            ; preds = %bb.br
  %i.kk = load i32, ptr %i.iq, align 4, !tbaa !6
  %i.kl = icmp eq i32 %i.kk, 1
  br i1 %i.kl, label %bb.bt, label %make_io_for_unix_rights.exit

bb.bt:                                            ; preds = %bb.bs
  %i.km = load i64, ptr %.0118304558, align 8, !tbaa !10 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.0118304558, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %.0118304558, i64 20 ; 2 uses
  %i.kp = icmp ugt i64 %i.km, 19
  %i.kq = icmp ule ptr %i.ko, %i.hy
  %i.kr = and i1 %i.kq, %i.kp
  br i1 %i.kr, label %.lr.ph.i178, label %make_io_for_unix_rights.exit

.lr.ph.i178:                                      ; preds = %bb.bt, %.lr.ph.i178
  %i.ks = phi ptr [ %i.kw, %.lr.ph.i178 ], [ %i.ko, %bb.bt ] ; 2 uses
  %.013.i = phi ptr [ %i.ks, %.lr.ph.i178 ], [ %i.ik, %bb.bt ] ; 2 uses
  %i.kt = load i32, ptr %.013.i, align 4, !tbaa !6
  call void @rb_update_max_fd(i32 noundef %i.kt) #10
  %i.ku = load i32, ptr %.013.i, align 4, !tbaa !6
  %i.kv = call i32 @close(i32 noundef %i.ku) #10  ; 0 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 4 ; 3 uses
  %i.kx = icmp ule ptr %i.kw, %i.kn
  %i.ky = icmp ule ptr %i.kw, %i.hy
  %i.kz = and i1 %i.kx, %i.ky
  br i1 %i.kz, label %.lr.ph.i178, label %make_io_for_unix_rights.exit, !llvm.loop !58

make_io_for_unix_rights.exit:                     ; preds = %.lr.ph.i178, %bb.bt, %bb.bs, %bb.br, %._crit_edge.i, %bb.bk, %bb.bj
  %i.la = call i64 @rb_ary_push(i64 noundef %i.hu, i64 noundef %i.iu) #10 ; 0 uses
  %i.lb = load i64, ptr %.0118304558, align 8, !tbaa !10 ; 4 uses
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
  %i.lk = ptrtoint ptr %.0118304558 to i64
  %i.ll = sub i64 %i.lj, %i.lk                    ; 2 uses
  %i.lm = icmp ult i64 %i.ll, %i.lf
  %i.ln = sub nuw i64 %i.ll, %i.lf
  %i.lo = icmp ult i64 %i.ln, %i.lb
  %or.cond.i = select i1 %i.lm, i1 true, i1 %i.lo
  br i1 %or.cond.i, label %select.unfold._crit_edge, label %__cmsg_nxthdr.exit

__cmsg_nxthdr.exit:                               ; preds = %bb.bu
  %i.lp = add nuw i64 %i.lb, 7
  %i.lq = and i64 %i.lp, -8
  %i.lr = getelementptr inbounds nuw i8, ptr %.0118304558, i64 %i.lq ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !10 ; 2 uses
  %i.lt = icmp eq i64 %i.ls, 0
end_hunk_0
