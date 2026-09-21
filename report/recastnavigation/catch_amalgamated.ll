Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/catch_amalgamated?download=true
inline.NumInlined: 19374
inline.NumDeleted: 7049
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv:bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.dc, ptr %i.dd, align 8, !tbaa !69418
  br label %.critedge

bb.ap:                                            ; preds = %.lr.ph
  %i.de = getelementptr inbounds nuw i8, ptr %.059, i64 8 ; 2 uses
  %i.df = load i8, ptr %i.de, align 4, !tbaa !69444 ; 2 uses
  %.not31 = icmp eq i8 %i.df, 0
  br i1 %.not31, label %.critedge, label %.lr.ph, !llvm.loop !73303

bb.aq:                                            ; preds = %bb.ak
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.dg, align 8, !tbaa !69418
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !9326 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread.i42: ; preds = %bb.aq
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !9325
  %.not.i8.i43 = icmp eq i64 %i.dm, 0
  br i1 %.not.i8.i43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.i45, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.i45: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread.i42
  %i.dn = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #59 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef 1) #60
  store ptr %i.dn, ptr %i.dh, align 8, !tbaa !9326
  store i64 1, ptr %i.dk, align 8, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit54: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.i45
  %i.do = phi ptr [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.i45 ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.thread.i42 ], [ %i.dj, %bb.aq ]
  store i8 %.022, ptr %i.do, align 1, !tbaa !9325
  store i64 1, ptr %i.di, align 8, !tbaa !9324
  %i.dp = load ptr, ptr %i.dh, align 8, !tbaa !9326
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  store i8 0, ptr %i.dq, align 1, !tbaa !9325
  br label %.critedge

