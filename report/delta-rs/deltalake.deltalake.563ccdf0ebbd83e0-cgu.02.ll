inline.NumInlined: 6368
inline.NumDeleted: 3022
begin_hunk_0_@_RINvNtCs2pqxYH9ZEk8_3std2io19default_read_to_endINtB2_4TakeNtNtB4_2fs4FileEECs7p2uQeJxui2_9deltalake:bb.a
bb.n:                                             ; preds = %.lr.ph
  %i.bk = call noundef ptr @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read8read_buf(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.bl = load i64, ptr %i.s, align 8, !alias.scope !2489, !noalias !2487, !noundef !3 ; 2 uses
  %.neg.i = sub i64 %i.bh, %i.bl
  %i.bm = load i64, ptr %i.u, align 8, !alias.scope !2487, !noalias !2489, !noundef !3
  %i.bn = add i64 %.neg.i, %i.bm
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bo = load i64, ptr %i.t, align 8, !alias.scope !2489, !noalias !2487, !noundef !3 ; 2 uses
  %i.bp = sub nuw i64 %i.bo, %i.bh
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bf)
  %i.bq = load ptr, ptr %i.b, align 8, !alias.scope !2489, !noalias !2487, !nonnull !3, !noundef !3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2491
  store ptr %i.br, ptr %i.a, align 8, !noalias !2491
  store i64 %i.bf, ptr %i.w, align 8, !noalias !2491
  store i64 0, ptr %i.x, align 8, !noalias !2491
  store i64 %.sroa.0.0.i.i, ptr %i.y, align 8, !noalias !2491
  %i.bs = call noundef ptr @_RNvXsa_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Read8read_buf(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a), !noalias !2489
  %i.bt = load i64, ptr %i.x, align 8, !noalias !2491, !noundef !3 ; 2 uses
  %i.bu = load i64, ptr %i.y, align 8, !noalias !2491, !noundef !3
  %i.bv = add i64 %i.bt, %i.bh                    ; 3 uses
  store i64 %i.bv, ptr %i.s, align 8, !alias.scope !2489, !noalias !2487
  %.sroa.0.0.i4.i = call noundef i64 @llvm.umax.i64(i64 %i.bv, i64 %i.bo)
  %i.bw = add i64 %i.bu, %i.bh
  %.sroa.0.0.i5.i = call noundef i64 @llvm.umax.i64(i64 %i.bw, i64 %.sroa.0.0.i4.i)
  store i64 %.sroa.0.0.i5.i, ptr %i.t, align 8, !alias.scope !2489, !noalias !2487
  %i.bx = load i64, ptr %i.u, align 8, !alias.scope !2487, !noalias !2489, !noundef !3
  %i.by = sub i64 %i.bx, %i.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2491
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.n, %bb.o
  %.pre154159 = phi i64 [ %i.bv, %bb.o ], [ %i.bl, %bb.n ]
  %.sink = phi i64 [ %i.by, %bb.o ], [ %i.bn, %bb.n ] ; 4 uses
  %.sroa.0.0.i64 = phi ptr [ %i.bs, %bb.o ], [ %i.bk, %bb.n ] ; 8 uses
  store i64 %.sink, ptr %i.u, align 8, !alias.scope !2487, !noalias !2489
  %.not60 = icmp eq ptr %.sroa.0.0.i64, null      ; 2 uses
  br i1 %.not60, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit, label %bb.p

bb.p:                                             ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit
  %i.bz = ptrtoint ptr %.sroa.0.0.i64 to i64      ; 3 uses
  %i.ca = and i64 %i.bz, 3
  switch i64 %i.ca, label %default.unreachable [
    i64 2, label %bb.q
    i64 3, label %bb.t
    i64 0, label %bb.r
    i64 1, label %bb.s
  ], !prof !2492

default.unreachable:                              ; preds = %bb.p
  unreachable

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit: ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit, %bb.t, %bb.q, %bb.s, %bb.r
  %i.cb = ptrtoint ptr %.sroa.0.0.i64 to i64
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread

_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexit_crit_edge, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit
  %.pre154 = phi i64 [ %.pre154.pre, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexit_crit_edge ], [ %.pre154159, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit ] ; 5 uses
  %.not6078.ph = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexit_crit_edge ], [ %.not60, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit ]
  %.sroa.0.0.i6477.ph = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexit_crit_edge ], [ %i.cb, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit ]
  %.pre155 = load i64, ptr %i.t, align 8          ; 2 uses
  %.pre156 = load i64, ptr %i.c, align 8          ; 2 uses
  %i.cc = sub nuw i64 %.pre155, %.pre154
  %i.cd = icmp ne i64 %.pre155, %.sroa.0.0.i
  %i.ce = icmp sgt i64 %.pre156, -1
  call void @llvm.assume(i1 %i.ce)
  %i.cf = add i64 %.pre156, %.pre154              ; 3 uses
  store i64 %i.cf, ptr %i.c, align 8
  br i1 %.not6078.ph, label %bb.aa, label %.loopexit171

bb.q:                                             ; preds = %bb.p
  %.mask122 = and i64 %i.bz, -4294967296
  %i.cg = icmp eq i64 %.mask122, 17179869184
  br i1 %i.cg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit

bb.r:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i64, i64 16
  %i.ci = load i8, ptr %i.ch, align 8, !range !2493, !noundef !3
  %i.cj = icmp eq i8 %i.ci, 35
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit

bb.s:                                             ; preds = %bb.p
  %i.ck = getelementptr i8, ptr %.sroa.0.0.i64, i64 -1 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ck) ]
  %i.cl = getelementptr i8, ptr %.sroa.0.0.i64, i64 15
  %i.cm = load i8, ptr %i.cl, align 8, !range !2493, !noundef !3
  %i.cn = icmp eq i8 %i.cm, 35
  br i1 %i.cn, label %bb.u, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit

bb.t:                                             ; preds = %bb.p
  %i.co = icmp ult ptr %.sroa.0.0.i64, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.co)
  %.mask = and i64 %i.bz, -4294967296
  %i.cp = icmp eq i64 %.mask, 150323855360
  br i1 %i.cp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit, label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexitsplit

bb.u:                                             ; preds = %bb.s
  %.val.i.i.i.i.i = load ptr, ptr %i.ck, align 8, !noalias !2494 ; 5 uses
  %i.cq = getelementptr i8, ptr %.sroa.0.0.i64, i64 7
  %.val1.i.i.i.i.i = load ptr, ptr %i.cq, align 8, !noalias !2494, !nonnull !3, !align !38, !noundef !3 ; 5 uses
  %i.cr = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !3, !noalias !2494 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  invoke void %i.cr(ptr noundef nonnull %.val.i.i.i.i.i)
          to label %bb.w unwind label %bb.y, !noalias !2494

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !range !229, !invariant.load !3, !noalias !2494 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !range !156, !invariant.load !3, !noalias !2494
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.ct, i64 noundef range(i64 1, 536870913) %i.cw) #33, !noalias !2494
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.y:                                             ; preds = %bb.v
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !229, !invariant.load !3, !noalias !2494 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !156, !invariant.load !3, !noalias !2494
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %i.cz, i64 noundef range(i64 1, 536870913) %i.dc) #33, !noalias !2494
  br label %.body

.body:                                            ; preds = %bb.z, %bb.y
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 24, i64 noundef 8) #33, !noalias !2494
  resume { ptr, i32 } %i.cx

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 24, i64 noundef 8) #33, !noalias !2494
  %.pre153 = load i64, ptr %i.u, align 8, !alias.scope !2497, !noalias !2499
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.t, %bb.q, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  %i.dd = phi i64 [ %.sink, %bb.t ], [ %.sink, %bb.q ], [ %.sink, %bb.r ], [ %.pre153, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i ] ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexit_crit_edge, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit._RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread.loopexit_crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs7p2uQeJxui2_9deltalake.exit
  %.pre154.pre = load i64, ptr %i.s, align 8
  br label %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread

bb.aa:                                            ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread
  %i.df = icmp eq i64 %.pre154, 0
  br i1 %i.df, label %.loopexit172, label %bb.ab

.loopexit172:                                     ; preds = %bb.aa, %.thread
  %i.dg = phi i64 [ %i.ay, %.thread ], [ %i.cf, %bb.aa ]
  %i.dh = sub nsw i64 %i.dg, %i.d
  br label %.loopexit171

bb.ab:                                            ; preds = %bb.aa
  %i.di = icmp ult i64 %.pre154, %.sroa.0.0.i
  %i.dj = add i32 %.sroa.019.0, 1
  %.sroa.019.1 = select i1 %i.di, i32 %i.dj, i32 0 ; 2 uses
  br i1 %.sroa.013.1, label %bb.ad, label %bb.ac

.loopexit171:                                     ; preds = %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread, %.loopexit172
  %.sroa.8.0 = phi i64 [ %i.dh, %.loopexit172 ], [ %.sroa.0.0.i6477.ph, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread ]
  %.sroa.010.0 = phi i64 [ 0, %.loopexit172 ], [ 1, %_RNvXsf_NtCs2pqxYH9ZEk8_3std2ioINtB5_4TakeNtNtB7_2fs4FileENtB5_4Read8read_bufCs7p2uQeJxui2_9deltalake.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.ac:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab
  %.sroa.050.4 = phi i64 [ -1, %bb.af ], [ %i.dn, %bb.ae ], [ %spec.select, %bb.ad ], [ %.sroa.050.3, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.ad:                                            ; preds = %bb.ab
  %i.dk = icmp sgt i32 %.sroa.019.1, 1
  %or.cond7 = select i1 %i.cd, i1 %i.dk, i1 false
  %spec.select = select i1 %or.cond7, i64 -1, i64 %.sroa.050.3 ; 4 uses
  %i.dl = icmp uge i64 %.sroa.0.0.i, %spec.select
  %i.dm = icmp eq i64 %.pre154, %.sroa.0.0.i
  %or.cond2 = and i1 %i.dm, %i.dl
  br i1 %or.cond2, label %bb.ae, label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  %i.dn = shl nuw i64 %spec.select, 1
  %i.do = icmp slt i64 %spec.select, 0
  br i1 %i.do, label %bb.af, label %bb.ac, !prof !39

bb.af:                                            ; preds = %bb.ae
  br label %bb.ac

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.loopexit171
  %.sroa.8.1 = phi i64 [ %i.ar, %bb.i ], [ %i.au, %bb.k ], [ %.sroa.8.0, %.loopexit171 ], [ ptrtoint (ptr inttoptr (i64 163208757251 to ptr) to i64), %bb.l ]
  %.sroa.010.1 = phi i64 [ 1, %bb.i ], [ 0, %bb.k ], [ %.sroa.010.0, %.loopexit171 ], [ 1, %bb.l ]
  %i.dp = inttoptr i64 %.sroa.8.1 to ptr
  br label %bb.ag

bb.ag:                                            ; preds = %bb.e, %bb.d, %.loopexit
  %.sroa.8.2 = phi ptr [ %i.dp, %.loopexit ], [ %i.ab, %bb.d ], [ null, %bb.e ]
  %.sroa.010.2 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.e ]
  %i.dq = insertvalue { i64, ptr } poison, i64 %.sroa.010.2, 0
  %i.dr = insertvalue { i64, ptr } %i.dq, ptr %.sroa.8.2, 1
  ret { i64, ptr } %i.dr
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs7p2uQeJxui2_9deltalake5error9to_rt_errINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBL_5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEEEB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = zext i1 %2 to i8                         ; 2 uses
  store i8 %i.g, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2501
  store i64 0, ptr %i.c, align 8, !noalias !2501
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !2501
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !2501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2501
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.h, align 8, !noalias !2501
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !2501
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !2501
  store ptr %i.c, ptr %i.b, align 8, !noalias !2501
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @183, ptr %i.i, align 8, !noalias !2501
  %i.j = invoke noundef zeroext i1 @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_11PoisonErrorINtNtB5_5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !2508

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %.body unwind label %bb.e, !noalias !2508

bb.c:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.d, label %bb.f, !prof !39

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @81, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #28
          to label %.noexc.i.i unwind label %bb.b, !noalias !2508

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !2508
  unreachable

.body:                                            ; preds = %bb.h, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.o, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEEECs7p2uQeJxui2_9deltalake(ptr nonnull %1, i8 %i.g) #29
          to label %bb.p unwind label %bb.o

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2501
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2509
  %i.m = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 113) 24, i64 noundef range(i64 8, 17) 8) #33, !noalias !2509 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.j, !prof !39

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #28
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBP_5PyErr3newNtNtBR_10exceptions14PyRuntimeErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #29
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 1, ptr %0, align 8
  %.sroa.03.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.03.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.03.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %.sroa.03.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.03.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @24, ptr %.sroa.03.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.03.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store i32 3, ptr %.sroa.54.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  br i1 %2, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.s = and i64 %i.r, 9223372036854775807
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.l, !prof !37

