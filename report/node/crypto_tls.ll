inline.NumInlined: 3799
inline.NumDeleted: 1436
begin_hunk_0_@_ZN4node6crypto7TLSWrap7DoWriteEPNS_9WriteWrapEP8uv_buf_tmP11uv_stream_s:bb.a
  %i.n = load i8, ptr %i.m, align 1, !range !26, !noundef !29
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit56

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4node27UnconditionalAsyncWrapDebugIJEEEvPNS_9AsyncWrapEPKcDpOT_(ptr noundef nonnull %0, ptr noundef nonnull @.str.93) #37
  br label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit56

_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit56: ; preds = %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit56
  %i.r = load ptr, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(481) %0) #32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.w = load i64, ptr %i.v, align 8
  %i.x = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 0, i64 noundef %i.w, ptr noundef nonnull @.str.94, i64 noundef 22) ; 0 uses
  br label %bb.ax

bb.f:                                             ; preds = %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %.not114 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not114, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %min.iters.check = icmp ult i64 %3, 5
  br i1 %min.iters.check, label %.lr.ph.preheader158, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.mod.vf = and i64 %3, 3                       ; 2 uses
  %i.y = icmp eq i64 %n.mod.vf, 0
  %i.z = select i1 %i.y, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %3, %i.z                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi145.a = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi146.a = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi147.a = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi148.a = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi149.a = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi150 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi151 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ae = load <3 x i64>, ptr %i.ac, align 8
  %strided.vec = shufflevector <3 x i64> %i.ae, <3 x i64> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.af = load <3 x i64>, ptr %i.ad, align 8
  %strided.vec153 = shufflevector <3 x i64> %i.af, <3 x i64> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ag = add <2 x i64> %vec.phi150, %strided.vec ; 2 uses
  %i.ah = add <2 x i64> %vec.phi151, %strided.vec153 ; 2 uses
  %i.ai = icmp ne <2 x i64> %strided.vec, zeroinitializer ; 3 uses
  %i.aj = icmp ne <2 x i64> %strided.vec153, zeroinitializer ; 3 uses
  %i.ak = or <2 x i1> %vec.phi148.a, %i.ai        ; 2 uses
  %i.al = or <2 x i1> %vec.phi149.a, %i.aj        ; 2 uses
  %i.am = select <2 x i1> %i.ai, <2 x i64> %vec.ind, <2 x i64> %vec.phi146.a ; 2 uses
  %i.an = select <2 x i1> %i.aj, <2 x i64> %step.add, <2 x i64> %vec.phi147.a ; 2 uses
  %i.ao = zext <2 x i1> %i.ai to <2 x i64>
  %i.ap = zext <2 x i1> %i.aj to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi145.a, %i.ap      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %rdx.minmax = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.am, <2 x i64> %i.an)
  %i.au = tail call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax)
  %bin.rdx154 = or <2 x i1> %i.al, %i.ak
  %bin.rdx154.fr = freeze <2 x i1> %bin.rdx154
  %i.av = bitcast <2 x i1> %bin.rdx154.fr to i2
  %.not = icmp eq i2 %i.av, 0
  %rdx.select = select i1 %.not, i64 0, i64 %i.au
  %bin.rdx155 = add <2 x i64> %i.ah, %i.ag
  %i.aw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx155)
  br label %.lr.ph.preheader158

.lr.ph.preheader158:                              ; preds = %.lr.ph.preheader, %middle.block
  %.039107.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.at, %middle.block ]
  %.041106.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %rdx.select, %middle.block ]
  %.043105.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.f
  store i64 0, ptr %i.a, align 8
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader158, %.lr.ph
  %.039107 = phi i64 [ %spec.select48, %.lr.ph ], [ %.039107.ph, %.lr.ph.preheader158 ]
  %.041106 = phi i64 [ %spec.select, %.lr.ph ], [ %.041106.ph, %.lr.ph.preheader158 ]
  %.043105 = phi i64 [ %i.bd, %.lr.ph ], [ %.043105.ph, %.lr.ph.preheader158 ] ; 3 uses
  %i.ax = phi i64 [ %i.bb, %.lr.ph ], [ %.ph, %.lr.ph.preheader158 ]
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.043105
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = add i64 %i.ax, %i.ba                    ; 4 uses
  %.not47 = icmp ne i64 %i.ba, 0                  ; 2 uses
  %spec.select = select i1 %.not47, i64 %.043105, i64 %.041106 ; 3 uses
  %i.bc = zext i1 %.not47 to i64
  %spec.select48 = add i64 %.039107, %i.bc        ; 2 uses
  %i.bd = add nuw i64 %.043105, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !75

