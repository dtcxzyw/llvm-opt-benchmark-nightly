Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/cmddata?download=true
inline.NumInlined: 108
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11CommandData16ParseCommandLineEbiPPc:bb.a

.loopexit.split-lp:                               ; preds = %bb.k, %.noexc16
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split, %.loopexit.split.us, %.loopexit.split-lp
  %.sroa.0.035 = phi ptr [ %.sroa.0.0.lcssa, %.loopexit.split-lp ], [ %.sroa.0.036, %.loopexit.split ], [ %.sroa.0.036.us, %.loopexit.split.us ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit.us, %.loopexit.split.us ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.035, null
  br i1 %.not.i, label %_ZN5ArrayIwED2Ev.exit, label %.thread

.thread:                                          ; preds = %.thread.split, %.thread.split.us, %.loopexit
  %lpad.phi31 = phi { ptr, i32 } [ %lpad.phi, %.loopexit ], [ %lpad.thr_comm, %.thread.split ], [ %lpad.thr_comm.us, %.thread.split.us ]
  %.sroa.0.130 = phi ptr [ %.sroa.0.035, %.loopexit ], [ %.sroa.0.2, %.thread.split ], [ %.sroa.0.2.us, %.thread.split.us ]
  tail call void @free(ptr noundef nonnull %.sroa.0.130) #18
  br label %_ZN5ArrayIwED2Ev.exit

_ZN5ArrayIwED2Ev.exit:                            ; preds = %.loopexit, %.thread
  %lpad.phi32 = phi { ptr, i32 } [ %lpad.phi, %.loopexit ], [ %lpad.phi31, %.thread ]
  resume { ptr, i32 } %lpad.phi32

_ZN11CommandData9ParseDoneEv.exit:                ; preds = %bb.n, %bb.m, %switch.edge.thread.i, %.noexc17, %._crit_edge
  %.not.i18 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i18, label %_ZN5ArrayIwED2Ev.exit19, label %bb.o

bb.o:                                             ; preds = %_ZN11CommandData9ParseDoneEv.exit
  tail call void @free(ptr noundef nonnull %.sroa.0.0.lcssa) #18
  br label %_ZN5ArrayIwED2Ev.exit19

_ZN5ArrayIwED2Ev.exit19:                          ; preds = %_ZN11CommandData9ParseDoneEv.exit, %bb.o
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN11CommandData13PreprocessArgEPKw(ptr noundef nonnull align 8 dereferenceable(100904) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 45
  br i1 %i.b, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 83465 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !63, !range !39, !noundef !40
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15
  %i.h = icmp eq i32 %i.g, 45
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.c, align 1, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.l = tail call noundef i32 @_Z8wcsicompPKwS0_(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.5)
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16412
  store i8 1, ptr %i.n, align 4, !tbaa !106
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = tail call noundef i32 @_Z9wcsnicompPKwS0_m(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.6, i64 noundef 4)
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN11CommandData13ProcessSwitchEPKw(ptr noundef nonnull align 8 dereferenceable(100904) %0, ptr noundef nonnull %i.f)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 49204
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32808
  %i.s = load i32, ptr %i.r, align 8, !tbaa !107
  tail call void @_Z14InitLogOptionsPKw11RAR_CHARSET(ptr noundef nonnull %i.q, i32 noundef %i.s)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = tail call noundef i32 @_Z9wcsnicompPKwS0_m(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.7, i64 noundef 2)
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN11CommandData13ProcessSwitchEPKw(ptr noundef nonnull align 8 dereferenceable(100904) %0, ptr noundef nonnull %i.f)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 49204 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !15
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32808
  %i.y = load i32, ptr %i.x, align 8, !tbaa !107
  tail call void @_Z14InitLogOptionsPKw11RAR_CHARSET(ptr noundef nonnull %i.v, i32 noundef %i.y)
  br label %bb.o

bb.m:                                             ; preds = %bb.b, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 83476 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !15
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call ptr @wcsncpy(ptr noundef nonnull %i.z, ptr noundef nonnull %1, i64 noundef 2064) #18 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.j, %bb.l, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11CommandData8ParseArgEPw(ptr noundef nonnull align 8 dereferenceable(100904) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.FindData, align 8           ; 5 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 45
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 83465 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !63, !range !39, !noundef !40
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15
  %i.h = icmp eq i32 %i.g, 45
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.c, align 1, !tbaa !63
  br label %bb.aj

bb.f:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN11CommandData13ProcessSwitchEPKw(ptr noundef nonnull align 8 dereferenceable(100904) %0, ptr noundef nonnull %i.f)
  br label %bb.aj

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 83476 ; 7 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.l, ptr noundef nonnull %1, i64 noundef 2064)
  %i.o = load i32, ptr %i.l, align 4, !tbaa !15
  %i.p = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.o) ; 4 uses
  store i32 %i.p, ptr %i.l, align 4, !tbaa !15
  switch i32 %i.p, label %bb.i [
    i32 73, label %bb.j
    i32 83, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.q = tail call noundef ptr @_Z8wcsupperPw(ptr noundef nonnull %i.l) ; 0 uses
  %.pr = load i32, ptr %i.l, align 4, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.i
  %i.r = phi i32 [ %i.p, %bb.h ], [ %i.p, %bb.h ], [ %.pr, %bb.i ]
  %i.s = icmp eq i32 %i.r, 80
  br i1 %i.s, label %bb.k, label %bb.aj

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 57396
  store i32 2, ptr %i.t, align 4, !tbaa !67
  tail call void @_Z19SetConsoleMsgStream12MESSAGE_TYPE(i32 noundef 2)
  br label %bb.aj

bb.l:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 91732 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !15
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.u, ptr noundef nonnull %1, i64 noundef 2048)
  br label %bb.aj