bb.l:                                             ; preds = %bb.k
  %i.u = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.u, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store atomic i8 1, ptr %i.q monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.v = atomicrmw xchg ptr %1, i32 0 release, align 4
  %i.w = icmp eq i32 %i.v, 2
  br i1 %i.w, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEEECs7p2uQeJxui2_9deltalake.exit, !prof !39

bb.n:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %1)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEEECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.n
  ret void

bb.o:                                             ; preds = %.body
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal { ptr, ptr } @_RINvNtCsI2hFLkJvVt_12futures_task5waker13clone_arc_rawNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyECs7p2uQeJxui2_9deltalake(ptr noundef %0) unnamed_addr #2 {
bb.a:
  tail call void @_RINvNtCsI2hFLkJvVt_12futures_task5waker17increase_refcountNtNtCsezwchj6CnTc_16futures_executor10local_pool12ThreadNotifyECs7p2uQeJxui2_9deltalake(ptr noundef %0)
  %i.a = insertvalue { ptr, ptr } { ptr @25, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCs3JXekYNd0JR_7dashmap7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_3vec3VecbEEECs7p2uQeJxui2_9deltalake(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %cond = icmp eq i64 %.8.val, 0
  br i1 %cond, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtBL_6string6StringINtNtB31_4util11SharedValueINtNtBL_3vec3VecbEEEEEEEECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph
  %i.a = icmp eq i64 %i.c, %.8.val
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2s_4util11SharedValueINtNtB3W_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [128 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i1
  %i.c = add i64 %.sroa.0.0.i.i1, 1               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_3vec3VecbEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i: ; preds = %.lr.ph3
  %i.e = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.f = icmp eq i64 %i.e, %.8.val
  br i1 %i.f, label %.body.i, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.c, %.8.val
  br i1 %i.h, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [128 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  invoke void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_3vec3VecbEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslrv8JwANqSj_15crossbeam_utils12cache_padded11CachePaddedINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB2r_4util11SharedValueINtNtB3V_3vec3VecbEEEEEEECs7p2uQeJxui2_9deltalake.exit7.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph3
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
begin_hunk_1_@_RNvXs5_NtCs73bmgzuZ8Mg_21tracing_opentelemetry5layerINtB5_18OpenTelemetryLayerINtNtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layered7LayeredNtNtNtB1l_6filter3env9EnvFilterNtNtNtB1l_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEINtB1j_5LayerB1e_E8on_closeCs7p2uQeJxui2_9deltalake:bb.a

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdIBx_DNtB1D_3AnyNtNtB1F_6marker4SyncNtB2q_4SendEL_EINtNtB1F_4hash18BuildHasherDefaultNtNtCskFSgV2vI2Ct_13opentelemetry7context8IdHasherEEE9drop_slowB3z_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.df) #31
          to label %.body33 unwind label %bb.au

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCskFSgV2vI2Ct_13opentelemetry5trace7context16SynchronizedSpanEEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ao, %bb.an, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanECs7p2uQeJxui2_9deltalake.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15123)
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !15126, !noundef !3 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCskFSgV2vI2Ct_13opentelemetry7context7ContextECs7p2uQeJxui2_9deltalake.exit, label %bb.as

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCskFSgV2vI2Ct_13opentelemetry5trace7context16SynchronizedSpanEEECs7p2uQeJxui2_9deltalake.exit.i
  %i.dn = atomicrmw sub ptr %i.dl, i64 1 release, align 8, !noalias !15127
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCskFSgV2vI2Ct_13opentelemetry7context7ContextECs7p2uQeJxui2_9deltalake.exit

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdIBx_DNtB1D_3AnyNtNtB1F_6marker4SyncNtB2q_4SendEL_EINtNtB1F_4hash18BuildHasherDefaultNtNtCskFSgV2vI2Ct_13opentelemetry7context8IdHasherEEE9drop_slowB3z_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dk) #31
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCskFSgV2vI2Ct_13opentelemetry7context7ContextECs7p2uQeJxui2_9deltalake.exit unwind label %bb.av

bb.au:                                            ; preds = %bb.ar
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

.body33:                                          ; preds = %bb.dc, %bb.dd, %bb.de, %bb.ar, %bb.aq, %bb.ap, %bb.av, %.body38, %.body31
  %.sroa.08.1 = phi i8 [ 0, %.body31 ], [ 1, %.body38 ], [ %.sroa.08.2, %bb.av ], [ 0, %bb.ar ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 1, %bb.de ], [ 1, %bb.dd ], [ 1, %bb.dc ] ; 2 uses
  %.sroa.07.4 = phi i1 [ %.sroa.07.062, %.body31 ], [ %.not14, %.body38 ], [ %.not14, %bb.av ], [ %.not14, %bb.ar ], [ %.not14, %bb.ap ], [ %.not14, %bb.aq ], [ %.not14, %bb.de ], [ %.not14, %bb.dd ], [ %.not14, %bb.dc ]
  %.pn20 = phi { ptr, i32 } [ %.pn64, %.body31 ], [ %eh.lpad-body39, %.body38 ], [ %i.ds, %bb.av ], [ %i.de, %bb.ar ], [ %i.de, %bb.ap ], [ %i.de, %bb.aq ], [ %i.ig, %bb.de ], [ %i.ig, %bb.dd ], [ %i.ig, %bb.dc ] ; 2 uses
  %i.dq = load i64, ptr %i.ao, align 8, !range !114, !noundef !3
  %i.dr = icmp ne i64 %i.dq, -9223372036854775808
  %or.cond = and i1 %.sroa.07.4, %i.dr
  br i1 %or.cond, label %bb.di, label %.body

bb.av:                                            ; preds = %bb.dg, %bb.at
  %.sroa.08.2 = phi i8 [ 1, %bb.dg ], [ 0, %bb.at ]
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body33

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCskFSgV2vI2Ct_13opentelemetry7context7ContextECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.as, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCskFSgV2vI2Ct_13opentelemetry5trace7context16SynchronizedSpanEEECs7p2uQeJxui2_9deltalake.exit.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCskFSgV2vI2Ct_13opentelemetry7context7ContextECs7p2uQeJxui2_9deltalake.exit53, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCskFSgV2vI2Ct_13opentelemetry7context7ContextECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.dp

bb.ax:                                            ; preds = %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensions13ExtensionsMutECs7p2uQeJxui2_9deltalake.exit, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.di, %.body38, %bb.ay, %.body31, %bb.ad
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

.body31:                                          ; preds = %bb.am, %bb.al, %bb.ay, %bb.z
  %.pn64 = phi { ptr, i32 } [ %i.cn, %bb.z ], [ %.pn65, %bb.ay ], [ %i.cu, %bb.al ], [ %i.cu, %bb.am ]
  %.sroa.07.062 = phi i1 [ %.not14, %bb.z ], [ %.sroa.07.063, %bb.ay ], [ %.not14, %bb.al ], [ %.not14, %bb.am ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCskFSgV2vI2Ct_13opentelemetry7context7ContextECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.am) #29
          to label %.body33 unwind label %bb.ax

bb.ay:                                            ; preds = %.body31.thread, %bb.z
  %.pn65 = phi { ptr, i32 } [ %i.cj, %.body31.thread ], [ %i.cn, %bb.z ]
  %.sroa.07.063 = phi i1 [ true, %.body31.thread ], [ %.not14, %bb.z ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskFSgV2vI2Ct_13opentelemetry5trace4span6StatusECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.al) #29
          to label %.body31 unwind label %bb.ax

bb.az:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.du = load i64, ptr %storemerge, align 16, !range !20, !noalias !15132, !noundef !3
  %i.dv = trunc nuw i64 %i.du to i1
  br i1 %i.dv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dw = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !15132
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noundef nonnull align 8 %i.dw)
          to label %bb.be unwind label %.thread16.i, !noalias !15132

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanEEECs7p2uQeJxui2_9deltalake.exit.i, %bb.az
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCskFSgV2vI2Ct_13opentelemetry6common8KeyValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs2_NtNtCskFSgV2vI2Ct_13opentelemetry5trace7contextNtBP_7SpanRef14set_attributesINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBT_6common8KeyValueEE0ECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCskFSgV2vI2Ct_13opentelemetry6common8KeyValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body38 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs2_NtNtCskFSgV2vI2Ct_13opentelemetry5trace7contextNtBP_7SpanRef14set_attributesINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBT_6common8KeyValueEE0ECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCskFSgV2vI2Ct_13opentelemetry6common8KeyValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.cz unwind label %bb.cy