._crit_edge:                                      ; preds = %.lr.ph
  %i.be = icmp eq i64 %spec.select48, 1           ; 2 uses
  store i64 %i.bb, ptr %i.a, align 8
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %bb.g, label %bb.x

bb.g:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.039.lcssa140 = phi i1 [ false, %._crit_edge.thread ], [ %i.be, %._crit_edge ]
  %.041.lcssa138 = phi i64 [ 0, %._crit_edge.thread ], [ %spec.select, %._crit_edge ]
  %i.bg = load i32, ptr %i.e, align 8
  %i.bh = load ptr, ptr %i.g, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 176
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2512
  %i.bl = zext i32 %i.bg to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !range !26, !noundef !29
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.h, label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit54

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4node27UnconditionalAsyncWrapDebugIJEEEvPNS_9AsyncWrapEPKcDpOT_(ptr noundef nonnull %0, ptr noundef nonnull @.str.95) #37
  br label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit54

_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit54: ; preds = %bb.g, %bb.h
  tail call void @_ZN4node6crypto7TLSWrap8ClearOutEv(ptr noundef nonnull align 8 dereferenceable(481) %0)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call i64 @BIO_ctrl(ptr noundef %i.bq, i32 noundef 10, i64 noundef 0, ptr noundef null) #32
  %i.bs = and i64 %i.br, 4294967295
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.i, label %bb.x

bb.i:                                             ; preds = %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit54
  %i.bu = load i32, ptr %i.e, align 8
  %i.bv = load ptr, ptr %i.g, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 176
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2512
  %i.bz = zext i32 %i.bu to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !range !26, !noundef !29
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.j, label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit52

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4node27UnconditionalAsyncWrapDebugIJEEEvPNS_9AsyncWrapEPKcDpOT_(ptr noundef nonnull %0, ptr noundef nonnull @.str.96) #37
  br label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit52

_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit52: ; preds = %bb.i, %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %.not104 = icmp eq ptr %i.ce, null
  br i1 %.not104, label %bb.l, label %bb.k, !prof !28

bb.k:                                             ; preds = %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit52
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6crypto7TLSWrap7DoWriteEPNS_9WriteWrapEP8uv_buf_tmP11uv_stream_sE20error_and_abort_args_0) #32
  tail call void @abort() #33
  unreachable

bb.l:                                             ; preds = %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit52
  %i.cf = load ptr, ptr %1, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef ptr %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %1) #32 ; 4 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EEC2EPS1_.exit.i, label %_ZNK4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE12pointer_dataEv.exit.i.i

_ZNK4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE12pointer_dataEv.exit.i.i: ; preds = %bb.l
  %i.ck = tail call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ci) #32
  %.not.i.i59 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i59, label %bb.m, label %bb.n, !prof !5

bb.m:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE12pointer_dataEv.exit.i.i
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EEC1EPS1_E20error_and_abort_args_0) #32
  tail call void @abort() #33
  unreachable

bb.n:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE12pointer_dataEv.exit.i.i
  tail call void @_ZN4node10BaseObject17increase_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ci) #32
  %9 = ptrtoint ptr %i.ci to i64
  br label %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EEC2EPS1_.exit.i

_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EEC2EPS1_.exit.i: ; preds = %bb.n, %bb.l
  %.sroa.0.0.i = phi i64 [ 0, %bb.l ], [ %9, %bb.n ]
  %i.cl = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i, label %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE5resetEPS1_.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EEC2EPS1_.exit.i
  tail call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cl) #32
  br label %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE5resetEPS1_.exit