bb.n:                                             ; preds = %bb.l
  %i.x = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #19 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr [4 x i8], ptr %1, i64 %i.x
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !15
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ac = phi i32 [ %i.ab, %bb.o ], [ 0, %bb.n ]  ; 2 uses
  %i.ad = tail call noundef zeroext i1 @_Z10IsDriveDivi(i32 noundef %i.ac)
  br i1 %i.ad, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = tail call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.ac)
  %i.af = xor i1 %i.ae, true
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not = phi i1 [ false, %bb.p ], [ %i.af, %bb.q ]
  %i.ag = load i32, ptr %i.l, align 4, !tbaa !15
  %i.ah = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.ag) ; 4 uses
  %i.ai = tail call ptr @wcschr(ptr noundef nonnull @.str.3, i32 noundef signext %i.ah) #19
  %i.aj = icmp ne ptr %i.ai, null                 ; 2 uses
  %i.ak = icmp eq i32 %i.ah, 82
  br i1 %i.ak, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 83480
  %i.am = load i32, ptr %i.al, align 8, !tbaa !15
  %.fr = freeze i32 %i.am
  %i.an = icmp eq i32 %.fr, 0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ao = phi i1 [ false, %bb.r ], [ %i.an, %bb.s ]
  %or.cond = select i1 %.not, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16416
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.ap, ptr noundef nonnull %1, i64 noundef 2048)
  br label %bb.aj

bb.v:                                             ; preds = %bb.t
  %i.aq = icmp eq i32 %i.ah, 84
  %or.cond3 = or i1 %i.aq, %i.aj
  br i1 %or.cond3, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ar = load i32, ptr %1, align 4, !tbaa !15
  %.not42 = icmp eq i32 %i.ar, 64
  br i1 %.not42, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 83468
  %i.at = load i32, ptr %i.as, align 4, !tbaa !64
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 99928
  tail call void @_ZN10StringList9AddStringEPKw(ptr noundef nonnull align 8 dereferenceable(184) %i.av, ptr noundef nonnull %1)
  br label %bb.aj

bb.z:                                             ; preds = %bb.v, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %i.ax = call noundef zeroext i1 @_ZN8FindFile8FastFindEPKwP8FindDatab(ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext false) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 83468
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !64 ; 2 uses
  br i1 %i.ax, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ba = icmp eq i32 %i.az, 2
  br i1 %i.ba, label %.thread, label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.bb = icmp eq i32 %i.az, 1
  br i1 %i.bb, label %.thread47, label %.thread

.thread:                                          ; preds = %bb.aa, %bb.ab
  %i.bc = load i32, ptr %1, align 4, !tbaa !15
  %i.bd = icmp eq i32 %i.bc, 64
  br i1 %i.bd, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.thread
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bf = call noundef zeroext i1 @_Z10IsWildcardPKw(ptr noundef nonnull %i.be)
  br i1 %i.bf, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 83464
  store i8 1, ptr %i.bg, align 8, !tbaa !62
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 99928
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32804
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !68
  %i.bk = call noundef zeroext i1 @_Z12ReadTextFilePKwP10StringListbb11RAR_CHARSETbbb(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bh, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %i.bj, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) ; 0 uses
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ac, %.thread, %bb.aa
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8204
  %i.bm = load i8, ptr %i.bl, align 4, !range !39
  %i.bn = trunc nuw i8 %i.bm to i1
  %or.cond6 = select i1 %i.ax, i1 %i.bn, i1 false
  br i1 %or.cond6, label %bb.af, label %.thread47

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ao, label %bb.ag, label %switch.early.test

switch.early.test:                                ; preds = %bb.af
  switch i32 %i.ah, label %.thread47 [
    i32 88, label %bb.ag
    i32 69, label %bb.ag
  ]

bb.ag:                                            ; preds = %switch.early.test, %switch.early.test, %bb.af
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16416 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !15
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.ah, label %.thread47

bb.ah:                                            ; preds = %bb.ag
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.bo, ptr noundef nonnull %1, i64 noundef 2048)
  call void @_Z11AddEndSlashPwm(ptr noundef nonnull %i.bo, i64 noundef 2048)
  br label %bb.ai

.thread47:                                        ; preds = %bb.ab, %switch.early.test, %bb.ag, %bb.ae
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 99928
  call void @_ZN10StringList9AddStringEPKw(ptr noundef nonnull align 8 dereferenceable(184) %i.br, ptr noundef nonnull %1)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread47, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.aj

bb.aj:                                            ; preds = %bb.u, %bb.ai, %bb.y, %bb.k, %bb.j, %bb.m, %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11CommandData9ParseDoneEv(ptr noundef nonnull align 8 dereferenceable(100904) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 99968
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = icmp ne i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 83464
  %i.e = load i8, ptr %i.d, align 8, !range !39
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 99928
  tail call void @_ZN10StringList9AddStringEPKw(ptr noundef nonnull align 8 dereferenceable(184) %i.g, ptr noundef nonnull @.str)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 83476
  %i.i = load i32, ptr %i.h, align 4, !tbaa !15
  %i.j = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.i) ; 2 uses
  switch i32 %i.j, label %bb.g [
    i32 88, label %switch.edge
    i32 69, label %switch.edge
    i32 80, label %switch.edge
    i32 86, label %bb.e
    i32 76, label %bb.e
  ]

switch.edge:                                      ; preds = %bb.c, %bb.c, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 58617 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !66, !range !39, !noundef !40
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %switch.edge.thread

bb.d:                                             ; preds = %switch.edge
  store i8 0, ptr %i.k, align 1, !tbaa !66
  br label %switch.edge.thread

switch.edge.thread:                               ; preds = %bb.d, %switch.edge
  switch i32 %i.j, label %bb.g [
    i32 86, label %bb.e
    i32 76, label %bb.e
  ]

bb.e:                                             ; preds = %bb.c, %bb.c, %switch.edge.thread, %switch.edge.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 83480
  %i.o = load i32, ptr %i.n, align 8, !tbaa !15
  %i.p = icmp eq i32 %i.o, 66
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 83472
  store i8 1, ptr %i.q, align 8, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %switch.edge.thread, %bb.f, %bb.e
  ret void
end_hunk_0
begin_hunk_1_@_ZN11CommandData13ProcessSwitchEPKw:bb.a
    i32 83, label %bb.q
    i32 82, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 57424
  store i32 1, ptr %i.al, align 8, !tbaa !116
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 57424
  store i32 2, ptr %i.am, align 8, !tbaa !116
  br label %.loopexit

bb.s:                                             ; preds = %bb.p
  tail call void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 7)
  br label %.loopexit

bb.t:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 57445
  store i8 1, ptr %i.an, align 1, !tbaa !117
  br label %.loopexit

bb.u:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32816
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, i64 noundef 2048)
  br label %.loopexit

