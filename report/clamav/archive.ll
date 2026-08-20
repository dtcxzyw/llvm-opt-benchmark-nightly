inline.NumInlined: 159
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7ArchiveD0Ev
define void @_ZN7ArchiveD0Ev(ptr noundef nonnull align 8 dereferenceable(57108) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN7ArchiveD1Ev(ptr noundef nonnull align 8 dead_on_return(57108) dereferenceable(57108) %0) #18
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Archive8CheckArcEb(ptr noundef nonnull align 8 dereferenceable(57108) initializes((48852, 48853), (48864, 48865)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.uiMsgStore, align 8          ; 11 uses
  %i.a = tail call noundef zeroext i1 @_ZN7Archive9IsArchiveEb(ptr noundef nonnull align 8 dereferenceable(57108) %0, i1 noundef zeroext %1)
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48865
  %i.c = load i8, ptr %i.b, align 1, !tbaa !142, !range !58, !noundef !59
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <4 x ptr> <ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2>, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.2, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @.str.2, ptr %i.h, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.2, ptr %i.i, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i8 0, i64 40, i1 false)
  store i32 57, ptr %i.k, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 1, ptr %i.l, align 8, !tbaa !72
  store ptr %i.e, ptr %2, align 8, !tbaa !68
  call void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7Archive9IsArchiveEb(ptr noundef nonnull align 8 dereferenceable(57108) initializes((48852, 48853), (48864, 48865)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.uiMsgStore, align 8          ; 11 uses
  %3 = alloca %class.uiMsgStore, align 8          ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48852 ; 2 uses
  store i8 0, ptr %i.a, align 4, !tbaa !151
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48864 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !66
  %i.c = tail call noundef zeroext i1 @_ZN4File8IsDeviceEv(ptr noundef nonnull align 8 dereferenceable(8256) %0)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x ptr> <ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2>, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr @.str.2, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr @.str.2, ptr %i.h, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  store i32 59, ptr %i.j, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96
  store ptr %i.d, ptr %3, align 8, !tbaa !68
  store i32 2, ptr %i.k, align 8, !tbaa !72
  store ptr %i.d, ptr %i.e, align 8, !tbaa !68
  call void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.ck

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 13792 ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(57108) %0, ptr noundef nonnull %i.l, i64 noundef 7)
  %.not69 = icmp eq i32 %i.p, 7
  br i1 %.not69, label %bb.d, label %bb.ck

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48856 ; 3 uses
  store i64 0, ptr %i.q, align 8, !tbaa !63
  %i.r = load i8, ptr %i.l, align 8, !tbaa !115
  %i.s = icmp eq i8 %i.r, 82
  br i1 %i.s, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 13793
  %i.u = load i8, ptr %i.t, align 1, !tbaa !115
  switch i8 %i.u, label %.thread [
    i8 69, label %bb.f
    i8 97, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 13794
  %i.w = load i8, ptr %i.v, align 2, !tbaa !115
  %i.x = icmp eq i8 %i.w, 126
  br i1 %i.x, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 13795
  %i.z = load i8, ptr %i.y, align 1, !tbaa !115
  %i.aa = icmp eq i8 %i.z, 94
  br i1 %i.aa, label %bb.o, label %.thread

bb.h:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 13794
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !115
  %i.ad = icmp eq i8 %i.ac, 114
  br i1 %i.ad, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 13795
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !115
  %i.ag = icmp eq i8 %i.af, 33
  br i1 %i.ag, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 13796
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !115
  %i.aj = icmp eq i8 %i.ai, 26
  br i1 %i.aj, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 13797
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !115
  %i.am = icmp eq i8 %i.al, 7
  br i1 %i.am, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 13798
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !115 ; 2 uses
  switch i8 %i.ao, label %bb.n [
    i8 0, label %_ZN7Archive11IsSignatureEPKhm.exit.thread97
    i8 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %_ZN7Archive11IsSignatureEPKhm.exit.thread97

bb.n:                                             ; preds = %bb.l
  %i.ap = icmp ult i8 %i.ao, 5
  br i1 %i.ap, label %_ZN7Archive11IsSignatureEPKhm.exit.thread97, label %.thread

_ZN7Archive11IsSignatureEPKhm.exit.thread97:      ; preds = %bb.m, %bb.l, %bb.n
  %.0.i.ph = phi i32 [ 2, %bb.l ], [ 3, %bb.m ], [ 4, %bb.n ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48840
  store i32 %.0.i.ph, ptr %i.aq, align 8, !tbaa !62
  br label %bb.bg

bb.o:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48840
  store i32 1, ptr %i.ar, align 8, !tbaa !62
  %i.as = load ptr, ptr %0, align 8, !tbaa !60
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(57108) %0)
  %i.aw = add nsw i64 %i.av, -7
  %i.ax = load ptr, ptr %0, align 8, !tbaa !60
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(57108) %0, i64 noundef %i.aw, i32 noundef 0)
  br label %bb.bg

.thread:                                          ; preds = %bb.e, %bb.f, %bb.g, %bb.d, %bb.n, %bb.k, %bb.j, %bb.i, %bb.h
  %malloc.i = tail call dereferenceable_or_null(2097152) ptr @malloc(i64 2097152) ; 16 uses
  %i.ba = icmp eq ptr %malloc.i, null             ; 2 uses
  br i1 %i.ba, label %bb.p, label %_ZN5ArrayIcEC2Em.exit

bb.p:                                             ; preds = %.thread
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  br label %_ZN5ArrayIcEC2Em.exit

_ZN5ArrayIcEC2Em.exit:                            ; preds = %.thread, %bb.p
  %i.bb = load ptr, ptr %0, align 8, !tbaa !60
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef i64 %i.bd(ptr noundef nonnull align 8 dereferenceable(57108) %0)
          to label %bb.q unwind label %bb.bf      ; 3 uses

bb.q:                                             ; preds = %_ZN5ArrayIcEC2Em.exit
  %i.bf = load ptr, ptr %0, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = invoke noundef i32 %i.bh(ptr noundef nonnull align 8 dereferenceable(57108) %0, ptr noundef nonnull %malloc.i, i64 noundef 2097136)
          to label %.preheader unwind label %bb.am ; 3 uses

.preheader:                                       ; preds = %bb.q
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph, label %_ZN5ArrayIcED2Ev.exit

.lr.ph:                                           ; preds = %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48840 ; 3 uses
  %i.bl = icmp slt i64 %i.be, 28
  %i.bm = icmp samesign ugt i32 %i.bi, 31
  %invariant.op = and i1 %i.bl, %i.bm
  %i.bn = sub nsw i64 28, %i.be
  %i.bo = getelementptr inbounds nuw i8, ptr %malloc.i, i64 %i.bn ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %wide.trip.count138 = zext nneg i32 %i.bi to i64 ; 4 uses
  br i1 %invariant.op, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.bs = load i8, ptr %malloc.i, align 1, !tbaa !115
  %i.bt = icmp eq i8 %i.bs, 82
  br i1 %i.bt, label %bb.r, label %.lr.ph.split.preheader170

bb.r:                                             ; preds = %.lr.ph.split.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %malloc.i, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !115
  switch i8 %i.bv, label %.lr.ph.split.preheader170 [
    i8 69, label %bb.z
    i8 97, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %malloc.i, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !115
  %i.by = icmp eq i8 %i.bx, 114
  br i1 %i.by, label %bb.t, label %.lr.ph.split.preheader170

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %malloc.i, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !115
  %i.cb = icmp eq i8 %i.ca, 33
  br i1 %i.cb, label %bb.u, label %.lr.ph.split.preheader170

bb.u:                                             ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %malloc.i, i64 4
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !115
  %i.ce = icmp eq i8 %i.cd, 26
  br i1 %i.ce, label %bb.v, label %.lr.ph.split.preheader170

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %malloc.i, i64 5
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !115
  %i.ch = icmp eq i8 %i.cg, 7
  br i1 %i.ch, label %bb.w, label %.lr.ph.split.preheader170

bb.w:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %malloc.i, i64 6
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !115 ; 2 uses
  switch i8 %i.cj, label %bb.y [
    i8 0, label %.split.sink.split
    i8 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  br label %.split.sink.split

bb.y:                                             ; preds = %bb.w
  %i.ck = icmp ult i8 %i.cj, 5
  br i1 %i.ck, label %.split.sink.split, label %.lr.ph.split.preheader170

bb.z:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %malloc.i, i64 2
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !115
  %i.cn = icmp eq i8 %i.cm, 126
  br i1 %i.cn, label %bb.aa, label %.lr.ph.split.preheader170

bb.aa:                                            ; preds = %bb.z
  %i.co = getelementptr inbounds nuw i8, ptr %malloc.i, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !115
  %i.cq = icmp eq i8 %i.cp, 94
  br i1 %i.cq, label %.split.sink.split, label %.lr.ph.split.preheader170

.lr.ph.split.preheader170:                        ; preds = %bb.r, %.lr.ph.split.preheader, %bb.s, %bb.t, %bb.u, %bb.v, %bb.y, %bb.z, %bb.aa
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN7Archive11IsSignatureEPKhm.exit85.thread.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7Archive11IsSignatureEPKhm.exit85.thread.us ], [ 0, %.lr.ph ] ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %malloc.i, i64 %indvars.iv ; 9 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !115
  %i.ct = icmp eq i8 %i.cs, 82
  br i1 %i.ct, label %bb.ab, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread.us

bb.ab:                                            ; preds = %.lr.ph.split.us
  %4 = sub nuw nsw i64 %wide.trip.count138, %indvars.iv ; 2 uses
  %i.cu = icmp samesign ult i64 %4, 4
  br i1 %i.cu, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !115 ; 2 uses
  %i.cx = icmp eq i8 %i.cw, 69
  br i1 %i.cx, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cy = icmp samesign ugt i64 %4, 6
  %i.cz = icmp eq i8 %i.cw, 97
  %or.cond19.i.us = and i1 %i.cy, %i.cz
  br i1 %or.cond19.i.us, label %bb.ae, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread.us

bb.ae:                                            ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.db = load i8, ptr %i.da, align 1, !tbaa !115
  %i.dc = icmp eq i8 %i.db, 114
  br i1 %i.dc, label %bb.af, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread.us

bb.af:                                            ; preds = %bb.ae
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !115
  %i.df = icmp eq i8 %i.de, 33
  br i1 %i.df, label %bb.ag, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread.us

bb.ag:                                            ; preds = %bb.af
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !115
  %i.di = icmp eq i8 %i.dh, 26
  br i1 %i.di, label %bb.ah, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread.us

bb.ah:                                            ; preds = %bb.ag
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cr, i64 5
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !115
  %i.dl = icmp eq i8 %i.dk, 7
  br i1 %i.dl, label %bb.ai, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread.us

bb.ai:                                            ; preds = %bb.ah
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cr, i64 6
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !115 ; 2 uses
  switch i8 %i.dn, label %bb.aj [
    i8 0, label %.split.sink.split.loopexit175
    i8 1, label %.split.sink.split
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.do = icmp ult i8 %i.dn, 5
  br i1 %i.do, label %.split.sink.split, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread.us

bb.ak:                                            ; preds = %bb.ac
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !115
  %i.dr = icmp eq i8 %i.dq, 126
  br i1 %i.dr, label %bb.al, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread.us

bb.al:                                            ; preds = %bb.ak
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !115
  %i.du = icmp eq i8 %i.dt, 94
  br i1 %i.du, label %.split.sink.split, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread.us

_ZN7Archive11IsSignatureEPKhm.exit85.thread.us:   ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %.lr.ph.split.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count138
  br i1 %exitcond.not, label %_ZN5ArrayIcED2Ev.exit, label %.lr.ph.split.us, !llvm.loop !152

bb.am:                                            ; preds = %bb.q
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.thread110

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader170, %_ZN7Archive11IsSignatureEPKhm.exit85.thread
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %_ZN7Archive11IsSignatureEPKhm.exit85.thread ], [ 1, %.lr.ph.split.preheader170 ] ; 7 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %malloc.i, i64 %indvars.iv135 ; 9 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !115
  %i.dy = icmp eq i8 %i.dx, 82
  br i1 %i.dy, label %bb.an, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread

bb.an:                                            ; preds = %.lr.ph.split
  %5 = sub nuw nsw i64 %wide.trip.count138, %indvars.iv135 ; 2 uses
  %i.dz = icmp samesign ult i64 %5, 4
  br i1 %i.dz, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !115 ; 2 uses
  %i.ec = icmp eq i8 %i.eb, 69
  br i1 %i.ec, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !115
  %i.ef = icmp eq i8 %i.ee, 126
  br i1 %i.ef, label %bb.aq, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread

bb.aq:                                            ; preds = %bb.ap
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 3
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !115
  %i.ei = icmp eq i8 %i.eh, 94
  br i1 %i.ei, label %bb.ay, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread

bb.ar:                                            ; preds = %bb.ao
  %i.ej = icmp samesign ugt i64 %5, 6
  %i.ek = icmp eq i8 %i.eb, 97
  %or.cond19.i = and i1 %i.ej, %i.ek
  br i1 %or.cond19.i, label %bb.as, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread

bb.as:                                            ; preds = %bb.ar
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %i.em = load i8, ptr %i.el, align 1, !tbaa !115
  %i.en = icmp eq i8 %i.em, 114
  br i1 %i.en, label %bb.at, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread

bb.at:                                            ; preds = %bb.as
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dw, i64 3
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !115
  %i.eq = icmp eq i8 %i.ep, 33
  br i1 %i.eq, label %bb.au, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread

bb.au:                                            ; preds = %bb.at
  %i.er = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.es = load i8, ptr %i.er, align 1, !tbaa !115
  %i.et = icmp eq i8 %i.es, 26
  br i1 %i.et, label %bb.av, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread

bb.av:                                            ; preds = %bb.au
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dw, i64 5
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !115
  %i.ew = icmp eq i8 %i.ev, 7
  br i1 %i.ew, label %bb.aw, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread

bb.aw:                                            ; preds = %bb.av
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dw, i64 6
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !115 ; 2 uses
  switch i8 %i.ey, label %bb.ax [
    i8 0, label %.split.sink.split.loopexit171
    i8 1, label %.split.sink.split
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ez = icmp ult i8 %i.ey, 5
  br i1 %i.ez, label %.split.sink.split, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread

bb.ay:                                            ; preds = %bb.aq
  store i32 1, ptr %i.bk, align 8, !tbaa !62
  %i.fa = load i8, ptr %i.bo, align 1, !tbaa !115
  %.not72 = icmp eq i8 %i.fa, 82
  br i1 %.not72, label %bb.az, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread

bb.az:                                            ; preds = %bb.ay
  %i.fb = load i8, ptr %i.bp, align 1, !tbaa !115
  %.not73 = icmp eq i8 %i.fb, 83
  br i1 %.not73, label %bb.ba, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread

bb.ba:                                            ; preds = %bb.az
  %i.fc = load i8, ptr %i.bq, align 1, !tbaa !115
  %.not74 = icmp eq i8 %i.fc, 70
  br i1 %.not74, label %bb.bb, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread

bb.bb:                                            ; preds = %bb.ba
  %i.fd = load i8, ptr %i.br, align 1, !tbaa !115
  %.not75 = icmp eq i8 %i.fd, 88
  br i1 %.not75, label %.split, label %_ZN7Archive11IsSignatureEPKhm.exit85.thread

bb.bc:                                            ; preds = %bb.be, %.split
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.thread110

.split.sink.split.loopexit171:                    ; preds = %bb.aw
  br label %.split.sink.split

.split.sink.split.loopexit175:                    ; preds = %bb.ai
  br label %.split.sink.split

.split.sink.split:                                ; preds = %bb.aj, %bb.al, %bb.ax, %bb.ai, %bb.aw, %.split.sink.split.loopexit175, %.split.sink.split.loopexit171, %bb.w, %bb.x, %bb.y, %bb.aa
  %.0.i83.peel.sink = phi i32 [ 4, %bb.y ], [ 2, %.split.sink.split.loopexit171 ], [ 2, %bb.w ], [ 1, %bb.aa ], [ 3, %bb.x ], [ 3, %bb.aw ], [ 3, %bb.ai ], [ 4, %bb.ax ], [ 1, %bb.al ], [ 4, %bb.aj ], [ 2, %.split.sink.split.loopexit175 ]
  %.us-phi.ph = phi i64 [ 0, %bb.y ], [ %indvars.iv135, %.split.sink.split.loopexit171 ], [ 0, %bb.w ], [ 0, %bb.aa ], [ 0, %bb.x ], [ %indvars.iv135, %bb.aw ], [ %indvars.iv, %bb.ai ], [ %indvars.iv135, %bb.ax ], [ %indvars.iv, %bb.al ], [ %indvars.iv, %bb.aj ], [ %indvars.iv, %.split.sink.split.loopexit175 ]
  store i32 %.0.i83.peel.sink, ptr %i.bk, align 8, !tbaa !62
  br label %.split

.split:                                           ; preds = %bb.bb, %.split.sink.split
  %.us-phi = phi i64 [ %.us-phi.ph, %.split.sink.split ], [ %indvars.iv135, %bb.bb ]
  %i.ff = add nsw i64 %.us-phi, %i.be             ; 2 uses
  store i64 %i.ff, ptr %i.q, align 8, !tbaa !63
  %i.fg = load ptr, ptr %0, align 8, !tbaa !60
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8
  invoke void %i.fi(ptr noundef nonnull align 8 dereferenceable(57108) %0, i64 noundef %i.ff, i32 noundef 0)
          to label %bb.bd unwind label %bb.bc

bb.bd:                                            ; preds = %.split
  %i.fj = load i32, ptr %i.bk, align 8, !tbaa !62
  %i.fk = and i32 %i.fj, -2
  %switch = icmp eq i32 %i.fk, 2
  br i1 %switch, label %bb.be, label %_ZN5ArrayIcED2Ev.exit

bb.be:                                            ; preds = %bb.bd
  %i.fl = load ptr, ptr %0, align 8, !tbaa !60
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = invoke noundef i32 %i.fn(ptr noundef nonnull align 8 dereferenceable(57108) %0, ptr noundef nonnull %i.l, i64 noundef 7)
          to label %_ZN5ArrayIcED2Ev.exit unwind label %bb.bc ; 0 uses

_ZN7Archive11IsSignatureEPKhm.exit85.thread:      ; preds = %bb.an, %bb.az, %bb.ba, %bb.bb, %bb.ay, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.ax, %.lr.ph.split
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %_ZN5ArrayIcED2Ev.exit, label %.lr.ph.split, !llvm.loop !154

_ZN5ArrayIcED2Ev.exit:                            ; preds = %_ZN7Archive11IsSignatureEPKhm.exit85.thread.us, %_ZN7Archive11IsSignatureEPKhm.exit85.thread, %.preheader, %bb.bd, %bb.be
  %i.fp = load i64, ptr %i.q, align 8, !tbaa !63
  %.not78 = icmp eq i64 %i.fp, 0
  tail call void @free(ptr noundef nonnull %malloc.i) #18
  br i1 %.not78, label %bb.ck, label %bb.bg

bb.bf:                                            ; preds = %_ZN5ArrayIcEC2Em.exit
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ba, label %_ZN5ArrayIcED2Ev.exit88, label %.thread110

.thread110:                                       ; preds = %bb.bc, %bb.am, %bb.bf
  %.pn.pn112 = phi { ptr, i32 } [ %i.fq, %bb.bf ], [ %i.dv, %bb.am ], [ %i.fe, %bb.bc ]
  tail call void @free(ptr noundef nonnull %malloc.i) #18
  br label %_ZN5ArrayIcED2Ev.exit88

_ZN5ArrayIcED2Ev.exit88:                          ; preds = %bb.bf, %.thread110
  %.pn.pn113 = phi { ptr, i32 } [ %i.fq, %bb.bf ], [ %.pn.pn112, %.thread110 ]
  resume { ptr, i32 } %.pn.pn113

bb.bg:                                            ; preds = %_ZN7Archive11IsSignatureEPKhm.exit.thread97, %_ZN5ArrayIcED2Ev.exit, %bb.o
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 48840
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !62
  switch i32 %i.fs, label %bb.bk [
    i32 4, label %bb.bh
    i32 3, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <4 x ptr> <ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2>, ptr %i.fu, align 8, !tbaa !68
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.2, ptr %i.fv, align 8, !tbaa !68
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr @.str.2, ptr %i.fw, align 8, !tbaa !68
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.2, ptr %i.fx, align 8, !tbaa !68
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fy, i8 0, i64 40, i1 false)
  store i32 60, ptr %i.fz, align 8, !tbaa !69
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 1, ptr %i.ga, align 8, !tbaa !72
  store ptr %i.ft, ptr %2, align 8, !tbaa !68
  call void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.ck

bb.bi:                                            ; preds = %bb.bg
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 13799 ; 2 uses
  %i.gc = load ptr, ptr %0, align 8, !tbaa !60
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = tail call noundef i32 %i.ge(ptr noundef nonnull align 8 dereferenceable(57108) %0, ptr noundef nonnull %i.gb, i64 noundef 1)
  %.not79 = icmp eq i32 %i.gf, 1
  br i1 %.not79, label %bb.bj, label %bb.ck

bb.bj:                                            ; preds = %bb.bi
  %i.gg = load i8, ptr %i.gb, align 1, !tbaa !115
  %.not80 = icmp eq i8 %i.gg, 0
  br i1 %.not80, label %bb.bk, label %bb.ck

bb.bk:                                            ; preds = %bb.bg, %bb.bj
  %.sink = phi i32 [ 8, %bb.bj ], [ 7, %bb.bg ]
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 13800
  store i32 %.sink, ptr %i.gh, align 8, !tbaa !156
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 11056
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !121
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 83440
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !157
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 11080
  store i8 1, ptr %i.gn, align 8, !tbaa !146
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 48832 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 11076 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 11080 ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bp, %bb.bm
  %i.gr = tail call noundef i64 @_ZN7Archive10ReadHeaderEv(ptr noundef nonnull align 8 dereferenceable(57108) %0)
  %.not81 = icmp eq i64 %i.gr, 0                  ; 3 uses
  br i1 %.not81, label %.thread114, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gs = load i64, ptr %i.go, align 8, !tbaa !158
  %i.gt = load ptr, ptr %0, align 8, !tbaa !60
end_hunk_0
