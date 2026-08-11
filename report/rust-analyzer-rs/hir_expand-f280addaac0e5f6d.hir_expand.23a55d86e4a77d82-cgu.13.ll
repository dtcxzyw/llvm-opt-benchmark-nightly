inline.NumInlined: 1124
inline.NumDeleted: 541
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4sendCs33K2ylI4knu_10hir_expand:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #36
          to label %.body.thread unwind label %bb.t, !noalias !1281

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1281
  call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  %i.cd = load ptr, ptr %i.e, align 8, !alias.scope !1311, !noalias !1281, !nonnull !5, !noundef !5
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !1312
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.s, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs33K2ylI4knu_10hir_expand.exit19.i.i.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #36
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs33K2ylI4knu_10hir_expand.exit19.i.i.i unwind label %.body.thread27.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs33K2ylI4knu_10hir_expand.exit19.i.i.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1281
  br label %bb.ac

bb.t:                                             ; preds = %bb.z, %bb.q
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1281
  unreachable

bb.u:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs33K2ylI4knu_10hir_expand.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1281
  store ptr %i.bx, ptr %i.d, align 8, !noalias !1281
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store atomic i64 0, ptr %i.ch release, align 8, !noalias !1281
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store atomic ptr null, ptr %i.ci release, align 8, !noalias !1281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1281
  store ptr %i.g, ptr %i.b, align 8, !noalias !1281
  store ptr %0, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB6_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4send0Cs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bx)
          to label %bb.v unwind label %bb.y, !noalias !1281

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1281
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1281, !noundef !5 ; 3 uses
  store ptr %i.cj, ptr %i.a, align 8, !noalias !1281
  store ptr %i.bx, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1281
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEECs33K2ylI4knu_10hir_expand.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !1313
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.x, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEECs33K2ylI4knu_10hir_expand.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #36
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEECs33K2ylI4knu_10hir_expand.exit.i.i.i unwind label %.body.thread27.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEECs33K2ylI4knu_10hir_expand.exit.i.i.i: ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1281
  br label %bb.ac

bb.y:                                             ; preds = %bb.u
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !1322
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.z, label %.body.thread

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #36
          to label %.body.thread unwind label %bb.t, !noalias !1281

_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4send0uEs_0uECs33K2ylI4knu_10hir_expand.exit.i: ; preds = %.noexc14
  invoke fastcc void @_RNCINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4send0uEs0_0Cs33K2ylI4knu_10hir_expand(ptr nonnull %i.f) #33
          to label %bb.ac unwind label %.body.thread27.loopexit.split-lp

bb.aa:                                            ; preds = %bb.l
  %i.cq = extractvalue { i64, i32 } %i.bs, 0      ; 2 uses
  %i.cr = icmp eq i64 %i.cq, %i.br
  br i1 %i.cr, label %.split, label %bb.ab

.split:                                           ; preds = %bb.aa
  %i.cs = extractvalue { i64, i32 } %i.bs, 1      ; 2 uses
  %i.ct = icmp ult i32 %i.cs, 1000000000
  call void @llvm.assume(i1 %i.ct)
  %.not36 = icmp samesign ult i32 %i.cs, %i.bn
  br i1 %.not36, label %bb.m, label %.loopexit40

bb.ab:                                            ; preds = %bb.aa
  %.not35 = icmp slt i64 %i.cq, %i.br
  br i1 %.not35, label %bb.m, label %.loopexit40