bb.v:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 58528
  store i8 1, ptr %i.aq, align 8, !tbaa !118
  br label %.loopexit

bb.w:                                             ; preds = %bb.c
  tail call void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 7)
  br label %.loopexit

bb.x:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !15
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !15
  %i.aw = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.av)
  switch i32 %i.aw, label %.loopexit [
    i32 45, label %bb.z
    i32 85, label %bb.aa
    i32 76, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 57446
  store i8 1, ptr %i.ax, align 2, !tbaa !119
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 57484
  store i32 1, ptr %i.ay, align 4, !tbaa !120
  br label %.loopexit

bb.ab:                                            ; preds = %bb.y
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 57484
  store i32 2, ptr %i.az, align 4, !tbaa !120
  br label %.loopexit

bb.ac:                                            ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !15
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !15
  %i.bf = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.be)
  switch i32 %i.bf, label %.loopexit [
    i32 83, label %bb.ae
    i32 72, label %bb.af
    i32 70, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 57478
  store i8 1, ptr %i.bg, align 2, !tbaa !121
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57501
  store i8 1, ptr %i.bh, align 1, !tbaa !122
  br label %.loopexit

bb.ag:                                            ; preds = %bb.ad
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 57502
  store i8 1, ptr %i.bi, align 2, !tbaa !123
  br label %.loopexit

bb.ah:                                            ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !15
  %i.bl = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.bk)
  %cond1 = icmp eq i32 %i.bl, 80
  br i1 %cond1, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !15
  switch i32 %i.bn, label %.loopexit [
    i32 0, label %bb.aj
    i32 49, label %bb.ak
    i32 50, label %bb.al
    i32 51, label %bb.am
    i32 52, label %bb.an
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 57452
  store i32 1, ptr %i.bo, align 4, !tbaa !124
  br label %.loopexit

bb.ak:                                            ; preds = %bb.ai
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 57452
  store i32 2, ptr %i.bp, align 4, !tbaa !124
  br label %.loopexit

bb.al:                                            ; preds = %bb.ai
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 57452
  store i32 3, ptr %i.bq, align 4, !tbaa !124
  br label %.loopexit

bb.am:                                            ; preds = %bb.ai
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 57452
  store i32 4, ptr %i.br, align 4, !tbaa !124
  br label %.loopexit

bb.an:                                            ; preds = %bb.ai
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 41008
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 12
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt, i64 noundef 2048)
  br label %.loopexit

bb.ao:                                            ; preds = %bb.ah
  %i.bu = load i32, ptr %i.bj, align 4, !tbaa !15
  %i.bv = icmp eq i32 %i.bu, 43
  br i1 %i.bv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.by = tail call noundef i32 @_ZN11CommandData11GetExclAttrEPKwRb(ptr nonnull align 8 poison, ptr noundef nonnull %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %i.bx)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !46
  %i.cb = or i32 %i.ca, %i.by
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !46
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 1, ptr %i.cc, align 2, !tbaa !45
  br label %.loopexit

bb.aq:                                            ; preds = %bb.ao
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = tail call noundef i32 @_ZN11CommandData11GetExclAttrEPKwRb(ptr nonnull align 8 poison, ptr noundef nonnull %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.cd)
  %i.cf = load i32, ptr %0, align 8, !tbaa !44
  %i.cg = or i32 %i.cf, %i.ce
  store i32 %i.cg, ptr %0, align 8, !tbaa !44
  br label %.loopexit

bb.ar:                                            ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !15
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 57447
  store i8 1, ptr %i.ck, align 1, !tbaa !125
  br label %.loopexit

bb.at:                                            ; preds = %bb.ar
  tail call void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 7)
  br label %.loopexit

bb.au:                                            ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !15
  %i.cn = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.cm)
  %cond = icmp eq i32 %i.cn, 80
  br i1 %cond, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 49200
  store i8 1, ptr %i.co, align 8, !tbaa !126
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !15
  %.not204 = icmp eq i32 %i.cq, 0
  br i1 %.not204, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cr = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.cp) #19
  %i.cs = icmp ugt i64 %i.cr, 511
  br i1 %i.cs, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 511, ptr %i.a, align 4, !tbaa !70
  call void @_Z5uiMsgIJiEEv14UIMESSAGE_CODEDpOT_(i32 noundef 99, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 100848
  call void @_ZN11SecPassword3SetEPKw(ptr noundef nonnull align 8 dereferenceable(25) %i.ct, ptr noundef nonnull %i.cp)
  %i.cu = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #19
  %i.cv = shl i64 %i.cu, 2
  call void @_Z9cleandataPvm(ptr noundef nonnull %1, i64 noundef %i.cv)
  br label %.loopexit

bb.az:                                            ; preds = %bb.av
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 100872
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !127, !range !39, !noundef !40
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 100848
  %i.da = tail call noundef zeroext i1 @_Z13uiGetPassword15UIPASSWORD_TYPEPKwP11SecPasswordP13CheckPassword(i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.cz, ptr noundef null) ; 0 uses
  br label %.loopexit

bb.bb:                                            ; preds = %bb.au
  tail call void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 7)
  br label %.loopexit

bb.bc:                                            ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 9 uses
  %i.dc = tail call noundef i32 @_Z9wcsnicompPKwS0_m(ptr noundef nonnull %i.db, ptr noundef nonnull @.str.12, i64 noundef 3)
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 49204
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !15
  %.not203 = icmp eq i32 %i.dg, 0
  %i.dh = select i1 %.not203, ptr @.str.13, ptr %i.df
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.de, ptr noundef nonnull %i.dh, i64 noundef 2048)
  br label %.loopexit

bb.be:                                            ; preds = %bb.bc
  %i.di = tail call noundef i32 @_Z9wcsnicompPKwS0_m(ptr noundef nonnull %i.db, ptr noundef nonnull @.str.14, i64 noundef 3)
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !15
  %i.dm = icmp eq i32 %i.dl, 45
  %i.dn = select i1 %i.dm, i32 2, i32 1
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 57400
  store i32 %i.dn, ptr %i.do, align 8, !tbaa !128
  br label %.loopexit