.thread16.i:                                      ; preds = %bb.ci, %bb.cg, %bb.ba
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i35

bb.be:                                            ; preds = %bb.ba
  %i.dz = load i64, ptr %i.w, align 8, !range !20, !noalias !15132, !noundef !3
  %i.ea = trunc nuw i64 %i.dz to i1
  br i1 %i.ea, label %bb.bn, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.eb = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !15132, !nonnull !3, !align !38, !noundef !3 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ee = load i8, ptr %i.ed, align 8, !range !101, !noalias !15132, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  invoke void @_RINvYNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanNtNtNtB9_5trace4span4Span14set_attributesINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB9_6common8KeyValueEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.bh unwind label %bb.bg, !noalias !15132

bb.bg:                                            ; preds = %bb.bf
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.ec, i8 %i.ee) #29
          to label %.body38 unwind label %bb.bl, !noalias !15132

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15135
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ei = trunc nuw i8 %i.ee to i1
  br i1 %i.ei, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ej = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !15132
  %i.ek = and i64 %i.ej, 9223372036854775807
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %.noexc.i36, !prof !37

.noexc.i36:                                       ; preds = %bb.bi
  %i.em = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc41 unwind label %bb.cy

.noexc41:                                         ; preds = %.noexc.i36
  br i1 %i.em, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.noexc41
  store atomic i8 1, ptr %i.eh monotonic, align 4, !noalias !15132
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bj, %.noexc41, %bb.bi, %bb.bh
  %i.en = atomicrmw xchg ptr %i.ec, i32 0 release, align 4, !noalias !15132
  %i.eo = icmp eq i32 %i.en, 2
  br i1 %i.eo, label %bb.bk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanEECs7p2uQeJxui2_9deltalake.exit.i, !prof !39

bb.bk:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ec)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.cy

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bk, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !15132
  br label %bb.cz

bb.bl:                                            ; preds = %.thread.i35, %bb.cr, %bb.cp, %bb.by, %.body.i, %.body77.i, %bb.bg
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

.body77.i:                                        ; preds = %bb.cp, %bb.cc, %.body.i, %bb.bm
  %.pn47.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %.pn45.i, %bb.cp ], [ %i.eq, %bb.bm ], [ %i.gl, %bb.cc ]
  %.val64.i = load ptr, ptr %i.v, align 8, !noalias !15132, !nonnull !3, !align !38, !noundef !3
  %.val65.i = load i8, ptr %i.ev, align 8, !range !101, !noalias !15132, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanEEECs7p2uQeJxui2_9deltalake(ptr nonnull %.val64.i, i8 %.val65.i) #29
          to label %.thread.i35 unwind label %bb.bl, !noalias !15132

bb.bm:                                            ; preds = %bb.ct, %bb.co, %bb.cm, %bb.cl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i76.i, %bb.bt, %bb.bq, %bb.bp
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body77.i

bb.bn:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !15132
  %i.er = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !noalias !15132, !nonnull !3, !align !38, !noundef !3
  %i.et = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.eu = load i8, ptr %i.et, align 8, !range !101, !noalias !15132, !noundef !3
  store ptr %i.es, ptr %i.v, align 8, !noalias !15132
  %i.ev = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store i8 %i.eu, ptr %i.ev, align 8, !noalias !15132
  %i.ew = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !15132
  %i.ex = icmp ult i64 %i.ew, 2
  br i1 %i.ex, label %bb.bo, label %bb.cj