_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE5resetEPS1_.exit: ; preds = %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EEC2EPS1_.exit.i, %bb.o
  store i64 %.sroa.0.0.i, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cn = load ptr, ptr %i.cm, align 8
  call void @_ZN4node10StreamBase5WriteEP8uv_buf_tmP11uv_stream_sN2v85LocalINS5_6ObjectEEEb(ptr dead_on_unwind nonnull writable sret(%"struct.node::StreamWriteResult") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %i.cn, ptr noundef %2, i64 noundef %3, ptr noundef null, ptr null, i1 noundef zeroext false) #32
  %i.co = load i8, ptr %5, align 8, !range !26, !noundef !29
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.v, label %bb.p

bb.p:                                             ; preds = %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE5resetEPS1_.exit
  %i.cq = call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %.not.i = icmp eq ptr %i.cq, null
  br i1 %.not.i, label %bb.q, label %_ZNK4node17BaseObjectPtrImplINS_6crypto7TLSWrapELb0EE12pointer_dataEv.exit.i.i, !prof !5

bb.q:                                             ; preds = %bb.p
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_6crypto7TLSWrapELb0EEC1EPS2_E20error_and_abort_args_0) #32
  call void @abort() #33
  unreachable

_ZNK4node17BaseObjectPtrImplINS_6crypto7TLSWrapELb0EE12pointer_dataEv.exit.i.i: ; preds = %bb.p
  call void @_ZN4node10BaseObject17increase_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %i.cr = load ptr, ptr %i.g, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 176
  %i.ct = load ptr, ptr %i.cs, align 8            ; 5 uses
  %i.cu = call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %.not.i.i60 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i60, label %bb.r, label %_ZN4node17BaseObjectPtrImplINS_6crypto7TLSWrapELb0EEC2ERKS3_.exit, !prof !5

bb.r:                                             ; preds = %_ZNK4node17BaseObjectPtrImplINS_6crypto7TLSWrapELb0EE12pointer_dataEv.exit.i.i
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_6crypto7TLSWrapELb0EEC1EPS2_E20error_and_abort_args_0) #32
  call void @abort() #33
  unreachable

_ZN4node17BaseObjectPtrImplINS_6crypto7TLSWrapELb0EEC2ERKS3_.exit: ; preds = %_ZNK4node17BaseObjectPtrImplINS_6crypto7TLSWrapELb0EE12pointer_dataEv.exit.i.i
  call void @_ZN4node10BaseObject17increase_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 2712
  %i.cw = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34, !noalias !76 ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 1, ptr %i.cx, align 8, !noalias !76
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr null, ptr %i.cy, align 8, !noalias !76
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN4node13CallbackQueueIvJPNS_11EnvironmentEEE12CallbackImplIZNS_6crypto7TLSWrap7DoWriteEPNS_9WriteWrapEP8uv_buf_tmP11uv_stream_sE3$_0EE", i64 16), ptr %i.cw, align 8, !noalias !76
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %0, ptr %i.cz, align 8, !noalias !76
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.db = ptrtoint ptr %0 to i64
  store i64 %i.db, ptr %i.da, align 8, !noalias !76
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 2728 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.de = atomicrmw add ptr %i.cv, i64 1 seq_cst, align 8 ; 0 uses
  store ptr %i.cw, ptr %i.dc, align 8
  %.not.i.i61 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i61, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN4node17BaseObjectPtrImplINS_6crypto7TLSWrapELb0EEC2ERKS3_.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  store ptr %i.cw, ptr %i.df, align 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i, label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.sink.split.i.i

bb.t:                                             ; preds = %_ZN4node17BaseObjectPtrImplINS_6crypto7TLSWrapELb0EEC2ERKS3_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 2720 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  store ptr %i.cw, ptr %i.dh, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i, label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.sink.split.i.i