bb.bg:                                            ; preds = %bb.be
  %i.dp = tail call noundef i32 @_Z8wcsicompPKwS0_(ptr noundef nonnull %i.db, ptr noundef nonnull @.str.15)
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 57396
  store i32 1, ptr %i.dr, align 4, !tbaa !67
  tail call void @_Z19SetConsoleMsgStream12MESSAGE_TYPE(i32 noundef 1)
  br label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.ds = tail call noundef i32 @_Z9wcsnicompPKwS0_m(ptr noundef nonnull %i.db, ptr noundef nonnull @.str.16, i64 noundef 3)
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 58812
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !15
  %.not202 = icmp eq i32 %i.dw, 0
  %i.dx = select i1 %.not202, ptr @.str.17, ptr %i.dv
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.du, ptr noundef nonnull %i.dx, i64 noundef 2048)
  br label %.loopexit

bb.bk:                                            ; preds = %bb.bi
  %i.dy = tail call noundef i32 @_Z8wcsicompPKwS0_(ptr noundef nonnull %i.db, ptr noundef nonnull @.str.18)
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 57477
  store i8 1, ptr %i.ea, align 1, !tbaa !129
  br label %.loopexit

bb.bm:                                            ; preds = %bb.bk
  %i.eb = tail call noundef i32 @_Z8wcsicompPKwS0_(ptr noundef nonnull %i.db, ptr noundef nonnull @.str.19)
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 57396
  store i32 3, ptr %i.ed, align 4, !tbaa !67
  tail call void @_Z19SetConsoleMsgStream12MESSAGE_TYPE(i32 noundef 3)
  br label %.loopexit

bb.bo:                                            ; preds = %bb.bm
  %i.ee = load i32, ptr %i.db, align 4, !tbaa !15
  %i.ef = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.ee)
  %i.eg = icmp eq i32 %i.ef, 68
  br i1 %i.eg, label %.preheader, label %bb.bx

.preheader:                                       ; preds = %bb.bo
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !15 ; 2 uses
  %.not201223 = icmp eq i32 %i.ei, 0
  br i1 %.not201223, label %.loopexit, label %.lr.ph225

.lr.ph225:                                        ; preds = %.preheader
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 57477
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 57431
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 57428
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 57430
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 57429
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 57396
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph225, %bb.bw
  %i.ep = phi i32 [ %i.ei, %.lr.ph225 ], [ %i.eu, %bb.bw ]
  %.0183224 = phi i32 [ 2, %.lr.ph225 ], [ %i.er, %bb.bw ]
  %i.eq = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.ep)
  switch i32 %i.eq, label %bb.bw [
    i32 81, label %bb.bq
    i32 67, label %bb.br
    i32 68, label %bb.bs
    i32 80, label %bb.bt
    i32 78, label %bb.bu
    i32 86, label %bb.bv
  ]

bb.bq:                                            ; preds = %bb.bp
  store i32 2, ptr %i.eo, align 4, !tbaa !67
  tail call void @_Z19SetConsoleMsgStream12MESSAGE_TYPE(i32 noundef 2)
  br label %bb.bw

bb.br:                                            ; preds = %bb.bp
  store i8 1, ptr %i.en, align 1, !tbaa !130
  br label %bb.bw

bb.bs:                                            ; preds = %bb.bp
  store i8 1, ptr %i.em, align 2, !tbaa !131
  br label %bb.bw

bb.bt:                                            ; preds = %bb.bp
  store i8 1, ptr %i.el, align 4, !tbaa !132
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bp
  store i8 1, ptr %i.ek, align 1, !tbaa !133
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bp
  store i8 1, ptr %i.ej, align 1, !tbaa !129
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv
  %i.er = add i32 %.0183224, 1                    ; 2 uses
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !15 ; 2 uses
  %.not201 = icmp eq i32 %i.eu, 0
  br i1 %.not201, label %.loopexit, label %bb.bp, !llvm.loop !108

bb.bx:                                            ; preds = %bb.bo
  %i.ev = tail call noundef i32 @_Z9wcsnicompPKwS0_m(ptr noundef nonnull %i.db, ptr noundef nonnull @.str.20, i64 noundef 3)
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !15
  switch i32 %i.ey, label %.loopexit [
    i32 0, label %bb.bz
    i32 49, label %bb.bz
    i32 50, label %bb.ca
    i32 51, label %bb.cb
    i32 52, label %bb.cc
  ]

bb.bz:                                            ; preds = %bb.by, %bb.by
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 67012
  store i32 1, ptr %i.ez, align 4, !tbaa !134
  br label %.loopexit

bb.ca:                                            ; preds = %bb.by
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 67012
  store i32 2, ptr %i.fa, align 4, !tbaa !134
  br label %.loopexit

bb.cb:                                            ; preds = %bb.by
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 67012
  store i32 3, ptr %i.fb, align 4, !tbaa !134
  br label %.loopexit

bb.cc:                                            ; preds = %bb.by
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 67012
  store i32 4, ptr %i.fc, align 4, !tbaa !134
  br label %.loopexit

bb.cd:                                            ; preds = %bb.bx
  %i.fd = tail call noundef i32 @_Z8wcsicompPKwS0_(ptr noundef nonnull %i.db, ptr noundef nonnull @.str.21)
  %i.fe = icmp eq i32 %i.fd, 0
end_hunk_1
begin_hunk_2_@_ZN11CommandData13ProcessSwitchEPKw:bb.a
  br i1 %.not200, label %.loopexit, label %bb.ck, !llvm.loop !111

bb.ct:                                            ; preds = %bb.ci
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !15
  %i.hk = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.hj)
  %i.hl = icmp eq i32 %i.hk, 83
  br i1 %i.hl, label %bb.cu, label %.loopexit

bb.cu:                                            ; preds = %bb.ct
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !15
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.cv, label %.loopexit

bb.cv:                                            ; preds = %bb.cu
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 49201
  store i8 1, ptr %i.hp, align 1, !tbaa !143
  br label %.loopexit

bb.cw:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !15
  %i.hs = icmp eq i32 %i.hr, 0
  %i.ht = select i1 %i.hs, ptr @.str.22, ptr %i.hq
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ht, i64 noundef 1024)
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 100664
  br label %bb.cx