.loopexit40:                                      ; preds = %bb.ab, %.split, %_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE5writeCs33K2ylI4knu_10hir_expand.exit
  %.sroa.4.0 = phi ptr [ %.sroa.0.0.i12, %_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE5writeCs33K2ylI4knu_10hir_expand.exit ], [ %1, %.split ], [ %1, %bb.ab ]
  %.sroa.0.0 = phi i64 [ %., %_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE5writeCs33K2ylI4knu_10hir_expand.exit ], [ 0, %.split ], [ 0, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cu = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.cv = insertvalue { i64, ptr } %i.cu, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.cv

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEECs33K2ylI4knu_10hir_expand.exit.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs33K2ylI4knu_10hir_expand.exit19.i.i.i, %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4send0uEs_0uECs33K2ylI4knu_10hir_expand.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1281
  %i.cw = load atomic i64, ptr %i.k monotonic, align 128, !noalias !1329 ; 2 uses
  %i.cx = load i64, ptr %i.l, align 16, !noalias !1329, !noundef !5 ; 2 uses
  %i.cy = and i64 %i.cx, %i.cw
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.i, label %_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE5writeCs33K2ylI4knu_10hir_expand.exit

_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE5writeCs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.ac, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i, %bb.a, %bb.k
  %.sroa.0.0.i12 = phi ptr [ null, %bb.k ], [ %1, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i ], [ %1, %bb.a ], [ %1, %bb.ac ] ; 2 uses
  %.not9 = icmp eq ptr %.sroa.0.0.i12, null
  %. = select i1 %.not9, i64 2, i64 1
  br label %.loopexit40

bb.ad:                                            ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body26

.body.thread:                                     ; preds = %.body.thread27.loopexit, %.body.thread27.loopexit.split-lp, %bb.z, %bb.y, %bb.q, %bb.p
  %eh.lpad-body26 = phi { ptr, i32 } [ %i.cn, %bb.z ], [ %i.bz, %bb.p ], [ %i.cn, %bb.y ], [ %i.bz, %bb.q ], [ %lpad.loopexit, %.body.thread27.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread27.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECs33K2ylI4knu_10hir_expand(ptr nonnull %1) #34
          to label %bb.ad unwind label %bb.ae

bb.ae:                                            ; preds = %.body.thread
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE8try_recvCs33K2ylI4knu_10hir_expand(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 128 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.c = call fastcc noundef zeroext i1 @_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10start_recvCs33K2ylI4knu_10hir_expand(ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 dereferenceable(40) %i.a)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.d, align 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val3 = load i64, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store atomic i64 %.val3, ptr %.val release, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.h)
          to label %_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4readCs33K2ylI4knu_10hir_expand.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECs33K2ylI4knu_10hir_expand(ptr nonnull %i.g) #34
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.i, %_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4readCs33K2ylI4knu_10hir_expand.exit, %bb.b
  %storemerge2 = phi i8 [ 1, %bb.b ], [ 0, %_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4readCs33K2ylI4knu_10hir_expand.exit ], [ 1, %bb.i ]
  store i8 %storemerge2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.k, align 1
  br label %bb.h

_RNvMs_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4readCs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.l, align 8
  br label %bb.h
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand11cfg_process21ExpandedAttrToProcessj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1331, !noalias !1334, !noundef !5 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1331, !noalias !1334, !nonnull !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1331, !noalias !1334 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !36

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #37, !noalias !1336
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl nuw nsw i64 %i.m, 4                  ; 3 uses
  %i.p = icmp ult i64 %i.k, 576460752303423487
  br i1 %i.p, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand11cfg_process21ExpandedAttrToProcessEBH_.exit.i, label %bb.p, !prof !1339

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand11cfg_process21ExpandedAttrToProcessEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand11cfg_process21ExpandedAttrToProcessEBH_.exit.i
  %i.q = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.q, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand11cfg_process21ExpandedAttrToProcessEBH_.exit44.i, label %bb.p, !prof !1339

bb.j:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand11cfg_process21ExpandedAttrToProcessEBH_.exit.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1336
  %i.r = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #27, !noalias !1336 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand11cfg_process21ExpandedAttrToProcessEBH_.exit44.i: ; preds = %bb.i
  %1 = shl nuw nsw i64 %.sink.i.i, 4
  %i.t = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %1, i64 noundef 8, i64 noundef %i.o) #27, !noalias !1336 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand11cfg_process21ExpandedAttrToProcessEBH_.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.t, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand11cfg_process21ExpandedAttrToProcessEBH_.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !1336
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !1336
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !1336
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !1336
  %i.x = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.x, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand11cfg_process21ExpandedAttrToProcessEBF_.exit.i, label %bb.n, !prof !1339

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1340
  store i64 0, ptr %i.a, align 8, !noalias !1340
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #37, !noalias !1340
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand11cfg_process21ExpandedAttrToProcessEBF_.exit.i: ; preds = %bb.m
  %2 = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8) #27, !noalias !1336
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit

bb.o:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand11cfg_process21ExpandedAttrToProcessEBH_.exit44.i, %bb.j
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #38
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #37
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit: ; preds = %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand11cfg_process21ExpandedAttrToProcessEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E13shrink_to_fitBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !alias.scope !1343, !noalias !1346, !nonnull !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1343, !noalias !1346 ; 5 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.c

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.f, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameEBF_.exit, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %i.c, %i.g
  br i1 %i.i, label %bb.f, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.e, i64 %i.j, i1 false)
  %i.k = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.l = icmp ult i64 %i.k, 1152921504606846976
  br i1 %i.l, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameEBF_.exit, label %bb.e, !prof !1339

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1348
  store i64 0, ptr %i.a, align 8, !noalias !1348
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #37, !noalias !1348
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameEBF_.exit: ; preds = %bb.d
  %1 = shl nuw nsw i64 %i.k, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %1, i64 noundef 8) #27
  store i64 %i.g, ptr %i.b, align 8
  br label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit

bb.f:                                             ; preds = %bb.c
  %i.m = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E8try_growBM_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.g) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0        ; 2 uses
  switch i64 %i.n, label %bb.g [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit
    i64 0, label %bb.h
  ], !prof !1351

bb.g:                                             ; preds = %bb.f
  %i.o = extractvalue { i64, i64 } %i.m, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.n, i64 noundef %i.o) #38
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #37
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1352, !noalias !1355, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1352, !noalias !1355
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E8try_growBM_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit
    i64 0, label %bb.e
  ], !prof !1351

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #38
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #37
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_E8try_growBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !1357, !noalias !1360, !nonnull !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not48 = icmp eq i64 %i.c, %1
  br i1 %.not48, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %i.k = icmp ult i64 %1, 1152921504606846976
  br i1 %i.k, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameEBH_.exit, label %bb.m, !prof !1339

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameEBH_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameEBH_.exit
  %i.l = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.l, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameEBH_.exit50, label %bb.m, !prof !1339

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameEBH_.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #27 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameEBH_.exit50: ; preds = %bb.g
  %2 = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %2, i64 noundef 8, i64 noundef %i.j) #27 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameEBH_.exit50, %bb.j
  %.sroa.031.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameEBH_.exit50 ]
  store ptr %.sroa.031.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.s = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.s, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameEBF_.exit, label %bb.l, !prof !1339

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1362
  store i64 0, ptr %i.a, align 8, !noalias !1362
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #37, !noalias !1362
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameEBF_.exit: ; preds = %bb.k
  %3 = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 8) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameEBH_.exit50, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameEBF_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameEBF_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameEBH_.exit50 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCs33K2ylI4knu_10hir_expand4name4NameEBF_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCs33K2ylI4knu_10hir_expand4name4NameEBH_.exit50 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E21reserve_one_uncheckedCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noalias !1365, !noundef !5 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 3
  br i1 %i.b, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs33K2ylI4knu_10hir_expand.exit, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs33K2ylI4knu_10hir_expand.exit.thread

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noalias !1365, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.e, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs33K2ylI4knu_10hir_expand.exit.thread, !prof !1368

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs33K2ylI4knu_10hir_expand.exit.thread: ; preds = %bb.a, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs33K2ylI4knu_10hir_expand.exit
  %.sink10.i7 = phi i64 [ %i.d, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs33K2ylI4knu_10hir_expand.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.f = icmp eq i64 %.sink10.i7, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i7, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.e, label %bb.b, !prof !36

bb.b:                                             ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs33K2ylI4knu_10hir_expand.exit.thread
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E8try_growCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit
    i64 0, label %bb.d
  ], !prof !1351