bb.bo:                                            ; preds = %bb.bn
  %i.ey = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNvMs1_NtNtCskFSgV2vI2Ct_13opentelemetry5trace7contextNtB7_7SpanRef14with_inner_mut10___CALLSITE, i64 16) monotonic, align 8, !noalias !15132 ; 3 uses
  switch i8 %i.ey, label %bb.bp [
    i8 0, label %bb.cj
    i8 1, label %bb.bq
    i8 2, label %bb.bq
  ], !prof !15139

bb.bp:                                            ; preds = %bb.bo
  %i.ez = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtCskFSgV2vI2Ct_13opentelemetry5trace7contextNtB7_7SpanRef14with_inner_mut10___CALLSITE)
          to label %bb.br unwind label %bb.bm, !noalias !15132 ; 2 uses

bb.bq:                                            ; preds = %bb.bo, %bb.br, %bb.bo
  %.sroa.06.0.i = phi i8 [ %i.ez, %bb.br ], [ %i.ey, %bb.bo ], [ %i.ey, %bb.bo ]
  %i.fa = load ptr, ptr @_RNvNvMs1_NtNtCskFSgV2vI2Ct_13opentelemetry5trace7contextNtB7_7SpanRef14with_inner_mut10___CALLSITE, align 8, !noalias !15132, !nonnull !3, !align !38, !noundef !3
  %i.fb = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fa, i8 noundef %.sroa.06.0.i)
          to label %bb.bs unwind label %bb.bm, !noalias !15132

bb.br:                                            ; preds = %bb.bp
  %i.fc = icmp eq i8 %i.ez, 0
  br i1 %i.fc, label %bb.cj, label %bb.bq

bb.bs:                                            ; preds = %bb.bq
  br i1 %i.fb, label %bb.bt, label %bb.cj

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !15132
  %i.fd = load ptr, ptr @_RNvNvMs1_NtNtCskFSgV2vI2Ct_13opentelemetry5trace7contextNtB7_7SpanRef14with_inner_mut10___CALLSITE, align 8, !noalias !15132, !nonnull !3, !align !38, !noundef !3
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !15132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !15132
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !noalias !15132
  %i.ff = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ff, align 8, !noalias !15132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !15132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !15132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !15132
  store ptr %i.v, ptr %i.p, align 8, !noalias !15132
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !15132
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @6, ptr noundef nonnull %i.p)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.bm, !noalias !15132

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !15132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !15132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !15132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !15132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !15132
  %i.fg = getelementptr inbounds nuw i8, ptr %storemerge, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15132
  store ptr %i.fg, ptr %i.m, align 8, !noalias !15132
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsc_NtNtCskFSgV2vI2Ct_13opentelemetry5trace12span_contextNtB5_11SpanContextNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !15132
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @6, ptr noundef nonnull %i.m)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit69.i unwind label %bb.bu, !noalias !15132