bb.cx:                                            ; preds = %bb.dd, %bb.cw
  %.0172 = phi ptr [ %i.b, %bb.cw ], [ %i.ic, %bb.dd ] ; 4 uses
  %i.hv = load i32, ptr %.0172, align 4, !tbaa !15 ; 2 uses
  %.not198 = icmp eq i32 %i.hv, 0
  br i1 %.not198, label %bb.de, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.hw = call ptr @wcschr(ptr noundef nonnull %.0172, i32 noundef signext 59) #19 ; 3 uses
  %.not199 = icmp eq ptr %i.hw, null              ; 2 uses
  br i1 %.not199, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.hw, align 4, !tbaa !15
  %.pre230 = load i32, ptr %.0172, align 4, !tbaa !15
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.hx = phi i32 [ %.pre230, %bb.cz ], [ %i.hv, %bb.cy ]
  %i.hy = icmp eq i32 %i.hx, 46
  %spec.select.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.hy, i64 4, i64 0
  %spec.select.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.0172, i64 %spec.select.idx.sroa.sel.idx.sroa.sel.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.hz = call ptr @wcspbrk(ptr noundef nonnull %spec.select.idx.sroa.sel.idx.sroa.sel, ptr noundef nonnull @.str.23) #19
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ib = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull %i.c, i64 noundef 2048, ptr noundef nonnull @.str.24, ptr noundef nonnull %spec.select.idx.sroa.sel.idx.sroa.sel) #18 ; 0 uses
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.c, ptr noundef nonnull %spec.select.idx.sroa.sel.idx.sroa.sel, i64 noundef 2048)
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  call void @_ZN10StringList9AddStringEPKw(ptr noundef nonnull align 8 dereferenceable(184) %i.hu, ptr noundef nonnull %i.c)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br i1 %.not199, label %bb.de, label %bb.cx

bb.de:                                            ; preds = %bb.dd, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.loopexit

bb.df:                                            ; preds = %bb.ci
  %i.id = load i32, ptr %i.fl, align 4, !tbaa !15 ; 2 uses
  %i.ie = add nsw i32 %i.id, -48
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 57408
  store i32 %i.ie, ptr %i.if, align 8, !tbaa !144
  %i.ig = add i32 %i.id, -54
  %or.cond = icmp ult i32 %i.ig, -6
  br i1 %or.cond, label %bb.dg, label %.loopexit

bb.dg:                                            ; preds = %bb.df
  tail call void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 7)
  br label %.loopexit

bb.dh:                                            ; preds = %bb.a, %bb.a
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !15
  %.not197 = icmp eq i32 %i.ii, 0
  br i1 %.not197, label %.loopexit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ij = load i32, ptr %1, align 4, !tbaa !15
  %i.ik = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.ij)
  %i.il = icmp eq i32 %i.ik, 78
  %.v = select i1 %i.il, i64 100296, i64 100112
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 %.v ; 2 uses
  %i.in = load i32, ptr %i.ih, align 4, !tbaa !15
  %i.io = icmp eq i32 %i.in, 64
  br i1 %i.io, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.ip = tail call noundef zeroext i1 @_Z10IsWildcardPKw(ptr noundef nonnull %1)
  br i1 %i.ip, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 32804
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !68
  %i.it = tail call noundef zeroext i1 @_Z12ReadTextFilePKwP10StringListbb11RAR_CHARSETbbb(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.im, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %i.is, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) ; 0 uses
  br label %.loopexit

bb.dl:                                            ; preds = %bb.dj, %bb.di
  tail call void @_ZN10StringList9AddStringEPKw(ptr noundef nonnull align 8 dereferenceable(184) %i.im, ptr noundef nonnull %i.ih)
  br label %.loopexit

bb.dm:                                            ; preds = %bb.a
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !15
  %i.iw = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.iv)
  switch i32 %i.iw, label %bb.dw [
    i32 43, label %bb.dn
    i32 45, label %bb.do
    i32 0, label %bb.dp
    i32 72, label %bb.dq
    i32 76, label %bb.dr
    i32 80, label %bb.dt
    i32 82, label %bb.du
    i32 87, label %bb.dv
  ]

bb.dn:                                            ; preds = %bb.dm
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 57404
  store i32 1, ptr %i.ix, align 4, !tbaa !145
  br label %.loopexit

bb.do:                                            ; preds = %bb.dm
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 57404
  store i32 2, ptr %i.iy, align 4, !tbaa !145
  br label %.loopexit

bb.dp:                                            ; preds = %bb.dm
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 57404
  store i32 4, ptr %i.iz, align 4, !tbaa !145
  br label %.loopexit

bb.dq:                                            ; preds = %bb.dm
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 57490
  store i8 1, ptr %i.ja, align 2, !tbaa !71
  br label %.loopexit

bb.dr:                                            ; preds = %bb.dm
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 57489
  store i8 1, ptr %i.jb, align 1, !tbaa !72
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !15
  %i.je = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.jd)
  %i.jf = icmp eq i32 %i.je, 65
  br i1 %i.jf, label %bb.ds, label %.loopexit

bb.ds:                                            ; preds = %bb.dr
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 57491
  store i8 1, ptr %i.jg, align 1, !tbaa !146
  br label %.loopexit

bb.dt:                                            ; preds = %bb.dm
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 16416 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.jh, ptr noundef nonnull %i.ji, i64 noundef 2048)
  tail call void @_Z11AddEndSlashPwm(ptr noundef nonnull %i.jh, i64 noundef 2048)
  br label %.loopexit

bb.du:                                            ; preds = %bb.dm
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 57404
  store i32 3, ptr %i.jj, align 4, !tbaa !145
  br label %.loopexit

bb.dv:                                            ; preds = %bb.dm
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 57488
  store i8 1, ptr %i.jk, align 8, !tbaa !147
  br label %.loopexit

bb.dw:                                            ; preds = %bb.dm
  tail call void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 7)
  br label %.loopexit

bb.dx:                                            ; preds = %bb.a
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !15
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 100848
  %i.jp = tail call noundef zeroext i1 @_Z13uiGetPassword15UIPASSWORD_TYPEPKwP11SecPasswordP13CheckPassword(i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.jo, ptr noundef null) ; 0 uses
  br label %.loopexit