bb.c:                                             ; preds = %bb.b
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #37
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.b
  ret void

bb.e:                                             ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs33K2ylI4knu_10hir_expand.exit.thread, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCs33K2ylI4knu_10hir_expand.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E8try_growCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5   ; 6 uses
  %i.c = icmp ult i64 %i.b, 4                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1369, !noalias !1372, !nonnull !5 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !5 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 4
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i64 %1, 3                    ; 4 uses
  %i.j = icmp ult i64 %1, 1152921504606846976
  br i1 %i.j, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs33K2ylI4knu_10hir_expand.exit, label %bb.m, !prof !1339

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs33K2ylI4knu_10hir_expand.exit
  %i.k = icmp ult i64 %i.b, 1152921504606846976
  br i1 %i.k, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs33K2ylI4knu_10hir_expand.exit45, label %bb.m, !prof !1339

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs33K2ylI4knu_10hir_expand.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.l = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #27 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs33K2ylI4knu_10hir_expand.exit45: ; preds = %bb.g
  %2 = shl nuw nsw i64 %.sink.i, 3
  %i.n = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %2, i64 noundef 8, i64 noundef %i.i) #27 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs33K2ylI4knu_10hir_expand.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs33K2ylI4knu_10hir_expand.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.e, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.r = icmp ult i64 %i.b, 1152921504606846976
  br i1 %i.r, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs33K2ylI4knu_10hir_expand.exit, label %bb.l, !prof !1339

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1374
  store i64 0, ptr %i.a, align 8, !noalias !1374
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #37, !noalias !1374
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.k
  %3 = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 8) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs33K2ylI4knu_10hir_expand.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs33K2ylI4knu_10hir_expand.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs33K2ylI4knu_10hir_expand.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs33K2ylI4knu_10hir_expand.exit45 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs33K2ylI4knu_10hir_expand.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionECs33K2ylI4knu_10hir_expand.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsuAhG64lL82_9text_size5range9TextRangej1_E21reserve_one_uncheckedCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1377, !noalias !1380, !noundef !5 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1377, !noalias !1380
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsuAhG64lL82_9text_size5range9TextRangej1_E8try_growCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit
    i64 0, label %bb.e
  ], !prof !1351

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #38
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #37
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsuAhG64lL82_9text_size5range9TextRangej1_E8try_growCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !1382, !noalias !1385, !nonnull !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not48 = icmp eq i64 %i.c, %1
  br i1 %.not48, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %i.k = icmp ult i64 %1, 1152921504606846976
  br i1 %i.k, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsuAhG64lL82_9text_size5range9TextRangeECs33K2ylI4knu_10hir_expand.exit, label %bb.m, !prof !1339

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsuAhG64lL82_9text_size5range9TextRangeECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsuAhG64lL82_9text_size5range9TextRangeECs33K2ylI4knu_10hir_expand.exit
  %i.l = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.l, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsuAhG64lL82_9text_size5range9TextRangeECs33K2ylI4knu_10hir_expand.exit50, label %bb.m, !prof !1339

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsuAhG64lL82_9text_size5range9TextRangeECs33K2ylI4knu_10hir_expand.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.m = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #27 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsuAhG64lL82_9text_size5range9TextRangeECs33K2ylI4knu_10hir_expand.exit50: ; preds = %bb.g
  %2 = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 4 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %2, i64 noundef 4, i64 noundef %i.j) #27 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsuAhG64lL82_9text_size5range9TextRangeECs33K2ylI4knu_10hir_expand.exit50, %bb.j
  %.sroa.031.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsuAhG64lL82_9text_size5range9TextRangeECs33K2ylI4knu_10hir_expand.exit50 ]
  store ptr %.sroa.031.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.s = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.s, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsuAhG64lL82_9text_size5range9TextRangeECs33K2ylI4knu_10hir_expand.exit, label %bb.l, !prof !1339

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1387
  store i64 0, ptr %i.a, align 8, !noalias !1387
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #37, !noalias !1387
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsuAhG64lL82_9text_size5range9TextRangeECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.k
  %3 = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 4) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsuAhG64lL82_9text_size5range9TextRangeECs33K2ylI4knu_10hir_expand.exit50, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsuAhG64lL82_9text_size5range9TextRangeECs33K2ylI4knu_10hir_expand.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsuAhG64lL82_9text_size5range9TextRangeECs33K2ylI4knu_10hir_expand.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsuAhG64lL82_9text_size5range9TextRangeECs33K2ylI4knu_10hir_expand.exit50 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateNtNtCsuAhG64lL82_9text_size5range9TextRangeECs33K2ylI4knu_10hir_expand.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayNtNtCsuAhG64lL82_9text_size5range9TextRangeECs33K2ylI4knu_10hir_expand.exit50 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBL_4AttrEj1_E21reserve_one_uncheckedCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !1390, !noalias !1393, !noundef !5 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1390, !noalias !1393
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBL_4AttrEj1_E8try_growCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit
    i64 0, label %bb.e
  ], !prof !1351

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #38
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #37
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10infallibleuECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBL_4AttrEj1_E8try_growCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5   ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1395, !noalias !1398, !nonnull !5 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !5 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 2
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 24                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 384307168202282325
  br i1 %or.cond.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECs33K2ylI4knu_10hir_expand.exit, !prof !1400

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECs33K2ylI4knu_10hir_expand.exit
  %i.j = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECs33K2ylI4knu_10hir_expand.exit45, !prof !1400