_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.sink.split.i.i: ; preds = %bb.t, %bb.s
  %.sink9.i.i = phi ptr [ %i.dg, %bb.s ], [ %i.di, %bb.t ] ; 2 uses
  %i.dj = load ptr, ptr %.sink9.i.i, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.sink9.i.i) #32, !inline_history !81
  br label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i

_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.sink.split.i.i, %bb.t, %bb.s
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ct, i64 1352 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4            ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.u, label %_ZN4node17BaseObjectPtrImplINS_6crypto7TLSWrapELb0EED2Ev.exit

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i
  call void @_ZN4node11Environment18ToggleImmediateRefEb(ptr noundef nonnull align 8 dereferenceable(3304) %i.ct, i1 noundef zeroext true) #32
  %.pre.i = load ptr, ptr %i.dm, align 8          ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 4
  %.pre9.i = load i32, ptr %.phi.trans.insert.i, align 4
  br label %_ZN4node17BaseObjectPtrImplINS_6crypto7TLSWrapELb0EED2Ev.exit

_ZN4node17BaseObjectPtrImplINS_6crypto7TLSWrapELb0EED2Ev.exit: ; preds = %bb.u, %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i
  %i.dr = phi i32 [ %i.dp, %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i ], [ %.pre9.i, %bb.u ]
  %i.ds = phi ptr [ %i.dn, %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.i ], [ %.pre.i, %bb.u ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = add i32 %i.dr, 1
  store i32 %i.du, ptr %i.dt, align 4
  call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  br label %bb.v

bb.v:                                             ; preds = %_ZN4node17BaseObjectPtrImplINS_6crypto7TLSWrapELb0EED2Ev.exit, %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE5resetEPS1_.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i64, label %_ZN4node17StreamWriteResultD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.dw) #32
  br label %_ZN4node17StreamWriteResultD2Ev.exit

_ZN4node17StreamWriteResultD2Ev.exit:             ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit88

bb.x:                                             ; preds = %._crit_edge, %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit54
  %i.dx = phi i1 [ false, %._crit_edge ], [ true, %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit54 ]
  %.039.lcssa139 = phi i1 [ %i.be, %._crit_edge ], [ %.039.lcssa140, %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit54 ]
  %.041.lcssa137 = phi i64 [ %spec.select, %._crit_edge ], [ %.041.lcssa138, %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit54 ]
  %i.dy = phi i64 [ %i.bb, %._crit_edge ], [ 0, %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit54 ] ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 5 uses
  %i.ea = load ptr, ptr %i.dz, align 8
  %.not102 = icmp eq ptr %i.ea, null
  br i1 %.not102, label %bb.z, label %bb.y, !prof !28

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6crypto7TLSWrap7DoWriteEPNS_9WriteWrapEP8uv_buf_tmP11uv_stream_sE20error_and_abort_args_1) #32
  tail call void @abort() #33
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.eb = load ptr, ptr %1, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = tail call noundef ptr %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %1) #32 ; 4 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EEC2EPS1_.exit.i67, label %_ZNK4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE12pointer_dataEv.exit.i.i65

_ZNK4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE12pointer_dataEv.exit.i.i65: ; preds = %bb.z
  %i.eg = tail call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ee) #32
  %.not.i.i66 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i66, label %bb.aa, label %bb.ab, !prof !5

bb.aa:                                            ; preds = %_ZNK4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE12pointer_dataEv.exit.i.i65
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EEC1EPS1_E20error_and_abort_args_0) #32
  tail call void @abort() #33
  unreachable

bb.ab:                                            ; preds = %_ZNK4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE12pointer_dataEv.exit.i.i65
  tail call void @_ZN4node10BaseObject17increase_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ee) #32
  %10 = ptrtoint ptr %i.ee to i64
  br label %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EEC2EPS1_.exit.i67

_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EEC2EPS1_.exit.i67: ; preds = %bb.ab, %bb.z
  %.sroa.0.0.i68 = phi i64 [ 0, %bb.z ], [ %10, %bb.ab ]
  %i.eh = load ptr, ptr %i.dz, align 8            ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i69, label %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE5resetEPS1_.exit70, label %bb.ac