.critedge:                                        ; preds = %bb.ap, %_ZNKSt5ctypeIcE6narrowEcc.exit41, %bb.ao, %bb.z, %bb.aa, %bb.u, %bb.w, %bb.v, %bb.af, %bb.ae, %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit54, %bb.ag, %bb.ab, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69419 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69420 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 4) #58
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 6 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !69419
  %i.g = load i8, ptr %i.b, align 1, !tbaa !9325  ; 2 uses
  switch i8 %i.g, label %bb.s [
    i8 45, label %bb.d
    i8 91, label %bb.e
    i8 93, label %bb.l
    i8 92, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 28, ptr %i.h, align 8, !tbaa !69418
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.i = icmp eq ptr %i.f, %i.d
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #58
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = load i8, ptr %i.f, align 1, !tbaa !9325
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  switch i8 %i.j, label %bb.k [
    i8 46, label %bb.h
    i8 58, label %bb.i
    i8 61, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  store i32 16, ptr %i.k, align 8, !tbaa !69418
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.l, ptr %i.a, align 8, !tbaa !69419
  %i.m = load i8, ptr %i.f, align 1, !tbaa !9325
  tail call void @_ZNSt8__detail8_ScannerIcE12_M_eat_classEc(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 noundef signext %i.m)
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  store i32 15, ptr %i.k, align 8, !tbaa !69418
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.n, ptr %i.a, align 8, !tbaa !69419
  %i.o = load i8, ptr %i.f, align 1, !tbaa !9325
  tail call void @_ZNSt8__detail8_ScannerIcE12_M_eat_classEc(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 noundef signext %i.o)
  br label %bb.t

bb.j:                                             ; preds = %bb.g
  store i32 17, ptr %i.k, align 8, !tbaa !69418
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.p, ptr %i.a, align 8, !tbaa !69419
  %i.q = load i8, ptr %i.f, align 1, !tbaa !9325
  tail call void @_ZNSt8__detail8_ScannerIcE12_M_eat_classEc(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 noundef signext %i.q)
  br label %bb.t

bb.k:                                             ; preds = %bb.g
  store i32 1, ptr %i.k, align 8, !tbaa !69418
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !9326 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.v = icmp ne ptr %i.t, %i.u
  %i.w = load i64, ptr %i.u, align 8
  %.not.i8.i = icmp eq i64 %i.w, 0
  %or.cond35 = select i1 %i.v, i1 %.not.i8.i, i1 false
  br i1 %or.cond35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.i: ; preds = %bb.k
  %i.x = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #59 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef 1) #60
  store ptr %i.x, ptr %i.r, align 8, !tbaa !9326
  store i64 1, ptr %i.u, align 8, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.i
  %i.y = phi ptr [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.i ], [ %i.t, %bb.k ]
  store i8 91, ptr %i.y, align 1, !tbaa !9325
  store i64 1, ptr %i.s, align 8, !tbaa !9324
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !9326
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store i8 0, ptr %i.aa, align 1, !tbaa !9325
  br label %bb.t

bb.l:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !69432
  %i.ad = and i32 %i.ac, 16
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ag = load i8, ptr %i.af, align 8, !range !16138
  %i.ah = trunc nuw i8 %i.ag to i1
  %or.cond = select i1 %i.ae, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 11, ptr %i.ai, align 8, !tbaa !69418
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.aj, align 8, !tbaa !69421
  br label %bb.t

bb.n:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !69432
  %i.am = and i32 %i.al, 144
  %or.cond27.not = icmp eq i32 %i.am, 0
  br i1 %or.cond27.not, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.unpack = load i64, ptr %i.an, align 8, !tbaa !69433 ; 3 uses
  %.elt9 = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.unpack10 = load i64, ptr %.elt9, align 8, !tbaa !69433
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %.unpack10 ; 2 uses
  %i.ap = and i64 %.unpack, 1
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !3603
  %i.ar = getelementptr i8, ptr %i.aq, i64 %.unpack
  %i.as = getelementptr i8, ptr %i.ar, i64 -1
  %i.at = load ptr, ptr %i.as, align 8, !nosanitize !4070
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.au = inttoptr i64 %.unpack to ptr
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.av = phi ptr [ %i.at, %bb.p ], [ %i.au, %bb.q ]
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(248) %i.ao) #49
  br label %bb.t

bb.s:                                             ; preds = %bb.n, %bb.l, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.aw, align 8, !tbaa !69418
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !9326 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %1 = icmp ne ptr %i.az, %i.ba
  %2 = load i64, ptr %i.ba, align 8
  %i.bb = icmp eq i64 %2, 0
  %or.cond36 = select i1 %1, i1 %i.bb, i1 false
  br i1 %or.cond36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.i14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.i14: ; preds = %bb.s
  %i.bc = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #59 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef %i.az, i64 noundef 1) #60
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !9326
  store i64 1, ptr %i.ba, align 8, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit23: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.i14
  %3 = phi ptr [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.i14 ], [ %i.az, %bb.s ]
  store i8 %i.g, ptr %3, align 1, !tbaa !9325
  store i64 1, ptr %i.ay, align 8, !tbaa !9324
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !9326
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 0, ptr %i.be, align 1, !tbaa !9325
  br label %bb.t

bb.t:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, %bb.j, %bb.h, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit23, %bb.m, %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 0, ptr %i.bf, align 8, !tbaa !69451
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69419 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69420 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 6) #58
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !69419
  %i.g = load i8, ptr %i.b, align 1, !tbaa !9325  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69452, !nonnull !4070, !align !19314
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69456
  %i.l = zext i8 %i.g to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !69458
  %i.o = and i16 %i.n, 2048
  %.not10 = icmp eq i16 %i.o, 0
  br i1 %.not10, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 26, ptr %i.p, align 8, !tbaa !69418
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !9326 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.u = icmp ne ptr %i.s, %i.t
  %i.v = load i64, ptr %i.t, align 8
  %.not.i8.i = icmp eq i64 %i.v, 0
  %or.cond23 = select i1 %i.u, i1 %.not.i8.i, i1 false
  br i1 %or.cond23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.i: ; preds = %bb.d
  %i.w = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #59 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 1) #60
  store ptr %i.w, ptr %i.q, align 8, !tbaa !9326
  store i64 1, ptr %i.t, align 8, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.i
  %i.x = phi ptr [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i3.i ], [ %i.s, %bb.d ]
  store i8 %i.g, ptr %i.x, align 1, !tbaa !9325
  store i64 1, ptr %i.r, align 8, !tbaa !9324
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !9326
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 0, ptr %i.z, align 1, !tbaa !9325
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !69419 ; 2 uses
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !69420
  %.not813 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not813, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.ac = phi ptr [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit ] ; 3 uses
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !69452, !nonnull !4070, !align !19314
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !9325
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !69456
  %i.ah = zext i8 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !69458
  %i.ak = and i16 %i.aj, 2048
  %.not12 = icmp eq i16 %i.ak, 0
  br i1 %.not12, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.al, ptr %i.a, align 8, !tbaa !69419
  %i.am = load i8, ptr %i.ac, align 1, !tbaa !9325
  %i.an = load i64, ptr %i.r, align 8, !tbaa !9324 ; 4 uses
  %i.ao = add i64 %i.an, 1                        ; 3 uses
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !9326 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.t
  br i1 %i.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.e
  %i.ar = icmp ult i64 %i.an, 16
  tail call void @llvm.assume(i1 %i.ar)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.as = load i64, ptr %i.t, align 8, !tbaa !9325
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i9: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.at = phi i64 [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.au = icmp ugt i64 %i.ao, %i.at
  br i1 %i.au, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i9
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef %i.an, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !9326
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i9, %bb.f
  %i.av = phi ptr [ %.pre.i.i, %bb.f ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i9 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  store i8 %i.am, ptr %i.aw, align 1, !tbaa !9325
  store i64 %i.ao, ptr %i.r, align 8, !tbaa !9324
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !9326
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ao
  store i8 0, ptr %i.ay, align 1, !tbaa !9325
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !69419 ; 2 uses
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !69420
  %.not8 = icmp eq ptr %i.az, %i.ba
  br i1 %.not8, label %.critedge, label %.lr.ph, !llvm.loop !73305

bb.g:                                             ; preds = %bb.c
  %i.bb = icmp eq i8 %i.g, 44
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 25, ptr %i.bc, align 8, !tbaa !69418
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !69432
  %i.bf = and i32 %i.be, 288
  %.not11 = icmp eq i32 %i.bf, 0
  br i1 %.not11, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = icmp ne i8 %i.g, 92
  %.not = icmp eq ptr %i.f, %i.d
  %or.cond = select i1 %i.bg, i1 true, i1 %.not
  br i1 %or.cond, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = load i8, ptr %i.f, align 1, !tbaa !9325
  %i.bi = icmp eq i8 %i.bh, 125
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.bj, align 8, !tbaa !69421
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 13, ptr %i.bk, align 8, !tbaa !69418
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !69419
  br label %.critedge

bb.m:                                             ; preds = %bb.k, %bb.j
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 7) #58
  unreachable

bb.n:                                             ; preds = %bb.i
  %i.bm = icmp eq i8 %i.g, 125
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.bn, align 8, !tbaa !69421
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 13, ptr %i.bo, align 8, !tbaa !69418
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 7) #58
  unreachable

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit, %bb.h, %bb.o, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail8_ScannerIcE12_M_eat_classEc(ptr noundef nonnull align 8 dereferenceable(248) %0, i8 noundef signext %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !9324
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !9326
  store i8 0, ptr %i.c, align 1, !tbaa !9325
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !69419 ; 4 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !69420 ; 2 uses
  %.not13 = icmp eq ptr %i.f, %i.g
end_hunk_0
begin_hunk_1_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl:bb.a
  %i.af = ptrtoint ptr %i.ac to i64
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.ag = phi i64 [ %.pre, %._crit_edge ], [ %i.af, %bb.d ]
  %.sroa.029.0.copyload = phi i64 [ %.sroa.029.0.copyload.pre, %._crit_edge ], [ %i.ae, %bb.d ]
  store i64 %i.ag, ptr %i.x, align 8, !tbaa !9357
  store i32 1, ptr %i.y, align 8, !tbaa !69594
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !9325
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ai), !inline_history !73658
  store i64 %.sroa.029.0.copyload, ptr %i.x, align 8, !tbaa !9357
  br label %tailrecurse.backedge.sink.split