.body.i:                                          ; preds = %bb.ca, %bb.by, %bb.bu
  %.pn.i = phi { ptr, i32 } [ %i.gi, %bb.by ], [ %i.fh, %bb.bu ], [ %i.gj, %bb.ca ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #29
          to label %.body77.i unwind label %bb.bl, !noalias !15132

bb.bu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit69.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !15132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !15132
  store ptr %i.s, ptr %i.t, align 8, !noalias !15132
  %i.fi = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @0, ptr %i.fi, align 8, !noalias !15132
  %i.fj = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr @2, ptr %i.fj, align 8, !noalias !15132
  %i.fk = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @3, ptr %i.fk, align 8, !noalias !15132
  %i.fl = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr @5, ptr %i.fl, align 8, !noalias !15132
  %i.fm = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr @3, ptr %i.fm, align 8, !noalias !15132
  %i.fn = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store ptr %i.r, ptr %i.fn, align 8, !noalias !15132
  %i.fo = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr @7, ptr %i.fo, align 8, !noalias !15132
  %i.fp = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr %i.o, ptr %i.fp, align 8, !noalias !15132
  %i.fq = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  store ptr @7, ptr %i.fq, align 8, !noalias !15132
  store i64 1, ptr %i.u, align 8, !noalias !15132
  %.sroa.08.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.t, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !noalias !15132
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 5, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !15132
  %.sroa.4.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.fe, ptr %.sroa.4.0..sroa_idx.i37, align 8, !noalias !15132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15132
  %i.fr = load ptr, ptr @_RNvNvMs1_NtNtCskFSgV2vI2Ct_13opentelemetry5trace7contextNtB7_7SpanRef14with_inner_mut10___CALLSITE, align 8, !noalias !15140, !nonnull !3, !align !38, !noundef !3
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %.noexc70.i unwind label %bb.by, !noalias !15132

.noexc70.i:                                       ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit69.i
  %i.fs = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !15140
  %i.ft = icmp eq i8 %i.fs, 0
  br i1 %i.ft, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %.noexc70.i
  %i.fu = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !15140 ; 2 uses
  %i.fv = icmp ult i64 %i.fu, 6
  call void @llvm.assume(i1 %i.fv)
  %i.fw = icmp samesign ugt i64 %i.fu, 3
  br i1 %i.fw, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.fx = load ptr, ptr @_RNvNvMs1_NtNtCskFSgV2vI2Ct_13opentelemetry5trace7contextNtB7_7SpanRef14with_inner_mut10___CALLSITE, align 8, !noalias !15140, !nonnull !3, !align !38, !noundef !3 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !15132, !nonnull !3, !noundef !3
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.gb = load i64, ptr %i.ga, align 8, !noalias !15132, !noundef !3
  store i64 4, ptr %i.a, align 8, !noalias !15140
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.fz, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !15140
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.gb, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !15140
  %i.gc = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc71.i unwind label %bb.by, !noalias !15132 ; 2 uses

.noexc71.i:                                       ; preds = %bb.bw
  %i.gd = extractvalue { ptr, ptr } %i.gc, 0      ; 2 uses
  %i.ge = extractvalue { ptr, ptr } %i.gc, 1      ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !invariant.load !3, !noalias !15132, !nonnull !3
  %i.gh = invoke noundef zeroext i1 %i.gg(ptr noundef %i.gd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #32
          to label %.noexc72.i unwind label %bb.by, !noalias !15132, !inline_history !15143

.noexc72.i:                                       ; preds = %.noexc71.i
  br i1 %i.gh, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %.noexc72.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fx, ptr noundef nonnull %i.gd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ge, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %bb.bz unwind label %bb.by, !noalias !15132

bb.by:                                            ; preds = %bb.bx, %.noexc71.i, %bb.bw, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit69.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #29
          to label %.body.i unwind label %bb.bl, !noalias !15132

bb.bz:                                            ; preds = %bb.bx, %.noexc72.i, %bb.bv, %.noexc70.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !15132
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ca, !noalias !15132

bb.ca:                                            ; preds = %bb.bz
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.i unwind label %bb.cb, !noalias !15132

bb.cb:                                            ; preds = %bb.ca
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !15132
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.bz
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.bu, !noalias !15132

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15132
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i76.i unwind label %bb.cc, !noalias !15132

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body77.i unwind label %bb.cd, !noalias !15132

bb.cd:                                            ; preds = %bb.cc
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !15132
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i76.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit80.i unwind label %bb.bm, !noalias !15132

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit80.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i76.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !15132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !15132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !15132
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cu, %bb.cn, %bb.ck, %bb.cj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit80.i
  %.val62.i = load ptr, ptr %i.v, align 8, !noalias !15132, !nonnull !3, !align !38, !noundef !3 ; 3 uses
  %.val63.i = load i8, ptr %i.ev, align 8, !range !101, !noalias !15132, !noundef !3
  %i.gn = getelementptr inbounds nuw i8, ptr %.val62.i, i64 4
end_hunk_1
begin_hunk_2_@_RNvXs5_NtCs73bmgzuZ8Mg_21tracing_opentelemetry5layerINtB5_18OpenTelemetryLayerINtNtNtCsbG4i8A5DnWX_18tracing_subscriber5layer7layered7LayeredNtNtNtB1l_6filter3env9EnvFilterNtNtNtB1l_8registry7sharded8RegistryENtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace11BoxedTracerEINtB1j_5LayerB1e_E8on_eventCs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.da

bb.da:                                            ; preds = %bb.fd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCskFSgV2vI2Ct_13opentelemetry5trace5EventEEECs7p2uQeJxui2_9deltalake.exit, %bb.cz
  %.sroa.068.5 = phi i8 [ %.sroa.068.6, %bb.fd ], [ %.sroa.068.4, %bb.cz ], [ %.sroa.068.4, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCskFSgV2vI2Ct_13opentelemetry5trace5EventEEECs7p2uQeJxui2_9deltalake.exit ] ; 2 uses
  invoke void @_RNvXsi_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensions15ExtensionsInnerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsbG4i8A5DnWX_18tracing_subscriber8registry10extensions13ExtensionsMutECs7p2uQeJxui2_9deltalake.exit211 unwind label %bb.ac

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit209: ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.it, ptr noundef nonnull align 8 dereferenceable(72) %i.bg, i64 72, i1 false)
  %i.iz = load i64, ptr %i.im, align 16, !range !114, !alias.scope !15242, !noundef !3
  %i.ja = icmp eq i64 %i.iz, -9223372036854775808
  br i1 %i.ja, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCskFSgV2vI2Ct_13opentelemetry5trace5EventEEECs7p2uQeJxui2_9deltalake.exit, label %bb.db

bb.db:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit209
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCskFSgV2vI2Ct_13opentelemetry5trace5EventENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.im)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCskFSgV2vI2Ct_13opentelemetry5trace5EventEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCskFSgV2vI2Ct_13opentelemetry5trace5EventENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.im)
          to label %.body212 unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCskFSgV2vI2Ct_13opentelemetry5trace5EventEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.db
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCskFSgV2vI2Ct_13opentelemetry5trace5EventENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.im)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCskFSgV2vI2Ct_13opentelemetry5trace5EventEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.de

bb.de:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCskFSgV2vI2Ct_13opentelemetry5trace5EventEECs7p2uQeJxui2_9deltalake.exit.i
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %.body212

.body212:                                         ; preds = %bb.dc, %bb.de
  %eh.lpad-body213 = phi { ptr, i32 } [ %i.jd, %bb.de ], [ %i.jb, %bb.dc ]
  store i64 1, ptr %i.im, align 16
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 200
  store ptr %i.it, ptr %.sroa.562.0..sroa_idx, align 8
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 208
  store i64 1, ptr %.sroa.665.0..sroa_idx, align 16
  br label %.body206

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCskFSgV2vI2Ct_13opentelemetry5trace5EventEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit209, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCskFSgV2vI2Ct_13opentelemetry5trace5EventEECs7p2uQeJxui2_9deltalake.exit.i
  store i64 1, ptr %i.im, align 16
  %.sroa.562.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.ep, i64 200
  store ptr %i.it, ptr %.sroa.562.0..sroa_idx63, align 8
  %.sroa.665.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.ep, i64 208
  store i64 1, ptr %.sroa.665.0..sroa_idx66, align 16
  br label %bb.da

bb.df:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i64 -9223372036854775808, ptr %i.an, align 8
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4144.0..sroa_idx, align 8
  %.sroa.5145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 0, ptr %.sroa.5145.0..sroa_idx, align 8
  invoke void @_RNvMs2_NtNtCskFSgV2vI2Ct_13opentelemetry5trace7contextNtB5_7SpanRef10set_status(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.an)
          to label %bb.dg unwind label %bb.al

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.cm, %bb.dg
  %i.je = load i64, ptr %i.ba, align 8, !range !2520, !noundef !3
  %.not163 = icmp eq i64 %i.je, -9223372036854775807
  br i1 %.not163, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(80) %i.ba, i64 80, i1 false)
  invoke void @_RNvMs0_NtCs73bmgzuZ8Mg_21tracing_opentelemetry5layerNtB5_18SpanBuilderUpdates11update_span(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao)
          to label %bb.dj unwind label %bb.al

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.sroa.068.6 = phi i8 [ 0, %bb.di ], [ 1, %bb.dh ] ; 6 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jf, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.jg = load i64, ptr %storemerge, align 16, !range !20, !noalias !15245, !noundef !3
  %i.jh = trunc nuw i64 %i.jg to i1
  br i1 %i.jh, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.ji = getelementptr inbounds nuw i8, ptr %storemerge, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !15245
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noundef nonnull align 8 %i.ji)
          to label %bb.dm unwind label %.thread16.i, !noalias !15245