bb.ac:                                            ; preds = %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EEC2EPS1_.exit.i67
  tail call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.eh) #32
  br label %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE5resetEPS1_.exit70

_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE5resetEPS1_.exit70: ; preds = %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EEC2EPS1_.exit.i67, %bb.ac
  store i64 %.sroa.0.0.i68, ptr %i.dz, align 8
  br i1 %i.dx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE5resetEPS1_.exit70
  tail call void @_ZN4node6crypto7TLSWrap6EncOutEv(ptr noundef nonnull align 8 dereferenceable(481) %0)
  br label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit88

bb.ae:                                            ; preds = %_ZN4node17BaseObjectPtrImplINS_9AsyncWrapELb0EE5resetEPS1_.exit70
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @_ZN7ncrypto20MarkPopErrorOnReturnC1EPNS_15CryptoErrorListE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  br i1 %.039.lcssa139, label %bb.ag, label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.ei = load ptr, ptr %i.g, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 176
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 200
  %i.em = load ptr, ptr %i.el, align 8
  call void @_ZN2v811ArrayBuffer15NewBackingStoreEPNS_7IsolateEmNS_30BackingStoreInitializationModeENS_25BackingStoreOnFailureModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.32") align 8 %7, ptr noundef %i.em, i64 noundef %i.dy, i32 noundef 1, i32 noundef 1) #32
  %i.en = load ptr, ptr %7, align 8               ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br i1 %.not114, label %._crit_edge113, label %.lr.ph112

.lr.ph112:                                        ; preds = %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EEaSEOS4_.exit, %.lr.ph112
  %.037111 = phi i64 [ %i.ev, %.lr.ph112 ], [ 0, %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EEaSEOS4_.exit ] ; 2 uses
  %.144110 = phi i64 [ %i.ew, %.lr.ph112 ], [ 0, %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EEaSEOS4_.exit ] ; 2 uses
  %i.eo = call noundef ptr @_ZNK2v812BackingStore4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.en) #32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.037111
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.144110 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ep, ptr align 1 %i.er, i64 %i.et, i1 false)
  %i.eu = load i64, ptr %i.es, align 8
  %i.ev = add i64 %i.eu, %.037111
  %i.ew = add nuw i64 %.144110, 1                 ; 2 uses
  %exitcond117.not = icmp eq i64 %i.ew, %3
  br i1 %exitcond117.not, label %._crit_edge113, label %.lr.ph112, !llvm.loop !82

._crit_edge113:                                   ; preds = %.lr.ph112, %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EEaSEOS4_.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call noundef ptr @_ZN4node6crypto7NodeBIO7FromBIOEP6bio_st(ptr noundef %i.ey) #32
  %i.fa = icmp ugt i64 %i.dy, 16383
  br i1 %i.fa, label %bb.af, label %_ZN4node6crypto7NodeBIO21set_allocate_tls_hintEm.exit

bb.af:                                            ; preds = %._crit_edge113
  %i.fb = lshr i64 %i.dy, 14
  %i.fc = mul i64 %i.fb, 16421
  %i.fd = add i64 %i.fc, 16421
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  store i64 %i.fd, ptr %i.fe, align 8
  br label %_ZN4node6crypto7NodeBIO21set_allocate_tls_hintEm.exit

_ZN4node6crypto7NodeBIO21set_allocate_tls_hintEm.exit: ; preds = %._crit_edge113, %bb.af
  %i.ff = load ptr, ptr %i.p, align 8
  %i.fg = call noundef ptr @_ZNK2v812BackingStore4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.en) #32
  %i.fh = trunc i64 %i.dy to i32
  %i.fi = call i32 @SSL_write(ptr noundef %i.ff, ptr noundef %i.fg, i32 noundef %i.fh) #32 ; 2 uses
  store i32 %i.fi, ptr %i.b, align 4
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.041.lcssa137 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = call noundef ptr @_ZN4node6crypto7NodeBIO7FromBIOEP6bio_st(ptr noundef %i.fl) #32
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 3 uses
  %i.fo = load i64, ptr %i.fn, align 8            ; 3 uses
  %i.fp = icmp ugt i64 %i.fo, 16383
  br i1 %i.fp, label %bb.ah, label %_ZN4node6crypto7NodeBIO21set_allocate_tls_hintEm.exit72