bb.dz:                                            ; preds = %bb.dx
  %i.jq = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.jl) #19
  %i.jr = icmp ugt i64 %i.jq, 511
  br i1 %i.jr, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 511, ptr %i.d, align 4, !tbaa !70
  call void @_Z5uiMsgIJiEEv14UIMESSAGE_CODEDpOT_(i32 noundef 99, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 100848
  call void @_ZN11SecPassword3SetEPKw(ptr noundef nonnull align 8 dereferenceable(25) %i.js, ptr noundef nonnull %i.jl)
  %i.jt = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #19
  %i.ju = shl i64 %i.jt, 2
  call void @_Z9cleandataPvm(ptr noundef nonnull %1, i64 noundef %i.ju)
  br label %.loopexit

bb.ec:                                            ; preds = %bb.a
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !15
  %i.jx = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.jw)
  %i.jy = icmp eq i32 %i.jx, 79
  br i1 %i.jy, label %bb.ed, label %bb.ei

bb.ed:                                            ; preds = %bb.ec
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !15
  %i.kb = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.ka)
  switch i32 %i.kb, label %bb.eh [
    i32 0, label %bb.ee
    i32 45, label %bb.ef
    i32 43, label %bb.eg
  ]

bb.ee:                                            ; preds = %bb.ed
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 16408
  store i32 1, ptr %i.kc, align 8, !tbaa !73
  br label %.loopexit

bb.ef:                                            ; preds = %bb.ed
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 16408
  store i32 0, ptr %i.kd, align 8, !tbaa !73
  br label %.loopexit

bb.eg:                                            ; preds = %bb.ed
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 16408
  store i32 2, ptr %i.ke, align 8, !tbaa !73
  br label %.loopexit

bb.eh:                                            ; preds = %bb.ed
  tail call void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 7)
  br label %.loopexit

bb.ei:                                            ; preds = %bb.ec
  tail call void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 7)
  br label %.loopexit

bb.ej:                                            ; preds = %bb.a
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !15
  %i.kh = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.kg)
  switch i32 %i.kh, label %.loopexit [
    i32 0, label %bb.ek
    i32 45, label %bb.el
    i32 48, label %bb.em
    i32 73, label %bb.en
  ]

bb.ek:                                            ; preds = %bb.ej
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 57456
  store i32 2, ptr %i.ki, align 8, !tbaa !74
  br label %.loopexit

bb.el:                                            ; preds = %bb.ej
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 57456
  store i32 1, ptr %i.kj, align 8, !tbaa !74
  br label %.loopexit

bb.em:                                            ; preds = %bb.ej
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 57456
  store i32 3, ptr %i.kk, align 8, !tbaa !74
  br label %.loopexit

bb.en:                                            ; preds = %bb.ej
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.km = tail call noundef i32 @_Z5atoiwPKw(ptr noundef nonnull %i.kl) ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 57492 ; 2 uses
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !148
  %or.cond205 = icmp ugt i32 %i.km, 15
  br i1 %or.cond205, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  tail call void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 7)
  br label %bb.ep

bb.ep:                                            ; preds = %bb.en, %bb.eo
  %i.ko = tail call ptr @wcschr(ptr noundef nonnull %i.kl, i32 noundef signext 58) #19 ; 2 uses
  %.not196 = icmp eq ptr %i.ko, null
  br i1 %.not196, label %bb.et, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.kq = tail call noundef i32 @_Z5atoiwPKw(ptr noundef nonnull %i.kp) ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 57496 ; 2 uses
  store i32 %i.kq, ptr %i.kr, align 8, !tbaa !149
  %i.ks = icmp sgt i32 %i.kq, 1000
  br i1 %i.ks, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  tail call void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 7)
  %.pre = load i32, ptr %i.kr, align 8, !tbaa !149
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.kt = phi i32 [ %.pre, %bb.er ], [ %i.kq, %bb.eq ]
  tail call void @_Z17InitSystemOptionsi(i32 noundef %i.kt)
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.ep
  %i.ku = load i32, ptr %i.kn, align 4, !tbaa !148
  tail call void @_Z11SetPriorityi(i32 noundef %i.ku)
  br label %.loopexit

bb.eu:                                            ; preds = %bb.a
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !15
  %i.kx = tail call noundef zeroext i1 @_Z7IsDigiti(i32 noundef %i.kw)
  br i1 %i.kx, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 57436 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !150
  %i.la = or i32 %i.kz, 2
  store i32 %i.la, ptr %i.ky, align 4, !tbaa !150
  %i.lb = tail call noundef i32 @_Z5atoiwPKw(ptr noundef nonnull %i.kv)
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 57440
  store i32 %i.lb, ptr %i.lc, align 8, !tbaa !151
  br label %.loopexit

bb.ew:                                            ; preds = %bb.eu
  %i.ld = load i32, ptr %i.kv, align 4, !tbaa !15
  %i.le = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.ld)
  switch i32 %i.le, label %.loopexit [
    i32 0, label %bb.ex
    i32 45, label %bb.ey
    i32 69, label %bb.ez
    i32 86, label %bb.fa
    i32 68, label %bb.fb
    i32 73, label %bb.fc
    i32 76, label %bb.fd
    i32 77, label %bb.ff
    i32 67, label %bb.fh
  ]

bb.ex:                                            ; preds = %bb.ew
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 57436 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !150
  %i.lh = or i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !150
  br label %.loopexit

bb.ey:                                            ; preds = %bb.ew
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 57436
  store i32 0, ptr %i.li, align 4, !tbaa !150
  br label %.loopexit

bb.ez:                                            ; preds = %bb.ew
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 57436 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !150
  %i.ll = or i32 %i.lk, 4
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !150
  br label %.loopexit

bb.fa:                                            ; preds = %bb.ew
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !15
  %i.lo = icmp eq i32 %i.ln, 45
  %i.lp = select i1 %i.lo, i32 8, i32 16
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 57436 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !150
  %i.ls = or i32 %i.lp, %i.lr
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !150
  br label %.loopexit

bb.fb:                                            ; preds = %bb.ew
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 57436 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !150
  %i.lv = or i32 %i.lu, 8
  store i32 %i.lv, ptr %i.lt, align 4, !tbaa !150
  br label %.loopexit

bb.fc:                                            ; preds = %bb.ew
  tail call void @_Z20ProhibitConsoleInputv()
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 67032
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !15
  %.not = icmp eq i32 %i.ly, 0
  %i.lz = select i1 %.not, ptr @.str.25, ptr %i.lx
  tail call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.lw, ptr noundef nonnull %i.lz, i64 noundef 2048)
  br label %.loopexit