bb.f:                                             ; preds = %bb.d
  %i.aj = icmp slt i32 %i.z, 2
  br i1 %i.aj, label %bb.g, label %tailrecurse.backedge

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i32 %i.z, 1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !69594
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !9325
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.am), !inline_history !73658
  %i.an = load i32, ptr %i.y, align 8, !tbaa !69594
  %i.ao = add nsw i32 %i.an, -1
  br label %tailrecurse.backedge.sink.split

tailrecurse.backedge.sink.split:                  ; preds = %bb.e, %bb.g
  %.sink = phi i32 [ %i.ao, %bb.g ], [ %i.z, %bb.e ]
  store i32 %.sink, ptr %i.y, align 8, !tbaa !69594
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.sink.split, %bb.u, %bb.t, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, %bb.o, %bb.f
  %.tr37.be.in = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.tr37.be = load i64, ptr %.tr37.be.in, align 8, !tbaa !69417 ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !69602
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.tr37.be ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9350, !range !16138, !noundef !4070
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %common.ret, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %tailrecurse.backedge, %tailrecurse
  %.be = phi ptr [ %i.aq, %tailrecurse.backedge ], [ %i.ef, %tailrecurse ]
  %.tr3751.be = phi i64 [ %.tr37.be, %tailrecurse.backedge ], [ %i.ed, %tailrecurse ]
  br label %.lr.ph