bb.dl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanEEECs7p2uQeJxui2_9deltalake.exit.i, %bb.dj
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs2_NtNtCskFSgV2vI2Ct_13opentelemetry5trace7contextNtBP_7SpanRef9add_eventINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %bb.fd unwind label %bb.al

.thread16.i:                                      ; preds = %bb.eq, %bb.eo, %bb.dk
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i215

bb.dm:                                            ; preds = %bb.dk
  %i.jj = load i64, ptr %i.x, align 8, !range !20, !noalias !15245, !noundef !3
  %i.jk = trunc nuw i64 %i.jj to i1
  br i1 %i.jk, label %bb.dv, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.jl = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !15245, !nonnull !3, !align !38, !noundef !3 ; 5 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.jo = load i8, ptr %i.jn, align 8, !range !101, !noalias !15245, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !15245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 48, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 24, i1 false)
  invoke void @_RINvYNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanNtNtNtB9_5trace4span4Span9add_eventINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.jp, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.jq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.dp unwind label %bb.do, !noalias !15245

bb.do:                                            ; preds = %bb.dn
  %i.jr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.jm, i8 %i.jo) #29
          to label %.body206 unwind label %bb.dt, !noalias !15245

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !15245
  %i.js = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.jt = trunc nuw i8 %i.jo to i1
  br i1 %i.jt, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ju = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !15245
  %i.jv = and i64 %i.ju, 9223372036854775807
  %i.jw = icmp eq i64 %i.jv, 0
  br i1 %i.jw, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %.noexc.i216, !prof !37

.noexc.i216:                                      ; preds = %bb.dq
  %i.jx = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc220 unwind label %bb.al

.noexc220:                                        ; preds = %.noexc.i216
  br i1 %i.jx, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %.noexc220
  store atomic i8 1, ptr %i.js monotonic, align 4, !noalias !15245
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.dr, %.noexc220, %bb.dq, %bb.dp
  %i.jy = atomicrmw xchg ptr %i.jm, i32 0 release, align 4, !noalias !15245
  %i.jz = icmp eq i32 %i.jy, 2
  br i1 %i.jz, label %bb.ds, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanEECs7p2uQeJxui2_9deltalake.exit.i, !prof !39

bb.ds:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.jm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.al

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ds, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !15245
  br label %bb.fd

bb.dt:                                            ; preds = %.thread.i215, %bb.ez, %bb.ex, %bb.eg, %.body.i, %.body77.i, %bb.do
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

.body77.i:                                        ; preds = %bb.ex, %bb.ek, %.body.i, %bb.du
  %.pn47.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %.pn45.i, %bb.ex ], [ %i.kb, %bb.du ], [ %i.lw, %bb.ek ]
  %.val64.i = load ptr, ptr %i.v, align 8, !noalias !15245, !nonnull !3, !align !38, !noundef !3
  %.val65.i = load i8, ptr %i.kg, align 8, !range !101, !noalias !15245, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanEEECs7p2uQeJxui2_9deltalake(ptr nonnull %.val64.i, i8 %.val65.i) #29
          to label %.thread.i215 unwind label %bb.dt, !noalias !15245

bb.du:                                            ; preds = %bb.fb, %bb.ew, %bb.eu, %bb.et, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i76.i, %bb.eb, %bb.dy, %bb.dx
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %.body77.i

bb.dv:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !15245
  %i.kc = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !15245, !nonnull !3, !align !38, !noundef !3
  %i.ke = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.kf = load i8, ptr %i.ke, align 8, !range !101, !noalias !15245, !noundef !3
  store ptr %i.kd, ptr %i.v, align 8, !noalias !15245
  %i.kg = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store i8 %i.kf, ptr %i.kg, align 8, !noalias !15245
  %i.kh = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !15245
  %i.ki = icmp ult i64 %i.kh, 2
  br i1 %i.ki, label %bb.dw, label %bb.er

bb.dw:                                            ; preds = %bb.dv
  %i.kj = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNvMs1_NtNtCskFSgV2vI2Ct_13opentelemetry5trace7contextNtB7_7SpanRef14with_inner_mut10___CALLSITE, i64 16) monotonic, align 8, !noalias !15245 ; 3 uses
  switch i8 %i.kj, label %bb.dx [
    i8 0, label %bb.er
    i8 1, label %bb.dy
    i8 2, label %bb.dy
  ], !prof !15139

bb.dx:                                            ; preds = %bb.dw
  %i.kk = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs1_NtNtCskFSgV2vI2Ct_13opentelemetry5trace7contextNtB7_7SpanRef14with_inner_mut10___CALLSITE)
          to label %bb.dz unwind label %bb.du, !noalias !15245 ; 2 uses

bb.dy:                                            ; preds = %bb.dw, %bb.dz, %bb.dw
  %.sroa.06.0.i = phi i8 [ %i.kk, %bb.dz ], [ %i.kj, %bb.dw ], [ %i.kj, %bb.dw ]
  %i.kl = load ptr, ptr @_RNvNvMs1_NtNtCskFSgV2vI2Ct_13opentelemetry5trace7contextNtB7_7SpanRef14with_inner_mut10___CALLSITE, align 8, !noalias !15245, !nonnull !3, !align !38, !noundef !3
  %i.km = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kl, i8 noundef %.sroa.06.0.i)
          to label %bb.ea unwind label %bb.du, !noalias !15245

bb.dz:                                            ; preds = %bb.dx
  %i.kn = icmp eq i8 %i.kk, 0
  br i1 %i.kn, label %bb.er, label %bb.dy