bb.fd:                                            ; preds = %bb.ew
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !15
  %i.mc = tail call noundef zeroext i1 @_Z7IsDigiti(i32 noundef %i.mb)
  br i1 %i.mc, label %bb.fe, label %.loopexit

bb.fe:                                            ; preds = %bb.fd
  %i.md = tail call noundef i64 @_Z6atoilwPKw(ptr noundef nonnull %i.ma)
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 58600
  store i64 %i.md, ptr %i.me, align 8, !tbaa !41
  br label %.loopexit

end_hunk_2
begin_hunk_3_@_ZN11CommandData11ParseEnvVarEv:bb.a
  %i.e = icmp eq ptr %malloc.i, null
  br i1 %i.e, label %bb.c, label %_ZN5ArrayIwEC2Em.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN12ErrorHandler11MemoryErrorEv(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler)
  unreachable

_ZN5ArrayIwEC2Em.exit:                            ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef nonnull %i.a, ptr noundef nonnull %malloc.i, i64 noundef %i.c)
          to label %bb.d unwind label %_ZN5ArrayIwED2Ev.exit7 ; 0 uses

bb.d:                                             ; preds = %_ZN5ArrayIwEC2Em.exit
  invoke void @_ZN11CommandData21ProcessSwitchesStringEPKw(ptr noundef nonnull align 8 dereferenceable(100904) %0, ptr noundef nonnull %malloc.i)
          to label %_ZN5ArrayIwED2Ev.exit unwind label %_ZN5ArrayIwED2Ev.exit7

_ZN5ArrayIwED2Ev.exit:                            ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %malloc.i) #18
  br label %bb.e

_ZN5ArrayIwED2Ev.exit7:                           ; preds = %bb.d, %_ZN5ArrayIwEC2Em.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %malloc.i) #18
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %_ZN5ArrayIwED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN11CommandData21ProcessSwitchesStringEPKw(ptr noundef nonnull align 8 dereferenceable(100904) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_Z11GetCmdParamPKwPwm(ptr noundef %1, ptr noundef null, i64 noundef 0) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZL13AllocCmdParamPKwPPw.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.c = phi ptr [ %i.p, %bb.d ], [ %i.a, %bb.a ]
  %.09 = phi ptr [ %i.l, %bb.d ], [ %1, %bb.a ]   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %.09 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2
  %i.h = add nsw i64 %i.g, 2                      ; 2 uses
  %i.i = shl i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #22 ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZL13AllocCmdParamPKwPPw.exit.thread, label %_ZL13AllocCmdParamPKwPPw.exit

_ZL13AllocCmdParamPKwPPw.exit:                    ; preds = %.lr.ph
  %i.l = tail call noundef ptr @_Z11GetCmdParamPKwPwm(ptr noundef %.09, ptr noundef nonnull %i.j, i64 noundef %i.h) ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZL13AllocCmdParamPKwPPw.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZL13AllocCmdParamPKwPPw.exit
  %i.m = load i32, ptr %i.j, align 4, !tbaa !15
  %i.n = icmp eq i32 %i.m, 45
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  tail call void @_ZN11CommandData13ProcessSwitchEPKw(ptr noundef nonnull align 8 dereferenceable(100904) %0, ptr noundef nonnull %i.o)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @free(ptr noundef nonnull %i.j) #18
  %i.p = tail call noundef ptr @_Z11GetCmdParamPKwPwm(ptr noundef nonnull %i.l, ptr noundef null, i64 noundef 0) ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZL13AllocCmdParamPKwPPw.exit.thread, label %.lr.ph, !llvm.loop !161

_ZL13AllocCmdParamPKwPPw.exit.thread:             ; preds = %_ZL13AllocCmdParamPKwPPw.exit, %bb.d, %.lr.ph, %bb.a
  ret void
}