bb.h:                                             ; preds = %bb.b
  %i.at = load i8, ptr %i.m, align 4, !tbaa !69631, !range !16138, !noundef !4070
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %common.ret, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !69417
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.aw), !inline_history !73659
  %i.ax = load i8, ptr %i.m, align 4, !tbaa !69631, !range !16138, !noundef !4070
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %common.ret, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_rep_once_moreENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751), !inline_history !73659
  br label %common.ret

common.ret:                                       ; preds = %bb.v, %bb.w, %bb.h, %bb.i, %bb.j, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.a, %bb.s, %bb.p, %bb.n, %bb.q, %tailrecurse.backedge, %bb.u, %bb.t, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, %.lr.ph, %tailrecurse, %bb.ad, %bb.ae, %bb.l, %bb.k
  ret void

bb.k:                                             ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !9325
  %i.bb = load ptr, ptr %0, align 8, !tbaa !23615
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.ba ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bc, align 8, !tbaa !9357
  %i.bd = load i64, ptr %i.g, align 8, !tbaa !9357
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !9357
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !69417
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.bf), !inline_history !73660
  store ptr %.sroa.0.0.copyload.i, ptr %i.bc, align 8, !tbaa !9357
  br label %common.ret

bb.l:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !9325
  %i.bi = load ptr, ptr %0, align 8, !tbaa !23615
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bh ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bk = load i64, ptr %i.g, align 8, !tbaa !9357
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !69623
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !69417
  %i.bn = load <2 x i64>, ptr %i.bj, align 8
  store i64 %i.bk, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !9357
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.bm), !inline_history !73661
  store <2 x i64> %i.bn, ptr %i.bj, align 8, !tbaa !9357
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !69623
  br label %common.ret

bb.m:                                             ; preds = %.lr.ph
  %i.bo = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bp = load ptr, ptr %i.k, align 8, !tbaa !9357
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.br = load i32, ptr %i.j, align 8, !tbaa !69612 ; 2 uses
  %i.bs = and i32 %i.br, 1
  %.not.i26 = icmp eq i32 %i.bs, 0
  br i1 %.not.i26, label %bb.o, label %common.ret