bb.ea:                                            ; preds = %bb.dy
  br i1 %i.km, label %bb.eb, label %bb.er

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !15245
  %i.ko = load ptr, ptr @_RNvNvMs1_NtNtCskFSgV2vI2Ct_13opentelemetry5trace7contextNtB7_7SpanRef14with_inner_mut10___CALLSITE, align 8, !noalias !15245, !nonnull !3, !align !38, !noundef !3
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !15245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !15245
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !noalias !15245
  %i.kq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.kq, align 8, !noalias !15245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !15245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !15245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !15245
  store ptr %i.v, ptr %i.p, align 8, !noalias !15245
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtCskFSgV2vI2Ct_13opentelemetry6global5trace9BoxedSpanEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !15245
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @6, ptr noundef nonnull %i.p)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.du, !noalias !15245

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !15245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !15245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !15245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !15245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !15245
  %i.kr = getelementptr inbounds nuw i8, ptr %storemerge, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !15245
  store ptr %i.kr, ptr %i.m, align 8, !noalias !15245
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsc_NtNtCskFSgV2vI2Ct_13opentelemetry5trace12span_contextNtB5_11SpanContextNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !15245
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @6, ptr noundef nonnull %i.m)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit69.i unwind label %bb.ec, !noalias !15245

.body.i:                                          ; preds = %bb.ei, %bb.eg, %bb.ec
  %.pn.i = phi { ptr, i32 } [ %i.lt, %bb.eg ], [ %i.ks, %bb.ec ], [ %i.lu, %bb.ei ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #29
          to label %.body77.i unwind label %bb.dt, !noalias !15245

bb.ec:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit69.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !15245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !15245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !15245
  store ptr %i.s, ptr %i.t, align 8, !noalias !15245
  %i.kt = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @0, ptr %i.kt, align 8, !noalias !15245
  %i.ku = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr @2, ptr %i.ku, align 8, !noalias !15245
  %i.kv = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @3, ptr %i.kv, align 8, !noalias !15245
  %i.kw = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr @5, ptr %i.kw, align 8, !noalias !15245
  %i.kx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr @3, ptr %i.kx, align 8, !noalias !15245
  %i.ky = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store ptr %i.r, ptr %i.ky, align 8, !noalias !15245
  %i.kz = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr @7, ptr %i.kz, align 8, !noalias !15245
  %i.la = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  store ptr %i.o, ptr %i.la, align 8, !noalias !15245
  %i.lb = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  store ptr @7, ptr %i.lb, align 8, !noalias !15245
  store i64 1, ptr %i.u, align 8, !noalias !15245
  %.sroa.08.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.t, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !noalias !15245
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 5, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !15245
  %.sroa.4.0..sroa_idx.i217 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.kp, ptr %.sroa.4.0..sroa_idx.i217, align 8, !noalias !15245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15245
  %i.lc = load ptr, ptr @_RNvNvMs1_NtNtCskFSgV2vI2Ct_13opentelemetry5trace7contextNtB7_7SpanRef14with_inner_mut10___CALLSITE, align 8, !noalias !15252, !nonnull !3, !align !38, !noundef !3
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.lc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %.noexc70.i unwind label %bb.eg, !noalias !15245

.noexc70.i:                                       ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit69.i
  %i.ld = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !15252
  %i.le = icmp eq i8 %i.ld, 0
  br i1 %i.le, label %bb.ed, label %bb.eh

bb.ed:                                            ; preds = %.noexc70.i
  %i.lf = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !15252 ; 2 uses
  %i.lg = icmp ult i64 %i.lf, 6
  call void @llvm.assume(i1 %i.lg)
  %i.lh = icmp samesign ugt i64 %i.lf, 3
  br i1 %i.lh, label %bb.ee, label %bb.eh

bb.ee:                                            ; preds = %bb.ed
  %i.li = load ptr, ptr @_RNvNvMs1_NtNtCskFSgV2vI2Ct_13opentelemetry5trace7contextNtB7_7SpanRef14with_inner_mut10___CALLSITE, align 8, !noalias !15252, !nonnull !3, !align !38, !noundef !3 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.lk = load ptr, ptr %i.lj, align 8, !noalias !15245, !nonnull !3, !noundef !3
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 40
  %i.lm = load i64, ptr %i.ll, align 8, !noalias !15245, !noundef !3
  store i64 4, ptr %i.a, align 8, !noalias !15252
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.lk, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !15252
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.lm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !15252
  %i.ln = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc71.i unwind label %bb.eg, !noalias !15245 ; 2 uses

.noexc71.i:                                       ; preds = %bb.ee
  %i.lo = extractvalue { ptr, ptr } %i.ln, 0      ; 2 uses
  %i.lp = extractvalue { ptr, ptr } %i.ln, 1      ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8, !invariant.load !3, !noalias !15245, !nonnull !3
  %i.ls = invoke noundef zeroext i1 %i.lr(ptr noundef %i.lo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #32
          to label %.noexc72.i unwind label %bb.eg, !noalias !15245, !inline_history !15255

.noexc72.i:                                       ; preds = %.noexc71.i
  br i1 %i.ls, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %.noexc72.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.li, ptr noundef nonnull %i.lo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.lp, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %bb.eh unwind label %bb.eg, !noalias !15245

bb.eg:                                            ; preds = %bb.ef, %.noexc71.i, %bb.ee, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit69.i
  %i.lt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #29
          to label %.body.i unwind label %bb.dt, !noalias !15245

bb.eh:                                            ; preds = %bb.ef, %.noexc72.i, %bb.ed, %.noexc70.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !15245
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ei, !noalias !15245

bb.ei:                                            ; preds = %bb.eh
  %i.lu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.i unwind label %bb.ej, !noalias !15245

bb.ej:                                            ; preds = %bb.ei
  %i.lv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !15245
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.eh
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i218 unwind label %bb.ec, !noalias !15245

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i218: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !15245
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i76.i unwind label %bb.ek, !noalias !15245

bb.ek:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i218
  %i.lw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.body77.i unwind label %bb.el, !noalias !15245

bb.el:                                            ; preds = %bb.ek
  %i.lx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30, !noalias !15245
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i76.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i218
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit80.i unwind label %bb.du, !noalias !15245

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit80.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i76.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !15245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !15245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !15245
  br label %bb.em

bb.em:                                            ; preds = %bb.fc, %bb.ev, %bb.es, %bb.er, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit80.i
  %.val62.i = load ptr, ptr %i.v, align 8, !noalias !15245, !nonnull !3, !align !38, !noundef !3 ; 3 uses
  %.val63.i = load i8, ptr %i.kg, align 8, !range !101, !noalias !15245, !noundef !3
  %i.ly = getelementptr inbounds nuw i8, ptr %.val62.i, i64 4
end_hunk_2
