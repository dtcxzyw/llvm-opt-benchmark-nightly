Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/FileFind?download=true
inline.NumInlined: 271
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN8NWindows5NFile5NFind8FindFileEPKcRNS1_9CFileInfoE:_ZN11CStringBaseIcEC2Ev.exit
vec.epilog.middle.block99:                        ; preds = %vec.epilog.vector.body95
  %cmp.n100 = icmp eq i64 %n.vec94, %wide.trip.count.i.i46
  br i1 %cmp.n100, label %._crit_edge.thread.i.i43, label %vec.epilog.scalar.ph90.preheader

vec.epilog.scalar.ph90.preheader:                 ; preds = %iter.check89, %vec.epilog.iter.check91, %vec.epilog.middle.block99
  %indvars.iv.i.i47.ph = phi i64 [ 0, %iter.check89 ], [ %n.vec80, %vec.epilog.iter.check91 ], [ %n.vec94, %vec.epilog.middle.block99 ] ; 3 uses
  %xtraiter103 = and i64 %wide.trip.count.i.i46, 3 ; 2 uses
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %vec.epilog.scalar.ph90.prol.loopexit, label %vec.epilog.scalar.ph90.prol

vec.epilog.scalar.ph90.prol:                      ; preds = %vec.epilog.scalar.ph90.preheader, %vec.epilog.scalar.ph90.prol
  %indvars.iv.i.i47.prol = phi i64 [ %indvars.iv.next.i.i48.prol, %vec.epilog.scalar.ph90.prol ], [ %indvars.iv.i.i47.ph, %vec.epilog.scalar.ph90.preheader ] ; 3 uses
  %prol.iter105 = phi i64 [ %prol.iter105.next, %vec.epilog.scalar.ph90.prol ], [ 0, %vec.epilog.scalar.ph90.preheader ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre.i.i41, i64 %indvars.iv.i.i47.prol
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 %indvars.iv.i.i47.prol
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !17
  %indvars.iv.next.i.i48.prol = add nuw nsw i64 %indvars.iv.i.i47.prol, 1 ; 2 uses
  %prol.iter105.next = add i64 %prol.iter105, 1   ; 2 uses
  %prol.iter105.cmp.not = icmp eq i64 %prol.iter105.next, %xtraiter103
  br i1 %prol.iter105.cmp.not, label %vec.epilog.scalar.ph90.prol.loopexit, label %vec.epilog.scalar.ph90.prol, !llvm.loop !125

vec.epilog.scalar.ph90.prol.loopexit:             ; preds = %vec.epilog.scalar.ph90.prol, %vec.epilog.scalar.ph90.preheader
  %indvars.iv.i.i47.unr = phi i64 [ %indvars.iv.i.i47.ph, %vec.epilog.scalar.ph90.preheader ], [ %indvars.iv.next.i.i48.prol, %vec.epilog.scalar.ph90.prol ]
  %i.ci = sub nsw i64 %indvars.iv.i.i47.ph, %wide.trip.count.i.i46
  %i.cj = icmp ugt i64 %i.ci, -4
  br i1 %i.cj, label %._crit_edge.thread.i.i43, label %vec.epilog.scalar.ph90

._crit_edge.i.i42:                                ; preds = %.preheader.i.i40
  %i.ck = icmp eq ptr %.pre.i.i41, null
  br i1 %i.ck, label %bb.h, label %._crit_edge.thread.i.i43

vec.epilog.scalar.ph90:                           ; preds = %vec.epilog.scalar.ph90.prol.loopexit, %vec.epilog.scalar.ph90
  %indvars.iv.i.i47 = phi i64 [ %indvars.iv.next.i.i48.3, %vec.epilog.scalar.ph90 ], [ %indvars.iv.i.i47.unr, %vec.epilog.scalar.ph90.prol.loopexit ] ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre.i.i41, i64 %indvars.iv.i.i47
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bq, i64 %indvars.iv.i.i47
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !17
  %indvars.iv.next.i.i48 = add nuw nsw i64 %indvars.iv.i.i47, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pre.i.i41, i64 %indvars.iv.next.i.i48
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !17
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bq, i64 %indvars.iv.next.i.i48
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !17
  %indvars.iv.next.i.i48.1 = add nuw nsw i64 %indvars.iv.i.i47, 2 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.pre.i.i41, i64 %indvars.iv.next.i.i48.1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !17
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bq, i64 %indvars.iv.next.i.i48.1
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !17
  %indvars.iv.next.i.i48.2 = add nuw nsw i64 %indvars.iv.i.i47, 3 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre.i.i41, i64 %indvars.iv.next.i.i48.2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !17
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %indvars.iv.next.i.i48.2
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !17
  %indvars.iv.next.i.i48.3 = add nuw nsw i64 %indvars.iv.i.i47, 4 ; 2 uses
  %exitcond.not.i.i49.3 = icmp eq i64 %indvars.iv.next.i.i48.3, %wide.trip.count.i.i46
  br i1 %exitcond.not.i.i49.3, label %._crit_edge.thread.i.i43, label %vec.epilog.scalar.ph90, !llvm.loop !126

._crit_edge.thread.i.i43:                         ; preds = %vec.epilog.scalar.ph90.prol.loopexit, %vec.epilog.scalar.ph90, %middle.block86, %vec.epilog.middle.block99, %._crit_edge.i.i42
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i41) #19
  %.pre.i44 = load i32, ptr %i.bi, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread.i.i43, %._crit_edge.i.i42, %.noexc50
  %i.cx = phi i32 [ %.pre.i44, %._crit_edge.thread.i.i43 ], [ %.pre7.i, %._crit_edge.i.i42 ], [ %.pre7.i, %.noexc50 ]
  store ptr %i.bq, ptr %i.bh, align 8, !tbaa !16
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %i.bq, i64 %i.cy
  store i8 0, ptr %i.cz, align 1, !tbaa !17
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !19
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i36