bb.h:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECs33K2ylI4knu_10hir_expand.exit
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.k = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #27 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECs33K2ylI4knu_10hir_expand.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.i) #27 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECs33K2ylI4knu_10hir_expand.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECs33K2ylI4knu_10hir_expand.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECs33K2ylI4knu_10hir_expand.exit, !prof !1400

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1401
  store i64 0, ptr %i.a, align 8, !noalias !1401
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !1401
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #37, !noalias !1401
  unreachable

_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.k
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 8) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECs33K2ylI4knu_10hir_expand.exit45, %bb.h, %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECs33K2ylI4knu_10hir_expand.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECs33K2ylI4knu_10hir_expand.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECs33K2ylI4knu_10hir_expand.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsjpcu9PwIgok_8smallvec10deallocateTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECs33K2ylI4knu_10hir_expand.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsjpcu9PwIgok_8smallvec12layout_arrayTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBG_4AttrEECs33K2ylI4knu_10hir_expand.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMsu_NtCs33K2ylI4knu_10hir_expand10proc_macroNtB5_10ProcMacros13get_for_crate(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %2, ptr %i.b, align 4, !noalias !1404
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %3, ptr %i.c, align 4, !noalias !1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1404
  store ptr %0, ptr %i.a, align 8, !noalias !1404
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.d, align 8, !noalias !1404
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %0, ptr %i.e, align 8, !noalias !1404
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1404
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1404
  %i.f = call noundef align 8 ptr @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyNtNtCsd9Lm8bEdjjY_5salsa6attach8AttachedE4withNCINvBW_6attachINtNtCshzWfHUSfYae_4core6option6OptionRINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_NCNvNvMsu_B38_NtB38_10ProcMacros13get_for_crate14get_for_crate_0E0B1T_EB3a_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @55, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs33K2ylI4knu_10hir_expand5eager17eager_macro_recur(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %6, i32 noundef range(i32 1, 0) %7, i32 noundef %8, i32 noundef %9, ptr noundef nonnull %10, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %11, ptr noundef nonnull %12, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %13) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [36 x i8], align 4                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 4                 ; 5 uses
  %i.h = alloca [1 x i8], align 1                 ; 3 uses
  %i.i = alloca [1 x i8], align 1                 ; 2 uses
  %i.j = alloca [1 x i8], align 1                 ; 2 uses
  %i.k = alloca [1 x i8], align 1                 ; 2 uses
  %i.l = alloca [1 x i8], align 1                 ; 2 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [144 x i8], align 8               ; 4 uses
  %i.t = alloca [72 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 4                ; 6 uses
end_hunk_0