bb.o:                                             ; preds = %bb.n
  %i.bt = and i32 %i.br, 128
  %.not3.i = icmp eq i32 %i.bt, 0
  br i1 %.not3.i, label %tailrecurse.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !69633, !nonnull !4070, !align !19314
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !69585
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !69459
  %i.bz = and i32 %i.by, 2064
  %i.ca = icmp eq i32 %i.bz, 2064
  br i1 %i.ca, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

bb.q:                                             ; preds = %bb.m
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !69633, !nonnull !4070, !align !19314
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !69585
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !69459
  %i.cg = and i32 %i.cf, 2064
  %i.ch = icmp eq i32 %i.cg, 2064
  br i1 %i.ch, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit: ; preds = %bb.p, %bb.q
  %i.ci = getelementptr inbounds i8, ptr %i.bo, i64 -1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !9325
  %i.ck = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.cj)
  br i1 %i.ck, label %tailrecurse.backedge, label %common.ret

bb.r:                                             ; preds = %.lr.ph
  %i.cl = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !9357
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %.split, label %bb.s

.split:                                           ; preds = %bb.r
  %i.co = load i32, ptr %i.j, align 8, !tbaa !69612
  %i.cp = and i32 %i.co, 2
  %.not.i28 = icmp eq i32 %i.cp, 0
  br i1 %.not.i28, label %tailrecurse.backedge, label %common.ret

bb.s:                                             ; preds = %bb.r
  %i.cq = load ptr, ptr %i.i, align 8, !tbaa !69633, !nonnull !4070, !align !19314
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !69585
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !69459
  %i.cv = and i32 %i.cu, 2064
  %i.cw = icmp eq i32 %i.cv, 2064
  br i1 %i.cw, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit: ; preds = %bb.s
  %i.cx = load i8, ptr %i.cl, align 1, !tbaa !9325
  %i.cy = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.cx)
  br i1 %i.cy, label %tailrecurse.backedge, label %common.ret

bb.t:                                             ; preds = %.lr.ph
  %i.cz = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(141) %0), !inline_history !73662
  %i.da = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.db = load i8, ptr %i.da, align 8, !tbaa !9325, !range !16138, !noundef !4070
  %i.dc = zext i1 %i.cz to i8
  %.not.i = icmp eq i8 %i.db, %i.dc
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge

bb.u:                                             ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !9325
  %i.df = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %i.de), !inline_history !73663
  %i.dg = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !9325, !range !16138, !noundef !4070
  %i.di = zext i1 %i.df to i8
  %.not.i24 = icmp eq i8 %i.dh, %i.di
  br i1 %.not.i24, label %common.ret, label %tailrecurse.backedge

bb.v:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE15_M_handle_matchENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751)
  br label %common.ret

bb.w:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE17_M_handle_backrefENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751)
  br label %common.ret

bb.x:                                             ; preds = %.lr.ph
  %i.dj = load ptr, ptr %i.g, align 8, !tbaa !9357 ; 2 uses
  %i.dk = load ptr, ptr %i.k, align 8, !tbaa !9357
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dm = load i32, ptr %i.j, align 8, !tbaa !69612
  %i.dn = and i32 %i.dm, 32
  %.not.i25 = icmp eq i32 %i.dn, 0
  br i1 %.not.i25, label %bb.z, label %common.ret

bb.z:                                             ; preds = %bb.y, %bb.x
  %3 = icmp eq i8 %1, 1
  %i.do = load ptr, ptr %i.h, align 8
  %i.dp = icmp eq ptr %i.dj, %i.do
  %or.cond.i = select i1 %3, i1 true, i1 %i.dp
  br i1 %or.cond.i, label %bb.aa, label %common.ret

bb.aa:                                            ; preds = %bb.z
  %i.dq = load i8, ptr %i.m, align 4, !tbaa !69631, !range !16138, !noundef !4070
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %common.ret, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.m, align 4, !tbaa !69631
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !69628, !nonnull !4070, !align !19314
  %i.du = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(141) %0) ; 0 uses
  br label %common.ret