_ZN11CStringBaseIcE11SetCapacityEi.exit.i36:      ; preds = %bb.h, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
  %i.da = phi ptr [ %.pre8.i, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i ], [ %i.bq, %bb.h ]
  %i.db = load ptr, ptr %3, align 8, !tbaa !16    ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i36
  %.04.i.i37 = phi ptr [ %i.da, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i36 ], [ %i.de, %bb.i ] ; 2 uses
  %.0.i.i38 = phi ptr [ %i.db, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i36 ], [ %i.dc, %bb.i ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i38, i64 1
  %i.dd = load i8, ptr %.0.i.i38, align 1, !tbaa !17 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.04.i.i37, i64 1
  store i8 %i.dd, ptr %.04.i.i37, align 1, !tbaa !17
  %.not.i.i39 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i39, label %bb.j, label %bb.i, !llvm.loop !0

bb.j:                                             ; preds = %bb.i
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !15
  %i.df = icmp eq ptr %i.db, null
  br i1 %i.df, label %_ZN11CStringBaseIcED2Ev.exit51, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.db) #19
  br label %_ZN11CStringBaseIcED2Ev.exit51

_ZN11CStringBaseIcED2Ev.exit51:                   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.dg = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN11CStringBaseIcED2Ev.exit52, label %bb.l

bb.l:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit51
  call void @_ZdaPv(ptr noundef nonnull %i.dg) #19
  br label %_ZN11CStringBaseIcED2Ev.exit52

_ZN11CStringBaseIcED2Ev.exit52:                   ; preds = %_ZN11CStringBaseIcED2Ev.exit51, %bb.l
  %i.di = icmp eq i32 %i.bg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i1 %i.di

bb.m:                                             ; preds = %_ZN11CStringBaseIcEC2Ev.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit54

bb.n:                                             ; preds = %.noexc
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit53

bb.o:                                             ; preds = %bb.b
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_ZN11CStringBaseIcED2Ev.exit53, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.dm) #19
  br label %_ZN11CStringBaseIcED2Ev.exit53

_ZN11CStringBaseIcED2Ev.exit53:                   ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dk, %bb.n ], [ %i.dl, %bb.o ], [ %i.dl, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.r

bb.q:                                             ; preds = %bb.g, %_ZL16nameWindowToUnixPKc.exit
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN11CStringBaseIcED2Ev.exit53
  %.pn10 = phi { ptr, i32 } [ %i.do, %bb.q ], [ %.pn, %_ZN11CStringBaseIcED2Ev.exit53 ] ; 2 uses
  %i.dp = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZN11CStringBaseIcED2Ev.exit54, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.dp) #19
  br label %_ZN11CStringBaseIcED2Ev.exit54