bb.ah:                                            ; preds = %bb.ag
  %i.fq = lshr i64 %i.fo, 14
  %i.fr = mul i64 %i.fq, 16421
  %i.fs = add i64 %i.fr, 16421
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  store i64 %i.fs, ptr %i.ft, align 8
  %.pre = load i64, ptr %i.fn, align 8
  br label %_ZN4node6crypto7NodeBIO21set_allocate_tls_hintEm.exit72

_ZN4node6crypto7NodeBIO21set_allocate_tls_hintEm.exit72: ; preds = %bb.ag, %bb.ah
  %i.fu = phi i64 [ %i.fo, %bb.ag ], [ %.pre, %bb.ah ]
  %i.fv = load ptr, ptr %i.p, align 8
  %i.fw = load ptr, ptr %i.fj, align 8
  %i.fx = trunc i64 %i.fu to i32
  %i.fy = call i32 @SSL_write(ptr noundef %i.fv, ptr noundef %i.fw, i32 noundef %i.fx) #32 ; 3 uses
  store i32 %i.fy, ptr %i.b, align 4
  %i.fz = icmp eq i32 %i.fy, -1
  br i1 %i.fz, label %.thread141, label %bb.ai

.thread141:                                       ; preds = %_ZN4node6crypto7NodeBIO21set_allocate_tls_hintEm.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.ga = load ptr, ptr %i.g, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 176
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 200
  %i.ge = load ptr, ptr %i.gd, align 8
  call void @_ZN2v811ArrayBuffer15NewBackingStoreEPNS_7IsolateEmNS_30BackingStoreInitializationModeENS_25BackingStoreOnFailureModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.32") align 8 %8, ptr noundef %i.ge, i64 noundef %i.dy, i32 noundef 1, i32 noundef 1) #32
  %i.gf = load ptr, ptr %8, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.gg = call noundef ptr @_ZNK2v812BackingStore4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.gf) #32
  %i.gh = load ptr, ptr %i.fj, align 8
  %i.gi = load i64, ptr %i.fn, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr align 1 %i.gh, i64 %i.gi, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %_ZN4node6crypto7NodeBIO21set_allocate_tls_hintEm.exit72, %_ZN4node6crypto7NodeBIO21set_allocate_tls_hintEm.exit
  %i.gj = phi i32 [ %i.fi, %_ZN4node6crypto7NodeBIO21set_allocate_tls_hintEm.exit ], [ %i.fy, %_ZN4node6crypto7NodeBIO21set_allocate_tls_hintEm.exit72 ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.en, %_ZN4node6crypto7NodeBIO21set_allocate_tls_hintEm.exit ], [ null, %_ZN4node6crypto7NodeBIO21set_allocate_tls_hintEm.exit72 ]
  %i.gk = icmp eq i32 %i.gj, -1
  %i.gl = trunc i64 %i.dy to i32
  %i.gm = icmp eq i32 %i.gj, %i.gl
  %or.cond = or i1 %i.gk, %i.gm
  br i1 %or.cond, label %bb.ak, label %bb.aj, !prof !83

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6crypto7TLSWrap7DoWriteEPNS_9WriteWrapEP8uv_buf_tmP11uv_stream_sE20error_and_abort_args_2) #32
  call void @abort() #33
  unreachable