bb.ac:                                            ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !69459
  %i.dx = and i32 %i.dw, 16
  %.not.i88 = icmp eq i32 %i.dx, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !9325
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.dz), !inline_history !73664
  %i.ea = load i8, ptr %i.m, align 4, !tbaa !69631, !range !16138, !noundef !4070 ; 2 uses
  br i1 %.not.i88, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %common.ret, label %tailrecurse

tailrecurse:                                      ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !69417 ; 2 uses
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !69602
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.ed ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9350, !range !16138, !noundef !4070
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %common.ret, label %.lr.ph.backedge

bb.ae:                                            ; preds = %bb.ac
  store i8 0, ptr %i.m, align 4, !tbaa !69631
  %i.ei = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !69417
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ej), !inline_history !73664
  %i.ek = load i8, ptr %i.m, align 4, !tbaa !69631, !range !16138, !noundef !4070
  %i.el = or i8 %i.ek, %i.ea
  store i8 %i.el, ptr %i.m, align 4, !tbaa !69631
  br label %common.ret
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE17_M_realloc_insertIJRlRKSF_EEEvNS4_IPSG_SI_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69614 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !69613  ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.500) #58
  unreachable

_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #59 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !9358
  store i64 %i.r, ptr %i.q, align 8, !tbaa !69630
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !69626 ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !23615  ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.thread, label %bb.c

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.thread: ; preds = %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit
  %i.z = getelementptr inbounds nuw i8, ptr null, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !23616
  br label %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit
  %i.ab = sdiv exact i64 %i.y, 24
  %i.ac = icmp ugt i64 %i.ab, 384307168202282325
  br i1 %i.ac, label %bb.d, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i, !prof !9356

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #58
  unreachable

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i: ; preds = %bb.c
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #59 ; 3 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !23615
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !23616
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ad, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i ], [ %i.v, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.u
  br i1 %i.ai, label %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3588

_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.thread
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEC2EmRKSD_.exit.i.i.i.thread ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !69626
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %i.p, %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73673)
  %i.ak = load i64, ptr %.0911.i.i.i, align 8, !tbaa !69630, !alias.scope !73673, !noalias !73672
  store i64 %i.ak, ptr %.012.i.i.i, align 8, !tbaa !69630, !alias.scope !73672, !noalias !73673
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.an = load <2 x ptr>, ptr %i.am, align 8, !tbaa !69620, !alias.scope !73673, !noalias !73672
  store <2 x ptr> %i.an, ptr %i.al, align 8, !tbaa !69620, !alias.scope !73672, !noalias !73673
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23616, !alias.scope !73673, !noalias !73672
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !23616, !alias.scope !73672, !noalias !73673
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false), !alias.scope !73673, !noalias !73672
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, label %.lr.ph.i.i.i, !llvm.loop !73668

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEJRlRKSG_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSM_DpOSN_.exit ], [ %i.as, %.lr.ph.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.bc, %.lr.ph.i.i.i18 ], [ %i.at, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ] ; 4 uses
  %.0911.i.i.i20 = phi ptr [ %i.bb, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73675)
  %i.au = load i64, ptr %.0911.i.i.i20, align 8, !tbaa !69630, !alias.scope !73675, !noalias !73674
  store i64 %i.au, ptr %.012.i.i.i19, align 8, !tbaa !69630, !alias.scope !73674, !noalias !73675
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.ax = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !69620, !alias.scope !73675, !noalias !73674
  store <2 x ptr> %i.ax, ptr %i.av, align 8, !tbaa !69620, !alias.scope !73674, !noalias !73675
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !23616, !alias.scope !73675, !noalias !73674
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !23616, !alias.scope !73674, !noalias !73675
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false), !alias.scope !73675, !noalias !73674
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 32 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bb, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !73668

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.at, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ], [ %i.bc, %.lr.ph.i.i.i18 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit23
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !69615
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bg) #60
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit: ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit23, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !69613
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !69614
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !69615
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE15_M_handle_matchENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
end_hunk_1