_ZN11CStringBaseIcED2Ev.exit54:                   ; preds = %bb.s, %bb.r, %bb.m
  %.pn10.pn = phi { ptr, i32 } [ %i.dj, %bb.m ], [ %.pn10, %bb.r ], [ %.pn10, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.dr = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %_ZN11CStringBaseIcED2Ev.exit55, label %bb.t

bb.t:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit54
  call void @_ZdaPv(ptr noundef nonnull %i.dr) #19
  br label %_ZN11CStringBaseIcED2Ev.exit55

_ZN11CStringBaseIcED2Ev.exit55:                   ; preds = %_ZN11CStringBaseIcED2Ev.exit54, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN8NWindows5NFile5NFindL16fillin_CFileInfoERNS1_9CFileInfoEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = load i32, ptr @global_use_lstat, align 4, !tbaa !11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @lstat64(ptr noundef %1, ptr noundef nonnull %2) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = call i32 @stat64(ptr noundef %1, ptr noundef nonnull %2) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]  ; 2 uses
  %.not15 = icmp eq i32 %.0, 0
  br i1 %.not15, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !130  ; 3 uses
  %i.f = and i32 %i.e, 61440
  %i.g = icmp eq i32 %i.f, 16384                  ; 2 uses
  %spec.select = select i1 %i.g, i32 16, i32 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = lshr i32 %i.e, 7
  %i.j = and i32 %i.i, 1
  %i.k = or disjoint i32 %i.j, %spec.select
  %i.l = shl i32 %i.e, 16
  %i.m = or disjoint i32 %i.k, %i.l
  %i.n = xor i32 %i.m, 32769
  store i32 %i.n, ptr %i.h, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.p = load i64, ptr %i.o, align 8, !tbaa !131
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_Z29RtlSecondsSince1970ToFileTimejP9_FILETIME(i32 noundef %i.q, ptr noundef nonnull %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.t = load i64, ptr %i.s, align 8, !tbaa !132
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_Z29RtlSecondsSince1970ToFileTimejP9_FILETIME(i32 noundef %i.u, ptr noundef nonnull %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !133
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_Z29RtlSecondsSince1970ToFileTimejP9_FILETIME(i32 noundef %i.y, ptr noundef nonnull %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.aa, align 4, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = load i64, ptr %i.ab, align 8
  %storemerge = select i1 %i.g, i64 0, i64 %i.ac
  store i64 %storemerge, ptr %0, align 8, !tbaa !134
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile5NFind8FindFileEPKwRNS1_10CFileInfoWE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.CStringBase, align 8         ; 7 uses
  %3 = alloca %class.CStringBase.0, align 8       ; 10 uses
  %4 = alloca %"class.NWindows::NFile::NFind::CFileInfo", align 16 ; 11 uses
  %5 = alloca %class.CStringBase, align 8         ; 12 uses
  %6 = alloca %class.CStringBase.0, align 8       ; 8 uses
  %7 = alloca %class.CStringBase.0, align 8       ; 9 uses
  %8 = alloca %class.CStringBase.0, align 8       ; 10 uses
  %9 = alloca %class.CStringBase.0, align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr %0)
  %i.b = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.f = zext nneg i32 %i.c to i64
  %i.g = icmp slt i32 %i.b, -1
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #18 ; 3 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !32
  store i32 0, ptr %i.j, align 4, !tbaa !34
  store i32 %i.c, ptr %i.e, align 4, !tbaa !38
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.a, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.m, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.j, %bb.a ] ; 2 uses
  %.0.i.i = phi ptr [ %i.k, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %0, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.l = load i32, ptr %.0.i.i, align 4, !tbaa !34 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.l, ptr %.04.i.i, align 4, !tbaa !34
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !1

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.b, ptr %i.a, align 8, !tbaa !31
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.n = load ptr, ptr %3, align 8, !tbaa !32     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.n) #19
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.s = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %.noexc unwind label %bb.s     ; 10 uses

.noexc:                                           ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = load i32, ptr %i.r, align 4, !tbaa !19
  %i.v = icmp sgt i32 %i.u, 0
  %.pre1.i.i = load i32, ptr %i.q, align 16, !tbaa !15 ; 6 uses
  br i1 %i.v, label %.preheader.i.i.i, label %bb.d

.preheader.i.i.i:                                 ; preds = %.noexc
  %i.w = icmp sgt i32 %.pre1.i.i, 0
  %.pre.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !16 ; 10 uses
  br i1 %i.w, label %iter.check, label %._crit_edge.i.i.i

iter.check:                                       ; preds = %.preheader.i.i.i
  %.pre.i.i.i178 = ptrtoaddr ptr %.pre.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %.pre1.i.i to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.pre1.i.i, 4
  %i.x = sub i64 %.pre.i.i.i178, %i.t
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check179 = icmp ult i32 %.pre1.i.i, 32
  br i1 %min.iters.check179, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %wide.trip.count.i.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <16 x i8>, ptr %i.z, align 1, !tbaa !17
  %wide.load180 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <16 x i8> %wide.load, ptr %i.ab, align 1, !tbaa !17
  store <16 x i8> %wide.load180, ptr %i.ac, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec181 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index182 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next184, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %index182
  %wide.load183 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 %index182
  store <4 x i8> %wide.load183, ptr %i.af, align 1, !tbaa !17
  %index.next184 = add nuw i64 %index182, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next184, %n.vec181
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !136

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n185 = icmp eq i64 %n.vec181, %wide.trip.count.i.i.i
  br i1 %cmp.n185, label %._crit_edge.thread.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec181, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i.i.i.prol
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !17
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !137

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ak = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %._crit_edge.thread.i.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.am = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.am, label %bb.d, label %._crit_edge.thread.i.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i.i.i
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !17
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
end_hunk_0