bb.ak:                                            ; preds = %.thread141, %bb.ai
  %.sroa.0.0144 = phi ptr [ %i.gf, %.thread141 ], [ %.sroa.0.0, %bb.ai ] ; 4 uses
  %i.gn = phi i32 [ -1, %.thread141 ], [ %i.gj, %bb.ai ]
  %i.go = load i32, ptr %i.e, align 8
  %i.gp = load ptr, ptr %i.g, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 176
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 2512
  %i.gt = zext i32 %i.go to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !range !26, !noundef !29
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.al, label %_ZN4node5DebugIJRmRiEEEvPNS_9AsyncWrapEPKcDpOT_.exit

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4node27UnconditionalAsyncWrapDebugIJRmRiEEEvPNS_9AsyncWrapEPKcDpOT_(ptr noundef nonnull %0, ptr noundef nonnull @.str.77, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #37
  %.pre118 = load i32, ptr %i.b, align 4
  br label %_ZN4node5DebugIJRmRiEEEvPNS_9AsyncWrapEPKcDpOT_.exit

_ZN4node5DebugIJRmRiEEEvPNS_9AsyncWrapEPKcDpOT_.exit: ; preds = %bb.ak, %bb.al
  %i.gx = phi i32 [ %i.gn, %bb.ak ], [ %.pre118, %bb.al ]
  %i.gy = icmp eq i32 %i.gx, -1
  br i1 %i.gy, label %bb.am, label %bb.av

bb.am:                                            ; preds = %_ZN4node5DebugIJRmRiEEEvPNS_9AsyncWrapEPKcDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.gz = load ptr, ptr %i.p, align 8
  %i.ha = call i32 @SSL_get_error(ptr noundef %i.gz, i32 noundef -1) #32 ; 2 uses
  store i32 %i.ha, ptr %i.c, align 4
  %i.hb = and i32 %i.ha, -5
  %or.cond.not = icmp eq i32 %i.hb, 1
  %i.hc = load i32, ptr %i.e, align 8
  %i.hd = load ptr, ptr %i.g, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 176
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 2512
  %i.hh = zext i32 %i.hc to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !range !26, !noundef !29
  %i.hk = trunc nuw i8 %i.hj to i1                ; 2 uses
  br i1 %or.cond.not, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  br i1 %i.hk, label %bb.ao, label %_ZN4node5DebugIJRiEEEvPNS_9AsyncWrapEPKcDpOT_.exit

bb.ao:                                            ; preds = %bb.an
  call void @_ZN4node27UnconditionalAsyncWrapDebugIJRiEEEvPNS_9AsyncWrapEPKcDpOT_(ptr noundef nonnull %0, ptr noundef nonnull @.str.103, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #37
  br label %_ZN4node5DebugIJRiEEEvPNS_9AsyncWrapEPKcDpOT_.exit

_ZN4node5DebugIJRiEEEvPNS_9AsyncWrapEPKcDpOT_.exit: ; preds = %bb.an, %bb.ao
  %i.hl = load ptr, ptr %i.dz, align 8            ; 2 uses
  %.not.i.i.i81 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i81, label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EEaSEOS4_.exit85, label %bb.ap

bb.ap:                                            ; preds = %_ZN4node5DebugIJRiEEEvPNS_9AsyncWrapEPKcDpOT_.exit
  call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.hl) #32
  br label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EEaSEOS4_.exit85

bb.aq:                                            ; preds = %bb.am
  br i1 %i.hk, label %bb.ar, label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN4node27UnconditionalAsyncWrapDebugIJEEEvPNS_9AsyncWrapEPKcDpOT_(ptr noundef nonnull %0, ptr noundef nonnull @.str.104) #37
  br label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit

_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit: ; preds = %bb.aq, %bb.ar
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.hn = load ptr, ptr %i.hm, align 8            ; 2 uses
  %.not103 = icmp eq ptr %i.hn, null
  br i1 %.not103, label %.thread, label %bb.as

.thread:                                          ; preds = %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit
  store ptr %.sroa.0.0144, ptr %i.hm, align 8
  br label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EEaSEOS4_.exit85.thread

bb.as:                                            ; preds = %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit
  %i.ho = call noundef i64 @_ZNK2v812BackingStore10ByteLengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.hn) #32
  %i.hp = icmp eq i64 %i.ho, 0
end_hunk_0