declare noundef i32 @_Z8wcsicompPKwS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z9wcsnicompPKwS0_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_Z14InitLogOptionsPKw11RAR_CHARSET(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @wcsncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN11CommandData10ReadConfigEv(ptr noundef nonnull align 8 dereferenceable(100904) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.StringList, align 8          ; 8 uses
  %i.a = alloca [16 x i32], align 16              ; 8 uses
  %i.b = alloca [32 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @_ZN10StringListC1Ev(ptr noundef nonnull align 8 dereferenceable(184) %1)
  %i.c = invoke noundef zeroext i1 @_Z12ReadTextFilePKwP10StringListbb11RAR_CHARSETbbb(ptr noundef nonnull @.str.8, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %.preheader42, label %.loopexit46

.preheader42:                                     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 83476 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.preheader42
  %i.g = invoke noundef ptr @_ZN10StringList9GetStringEv(ptr noundef nonnull align 8 dereferenceable(184) %1)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.loopexit46, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.f
  %.0 = phi ptr [ %i.j, %bb.f ], [ %i.g, %bb.d ]  ; 6 uses
  %i.h = load i32, ptr %.0, align 4, !tbaa !15
  %i.i = invoke noundef zeroext i1 @_Z7IsSpacei(i32 noundef %i.h)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %.preheader
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 4
  br label %.preheader, !llvm.loop !162

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader, %bb.i, %bb.g, %bb.c, %bb.a
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.e
  %i.k = invoke noundef i32 @_Z9wcsnicompPKwS0_m(ptr noundef nonnull %.0, ptr noundef nonnull @.str.9, i64 noundef 9)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 36
  invoke void @_ZN11CommandData21ProcessSwitchesStringEPKw(ptr noundef nonnull align 8 dereferenceable(100904) %0, ptr noundef nonnull %i.m)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = load i32, ptr %i.d, align 4, !tbaa !15
  %.not34 = icmp eq i32 %i.n, 0
  br i1 %.not34, label %.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  invoke void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, i64 noundef 16)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.o = load i32, ptr %i.a, align 16, !tbaa !15
  %i.p = invoke noundef i32 @_Z8toupperwi(i32 noundef %i.o)
          to label %bb.m unwind label %bb.p       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.q = load i32, ptr %i.e, align 4, !tbaa !15
  %i.r = invoke noundef i32 @_Z8toupperwi(i32 noundef %i.q)
          to label %bb.n unwind label %bb.p       ; 2 uses

bb.n:                                             ; preds = %bb.m
  switch i32 %i.p, label %bb.s [
    i32 86, label %bb.o
    i32 83, label %bb.o
    i32 77, label %bb.o
    i32 76, label %bb.o
    i32 73, label %bb.o
    i32 82, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  store i32 0, ptr %i.e, align 4, !tbaa !15
  %i.s = icmp eq i32 %i.p, 82
  %i.t = and i32 %i.r, -5
  %or.cond9 = icmp eq i32 %i.t, 82
  %or.cond = and i1 %i.s, %or.cond9
  br i1 %or.cond, label %bb.r, label %bb.s

bb.p:                                             ; preds = %bb.l, %bb.k, %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.q:                                             ; preds = %bb.n
  %.old = and i32 %i.r, -5
  %or.cond9.old = icmp eq i32 %.old, 82
  br i1 %or.cond9.old, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.o, %bb.q
  store i32 0, ptr %i.f, align 8, !tbaa !15
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.q, %bb.r, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.v = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.w = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.b) #19 ; 2 uses
  %i.x = invoke noundef i32 @_Z9wcsnicompPKwS0_m(ptr noundef nonnull %.0, ptr noundef nonnull %i.b, i64 noundef %i.w)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.w
  invoke void @_ZN11CommandData21ProcessSwitchesStringEPKw(ptr noundef nonnull align 8 dereferenceable(100904) %0, ptr noundef nonnull %i.z)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.x

bb.w:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.backedge

.backedge:                                        ; preds = %bb.w, %bb.j
  br label %bb.c, !llvm.loop !163

bb.x:                                             ; preds = %bb.v, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %i.u, %bb.p ], [ %i.aa, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit46:                                      ; preds = %bb.d, %bb.b
  %i.ab = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZN10StringListD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %.loopexit46
  call void @free(ptr noundef nonnull %i.ab) #18
  br label %_ZN10StringListD2Ev.exit

_ZN10StringListD2Ev.exit:                         ; preds = %.loopexit46, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.x ], [ %lpad.loopexit.split-lp61, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ac = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i40, label %_ZN10StringListD2Ev.exit41, label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  call void @free(ptr noundef nonnull %i.ac) #18
  br label %_ZN10StringListD2Ev.exit41

_ZN10StringListD2Ev.exit41:                       ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare noundef zeroext i1 @_Z7IsSpacei(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @swprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN11CommandData9BadSwitchEPKw(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(100904) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 7)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN11CommandData11GetExclAttrEPKwRb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !15
  %i.b = tail call noundef zeroext i1 @_Z7IsDigiti(i32 noundef %i.a)
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !15     ; 2 uses
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @__isoc23_wcstol(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) #18
  %i.e = trunc i64 %i.d to i32
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %i.f = phi i32 [ %i.j, %bb.e ], [ %i.c, %.preheader ]
  %.013 = phi i32 [ %.1, %bb.e ], [ 0, %.preheader ] ; 3 uses
  %.0912 = phi ptr [ %i.i, %bb.e ], [ %1, %.preheader ]
  %i.g = tail call noundef i32 @_Z8toupperwi(i32 noundef %i.f)
  switch i32 %i.g, label %bb.e [
    i32 68, label %bb.c
    i32 86, label %bb.d
  ]

bb.c:                                             ; preds = %.lr.ph
  store i8 1, ptr %2, align 1, !tbaa !47
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.h = or i32 %.013, 8192
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph
  %.1 = phi i32 [ %.013, %.lr.ph ], [ %.013, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0912, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15   ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !164

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.b
  %.08 = phi i32 [ %i.e, %bb.b ], [ 0, %.preheader ], [ %.1, %bb.e ]
  ret i32 %.08
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z5uiMsgIJiEEv14UIMESSAGE_CODEDpOT_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat {
_Z9uiMsgBaseIRiJEEvR10uiMsgStoreOT_DpOT0_.exit:
  %2 = alloca %class.uiMsgStore, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store <4 x ptr> <ptr @.str.26, ptr @.str.26, ptr @.str.26, ptr @.str.26>, ptr %2, align 8, !tbaa !75
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <4 x ptr> <ptr @.str.26, ptr @.str.26, ptr @.str.26, ptr @.str.26>, ptr %i.a, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  store i32 %0, ptr %i.c, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.e = load i32, ptr %1, align 4, !tbaa !70
  store i32 1, ptr %i.d, align 4, !tbaa !79
  store i32 %i.e, ptr %i.b, align 8, !tbaa !70
  call void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

declare void @_ZN11SecPassword3SetEPKw(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef) local_unnamed_addr #2

declare void @_Z9cleandataPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_Z13uiGetPassword15UIPASSWORD_TYPEPKwP11SecPasswordP13CheckPassword(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z5atoiwPKw(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @wcspbrk(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_Z17InitSystemOptionsi(i32 noundef) local_unnamed_addr #2

declare void @_Z11SetPriorityi(i32 noundef) local_unnamed_addr #2

declare void @_Z20ProhibitConsoleInputv() local_unnamed_addr #2

declare noundef i64 @_Z6atoilwPKw(ptr noundef) local_unnamed_addr #2

declare void @_Z25SetConsoleRedirectCharset11RAR_CHARSET(i32 noundef) local_unnamed_addr #2

declare void @_ZN12ErrorHandler4ExitE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN11CommandData14ProcessCommandEv(ptr noundef nonnull align 8 dereferenceable(100904) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 6 uses
  %1 = alloca %class.StringList, align 8          ; 8 uses
  %2 = alloca %class.ScanTree, align 8            ; 7 uses
  %3 = alloca %struct.FindData, align 8           ; 6 uses
  %4 = alloca %class.CmdExtract, align 8          ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 83476 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 91732 ; 10 uses
  %i.d = tail call noundef ptr @_Z6GetExtPKw(ptr noundef nonnull %i.c) ; 3 uses
  %cond = icmp eq ptr %i.d, null
  br i1 %cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_Z9FileExistPKw(ptr noundef nonnull %i.c)
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_Z11GetFileAttrPKw(ptr noundef nonnull %i.c)
  %i.g = tail call noundef zeroext i1 @_Z5IsDirj(i32 noundef %i.f)
  br i1 %i.g, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.28, i64 noundef 2048)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef i32 @_Z9wcsnicompPKwS0_m(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.29, i64 noundef 5)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15
end_hunk_3
