inline.NumInlined: 2106
inline.NumDeleted: 832
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Assimp3ASE6Parser5ParseEv:bb.a
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %.backedge.backedge

bb.ak:                                            ; preds = %bb.ag
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.al:                                            ; preds = %bb.ah
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.am:                                            ; preds = %bb.ai
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %3, align 8               ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.l
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.am
  %i.dc = load i64, ptr %i.l, align 8
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.al
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.al ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %i.cz, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %i.cx, %bb.ak ]
  %i.de = load ptr, ptr %1, align 8               ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.m
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.an
  %i.dg = load i64, ptr %i.m, align 8
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn.pn

bb.ao:                                            ; preds = %bb.ae, %bb.af
  %i.di = load i32, ptr %i.b, align 8
  %i.dj = icmp ult i32 %i.di, 200
  br i1 %i.dj, label %bb.ap, label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  %i.dk = call noundef zeroext i1 @_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.16, i32 noundef 18)
  br i1 %i.dk, label %bb.aq, label %bb.ay

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN6Assimp3ASE6Parser21ParseLV1SoftSkinBlockEv(ptr noundef nonnull align 8 dereferenceable(188) %0)
  br label %bb.ay

bb.ar:                                            ; preds = %.backedge
  %i.dl = add nsw i32 %.07, 1
  br label %bb.ay

bb.as:                                            ; preds = %.backedge
  %i.dm = add nsw i32 %.07, -1                    ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.do = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  store ptr %i.do, ptr %0, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  %i.dr = icmp eq ptr %i.do, %i.dq
  br i1 %i.dr, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.at
  %.promoted23.i = load i8, ptr %i.n, align 4
  %.promoted24.i = load i32, ptr %i.o, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.ax, %.lr.ph.i
  %i.ds = phi i32 [ %.promoted24.i, %.lr.ph.i ], [ %i.dy, %bb.ax ] ; 3 uses
  %i.dt = phi i8 [ %.promoted23.i, %.lr.ph.i ], [ %storemerge.i65, %bb.ax ]
  %i.du = phi ptr [ %i.do, %.lr.ph.i ], [ %i.dz, %bb.ax ] ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1             ; 2 uses
  switch i8 %i.dv, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %bb.av
    i8 10, label %bb.av
    i8 0, label %bb.av
    i8 12, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au, %bb.au, %bb.au
  %i.dw = trunc nuw i8 %i.dt to i1
  br i1 %i.dw, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dx = add i32 %i.ds, 1                        ; 2 uses
  store i32 %i.dx, ptr %i.o, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %bb.aw, %bb.av, %bb.au
  %storemerge.i65 = phi i8 [ 1, %bb.aw ], [ 0, %bb.au ], [ 0, %bb.av ] ; 2 uses
  %i.dy = phi i32 [ %i.dx, %bb.aw ], [ %i.ds, %bb.au ], [ %i.ds, %bb.av ]
  store i8 %storemerge.i65, ptr %i.n, align 4
  switch i8 %i.dv, label %bb.ax [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

bb.ax:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 1 ; 3 uses
  store ptr %i.dz, ptr %0, align 8
  %i.ea = icmp eq ptr %i.dz, %i.dq
  br i1 %i.ea, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %bb.au

bb.ay:                                            ; preds = %.backedge, %bb.ar, %bb.as, %bb.ao, %bb.ap, %bb.aq
  %.18 = phi i32 [ %.07, %bb.aq ], [ %.07, %bb.ap ], [ %.07, %bb.ao ], [ %i.dl, %bb.ar ], [ %i.dm, %bb.as ], [ %.07, %.backedge ]
  %i.eb = load ptr, ptr %0, align 8               ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1
  switch i8 %i.ec, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 13, label %bb.az
    i8 10, label %bb.az
    i8 12, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay, %bb.ay
  %i.ed = load i8, ptr %i.n, align 4, !range !32, !noundef !33
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ef = load i32, ptr %i.o, align 8
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr %i.o, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.az, %bb.ay, %bb.ba
  %storemerge = phi i8 [ 1, %bb.ba ], [ 0, %bb.ay ], [ 0, %bb.az ]
  store i8 %storemerge, ptr %i.n, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  store ptr %i.eh, ptr %0, align 8
  br label %.backedge.backedge

_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit:    ; preds = %bb.ay, %bb.ax, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %bb.at
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %i.c = tail call i32 @strncmp(ptr noundef %1, ptr noundef %i.a, i64 noundef %i.b) #30
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b ; 2 uses
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  switch i8 %i.e, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 10, label %bb.c
    i8 0, label %bb.c
    i8 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.not11 = icmp eq i8 %i.e, 0
  %i.f = add i32 %2, 1
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %storemerge = select i1 %.not11, ptr %i.d, ptr %i.h
  store ptr %storemerge, ptr %0, align 8
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %0, align 8                ; 3 uses
  %2 = ptrtoint ptr %i.d to i64
  %3 = ptrtoint ptr %i.c to i64
  %i.e = sub i64 %3, %2
  %scevgep.i.i = getelementptr i8, ptr %i.d, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i = phi ptr [ %i.d, %bb.a ], [ %i.g, %bb.d ] ; 4 uses
  %i.f = load i8, ptr %.0.i.i, align 1
  switch i8 %i.f, label %.critedge.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i = icmp eq ptr %.0.i.i, %i.c
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.b, !llvm.loop !34

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.b ], [ %scevgep.i.i, %bb.c ] ; 4 uses
  store ptr %.0.lcssa.i.i, ptr %0, align 8
  %i.h = load i8, ptr %.0.lcssa.i.i, align 1      ; 3 uses
  switch i8 %i.h, label %bb.e [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.j, ptr noundef nonnull @.str.207) #27 ; 0 uses
  %i.l = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %1, align 4
  %i.m = load i32, ptr %i.i, align 8
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %.critedge.i.i
  %i.o = add i8 %i.h, -58
  %or.cond11.i = icmp ult i8 %i.o, -10
  br i1 %or.cond11.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.p = phi i8 [ %i.u, %.lr.ph.i ], [ %i.h, %bb.e ]
  %.013.i = phi i32 [ %i.s, %.lr.ph.i ], [ 0, %bb.e ]
  %.0812.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.0.lcssa.i.i, %bb.e ]
  %i.q = mul i32 %.013.i, 10
  %narrow.i = add nsw i8 %i.p, -48
  %i.r = zext nneg i8 %narrow.i to i32
  %i.s = add i32 %i.q, %i.r                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = add i8 %i.u, -58
  %or.cond.i = icmp ult i8 %i.v, -10
  br i1 %or.cond.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i, !llvm.loop !35

_ZN6Assimp9strtoul10EPKcPS1_.exit:                ; preds = %.lr.ph.i, %bb.e
  %.08.lcssa.i = phi ptr [ %.0.lcssa.i.i, %bb.e ], [ %i.t, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.s, %.lr.ph.i ]
  store ptr %.08.lcssa.i, ptr %0, align 8
  store i32 %.0.lcssa.i, ptr %1, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser18ParseLV1SceneBlockEv(ptr noundef nonnull align 8 dereferenceable(188) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %bb.a
  %.0.ph = phi i32 [ %.146, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ 0, %bb.a ] ; 5 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.outer
  %i.i = load ptr, ptr %0, align 8                ; 18 uses
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  switch i8 %i.j, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit28.thread [
    i8 42, label %bb.b
    i8 123, label %bb.t
    i8 125, label %bb.u
  ]

bb.b:                                             ; preds = %.backedge
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 9 uses
  store ptr %i.k, ptr %0, align 8
  %i.l = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(24) @.str.19, ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 23) #30
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  switch i8 %i.n, label %bb.e [
    i8 32, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
    i8 10, label %bb.d
    i8 0, label %bb.d
    i8 12, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %.not11.i = icmp eq i8 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  %storemerge.i = select i1 %.not11.i, ptr %i.m, ptr %i.o
  store ptr %storemerge.i, ptr %0, align 8
  tail call void @_ZN6Assimp3ASE6Parser23ParseLV4MeshFloatTripleEPf(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull %i.a)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.d, %bb.g, %bb.j, %bb.m, %bb.p, %bb.s
  br label %.backedge, !llvm.loop !36

bb.e:                                             ; preds = %bb.b, %bb.c
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(21) @.str.20, ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 20) #30
  %.not.i4 = icmp eq i32 %i.p, 0
  br i1 %.not.i4, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 21 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  switch i8 %i.r, label %bb.h [
    i8 32, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 10, label %bb.g
    i8 0, label %bb.g
    i8 12, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %.not11.i6 = icmp eq i8 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  %storemerge.i7 = select i1 %.not11.i6, ptr %i.q, ptr %i.s
  store ptr %storemerge.i7, ptr %0, align 8
  tail call void @_ZN6Assimp3ASE6Parser23ParseLV4MeshFloatTripleEPf(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull %i.b)
  br label %.backedge.backedge

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.t = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(17) @.str.21, ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 16) #30
  %.not.i9 = icmp eq i32 %i.t, 0
  br i1 %.not.i9, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 17 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  switch i8 %i.v, label %bb.k [
    i8 32, label %bb.j
    i8 9, label %bb.j
    i8 13, label %bb.j
    i8 10, label %bb.j
    i8 0, label %bb.j
    i8 12, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %.not11.i11 = icmp eq i8 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  %storemerge.i12 = select i1 %.not11.i11, ptr %i.u, ptr %i.w
  store ptr %storemerge.i12, ptr %0, align 8
  tail call void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  br label %.backedge.backedge

bb.k:                                             ; preds = %bb.h, %bb.i
  %i.x = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.22, ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 15) #30
  %.not.i14 = icmp eq i32 %i.x, 0
  br i1 %.not.i14, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1               ; 2 uses
  switch i8 %i.z, label %bb.n [
    i8 32, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
    i8 10, label %bb.m
    i8 0, label %bb.m
    i8 12, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %.not11.i16 = icmp eq i8 %i.z, 0
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6Assimp3ASE6CameraESaIS2_EE12emplace_backIJRA8_KcEEERS2_DpOT_:bb.a
  store i64 %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  store i32 1, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8
  %i.t = load ptr, ptr %2, align 8                ; 2 uses
  %i.u = load i64, ptr %i.o, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.u, ptr %i.a, align 8
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc3 unwind label %bb.h    ; 2 uses

.noexc3:                                          ; preds = %.noexc.i.i.i
  store ptr %i.w, ptr %i.r, align 8
  %i.x = load i64, ptr %i.a, align 8
  store i64 %i.x, ptr %i.s, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc3, %bb.e
  %i.y = phi ptr [ %i.w, %.noexc3 ], [ %i.s, %bb.e ] ; 2 uses
  switch i64 %i.u, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt15__new_allocatorIN6Assimp3ASE6CameraEE9constructIS2_JRA8_KcEEEvPT_DpOT0_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.z = load i8, ptr %i.t, align 1
  store i8 %i.z, ptr %i.y, align 1
  br label %_ZNSt15__new_allocatorIN6Assimp3ASE6CameraEE9constructIS2_JRA8_KcEEEvPT_DpOT0_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.t, i64 %i.u, i1 false)
  br label %_ZNSt15__new_allocatorIN6Assimp3ASE6CameraEE9constructIS2_JRA8_KcEEEvPT_DpOT0_.exit

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8               ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.g
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ad = load i64, ptr %i.g, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.aa

_ZNSt15__new_allocatorIN6Assimp3ASE6CameraEE9constructIS2_JRA8_KcEEEvPT_DpOT0_.exit: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.af = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.af, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %i.r, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %i.al, align 8
  store i8 0, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store float 1.000000e+00, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.at, i8 1, i64 9, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  store i32 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 164
  store i32 0, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i32 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %i.ax, i8 0, i64 84, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.ay, i8 0, i64 73, i1 false)
  store <4 x float> <float 1.000000e+00, float +qnan, float 0.000000e+00, float 0.000000e+00>, ptr %i.as, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 340
  store <2 x float> <float 7.500000e-01, float 1.000000e-01>, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 348
  store float 1.000000e+03, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  store i32 0, ptr %i.bb, align 8
  %i.bc = load ptr, ptr %2, align 8               ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.g
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt15__new_allocatorIN6Assimp3ASE6CameraEE9constructIS2_JRA8_KcEEEvPT_DpOT0_.exit
  %i.be = load i64, ptr %i.g, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt15__new_allocatorIN6Assimp3ASE6CameraEE9constructIS2_JRA8_KcEEEvPT_DpOT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.bg = load ptr, ptr %i.c, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 360 ; 2 uses
  store ptr %i.bh, ptr %i.c, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6Assimp3ASE6CameraESaIS2_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.d, ptr noundef nonnull align 1 dereferenceable(8) %1)
  %.pre = load ptr, ptr %i.c, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.bi = phi ptr [ %.pre, %bb.i ], [ %i.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -360
  ret ptr %i.bj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.208) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3ASE6Parser11ParseStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [2048 x i8], align 16             ; 4 uses
  %i.c = alloca [2048 x i8], align 16             ; 4 uses
  %i.d = alloca [2048 x i8], align 16             ; 4 uses
  %i.e = alloca [1024 x i8], align 16             ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 3 uses
  %4 = ptrtoint ptr %i.h to i64
  %5 = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %5, %4
  %scevgep.i.i = getelementptr i8, ptr %i.h, i64 %i.i
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i = phi ptr [ %i.h, %bb.a ], [ %i.k, %bb.d ] ; 4 uses
  %i.j = load i8, ptr %.0.i.i, align 1
  switch i8 %i.j, label %.critedge.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i = icmp eq ptr %.0.i.i, %i.g
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.b, !llvm.loop !34

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.b ], [ %scevgep.i.i, %bb.c ] ; 3 uses
  store ptr %.0.lcssa.i.i, ptr %0, align 8
  %i.l = load i8, ptr %.0.lcssa.i.i, align 1
  switch i8 %i.l, label %bb.e [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 34, label %bb.f
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 1024, ptr noundef nonnull @.str.75, ptr noundef %2) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = load i32, ptr %i.n, align 8
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.o, ptr noundef nonnull %i.e) #27 ; 0 uses
  %i.q = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull align 1 dereferenceable(2048) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.s

bb.e:                                             ; preds = %.critedge.i.i
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 1024, ptr noundef nonnull @.str.76, ptr noundef %2) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load i32, ptr %i.s, align 8
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.t, ptr noundef nonnull %i.e) #27 ; 0 uses
  %i.v = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 1 dereferenceable(2048) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  br label %bb.s

bb.f:                                             ; preds = %.critedge.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1 ; 5 uses
  store ptr %i.w, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.012 = phi ptr [ %i.w, %bb.f ], [ %i.ad, %bb.i ] ; 4 uses
  %i.x = load i8, ptr %.012, align 1
  switch i8 %i.x, label %bb.i [
    i8 34, label %bb.j
    i8 0, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 1024, ptr noundef nonnull @.str.77, ptr noundef %2) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.aa, ptr noundef nonnull %i.e) #27 ; 0 uses
  %i.ac = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ac, ptr noundef nonnull align 1 dereferenceable(2048) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.012, i64 1
  br label %bb.g, !llvm.loop !43

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ae = ptrtoint ptr %.012 to i64
  %i.af = ptrtoint ptr %i.w to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.ah, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.ag, ptr %i.a, align 8
  %i.ai = icmp ugt i64 %i.ag, 15
  br i1 %i.ai, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.j
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.aj, ptr %3, align 8
  %i.ak = load i64, ptr %i.a, align 8
  store i64 %i.ak, ptr %i.ah, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.j
  %i.al = phi ptr [ %i.aj, %.noexc.i ], [ %i.ah, %bb.j ] ; 2 uses
  switch i64 %i.ag, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.am = load i8, ptr %i.w, align 1
  store i8 %i.am, ptr %i.al, align 1
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr nonnull align 1 %i.w, i64 %i.ag, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i
  %i.an = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.an, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %3, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ar = load ptr, ptr %1, align 8               ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  %i.au = load ptr, ptr %3, align 8               ; 5 uses
  %i.av = icmp eq ptr %i.au, %i.ah                ; 2 uses
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.m
  br i1 %i.av, label %bb.n, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.m
  br i1 %i.av, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aw = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  switch i64 %i.aw, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ay = load i8, ptr %i.au, align 1
  store i8 %i.ay, ptr %i.ar, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.au, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.az = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.az, ptr %i.ba, align 8
  %i.bb = load ptr, ptr %1, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1
  %.pre.i = load ptr, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.au, ptr %1, align 8
  %i.be = load <2 x i64>, ptr %i.ao, align 8
  store <2 x i64> %i.be, ptr %i.bd, align 8
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bf = load i64, ptr %i.as, align 8
  store ptr %i.au, ptr %1, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load <2 x i64>, ptr %i.ao, align 8
  store <2 x i64> %i.bh, ptr %i.bg, align 8
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ar, ptr %3, align 8
  store i64 %i.bf, ptr %i.ah, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ah, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.q, %bb.r
  %i.bi = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ar, %bb.q ], [ %i.ah, %bb.r ]
  store i64 0, ptr %i.ao, align 8
  store i8 0, ptr %i.bi, align 1
  %i.bj = load ptr, ptr %3, align 8               ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ah
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
end_hunk_1
begin_hunk_2_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_:bb.a
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !alias.scope !44
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i

.invoke.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.213) #29
          to label %.cont.i unwind label %bb.c

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i, %.invoke.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !44 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !alias.scope !44
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #28
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser21ParseLV1SoftSkinBlockEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [2048 x i8], align 16             ; 4 uses
  %i.d = alloca [2048 x i8], align 16             ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"struct.std::pair", align 8        ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %.pre = load ptr, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit113, %bb.a
  %.promoted = phi ptr [ %.0.lcssa.i.i112, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit113 ], [ %.pre, %bb.a ] ; 7 uses
  %i.p = load i8, ptr %.promoted, align 1
  switch i8 %i.p, label %bb.e [
    i8 125, label %bb.c
    i8 0, label %.loopexit134
    i8 123, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.promoted, i64 1
  store ptr %i.q, ptr %0, align 8
  br label %.loopexit134

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 2 uses
  store ptr %i.r, ptr %0, align 8
  br label %bb.bp

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i32 0, ptr %i.f, align 4
  br label %bb.f

bb.f:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %bb.e
  %i.s = phi ptr [ %i.u, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ %.promoted, %bb.e ] ; 4 uses
  %i.t = load i8, ptr %i.s, align 1
  switch i8 %i.t, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 32, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 10, label %bb.g
    i8 0, label %bb.g
    i8 12, label %bb.g
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  store ptr %i.u, ptr %0, align 8
  br label %bb.f, !llvm.loop !47

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %.promoted to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = and i64 %i.x, 4294967295                 ; 5 uses
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %.thread128, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  store ptr %i.g, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i64 %i.y, ptr %i.e, align 8
  %i.z = icmp samesign ugt i64 %i.y, 15
  br i1 %i.z, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.h
  %i.aa = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.aa, ptr %1, align 8
  %i.ab = load i64, ptr %i.e, align 8
  store i64 %i.ab, ptr %i.g, align 8
  br label %bb.j

._crit_edge.i.i:                                  ; preds = %bb.h
  %cond = icmp eq i64 %i.y, 1
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ac = load i8, ptr %.promoted, align 1
  store i8 %i.ac, ptr %i.g, align 8
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.ad = phi ptr [ %i.aa, %._crit_edge.i.i.thread ], [ %i.g, %._crit_edge.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 %.promoted, i64 %i.y, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = load i64, ptr %i.e, align 8             ; 2 uses
  store i64 %i.ae, ptr %i.h, align 8
  %i.af = load ptr, ptr %1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  store i8 0, ptr %i.ag, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.ah = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ai = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not130174 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not130174, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.aj = load i64, ptr %i.h, align 8             ; 3 uses
  %i.ak = load ptr, ptr %1, align 8
  %i.al = icmp eq i64 %i.aj, 0
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread121
  %.sroa.0115.0175 = phi ptr [ %i.ah, %.lr.ph ], [ %i.as, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread121 ] ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0115.0175, i64 80
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0115.0175, i64 88
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = icmp eq i64 %i.ao, %i.aj
  br i1 %i.ap, label %bb.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread121

bb.m:                                             ; preds = %bb.l
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.m
  %i.aq = load ptr, ptr %i.am, align 8
  %bcmp.i = call i32 @bcmp(ptr %i.aq, ptr %i.ak, i64 %i.aj)
  %i.ar = icmp eq i32 %bcmp.i, 0
  br i1 %i.ar, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread121

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread121: ; preds = %bb.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0115.0175, i64 720 ; 2 uses
  %.not130 = icmp eq ptr %i.as, %i.ai
  br i1 %.not130, label %._crit_edge, label %bb.l, !llvm.loop !48

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread121, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.at = load i32, ptr %i.l, align 8
  %i.au = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.at, ptr noundef nonnull @.str.17) #27 ; 0 uses
  %i.av = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc49 unwind label %bb.s

.noexc49:                                         ; preds = %._crit_edge
  invoke void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.av, ptr noundef nonnull align 1 dereferenceable(2048) %i.d)
          to label %_ZN6Assimp3ASE6Parser10LogWarningEPKc.exit unwind label %bb.s

_ZN6Assimp3ASE6Parser10LogWarningEPKc.exit:       ; preds = %.noexc49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.aw = load ptr, ptr %i.k, align 8             ; 4 uses
  %4 = ptrtoint ptr %i.aw to i64                  ; 3 uses
  %.promoted184 = load ptr, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit, %_ZN6Assimp3ASE6Parser10LogWarningEPKc.exit
  %.1.lcssa.i.i185 = phi ptr [ %.1.lcssa.i.i, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit ], [ %.promoted184, %_ZN6Assimp3ASE6Parser10LogWarningEPKc.exit ] ; 3 uses
  %5 = ptrtoint ptr %.1.lcssa.i.i185 to i64
  %i.ax = sub i64 %4, %5
  %scevgep.i.i = getelementptr i8, ptr %.1.lcssa.i.i185, i64 %i.ax
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %.0.i.i = phi ptr [ %.1.lcssa.i.i185, %bb.n ], [ %i.az, %bb.q ] ; 4 uses
  %i.ay = load i8, ptr %.0.i.i, align 1
  switch i8 %i.ay, label %bb.r [
    i8 32, label %bb.p
    i8 9, label %bb.p
    i8 13, label %bb.p
    i8 10, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o
  %.not.i.i = icmp eq ptr %.0.i.i, %i.aw
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.o, !llvm.loop !49

bb.r:                                             ; preds = %bb.p, %bb.o
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.o ], [ %scevgep.i.i, %bb.p ] ; 6 uses
  store ptr %.0.lcssa.i.i, ptr %0, align 8
  %i.ba = load i8, ptr %.0.lcssa.i.i, align 1
  %.fr131 = freeze i8 %i.ba                       ; 4 uses
  %i.bb = icmp eq i8 %.fr131, 125
  br i1 %i.bb, label %.critedge, label %bb.t

.critedge:                                        ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  store ptr %i.bc, ptr %0, align 8
  %i.bd = load ptr, ptr %1, align 8               ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.g
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.bf = load i64, ptr %i.g, align 8
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp3ASE10BoneVertexESaIS2_EE11_M_allocateEm.exit.i, %.noexc49, %._crit_edge, %bb.ae
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.t:                                             ; preds = %bb.r
  %i.bi = add i8 %.fr131, -48
  %or.cond.i51 = icmp ult i8 %i.bi, 10
  br i1 %or.cond.i51, label %bb.u, label %switch.early.test

switch.early.test:                                ; preds = %bb.t
  switch i8 %.fr131, label %.loopexit132 [
    i8 45, label %bb.u
    i8 43, label %bb.u
  ]

bb.u:                                             ; preds = %switch.early.test, %switch.early.test, %bb.t
  %6 = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bj = sub i64 %4, %6
  %scevgep.i.i52 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.bj
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %i.bk = phi i8 [ %.fr131, %bb.u ], [ %.pre207, %bb.x ]
  %.0.i.i53 = phi ptr [ %.0.lcssa.i.i, %bb.u ], [ %i.bl, %bb.x ] ; 6 uses
  switch i8 %i.bk, label %bb.w [
    i8 13, label %.critedge.i.i
    i8 10, label %.critedge.i.i
    i8 0, label %.critedge.i.i
    i8 35, label %.critedge.i.i
  ]

bb.w:                                             ; preds = %bb.v
  %.not22.i.i = icmp eq ptr %.0.i.i53, %i.aw
  br i1 %.not22.i.i, label %.critedge.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i53, i64 1 ; 2 uses
  %.pre207 = load i8, ptr %i.bl, align 1
  br label %bb.v, !llvm.loop !50

.critedge.i.i:                                    ; preds = %bb.w, %bb.v, %bb.v, %bb.v, %bb.v
  %.0.lcssa.i.i54 = phi ptr [ %.0.i.i53, %bb.v ], [ %.0.i.i53, %bb.v ], [ %.0.i.i53, %bb.v ], [ %.0.i.i53, %bb.v ], [ %scevgep.i.i52, %bb.w ] ; 3 uses
  %.0.lcssa24.i.i = ptrtoint ptr %.0.lcssa.i.i54 to i64
  %i.bm = sub i64 %4, %.0.lcssa24.i.i
  %scevgep25.i.i = getelementptr i8, ptr %.0.lcssa.i.i54, i64 %i.bm
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.critedge.i.i
  %.1.i.i = phi ptr [ %.0.lcssa.i.i54, %.critedge.i.i ], [ %i.bo, %bb.aa ] ; 4 uses
  %i.bn = load i8, ptr %.1.i.i, align 1
  switch i8 %i.bn, label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit [
    i8 13, label %bb.z
    i8 10, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %.not23.i.i = icmp eq ptr %.1.i.i, %i.aw
  br i1 %.not23.i.i, label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br label %bb.y, !llvm.loop !51

_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit:            ; preds = %bb.y, %bb.z
  %.1.lcssa.i.i = phi ptr [ %.1.i.i, %bb.y ], [ %scevgep25.i.i, %bb.z ] ; 2 uses
  store ptr %.1.lcssa.i.i, ptr %0, align 8
  br label %bb.n

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bp = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.bq = load ptr, ptr %0, align 8               ; 3 uses
  %7 = ptrtoint ptr %i.bq to i64
  %8 = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %8, %7
  %scevgep.i.i55 = getelementptr i8, ptr %i.bq, i64 %i.br
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.0.i.i56 = phi ptr [ %i.bq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %i.bt, %bb.ad ] ; 4 uses
  %i.bs = load i8, ptr %.0.i.i56, align 1
  switch i8 %i.bs, label %bb.ae [
    i8 32, label %bb.ac
    i8 9, label %bb.ac
    i8 13, label %bb.ac
    i8 10, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %.not.i.i57 = icmp eq ptr %.0.i.i56, %i.bp
  br i1 %.not.i.i57, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i56, i64 1
  br label %bb.ab, !llvm.loop !49

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %.0.lcssa.i.i58 = phi ptr [ %.0.i.i56, %bb.ab ], [ %scevgep.i.i55, %bb.ac ]
  store ptr %.0.lcssa.i.i58, ptr %0, align 8
  invoke void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.af unwind label %bb.s

bb.af:                                            ; preds = %bb.ae
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0115.0175, i64 632 ; 4 uses
  %i.bv = load i32, ptr %i.f, align 4             ; 2 uses
  %i.bw = zext i32 %i.bv to i64                   ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0115.0175, i64 648 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = load ptr, ptr %i.bu, align 8            ; 4 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = sdiv exact i64 %i.cc, 24
  %i.ce = icmp ult i64 %i.cd, %i.bw
  br i1 %i.ce, label %_ZNSt12_Vector_baseIN6Assimp3ASE10BoneVertexESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6Assimp3ASE10BoneVertexESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.af
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0115.0175, i64 640 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.cb
  %i.cj = mul nuw nsw i64 %i.bw, 24
  %i.ck = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #32
          to label %.noexc60 unwind label %bb.s   ; 4 uses

.noexc60:                                         ; preds = %_ZNSt12_Vector_baseIN6Assimp3ASE10BoneVertexESaIS2_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.bz, %i.cg
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc60, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %i.ck, %.noexc60 ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i ], [ %i.bz, %.noexc60 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.cl = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !alias.scope !55, !noalias !52
  store <2 x ptr> %i.cl, ptr %.012.i.i.i.i, align 8, !alias.scope !52, !noalias !55
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !55, !noalias !52
  store ptr %i.co, ptr %i.cm, align 8, !alias.scope !52, !noalias !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !55, !noalias !52
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cg
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !57

_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = load ptr, ptr %i.bu, align 8
  br label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit.i, %.noexc60
  %i.cr = phi ptr [ %.pre.i, %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit.i ], [ %i.bz, %.noexc60 ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.cr, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6Assimp3ASE10BoneVertexESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.cs = load ptr, ptr %i.bx, align 8
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cv) #28
  br label %_ZNSt12_Vector_baseIN6Assimp3ASE10BoneVertexESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN6Assimp3ASE10BoneVertexESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.ag, %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.ck, ptr %i.bu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  store ptr %i.cw, ptr %i.cf, align 8
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.bw
  store ptr %i.cx, ptr %i.bx, align 8
  br label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE7reserveEm.exit: ; preds = %bb.af, %_ZNSt12_Vector_baseIN6Assimp3ASE10BoneVertexESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.not186 = icmp eq i32 %i.bv, 0
  br i1 %.not186, label %.loopexit132, label %.lr.ph183

.lr.ph183:                                        ; preds = %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE7reserveEm.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0115.0175, i64 640 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0115.0175, i64 656 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0115.0175, i64 664 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0115.0175, i64 672
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %.028182 = phi i32 [ 0, %.lr.ph183 ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ]
  %i.dc = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.dd = load ptr, ptr %0, align 8               ; 3 uses
  %9 = ptrtoint ptr %i.dd to i64
  %10 = ptrtoint ptr %i.dc to i64                 ; 2 uses
  %i.de = sub i64 %10, %9
  %scevgep.i.i61 = getelementptr i8, ptr %i.dd, i64 %i.de
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %bb.ah
  %.0.i.i62 = phi ptr [ %i.dd, %bb.ah ], [ %i.dg, %bb.ak ] ; 4 uses
  %i.df = load i8, ptr %.0.i.i62, align 1
  switch i8 %i.df, label %bb.al [
    i8 32, label %bb.aj
    i8 9, label %bb.aj
    i8 13, label %bb.aj
    i8 10, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ai
  %.not.i.i63 = icmp eq ptr %.0.i.i62, %i.dc
  br i1 %.not.i.i63, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i62, i64 1
  br label %bb.ai, !llvm.loop !49

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %.0.lcssa.i.i64 = phi ptr [ %.0.i.i62, %bb.ai ], [ %scevgep.i.i61, %bb.aj ] ; 4 uses
  store ptr %.0.lcssa.i.i64, ptr %0, align 8
  %11 = ptrtoint ptr %.0.lcssa.i.i64 to i64
  %i.dh = sub i64 %10, %11
  %scevgep.i.i.i = getelementptr i8, ptr %.0.lcssa.i.i64, i64 %i.dh
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %bb.al
  %.in = phi ptr [ %i.dj, %bb.ao ], [ %.0.lcssa.i.i64, %bb.al ] ; 4 uses
  %i.di = load i8, ptr %.in, align 1
  switch i8 %i.di, label %.critedge.i.i.i [
    i8 32, label %bb.an
    i8 9, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  %.not.i.i.i = icmp eq ptr %.in, %i.dc
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dj = getelementptr inbounds nuw i8, ptr %.in, i64 1
  br label %bb.am, !llvm.loop !34

.critedge.i.i.i:                                  ; preds = %bb.an, %bb.am
  %.0.lcssa.i.i.i = phi ptr [ %.in, %bb.am ], [ %scevgep.i.i.i, %bb.an ] ; 4 uses
  store ptr %.0.lcssa.i.i.i, ptr %0, align 8
  %i.dk = load i8, ptr %.0.lcssa.i.i.i, align 1   ; 3 uses
  switch i8 %i.dk, label %bb.ap [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i:       ; preds = %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.dl = load i32, ptr %i.l, align 8
  %i.dm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.dl, ptr noundef nonnull @.str.207) #27 ; 0 uses
  %i.dn = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc67 unwind label %bb.at

.noexc67:                                         ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  invoke void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dn, ptr noundef nonnull align 1 dereferenceable(2048) %i.c)
          to label %.noexc68 unwind label %bb.at

.noexc68:                                         ; preds = %.noexc67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.do = load i32, ptr %i.l, align 8
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.l, align 8
  br label %_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj.exit

bb.ap:                                            ; preds = %.critedge.i.i.i
  %i.dq = add i8 %i.dk, -58
  %or.cond11.i.i = icmp ult i8 %i.dq, -10
  br i1 %or.cond11.i.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ap, %.lr.ph.i.i
  %i.dr = phi i8 [ %i.dw, %.lr.ph.i.i ], [ %i.dk, %bb.ap ]
  %.013.i.i = phi i32 [ %i.du, %.lr.ph.i.i ], [ 0, %bb.ap ]
  %.0812.i.i = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %.0.lcssa.i.i.i, %bb.ap ]
  %i.ds = mul i32 %.013.i.i, 10
  %narrow.i.i = add nsw i8 %i.dr, -48
  %i.dt = zext nneg i8 %narrow.i.i to i32
  %i.du = add i32 %i.ds, %i.dt                    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 1 ; 3 uses
  %i.dw = load i8, ptr %i.dv, align 1             ; 2 uses
  %i.dx = add i8 %i.dw, -58
  %or.cond.i.i = icmp ult i8 %i.dx, -10
  br i1 %or.cond.i.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit.i, label %.lr.ph.i.i, !llvm.loop !35

_ZN6Assimp9strtoul10EPKcPS1_.exit.i:              ; preds = %.lr.ph.i.i, %bb.ap
  %.08.lcssa.i.i = phi ptr [ %.0.lcssa.i.i.i, %bb.ap ], [ %i.dv, %.lr.ph.i.i ]
  %.0.lcssa.i.i66 = phi i32 [ 0, %bb.ap ], [ %i.du, %.lr.ph.i.i ]
  store ptr %.08.lcssa.i.i, ptr %0, align 8
  br label %_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj.exit

_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj.exit:  ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit.i, %.noexc68
  %.0120 = phi i32 [ %.0.lcssa.i.i66, %_ZN6Assimp9strtoul10EPKcPS1_.exit.i ], [ 0, %.noexc68 ] ; 3 uses
  %i.dy = load ptr, ptr %i.cy, align 8            ; 3 uses
  %i.dz = load ptr, ptr %i.bx, align 8
  %.not.i = icmp eq ptr %i.dy, %i.dz
  br i1 %.not.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i8 0, i64 24, i1 false)
  %i.ea = load ptr, ptr %i.cy, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 2 uses
  store ptr %i.eb, ptr %i.cy, align 8
  br label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.ar:                                            ; preds = %_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj.exit
  invoke void @_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr %i.dy)
          to label %._ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit_crit_edge unwind label %bb.at

._ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit_crit_edge: ; preds = %bb.ar
  %.pre205 = load ptr, ptr %i.cy, align 8
  br label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %._ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit_crit_edge, %bb.aq
  %i.ec = phi ptr [ %.pre205, %._ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit_crit_edge ], [ %i.eb, %bb.aq ] ; 4 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -24 ; 4 uses
  %i.ee = zext i32 %.0120 to i64                  ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ec, i64 -8 ; 4 uses
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = load ptr, ptr %i.ed, align 8            ; 7 uses
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64               ; 4 uses
  %i.ek = sub i64 %i.ei, %i.ej                    ; 2 uses
  %i.el = ashr exact i64 %i.ek, 3
  %i.em = icmp ult i64 %i.el, %i.ee
  br i1 %i.em, label %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt4pairIifESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseISt4pairIifESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.en = getelementptr inbounds i8, ptr %i.ec, i64 -16 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8            ; 4 uses
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = sub i64 %i.ep, %i.ej
  %i.er = shl nuw nsw i64 %i.ee, 3
  %i.es = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #32
          to label %.noexc77 unwind label %bb.au  ; 7 uses

.noexc77:                                         ; preds = %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i71 = icmp eq ptr %i.eh, %i.eo
  br i1 %.not10.i.i.i.i71, label %_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i72.preheader

.lr.ph.i.i.i.i72.preheader:                       ; preds = %.noexc77
  %i.et = ptrtoaddr ptr %i.es to i64
  %12 = ptrtoint ptr %i.eo to i64
  %i.eu = sub i64 %12, %i.ej
  %i.ev = add i64 %i.eu, -8                       ; 2 uses
  %i.ew = lshr i64 %i.ev, 3
  %i.ex = add nuw nsw i64 %i.ew, 1                ; 2 uses
  %min.iters.check282 = icmp ult i64 %i.ev, 24
  %i.ey = sub i64 %i.ej, %i.et
  %diff.check280 = icmp ugt i64 %i.ey, -32
  %or.cond = or i1 %min.iters.check282, %diff.check280
  br i1 %or.cond, label %.lr.ph.i.i.i.i72.preheader299, label %vector.ph283

vector.ph283:                                     ; preds = %.lr.ph.i.i.i.i72.preheader
  %n.vec285 = and i64 %i.ex, 4611686018427387900  ; 3 uses
  %i.ez = shl i64 %n.vec285, 3                    ; 2 uses
  %i.fa = getelementptr i8, ptr %i.es, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.eh, i64 %i.ez
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph283
  %index287 = phi i64 [ 0, %vector.ph283 ], [ %index.next292, %vector.body286 ] ; 2 uses
  %i.fc = shl i64 %index287, 3                    ; 2 uses
  %next.gep288 = getelementptr i8, ptr %i.es, i64 %i.fc ; 2 uses
  %next.gep289 = getelementptr i8, ptr %i.eh, i64 %i.fc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.fd = getelementptr i8, ptr %next.gep289, i64 16
  %wide.load290 = load <2 x i64>, ptr %next.gep289, align 4, !alias.scope !61, !noalias !58
  %wide.load291 = load <2 x i64>, ptr %i.fd, align 4, !alias.scope !61, !noalias !58
  %i.fe = getelementptr i8, ptr %next.gep288, i64 16
  store <2 x i64> %wide.load290, ptr %next.gep288, align 4, !alias.scope !58, !noalias !61
  store <2 x i64> %wide.load291, ptr %i.fe, align 4, !alias.scope !58, !noalias !61
  %index.next292 = add nuw i64 %index287, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next292, %n.vec285
  br i1 %i.ff, label %middle.block293, label %vector.body286, !llvm.loop !63

middle.block293:                                  ; preds = %vector.body286
  %cmp.n294 = icmp eq i64 %i.ex, %n.vec285
  br i1 %cmp.n294, label %_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i72.preheader299

.lr.ph.i.i.i.i72.preheader299:                    ; preds = %.lr.ph.i.i.i.i72.preheader, %middle.block293
  %.012.i.i.i.i73.ph = phi ptr [ %i.es, %.lr.ph.i.i.i.i72.preheader ], [ %i.fa, %middle.block293 ]
  %.0911.i.i.i.i74.ph = phi ptr [ %i.eh, %.lr.ph.i.i.i.i72.preheader ], [ %i.fb, %middle.block293 ]
  br label %.lr.ph.i.i.i.i72

.lr.ph.i.i.i.i72:                                 ; preds = %.lr.ph.i.i.i.i72.preheader299, %.lr.ph.i.i.i.i72
  %.012.i.i.i.i73 = phi ptr [ %i.fi, %.lr.ph.i.i.i.i72 ], [ %.012.i.i.i.i73.ph, %.lr.ph.i.i.i.i72.preheader299 ] ; 2 uses
  %.0911.i.i.i.i74 = phi ptr [ %i.fh, %.lr.ph.i.i.i.i72 ], [ %.0911.i.i.i.i74.ph, %.lr.ph.i.i.i.i72.preheader299 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.fg = load i64, ptr %.0911.i.i.i.i74, align 4, !alias.scope !61, !noalias !58
  store i64 %i.fg, ptr %.012.i.i.i.i73, align 4, !alias.scope !58, !noalias !61
  %i.fh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i74, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i73, i64 8
  %.not.i.i.i.i75 = icmp eq ptr %i.fh, %i.eo
  br i1 %.not.i.i.i.i75, label %_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i72, !llvm.loop !66

_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i72, %middle.block293, %.noexc77
  %.not.i8.i76 = icmp eq ptr %i.eh, null
  br i1 %.not.i8.i76, label %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.ek) #28
  br label %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt4pairIifESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.as, %_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.es, ptr %i.ed, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eq
  store ptr %i.fj, ptr %i.en, align 8
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.ee
  store ptr %i.fk, ptr %i.ef, align 8
  br label %_ZNSt6vectorISt4pairIifESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIifESaIS1_EE7reserveEm.exit:  ; preds = %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE13_M_deallocateEPS1_m.exit.i, %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.m, ptr %2, align 8
  store i64 0, ptr %i.n, align 8
  store i8 0, ptr %i.m, align 8
  %.not187 = icmp eq i32 %.0120, 0
  br i1 %.not187, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %.lr.ph180

.lr.ph180:                                        ; preds = %_ZNSt6vectorISt4pairIifESaIS1_EE7reserveEm.exit
  %i.fl = getelementptr inbounds i8, ptr %i.ec, i64 -16 ; 4 uses
  br label %bb.av

._crit_edge181:                                   ; preds = %_ZNSt6vectorISt4pairIifESaIS1_EE9push_backERKS1_.exit
  %.pre206 = load ptr, ptr %2, align 8            ; 2 uses
  %i.fm = icmp eq ptr %.pre206, %i.m
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %._crit_edge181
  %i.fn = load i64, ptr %i.m, align 8
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %.pre206, i64 noundef %i.fo) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %._crit_edge181, %_ZNSt6vectorISt4pairIifESaIS1_EE7reserveEm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.fp = add nuw i32 %.028182, 1                 ; 2 uses
  %i.fq = load i32, ptr %i.f, align 4
  %i.fr = icmp ult i32 %i.fp, %i.fq
  br i1 %i.fr, label %bb.ah, label %.loopexit132, !llvm.loop !67

bb.at:                                            ; preds = %bb.ar, %.noexc67, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.au:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIifESaIS1_EE11_M_allocateEm.exit.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.av:                                            ; preds = %.lr.ph180, %_ZNSt6vectorISt4pairIifESaIS1_EE9push_backERKS1_.exit
  %.026179 = phi i32 [ 0, %.lr.ph180 ], [ %i.jf, %_ZNSt6vectorISt4pairIifESaIS1_EE9push_backERKS1_.exit ]
  store i64 0, ptr %i.n, align 8
  %i.fu = load ptr, ptr %2, align 8
  store i8 0, ptr %i.fu, align 1
  %i.fv = invoke noundef zeroext i1 @_ZN6Assimp3ASE6Parser11ParseStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.18)
          to label %bb.aw unwind label %bb.ax     ; 0 uses

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store float 0.000000e+00, ptr %i.o, align 4
  store i32 -1, ptr %3, align 8
  %i.fw = load ptr, ptr %i.da, align 8            ; 10 uses
  %i.fx = load ptr, ptr %i.cz, align 8            ; 3 uses
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 2 uses
  %i.gb = ashr exact i64 %i.ga, 5
  %.not188 = icmp eq ptr %i.fw, %i.fx
  br i1 %.not188, label %thread-pre-split.thread, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.aw
  %i.gc = load i64, ptr %i.n, align 8             ; 3 uses
  %i.gd = load ptr, ptr %2, align 8
  %i.ge = icmp eq i64 %i.gc, 0
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.loopexit:                                        ; preds = %.noexc.i.i.i, %bb.be, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i92, %.noexc93, %bb.bi, %_ZNKSt6vectorISt4pairIifESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp:                               ; preds = %bb.bl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.bn

bb.az:                                            ; preds = %.lr.ph178, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit82.thread125
  %i.gg = phi i64 [ 0, %.lr.ph178 ], [ %i.go, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit82.thread125 ]
  %.0176 = phi i32 [ 0, %.lr.ph178 ], [ %i.gn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit82.thread125 ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.fx, i64 %i.gg ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load i64, ptr %i.gi, align 8
  %i.gk = icmp eq i64 %i.gj, %i.gc
  br i1 %i.gk, label %bb.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit82.thread125

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ge, label %thread-pre-split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit82

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit82: ; preds = %bb.ba
  %i.gl = load ptr, ptr %i.gh, align 8
  %bcmp.i81 = call i32 @bcmp(ptr %i.gl, ptr %i.gd, i64 %i.gc)
  %i.gm = icmp eq i32 %bcmp.i81, 0
  br i1 %i.gm, label %thread-pre-split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit82.thread125

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit82.thread125: ; preds = %bb.az, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit82
  %i.gn = add i32 %.0176, 1                       ; 2 uses
  %i.go = zext i32 %i.gn to i64                   ; 2 uses
  %i.gp = icmp ugt i64 %i.gb, %i.go
  br i1 %i.gp, label %bb.az, label %thread-pre-split.thread, !llvm.loop !68

thread-pre-split:                                 ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit82, %bb.ba
  store i32 %.0176, ptr %3, align 8
  %i.gq = icmp eq i32 %.0176, -1
  br i1 %i.gq, label %thread-pre-split.thread, label %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit

thread-pre-split.thread:                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit82.thread125, %bb.aw, %thread-pre-split
  %i.gr = lshr exact i64 %i.ga, 5
  %i.gs = trunc i64 %i.gr to i32
  store i32 %i.gs, ptr %3, align 8
  %i.gt = load ptr, ptr %i.db, align 8
  %.not.i83 = icmp eq ptr %i.fw, %i.gt
  br i1 %.not.i83, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %thread-pre-split.thread
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 3 uses
  store ptr %i.gu, ptr %i.fw, align 8
  %i.gv = load ptr, ptr %2, align 8               ; 2 uses
  %i.gw = load i64, ptr %i.n, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 %i.gw, ptr %i.b, align 8
  %i.gx = icmp ugt i64 %i.gw, 15
  br i1 %i.gx, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.bb
  %i.gy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc85 unwind label %.loopexit ; 2 uses

.noexc85:                                         ; preds = %.noexc.i.i.i
  store ptr %i.gy, ptr %i.fw, align 8
  %i.gz = load i64, ptr %i.b, align 8
  store i64 %i.gz, ptr %i.gu, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc85, %bb.bb
  %i.ha = phi ptr [ %i.gy, %.noexc85 ], [ %i.gu, %bb.bb ] ; 2 uses
  switch i64 %i.gw, label %bb.bd [
    i64 1, label %bb.bc
    i64 0, label %_ZN6Assimp3ASE4BoneC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  ]

bb.bc:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hb = load i8, ptr %i.gv, align 1
  store i8 %i.hb, ptr %i.ha, align 1
  br label %_ZN6Assimp3ASE4BoneC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

bb.bd:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ha, ptr align 1 %i.gv, i64 %i.gw, i1 false)
  br label %_ZN6Assimp3ASE4BoneC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN6Assimp3ASE4BoneC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.bd, %bb.bc, %._crit_edge.i.i.i.i
  %i.hc = load i64, ptr %i.b, align 8             ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i64 %i.hc, ptr %i.hd, align 8
  %i.he = load ptr, ptr %i.fw, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hc
  store i8 0, ptr %i.hf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.hg = load ptr, ptr %i.da, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  store ptr %i.hh, ptr %i.da, align 8
  br label %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit

bb.be:                                            ; preds = %thread-pre-split.thread
  invoke void @_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE17_M_realloc_insertIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr %i.fw, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit unwind label %.loopexit

_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit: ; preds = %bb.be, %_ZN6Assimp3ASE4BoneC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %thread-pre-split
  %i.hi = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.hj = load ptr, ptr %0, align 8               ; 3 uses
  %13 = ptrtoint ptr %i.hj to i64
  %14 = ptrtoint ptr %i.hi to i64
  %i.hk = sub i64 %14, %13
  %scevgep.i.i.i87 = getelementptr i8, ptr %i.hj, i64 %i.hk
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit
  %.0.i.i.i88 = phi ptr [ %i.hj, %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit ], [ %i.hm, %bb.bh ] ; 4 uses
  %i.hl = load i8, ptr %.0.i.i.i88, align 1
  switch i8 %i.hl, label %.critedge.i.i.i90 [
    i8 32, label %bb.bg
    i8 9, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf
  %.not.i.i.i89 = icmp eq ptr %.0.i.i.i88, %i.hi
  br i1 %.not.i.i.i89, label %.critedge.i.i.i90, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.i.i.i88, i64 1
  br label %bb.bf, !llvm.loop !34

.critedge.i.i.i90:                                ; preds = %bb.bg, %bb.bf
  %.0.lcssa.i.i.i91 = phi ptr [ %.0.i.i.i88, %bb.bf ], [ %scevgep.i.i.i87, %bb.bg ] ; 3 uses
  store ptr %.0.lcssa.i.i.i91, ptr %0, align 8
  %i.hn = load i8, ptr %.0.lcssa.i.i.i91, align 1
  switch i8 %i.hn, label %bb.bi [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i92
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i92
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i92
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i92
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i92:     ; preds = %.critedge.i.i.i90, %.critedge.i.i.i90, %.critedge.i.i.i90, %.critedge.i.i.i90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ho = load i32, ptr %i.l, align 8
  %i.hp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.ho, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.hq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc93 unwind label %.loopexit

.noexc93:                                         ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i92
  invoke void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.hq, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
          to label %.noexc94 unwind label %.loopexit

.noexc94:                                         ; preds = %.noexc93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store float 0.000000e+00, ptr %i.o, align 4
  %i.hr = load i32, ptr %i.l, align 8
  %i.hs = add i32 %i.hr, 1
  store i32 %i.hs, ptr %i.l, align 8
  br label %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit

bb.bi:                                            ; preds = %.critedge.i.i.i90
  %i.ht = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i91, ptr noundef nonnull align 4 dereferenceable(4) %i.o, i1 noundef zeroext true)
          to label %.noexc95 unwind label %.loopexit

.noexc95:                                         ; preds = %bb.bi
  store ptr %i.ht, ptr %0, align 8
  br label %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit

_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit:  ; preds = %.noexc95, %.noexc94
  %i.hu = load ptr, ptr %i.fl, align 8            ; 5 uses
  %i.hv = load ptr, ptr %i.ef, align 8
  %.not.i96 = icmp eq ptr %i.hu, %i.hv
  br i1 %.not.i96, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit
  %i.hw = load i64, ptr %3, align 8
  store i64 %i.hw, ptr %i.hu, align 4
  %i.hx = load ptr, ptr %i.fl, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store ptr %i.hy, ptr %i.fl, align 8
  br label %_ZNSt6vectorISt4pairIifESaIS1_EE9push_backERKS1_.exit

bb.bk:                                            ; preds = %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit
  %i.hz = load ptr, ptr %i.ed, align 8            ; 7 uses
  %i.ia = ptrtoint ptr %i.hu to i64               ; 2 uses
  %i.ib = ptrtoint ptr %i.hz to i64               ; 3 uses
  %i.ic = sub i64 %i.ia, %i.ib                    ; 4 uses
  %i.id = icmp eq i64 %i.ic, 9223372036854775800
  br i1 %i.id, label %bb.bl, label %_ZNKSt6vectorISt4pairIifESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #29
          to label %.noexc98 unwind label %.loopexit.split-lp

.noexc98:                                         ; preds = %bb.bl
  unreachable

_ZNKSt6vectorISt4pairIifESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bk
  %i.ie = ashr exact i64 %i.ic, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ie, i64 1)
  %i.if = add nsw i64 %.sroa.speculated.i.i.i, %i.ie ; 2 uses
  %i.ig = icmp ult i64 %i.if, %i.ie
  %i.ih = call i64 @llvm.umin.i64(i64 %i.if, i64 1152921504606846975)
  %i.ii = select i1 %i.ig, i64 1152921504606846975, i64 %i.ih ; 3 uses
  %.not.i.i.i97 = icmp ne i64 %i.ii, 0
  call void @llvm.assume(i1 %.not.i.i.i97)
  %i.ij = shl nuw nsw i64 %i.ii, 3
  %i.ik = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ij) #32
          to label %.noexc99 unwind label %.loopexit ; 8 uses

.noexc99:                                         ; preds = %_ZNKSt6vectorISt4pairIifESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ic
  %i.im = load i64, ptr %3, align 8
  store i64 %i.im, ptr %i.il, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.hz, %i.hu
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc99
  %i.in = ptrtoaddr ptr %i.ik to i64
  %i.io = sub i64 %i.ia, %i.ib
  %i.ip = add i64 %i.io, -8                       ; 2 uses
  %i.iq = lshr i64 %i.ip, 3
  %i.ir = add nuw nsw i64 %i.iq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ip, 24
  %i.is = sub i64 %i.ib, %i.in
  %diff.check = icmp ugt i64 %i.is, -32
  %or.cond297 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond297, label %.lr.ph.i.i.i.i.i.preheader298, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ir, 4611686018427387900     ; 3 uses
  %i.it = shl i64 %n.vec, 3                       ; 2 uses
  %i.iu = getelementptr i8, ptr %i.ik, i64 %i.it  ; 2 uses
  %i.iv = getelementptr i8, ptr %i.hz, i64 %i.it
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ik, i64 %i.iw ; 2 uses
  %next.gep276 = getelementptr i8, ptr %i.hz, i64 %i.iw ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.ix = getelementptr i8, ptr %next.gep276, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep276, align 4, !alias.scope !72, !noalias !69
  %wide.load277 = load <2 x i64>, ptr %i.ix, align 4, !alias.scope !72, !noalias !69
  %i.iy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !69, !noalias !72
  store <2 x i64> %wide.load277, ptr %i.iy, align 4, !alias.scope !69, !noalias !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ir, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader298

.lr.ph.i.i.i.i.i.preheader298:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i.preheader ], [ %i.iu, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i.preheader ], [ %i.iv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader298, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader298 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader298 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.ja = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !72, !noalias !69
  store i64 %i.ja, ptr %.012.i.i.i.i.i, align 4, !alias.scope !69, !noalias !72
  %i.jb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jb, %i.hu
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !75

_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc99
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ik, %.noexc99 ], [ %i.iu, %middle.block ], [ %i.jc, %.lr.ph.i.i.i.i.i ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt4pairIifESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.ic) #28
  br label %_ZNSt6vectorISt4pairIifESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIifESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bm, %_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ik, ptr %i.ed, align 8
  store ptr %i.jd, ptr %i.fl, align 8
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.ii
  store ptr %i.je, ptr %i.ef, align 8
  br label %_ZNSt6vectorISt4pairIifESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorISt4pairIifESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorISt4pairIifESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.jf = add nuw i32 %.026179, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.jf, %.0120
  br i1 %exitcond.not, label %._crit_edge181, label %bb.av, !llvm.loop !76

bb.bn:                                            ; preds = %bb.ay, %bb.ax
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ay ], [ %i.gf, %bb.ax ]
  %i.jg = load ptr, ptr %2, align 8               ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.m
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.bn
  %i.ji = load i64, ptr %i.m, align 8
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.bo

.loopexit132:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %switch.early.test, %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE7reserveEm.exit
  %i.jk = load ptr, ptr %1, align 8               ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.g
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %.loopexit132
  %i.jm = load i64, ptr %i.g, align 8
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %.loopexit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %.pre208.pre = load ptr, ptr %0, align 8
  br label %.thread128

bb.bo:                                            ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %bb.au, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.s ], [ %i.ft, %bb.au ], [ %i.fs, %bb.at ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ]
  %i.jo = load ptr, ptr %1, align 8               ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.g
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.bo
  %i.jq = load i64, ptr %i.g, align 8
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  resume { ptr, i32 } %.pn.pn.pn.pn.pn

.thread128:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %bb.g
  %.pre208 = phi ptr [ %.pre208.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %i.s, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %bb.bp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  br label %.loopexit134

bb.bp:                                            ; preds = %.thread128, %bb.d
  %i.js = phi ptr [ %.pre208, %.thread128 ], [ %i.r, %bb.d ] ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1
  %i.ju = icmp eq i8 %i.jt, 0
  br i1 %i.ju, label %.loopexit134, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 1 ; 4 uses
  store ptr %i.jv, ptr %0, align 8
  %i.jw = load ptr, ptr %i.k, align 8             ; 2 uses
  %15 = ptrtoint ptr %i.jv to i64
  %16 = ptrtoint ptr %i.jw to i64
  %i.jx = sub i64 %16, %15
  %scevgep.i.i109 = getelementptr i8, ptr %i.jv, i64 %i.jx
  br label %bb.br

bb.br:                                            ; preds = %bb.bt, %bb.bq
  %.0.i.i110 = phi ptr [ %i.jv, %bb.bq ], [ %i.jz, %bb.bt ] ; 4 uses
  %i.jy = load i8, ptr %.0.i.i110, align 1
  switch i8 %i.jy, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit113 [
    i8 32, label %bb.bs
    i8 9, label %bb.bs
    i8 13, label %bb.bs
    i8 10, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br, %bb.br, %bb.br, %bb.br
  %.not.i.i111 = icmp eq ptr %.0.i.i110, %i.jw
  br i1 %.not.i.i111, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit113, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i.i110, i64 1
  br label %bb.br, !llvm.loop !49

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit113: ; preds = %bb.br, %bb.bs
  %.0.lcssa.i.i112 = phi ptr [ %.0.i.i110, %bb.br ], [ %scevgep.i.i109, %bb.bs ] ; 2 uses
  store ptr %.0.lcssa.i.i112, ptr %0, align 8
  br label %bb.b, !llvm.loop !77

.loopexit134:                                     ; preds = %bb.b, %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %0, align 8                ; 3 uses
  %2 = ptrtoint ptr %i.d to i64
  %3 = ptrtoint ptr %i.c to i64
  %i.e = sub i64 %3, %2
  %scevgep.i.i = getelementptr i8, ptr %i.d, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i = phi ptr [ %i.d, %bb.a ], [ %i.g, %bb.d ] ; 4 uses
  %i.f = load i8, ptr %.0.i.i, align 1
  switch i8 %i.f, label %.critedge.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i = icmp eq ptr %.0.i.i, %i.c
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.b, !llvm.loop !34

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.b ], [ %scevgep.i.i, %bb.c ] ; 3 uses
  store ptr %.0.lcssa.i.i, ptr %0, align 8
  %i.h = load i8, ptr %.0.lcssa.i.i, align 1
  switch i8 %i.h, label %bb.e [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.j, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.l = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store float 0.000000e+00, ptr %1, align 4
  %i.m = load i32, ptr %i.i, align 8
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %.critedge.i.i
  %i.o = tail call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(4) %1, i1 noundef zeroext true)
  store ptr %i.o, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser23ParseLV4MeshFloatTripleEPf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  %2 = ptrtoint ptr %i.e to i64
  %3 = ptrtoint ptr %i.d to i64
  %i.f = sub i64 %3, %2
  %scevgep.i.i.i = getelementptr i8, ptr %i.e, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i.i = phi ptr [ %i.e, %bb.a ], [ %i.h, %bb.d ] ; 4 uses
  %i.g = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.g, label %.critedge.i.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.d
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.b, !llvm.loop !34

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.b ], [ %scevgep.i.i.i, %bb.c ] ; 3 uses
  store ptr %.0.lcssa.i.i.i, ptr %0, align 8
  %i.i = load i8, ptr %.0.lcssa.i.i.i, align 1
  switch i8 %i.i, label %bb.e [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i:       ; preds = %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.j = load i32, ptr %i.c, align 8
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.j, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.l = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store float 0.000000e+00, ptr %1, align 4
  %i.m = load i32, ptr %i.c, align 8
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.c, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN6Assimp3ASE6Parser17ParseLV4MeshFloatERf.exit

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.o = tail call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %1, i1 noundef zeroext true) ; 2 uses
  store ptr %i.o, ptr %0, align 8
  br label %_ZN6Assimp3ASE6Parser17ParseLV4MeshFloatERf.exit

_ZN6Assimp3ASE6Parser17ParseLV4MeshFloatERf.exit: ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %bb.e
  %i.p = phi ptr [ %.pre, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i ], [ %i.o, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.r = load ptr, ptr %i.b, align 8              ; 2 uses
  %4 = ptrtoint ptr %i.p to i64
  %5 = ptrtoint ptr %i.r to i64
  %i.s = sub i64 %5, %4
  %scevgep.i.i.i.1 = getelementptr i8, ptr %i.p, i64 %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %_ZN6Assimp3ASE6Parser17ParseLV4MeshFloatERf.exit
  %.0.i.i.i.1 = phi ptr [ %i.p, %_ZN6Assimp3ASE6Parser17ParseLV4MeshFloatERf.exit ], [ %i.u, %bb.h ] ; 4 uses
  %i.t = load i8, ptr %.0.i.i.i.1, align 1
  switch i8 %i.t, label %.critedge.i.i.i.1 [
    i8 32, label %bb.g
    i8 9, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %.not.i.i.i.1 = icmp eq ptr %.0.i.i.i.1, %i.r
  br i1 %.not.i.i.i.1, label %.critedge.i.i.i.1, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i.1, i64 1
  br label %bb.f, !llvm.loop !34

.critedge.i.i.i.1:                                ; preds = %bb.g, %bb.f
  %.0.lcssa.i.i.i.1 = phi ptr [ %.0.i.i.i.1, %bb.f ], [ %scevgep.i.i.i.1, %bb.g ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.1, ptr %0, align 8
  %i.v = load i8, ptr %.0.lcssa.i.i.i.1, align 1
  switch i8 %i.v, label %bb.i [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.1
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.1
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.1
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.1
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.1:     ; preds = %.critedge.i.i.i.1, %.critedge.i.i.i.1, %.critedge.i.i.i.1, %.critedge.i.i.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.w = load i32, ptr %i.c, align 8
  %i.x = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.w, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.y = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store float 0.000000e+00, ptr %i.q, align 4
  %i.z = load i32, ptr %i.c, align 8
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.c, align 8
  %.pre6 = load ptr, ptr %0, align 8
  br label %_ZN6Assimp3ASE6Parser17ParseLV4MeshFloatERf.exit.1

bb.i:                                             ; preds = %.critedge.i.i.i.1
  %i.ab = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i.1, ptr noundef nonnull align 4 dereferenceable(4) %i.q, i1 noundef zeroext true) ; 2 uses
  store ptr %i.ab, ptr %0, align 8
  br label %_ZN6Assimp3ASE6Parser17ParseLV4MeshFloatERf.exit.1

_ZN6Assimp3ASE6Parser17ParseLV4MeshFloatERf.exit.1: ; preds = %bb.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.1
  %i.ac = phi ptr [ %i.ab, %bb.i ], [ %.pre6, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.1 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.b, align 8             ; 2 uses
  %6 = ptrtoint ptr %i.ac to i64
  %7 = ptrtoint ptr %i.ae to i64
  %i.af = sub i64 %7, %6
  %scevgep.i.i.i.2 = getelementptr i8, ptr %i.ac, i64 %i.af
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %_ZN6Assimp3ASE6Parser17ParseLV4MeshFloatERf.exit.1
  %.0.i.i.i.2 = phi ptr [ %i.ac, %_ZN6Assimp3ASE6Parser17ParseLV4MeshFloatERf.exit.1 ], [ %i.ah, %bb.l ] ; 4 uses
  %i.ag = load i8, ptr %.0.i.i.i.2, align 1
  switch i8 %i.ag, label %.critedge.i.i.i.2 [
    i8 32, label %bb.k
    i8 9, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %.not.i.i.i.2 = icmp eq ptr %.0.i.i.i.2, %i.ae
  br i1 %.not.i.i.i.2, label %.critedge.i.i.i.2, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.2, i64 1
  br label %bb.j, !llvm.loop !34

.critedge.i.i.i.2:                                ; preds = %bb.k, %bb.j
  %.0.lcssa.i.i.i.2 = phi ptr [ %.0.i.i.i.2, %bb.j ], [ %scevgep.i.i.i.2, %bb.k ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.2, ptr %0, align 8
  %i.ai = load i8, ptr %.0.lcssa.i.i.i.2, align 1
  switch i8 %i.ai, label %bb.m [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.2
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.2
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.2
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.2
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.2:     ; preds = %.critedge.i.i.i.2, %.critedge.i.i.i.2, %.critedge.i.i.i.2, %.critedge.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.aj = load i32, ptr %i.c, align 8
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.aj, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.al = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.al, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store float 0.000000e+00, ptr %i.ad, align 4
  %i.am = load i32, ptr %i.c, align 8
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.c, align 8
  br label %_ZN6Assimp3ASE6Parser17ParseLV4MeshFloatERf.exit.2

bb.m:                                             ; preds = %.critedge.i.i.i.2
  %i.ao = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i.2, ptr noundef nonnull align 4 dereferenceable(4) %i.ad, i1 noundef zeroext true)
  store ptr %i.ao, ptr %0, align 8
  br label %_ZN6Assimp3ASE6Parser17ParseLV4MeshFloatERf.exit.2

_ZN6Assimp3ASE6Parser17ParseLV4MeshFloatERf.exit.2: ; preds = %bb.m, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.2
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EE6resizeEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(736) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 736                 ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(736) %2)
  br label %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [736 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EE15_M_erase_at_endEPS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6Assimp3ASE8MaterialEEEvT_S6_(ptr noundef %i.k, ptr noundef %i.b)
          to label %_ZSt8_DestroyIPN6Assimp3ASE8MaterialES2_EvT_S4_RSaIT0_E.exit.i unwind label %bb.f, !inline_history !37

_ZSt8_DestroyIPN6Assimp3ASE8MaterialES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.e
  store ptr %i.k, ptr %i.a, align 8
  br label %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EE15_M_erase_at_endEPS2_.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3ASE8MaterialES2_EvT_S4_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3ASE8MaterialD2Ev(ptr noundef nonnull align 8 dereferenceable(736) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 8
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6Assimp3ASE8MaterialEEEvT_S6_(ptr noundef %i.b, ptr noundef %i.d)
          to label %_ZSt8_DestroyIPN6Assimp3ASE8MaterialEEvT_S4_.exit.i unwind label %bb.c, !inline_history !78

_ZSt8_DestroyIPN6Assimp3ASE8MaterialEEvT_S4_.exit.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6Assimp3ASE8MaterialEEvT_S4_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #28, !inline_history !79
  br label %_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #31, !inline_history !79
  unreachable

_ZNSt6vectorIN6Assimp3ASE8MaterialESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3ASE8MaterialEEvT_S4_.exit.i, %bb.b
  tail call void @_ZN6Assimp4D3DS8MaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(689) dereferenceable(689) %0) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser21ParseLV2MaterialBlockERNS0_8MaterialE(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(736) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %2 = alloca %"struct.Assimp::ASE::Material", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.30", align 1 ; 4 uses
  %5 = alloca %"struct.Assimp::ASE::Material", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.30", align 1 ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 604
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 612
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 696
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 696
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.af = phi i32 [ 0, %bb.a ], [ %.be, %.backedge.backedge ] ; 33 uses
  %i.ag = phi i32 [ 0, %bb.a ], [ %.be211, %.backedge.backedge ] ; 33 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.be, %.backedge.backedge ] ; 37 uses
  %i.ah = load ptr, ptr %0, align 8               ; 29 uses
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 42
  br i1 %i.aj, label %bb.b, label %bb.cp

bb.b:                                             ; preds = %.backedge
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 14 uses
  store ptr %i.ak, ptr %0, align 8
  %i.al = call i32 @strncmp(ptr noundef nonnull dereferenceable(14) @.str.31, ptr noundef nonnull dereferenceable(1) %i.ak, i64 noundef 13) #30
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 14 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  switch i8 %i.an, label %bb.j [
    i8 32, label %bb.d
end_hunk_2
begin_hunk_3_@_ZN6Assimp3ASE6Parser16ParseLV3MapBlockERNS_4D3DS7TextureE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ar = load i64, ptr %i.g, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %lpad.phi

_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit:    ; preds = %bb.j, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %bb.f, %bb.e
  %i.at = load i64, ptr %i.h, align 8
  switch i64 %i.at, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread [
    i64 6, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 11, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  %i.au = load ptr, ptr %2, align 8               ; 2 uses
  %i.av = load i32, ptr %i.au, align 1
  %i.aw = xor i32 %i.av, 1836345666
  %i.ax = getelementptr i8, ptr %i.au, i64 4
  %i.ay = load i16, ptr %i.ax, align 1
  %i.az = zext i16 %i.ay to i32
  %i.ba = xor i32 %i.az, 28769
  %i.bb = or i32 %i.aw, %i.ba
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %.backedge.backedge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  %i.be = load ptr, ptr %2, align 8               ; 2 uses
  %i.bf = load i64, ptr %i.be, align 1
  %i.bg = xor i64 %i.bf, 4764927571461828430
  %i.bh = getelementptr i8, ptr %i.be, i64 3
  %i.bi = load i64, ptr %i.bh, align 1
  %i.bj = xor i64 %i.bi, 8101260231581655405
  %i.bk = or i64 %i.bg, %i.bj
  %i.bl = icmp ne i64 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %.not151 = icmp eq i32 %i.bm, 0
  br i1 %.not151, label %.backedge.backedge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
  %i.bn = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread
  invoke void @_ZN6Assimp6Logger4warnIJRA33_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bn, ptr noundef nonnull align 1 dereferenceable(33) @.str.63, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.backedge.backedge unwind label %.loopexit

bb.m:                                             ; preds = %bb.b, %bb.c
  br i1 %.014, label %bb.n, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit25.thread

bb.n:                                             ; preds = %bb.m
  %i.bo = call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.64, ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 6) #30
  %.not.i21 = icmp eq i32 %i.bo, 0
  br i1 %.not.i21, label %bb.o, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit25.thread

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 7 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1             ; 2 uses
  switch i8 %i.bq, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit25.thread [
    i8 32, label %bb.p
    i8 9, label %bb.p
    i8 13, label %bb.p
    i8 10, label %bb.p
    i8 0, label %bb.p
    i8 12, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o
  %.not11.i23 = icmp eq i8 %i.bq, 0
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %storemerge.i24 = select i1 %.not11.i23, ptr %i.bp, ptr %i.br
  store ptr %storemerge.i24, ptr %0, align 8
  %i.bs = invoke noundef zeroext i1 @_ZN6Assimp3ASE6Parser11ParseStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull @.str.65)
          to label %bb.q unwind label %.loopexit

bb.q:                                             ; preds = %bb.p
  br i1 %i.bs, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit34, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = load ptr, ptr %i.i, align 8             ; 2 uses
  %.promoted.i26 = load ptr, ptr %0, align 8      ; 2 uses
  %i.bu = icmp eq ptr %.promoted.i26, %i.bt
  br i1 %i.bu, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit34, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.r
  %.promoted23.i28 = load i8, ptr %i.j, align 4
  %.promoted24.i29 = load i32, ptr %i.k, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %.lr.ph.i27
  %i.bv = phi i32 [ %.promoted24.i29, %.lr.ph.i27 ], [ %i.cb, %bb.v ] ; 3 uses
  %i.bw = phi i8 [ %.promoted23.i28, %.lr.ph.i27 ], [ %storemerge.i31, %bb.v ]
  %i.bx = phi ptr [ %.promoted.i26, %.lr.ph.i27 ], [ %i.cc, %bb.v ] ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1             ; 2 uses
  switch i8 %i.by, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i30 [
    i8 13, label %bb.t
    i8 10, label %bb.t
    i8 0, label %bb.t
    i8 12, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s, %bb.s, %bb.s
  %i.bz = trunc nuw i8 %i.bw to i1
  br i1 %i.bz, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i30, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = add i32 %i.bv, 1                        ; 2 uses
  store i32 %i.ca, ptr %i.k, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i30

_ZN6Assimp9IsLineEndIcEEbT_.exit.i30:             ; preds = %bb.u, %bb.t, %bb.s
  %storemerge.i31 = phi i8 [ 1, %bb.u ], [ 0, %bb.s ], [ 0, %bb.t ] ; 2 uses
  %i.cb = phi i32 [ %i.ca, %bb.u ], [ %i.bv, %bb.s ], [ %i.bv, %bb.t ]
  store i8 %storemerge.i31, ptr %i.j, align 4
  switch i8 %i.by, label %bb.v [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit34
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit34
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit34
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit34
  ]

bb.v:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i30
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 3 uses
  store ptr %i.cc, ptr %0, align 8
  %i.cd = icmp eq ptr %i.cc, %i.bt
  br i1 %i.cd, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit34, label %bb.s

_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit34:  ; preds = %bb.v, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i30, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i30, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i30, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i30, %bb.r, %bb.q
  %i.ce = load i64, ptr %i.m, align 8
  %i.cf = icmp eq i64 %i.ce, 4
  br i1 %i.cf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.backedge.backedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit34
  %i.cg = load ptr, ptr %i.l, align 8
  %i.ch = load i32, ptr %i.cg, align 1
  %i.ci = icmp ne i32 %i.ch, 1701736270
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.backedge.backedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cl = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.w unwind label %.loopexit

bb.w:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.cl, ptr noundef nonnull @.str.67)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.n, ptr %3, align 8
  store i8 0, ptr %i.n, align 8
  %i.cm = load ptr, ptr %i.l, align 8
  store i64 0, ptr %i.m, align 8
  store i8 0, ptr %i.cm, align 1
  %.pre.i = load ptr, ptr %3, align 8
  store i64 0, ptr %i.o, align 8
  store i8 0, ptr %.pre.i, align 1
  %i.cn = load ptr, ptr %3, align 8               ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.n
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cp = load i64, ptr %i.n, align 8
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.backedge.backedge

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit25.thread: ; preds = %bb.o, %bb.n, %bb.m
  %i.cr = call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.68, ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 12) #30
  %.not.i39 = icmp eq i32 %i.cr, 0
  br i1 %.not.i39, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit25.thread
  %i.cs = getelementptr inbounds nuw i8, ptr %i.u, i64 13 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1             ; 2 uses
  switch i8 %i.ct, label %bb.ad [
    i8 32, label %bb.y
    i8 9, label %bb.y
    i8 13, label %bb.y
    i8 10, label %bb.y
    i8 0, label %bb.y
    i8 12, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x, %bb.x, %bb.x
  %.not11.i41 = icmp eq i8 %i.ct, 0
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  %storemerge.i42 = select i1 %.not11.i41, ptr %i.cs, ptr %i.cu ; 4 uses
  store ptr %storemerge.i42, ptr %0, align 8
  %i.cv = load ptr, ptr %i.i, align 8             ; 2 uses
  %4 = ptrtoint ptr %storemerge.i42 to i64
  %5 = ptrtoint ptr %i.cv to i64
  %i.cw = sub i64 %5, %4
  %scevgep.i.i.i = getelementptr i8, ptr %storemerge.i42, i64 %i.cw
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %.0.i.i.i = phi ptr [ %storemerge.i42, %bb.y ], [ %i.cy, %bb.ab ] ; 4 uses
  %i.cx = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.cx, label %.critedge.i.i.i [
    i8 32, label %bb.aa
    i8 9, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.cv
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.z, !llvm.loop !34

.critedge.i.i.i:                                  ; preds = %bb.aa, %bb.z
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.z ], [ %scevgep.i.i.i, %bb.aa ] ; 3 uses
  store ptr %.0.lcssa.i.i.i, ptr %0, align 8
  %i.cz = load i8, ptr %.0.lcssa.i.i.i, align 1
  switch i8 %i.cz, label %bb.ac [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i:       ; preds = %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.da = load i32, ptr %i.k, align 8
  %i.db = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.da, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.dc = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  invoke void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dc, ptr noundef nonnull align 1 dereferenceable(2048) %i.f)
          to label %.noexc44 unwind label %.loopexit

.noexc44:                                         ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  store float 0.000000e+00, ptr %i.p, align 8
  %i.dd = load i32, ptr %i.k, align 8
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.k, align 8
  br label %.backedge.backedge

bb.ac:                                            ; preds = %.critedge.i.i.i
  %i.df = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.p, i1 noundef zeroext true)
          to label %.noexc45 unwind label %.loopexit

.noexc45:                                         ; preds = %bb.ac
  store ptr %i.df, ptr %0, align 8
  br label %.backedge.backedge

bb.ad:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit25.thread, %bb.x
  %i.dg = call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.69, ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 12) #30
  %.not.i46 = icmp eq i32 %i.dg, 0
  br i1 %.not.i46, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.dh = getelementptr inbounds nuw i8, ptr %i.u, i64 13 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1             ; 2 uses
  switch i8 %i.di, label %bb.ak [
    i8 32, label %bb.af
    i8 9, label %bb.af
    i8 13, label %bb.af
    i8 10, label %bb.af
    i8 0, label %bb.af
    i8 12, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae
  %.not11.i48 = icmp eq i8 %i.di, 0
  %i.dj = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  %storemerge.i49 = select i1 %.not11.i48, ptr %i.dh, ptr %i.dj ; 4 uses
  store ptr %storemerge.i49, ptr %0, align 8
  %i.dk = load ptr, ptr %i.i, align 8             ; 2 uses
  %6 = ptrtoint ptr %storemerge.i49 to i64
  %7 = ptrtoint ptr %i.dk to i64
  %i.dl = sub i64 %7, %6
  %scevgep.i.i.i51 = getelementptr i8, ptr %storemerge.i49, i64 %i.dl
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %bb.af
  %.0.i.i.i52 = phi ptr [ %storemerge.i49, %bb.af ], [ %i.dn, %bb.ai ] ; 4 uses
  %i.dm = load i8, ptr %.0.i.i.i52, align 1
  switch i8 %i.dm, label %.critedge.i.i.i54 [
    i8 32, label %bb.ah
    i8 9, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag
  %.not.i.i.i53 = icmp eq ptr %.0.i.i.i52, %i.dk
  br i1 %.not.i.i.i53, label %.critedge.i.i.i54, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i.i52, i64 1
  br label %bb.ag, !llvm.loop !34

.critedge.i.i.i54:                                ; preds = %bb.ah, %bb.ag
  %.0.lcssa.i.i.i55 = phi ptr [ %.0.i.i.i52, %bb.ag ], [ %scevgep.i.i.i51, %bb.ah ] ; 3 uses
  store ptr %.0.lcssa.i.i.i55, ptr %0, align 8
  %i.do = load i8, ptr %.0.lcssa.i.i.i55, align 1
  switch i8 %i.do, label %bb.aj [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i56
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i56
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i56
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i56
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i56:     ; preds = %.critedge.i.i.i54, %.critedge.i.i.i54, %.critedge.i.i.i54, %.critedge.i.i.i54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.dp = load i32, ptr %i.k, align 8
  %i.dq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.dp, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.dr = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc57 unwind label %.loopexit

.noexc57:                                         ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i56
  invoke void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dr, ptr noundef nonnull align 1 dereferenceable(2048) %i.e)
          to label %.noexc58 unwind label %.loopexit

.noexc58:                                         ; preds = %.noexc57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  store float 0.000000e+00, ptr %i.q, align 4
  %i.ds = load i32, ptr %i.k, align 8
  %i.dt = add i32 %i.ds, 1
  store i32 %i.dt, ptr %i.k, align 8
  br label %.backedge.backedge

bb.aj:                                            ; preds = %.critedge.i.i.i54
  %i.du = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i55, ptr noundef nonnull align 4 dereferenceable(4) %i.q, i1 noundef zeroext true)
          to label %.noexc59 unwind label %.loopexit

.noexc59:                                         ; preds = %bb.aj
  store ptr %i.du, ptr %0, align 8
  br label %.backedge.backedge

bb.ak:                                            ; preds = %bb.ad, %bb.ae
  %i.dv = call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.70, ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 12) #30
  %.not.i61 = icmp eq i32 %i.dv, 0
  br i1 %.not.i61, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.dw = getelementptr inbounds nuw i8, ptr %i.u, i64 13 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1             ; 2 uses
  switch i8 %i.dx, label %bb.ar [
    i8 32, label %bb.am
    i8 9, label %bb.am
    i8 13, label %bb.am
    i8 10, label %bb.am
    i8 0, label %bb.am
    i8 12, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al
  %.not11.i63 = icmp eq i8 %i.dx, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  %storemerge.i64 = select i1 %.not11.i63, ptr %i.dw, ptr %i.dy ; 4 uses
  store ptr %storemerge.i64, ptr %0, align 8
  %i.dz = load ptr, ptr %i.i, align 8             ; 2 uses
  %8 = ptrtoint ptr %storemerge.i64 to i64
  %9 = ptrtoint ptr %i.dz to i64
  %i.ea = sub i64 %9, %8
  %scevgep.i.i.i66 = getelementptr i8, ptr %storemerge.i64, i64 %i.ea
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %bb.am
  %.0.i.i.i67 = phi ptr [ %storemerge.i64, %bb.am ], [ %i.ec, %bb.ap ] ; 4 uses
  %i.eb = load i8, ptr %.0.i.i.i67, align 1
  switch i8 %i.eb, label %.critedge.i.i.i69 [
    i8 32, label %bb.ao
    i8 9, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an
  %.not.i.i.i68 = icmp eq ptr %.0.i.i.i67, %i.dz
  br i1 %.not.i.i.i68, label %.critedge.i.i.i69, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i.i.i67, i64 1
  br label %bb.an, !llvm.loop !34

.critedge.i.i.i69:                                ; preds = %bb.ao, %bb.an
  %.0.lcssa.i.i.i70 = phi ptr [ %.0.i.i.i67, %bb.an ], [ %scevgep.i.i.i66, %bb.ao ] ; 3 uses
  store ptr %.0.lcssa.i.i.i70, ptr %0, align 8
  %i.ed = load i8, ptr %.0.lcssa.i.i.i70, align 1
  switch i8 %i.ed, label %bb.aq [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i71
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i71
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i71
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i71
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i71:     ; preds = %.critedge.i.i.i69, %.critedge.i.i.i69, %.critedge.i.i.i69, %.critedge.i.i.i69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.ee = load i32, ptr %i.k, align 8
  %i.ef = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.ee, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.eg = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc72 unwind label %.loopexit

.noexc72:                                         ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i71
  invoke void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.eg, ptr noundef nonnull align 1 dereferenceable(2048) %i.d)
          to label %.noexc73 unwind label %.loopexit

.noexc73:                                         ; preds = %.noexc72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  store float 0.000000e+00, ptr %i.r, align 8
  %i.eh = load i32, ptr %i.k, align 8
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr %i.k, align 8
  br label %.backedge.backedge

bb.aq:                                            ; preds = %.critedge.i.i.i69
  %i.ej = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i70, ptr noundef nonnull align 4 dereferenceable(4) %i.r, i1 noundef zeroext true)
          to label %.noexc74 unwind label %.loopexit

.noexc74:                                         ; preds = %bb.aq
  store ptr %i.ej, ptr %0, align 8
  br label %.backedge.backedge

bb.ar:                                            ; preds = %bb.ak, %bb.al
  %i.ek = call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.71, ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 12) #30
  %.not.i76 = icmp eq i32 %i.ek, 0
  br i1 %.not.i76, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %bb.ar
  %i.el = getelementptr inbounds nuw i8, ptr %i.u, i64 13 ; 2 uses
  %i.em = load i8, ptr %i.el, align 1             ; 2 uses
  switch i8 %i.em, label %bb.ay [
    i8 32, label %bb.at
    i8 9, label %bb.at
    i8 13, label %bb.at
    i8 10, label %bb.at
    i8 0, label %bb.at
    i8 12, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as
  %.not11.i78 = icmp eq i8 %i.em, 0
  %i.en = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  %storemerge.i79 = select i1 %.not11.i78, ptr %i.el, ptr %i.en ; 4 uses
  store ptr %storemerge.i79, ptr %0, align 8
  %i.eo = load ptr, ptr %i.i, align 8             ; 2 uses
  %10 = ptrtoint ptr %storemerge.i79 to i64
  %11 = ptrtoint ptr %i.eo to i64
  %i.ep = sub i64 %11, %10
  %scevgep.i.i.i81 = getelementptr i8, ptr %storemerge.i79, i64 %i.ep
  br label %bb.au

bb.au:                                            ; preds = %bb.aw, %bb.at
  %.0.i.i.i82 = phi ptr [ %storemerge.i79, %bb.at ], [ %i.er, %bb.aw ] ; 4 uses
  %i.eq = load i8, ptr %.0.i.i.i82, align 1
  switch i8 %i.eq, label %.critedge.i.i.i84 [
    i8 32, label %bb.av
    i8 9, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  %.not.i.i.i83 = icmp eq ptr %.0.i.i.i82, %i.eo
  br i1 %.not.i.i.i83, label %.critedge.i.i.i84, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i.i.i82, i64 1
  br label %bb.au, !llvm.loop !34

.critedge.i.i.i84:                                ; preds = %bb.av, %bb.au
  %.0.lcssa.i.i.i85 = phi ptr [ %.0.i.i.i82, %bb.au ], [ %scevgep.i.i.i81, %bb.av ] ; 3 uses
  store ptr %.0.lcssa.i.i.i85, ptr %0, align 8
  %i.es = load i8, ptr %.0.lcssa.i.i.i85, align 1
  switch i8 %i.es, label %bb.ax [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i86
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i86
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i86
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i86
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i86:     ; preds = %.critedge.i.i.i84, %.critedge.i.i.i84, %.critedge.i.i.i84, %.critedge.i.i.i84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.et = load i32, ptr %i.k, align 8
  %i.eu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.et, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.ev = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc87 unwind label %.loopexit

.noexc87:                                         ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i86
  invoke void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ev, ptr noundef nonnull align 1 dereferenceable(2048) %i.c)
          to label %.noexc88 unwind label %.loopexit

.noexc88:                                         ; preds = %.noexc87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  store float 0.000000e+00, ptr %i.s, align 4
  %i.ew = load i32, ptr %i.k, align 8
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %i.k, align 8
  br label %.backedge.backedge

bb.ax:                                            ; preds = %.critedge.i.i.i84
  %i.ey = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i85, ptr noundef nonnull align 4 dereferenceable(4) %i.s, i1 noundef zeroext true)
          to label %.noexc89 unwind label %.loopexit

.noexc89:                                         ; preds = %bb.ax
  store ptr %i.ey, ptr %0, align 8
  br label %.backedge.backedge

bb.ay:                                            ; preds = %bb.ar, %bb.as
  %i.ez = call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.72, ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 9) #30
  %.not.i91 = icmp eq i32 %i.ez, 0
  br i1 %.not.i91, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.fa = getelementptr inbounds nuw i8, ptr %i.u, i64 10 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1             ; 2 uses
  switch i8 %i.fb, label %bb.bf [
    i8 32, label %bb.ba
    i8 9, label %bb.ba
    i8 13, label %bb.ba
    i8 10, label %bb.ba
    i8 0, label %bb.ba
    i8 12, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az
  %.not11.i93 = icmp eq i8 %i.fb, 0
  %i.fc = getelementptr inbounds nuw i8, ptr %i.u, i64 11
  %storemerge.i94 = select i1 %.not11.i93, ptr %i.fa, ptr %i.fc ; 4 uses
  store ptr %storemerge.i94, ptr %0, align 8
  %i.fd = load ptr, ptr %i.i, align 8             ; 2 uses
  %12 = ptrtoint ptr %storemerge.i94 to i64
  %13 = ptrtoint ptr %i.fd to i64
  %i.fe = sub i64 %13, %12
  %scevgep.i.i.i96 = getelementptr i8, ptr %storemerge.i94, i64 %i.fe
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bd, %bb.ba
  %.0.i.i.i97 = phi ptr [ %storemerge.i94, %bb.ba ], [ %i.fg, %bb.bd ] ; 4 uses
  %i.ff = load i8, ptr %.0.i.i.i97, align 1
  switch i8 %i.ff, label %.critedge.i.i.i99 [
    i8 32, label %bb.bc
    i8 9, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb, %bb.bb
  %.not.i.i.i98 = icmp eq ptr %.0.i.i.i97, %i.fd
  br i1 %.not.i.i.i98, label %.critedge.i.i.i99, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i.i97, i64 1
  br label %bb.bb, !llvm.loop !34

.critedge.i.i.i99:                                ; preds = %bb.bc, %bb.bb
  %.0.lcssa.i.i.i100 = phi ptr [ %.0.i.i.i97, %bb.bb ], [ %scevgep.i.i.i96, %bb.bc ] ; 3 uses
  store ptr %.0.lcssa.i.i.i100, ptr %0, align 8
  %i.fh = load i8, ptr %.0.lcssa.i.i.i100, align 1
  switch i8 %i.fh, label %bb.be [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i101
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i101
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i101
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i101
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i101:    ; preds = %.critedge.i.i.i99, %.critedge.i.i.i99, %.critedge.i.i.i99, %.critedge.i.i.i99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.fi = load i32, ptr %i.k, align 8
  %i.fj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.fi, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.fk = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc102 unwind label %.loopexit

.noexc102:                                        ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i101
  invoke void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.fk, ptr noundef nonnull align 1 dereferenceable(2048) %i.b)
          to label %.noexc103 unwind label %.loopexit

.noexc103:                                        ; preds = %.noexc102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  store float 0.000000e+00, ptr %i.t, align 8
  %i.fl = load i32, ptr %i.k, align 8
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.k, align 8
  br label %.backedge.backedge

bb.be:                                            ; preds = %.critedge.i.i.i99
  %i.fn = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i100, ptr noundef nonnull align 4 dereferenceable(4) %i.t, i1 noundef zeroext true)
          to label %.noexc104 unwind label %.loopexit

.noexc104:                                        ; preds = %bb.be
  store ptr %i.fn, ptr %0, align 8
  br label %.backedge.backedge

bb.bf:                                            ; preds = %bb.ay, %bb.az
  %i.fo = call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.73, ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 10) #30
  %.not.i106 = icmp eq i32 %i.fo, 0
  br i1 %.not.i106, label %bb.bg, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.threadthread-pre-split

bb.bg:                                            ; preds = %bb.bf
  %i.fp = getelementptr inbounds nuw i8, ptr %i.u, i64 11 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1             ; 2 uses
  switch i8 %i.fq, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.threadthread-pre-split [
    i8 32, label %bb.bh
    i8 9, label %bb.bh
    i8 13, label %bb.bh
    i8 10, label %bb.bh
    i8 0, label %bb.bh
    i8 12, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg
  %.not11.i108 = icmp eq i8 %i.fq, 0
  %i.fr = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %storemerge.i109 = select i1 %.not11.i108, ptr %i.fp, ptr %i.fr ; 4 uses
  store ptr %storemerge.i109, ptr %0, align 8
  %i.fs = load ptr, ptr %i.i, align 8             ; 2 uses
  %14 = ptrtoint ptr %storemerge.i109 to i64
  %15 = ptrtoint ptr %i.fs to i64
  %i.ft = sub i64 %15, %14
  %scevgep.i.i.i111 = getelementptr i8, ptr %storemerge.i109, i64 %i.ft
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bk, %bb.bh
  %.0.i.i.i112 = phi ptr [ %storemerge.i109, %bb.bh ], [ %i.fv, %bb.bk ] ; 4 uses
  %i.fu = load i8, ptr %.0.i.i.i112, align 1
  switch i8 %i.fu, label %.critedge.i.i.i114 [
    i8 32, label %bb.bj
    i8 9, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi, %bb.bi
  %.not.i.i.i113 = icmp eq ptr %.0.i.i.i112, %i.fs
  br i1 %.not.i.i.i113, label %.critedge.i.i.i114, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.i.i.i112, i64 1
  br label %bb.bi, !llvm.loop !34

.critedge.i.i.i114:                               ; preds = %bb.bj, %bb.bi
  %.0.lcssa.i.i.i115 = phi ptr [ %.0.i.i.i112, %bb.bi ], [ %scevgep.i.i.i111, %bb.bj ] ; 3 uses
  store ptr %.0.lcssa.i.i.i115, ptr %0, align 8
  %i.fw = load i8, ptr %.0.lcssa.i.i.i115, align 1
  switch i8 %i.fw, label %bb.bl [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i116
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i116
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i116
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i116
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i116:    ; preds = %.critedge.i.i.i114, %.critedge.i.i.i114, %.critedge.i.i.i114, %.critedge.i.i.i114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.fx = load i32, ptr %i.k, align 8
  %i.fy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.fx, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.fz = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc117 unwind label %.loopexit

.noexc117:                                        ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i116
  invoke void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.fz, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
          to label %.noexc118 unwind label %.loopexit

.noexc118:                                        ; preds = %.noexc117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store float 0.000000e+00, ptr %1, align 8
  %i.ga = load i32, ptr %i.k, align 8
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr %i.k, align 8
  br label %.backedge.backedge

bb.bl:                                            ; preds = %.critedge.i.i.i114
  %i.gc = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i115, ptr noundef nonnull align 4 dereferenceable(4) %1, i1 noundef zeroext true)
          to label %.noexc119 unwind label %.loopexit

.noexc119:                                        ; preds = %bb.bl
  store ptr %i.gc, ptr %0, align 8
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %.noexc119, %.noexc118, %.noexc104, %.noexc103, %.noexc89, %.noexc88, %.noexc74, %.noexc73, %.noexc59, %.noexc58, %.noexc45, %.noexc44, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit34, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20, %bb.l, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %.014.be = phi i1 [ %.014, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ false, %bb.l ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.014, %.noexc45 ], [ %.014, %.noexc59 ], [ %.014, %.noexc74 ], [ %.014, %.noexc89 ], [ %.014, %.noexc104 ], [ %.014, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.014, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20 ], [ true, %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit34 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.014, %.noexc44 ], [ %.014, %.noexc58 ], [ %.014, %.noexc73 ], [ %.014, %.noexc88 ], [ %.014, %.noexc103 ], [ %.014, %.noexc118 ], [ %.014, %.noexc119 ]
  %.0.be = phi i32 [ %.1145148, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.0, %bb.l ], [ %.0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.0, %.noexc45 ], [ %.0, %.noexc59 ], [ %.0, %.noexc74 ], [ %.0, %.noexc89 ], [ %.0, %.noexc104 ], [ %.0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20 ], [ %.0, %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit34 ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.0, %.noexc44 ], [ %.0, %.noexc58 ], [ %.0, %.noexc73 ], [ %.0, %.noexc88 ], [ %.0, %.noexc103 ], [ %.0, %.noexc118 ], [ %.0, %.noexc119 ]
  br label %.backedge, !llvm.loop !81

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.threadthread-pre-split: ; preds = %bb.bf, %bb.bg
  %.pr = load i8, ptr %i.x, align 1
  br label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.thread

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.thread: ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.threadthread-pre-split, %.backedge
  %i.gd = phi i8 [ %.pr, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.threadthread-pre-split ], [ %i.v, %.backedge ]
  %i.ge = phi ptr [ %i.x, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.threadthread-pre-split ], [ %i.u, %.backedge ] ; 2 uses
  switch i8 %i.gd, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 123, label %bb.bm
    i8 125, label %bb.bn
    i8 0, label %bb.bt
    i8 13, label %bb.bv
    i8 10, label %bb.bv
    i8 12, label %bb.bv
  ]

bb.bm:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.thread
  %i.gf = add nsw i32 %.0, 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.bn:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.thread
  %i.gg = add nsw i32 %.0, -1                     ; 2 uses
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.bo, label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.bo:                                            ; preds = %bb.bn
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 3 uses
  store ptr %i.gi, ptr %0, align 8
  %i.gj = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit129, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %bb.bo
  %.promoted23.i123 = load i8, ptr %i.j, align 4
  %.promoted24.i124 = load i32, ptr %i.k, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bs, %.lr.ph.i122
  %i.gl = phi i32 [ %.promoted24.i124, %.lr.ph.i122 ], [ %i.gr, %bb.bs ] ; 3 uses
  %i.gm = phi i8 [ %.promoted23.i123, %.lr.ph.i122 ], [ %storemerge.i126, %bb.bs ]
  %i.gn = phi ptr [ %i.gi, %.lr.ph.i122 ], [ %i.gs, %bb.bs ] ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1             ; 2 uses
  switch i8 %i.go, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i125 [
    i8 13, label %bb.bq
    i8 10, label %bb.bq
    i8 0, label %bb.bq
    i8 12, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp, %bb.bp, %bb.bp, %bb.bp
  %i.gp = trunc nuw i8 %i.gm to i1
  br i1 %i.gp, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i125, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gq = add i32 %i.gl, 1                        ; 2 uses
  store i32 %i.gq, ptr %i.k, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i125

_ZN6Assimp9IsLineEndIcEEbT_.exit.i125:            ; preds = %bb.br, %bb.bq, %bb.bp
  %storemerge.i126 = phi i8 [ 1, %bb.br ], [ 0, %bb.bp ], [ 0, %bb.bq ] ; 2 uses
  %i.gr = phi i32 [ %i.gq, %bb.br ], [ %i.gl, %bb.bp ], [ %i.gl, %bb.bq ]
  store i8 %storemerge.i126, ptr %i.j, align 4
  switch i8 %i.go, label %bb.bs [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit129
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit129
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit129
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit129
  ]

bb.bs:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i125
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 1 ; 3 uses
  store ptr %i.gs, ptr %0, align 8
  %i.gt = icmp eq ptr %i.gs, %i.gj
  br i1 %i.gt, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit129, label %bb.bp

_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit129: ; preds = %bb.bs, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i125, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i125, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i125, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i125, %bb.bo
  %i.gu = load ptr, ptr %2, align 8               ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.g
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit129
  %i.gw = load i64, ptr %i.g, align 8
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.bt:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.thread
  invoke void @_ZN6Assimp3ASE6Parser8LogErrorEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.74) #29
          to label %bb.bu unwind label %.loopexit.split-lp

bb.bu:                                            ; preds = %bb.bt
  unreachable

bb.bv:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.thread, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.thread, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.thread
  %i.gy = load i8, ptr %i.j, align 4, !range !32, !noundef !33
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ha = load i32, ptr %i.k, align 8
  %i.hb = add i32 %i.ha, 1
  store i32 %i.hb, ptr %i.k, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.bv, %bb.bn, %bb.bm, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.thread, %bb.bw
  %storemerge = phi i8 [ 1, %bb.bw ], [ 0, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.thread ], [ 0, %bb.bm ], [ 0, %bb.bn ], [ 0, %bb.bv ]
  %.1145148 = phi i32 [ %.0, %bb.bw ], [ %.0, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit110.thread ], [ %i.gf, %bb.bm ], [ %i.gg, %bb.bn ], [ %.0, %bb.bv ]
  store i8 %storemerge, ptr %i.j, align 4
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  store ptr %i.hc, ptr %0, align 8
  br label %.backedge.backedge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA33_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(33) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(33) %1) #27
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(33) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA33_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #27
  br label %common.resume
end_hunk_3
begin_hunk_4_@_ZN6Assimp3ASE6Parser22ParseLV2AnimationBlockERNS0_8BaseNodeE:bb.a
  %.sink154 = phi ptr [ %i.bw, %bb.ai ], [ %i.bt, %bb.ag ], [ %i.bt, %bb.ag ], [ %i.bt, %bb.ag ], [ %i.bt, %bb.ag ], [ %i.bt, %bb.ag ], [ %i.bt, %bb.ag ], [ %i.bw, %bb.ai ], [ %i.bw, %bb.ai ], [ %i.bw, %bb.ai ], [ %i.bw, %bb.ai ], [ %i.bw, %bb.ai ], [ %i.bz, %bb.ak ], [ %i.bz, %bb.ak ], [ %i.bz, %bb.ak ], [ %i.bz, %bb.ak ], [ %i.bz, %bb.ak ], [ %i.bz, %bb.ak ]
  %.not11.i80 = icmp eq i8 %.sink157, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sink156
  %storemerge.i81 = select i1 %.not11.i80, ptr %.sink154, ptr %i.cb
  store ptr %storemerge.i81, ptr %0, align 8
  br i1 %or.cond, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit72
  %i.cc = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.cc, ptr noundef nonnull @.str.118)
  %i.cd = call noundef zeroext i1 @_ZN6Assimp3ASE6Parser11SkipSectionEv(ptr noundef nonnull align 8 dereferenceable(188) %0) ; 0 uses
  br label %.backedge

bb.am:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit72
  call void @_ZN6Assimp3ASE6Parser25ParseLV3RotAnimationBlockERNS0_9AnimationE(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(88) %.020.ph)
  br label %.backedge

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit82.thread.loopexit: ; preds = %bb.ak, %bb.aj, %.backedge
  %i.ce = phi ptr [ %i.o, %bb.ak ], [ %i.o, %bb.aj ], [ %i.bd, %.backedge ] ; 2 uses
  %.pre131 = load i8, ptr %i.ce, align 1
  br label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit82.thread

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit82.thread: ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit82.thread.loopexit, %.outer111
  %i.cf = phi i8 [ %.pre131, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit82.thread.loopexit ], [ %i.l, %.outer111 ]
  %i.cg = phi ptr [ %i.ce, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit82.thread.loopexit ], [ %i.k, %.outer111 ] ; 2 uses
  switch i8 %i.cf, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 123, label %bb.an
    i8 125, label %bb.ao
    i8 0, label %bb.au
    i8 13, label %bb.av
    i8 10, label %bb.av
    i8 12, label %bb.av
  ]

bb.an:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit82.thread
  %i.ch = add nsw i32 %.0.ph112, 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.ao:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit82.thread
  %i.ci = add nsw i32 %.0.ph112, -1               ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.ap, label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 3 uses
  store ptr %i.ck, ptr %0, align 8
  %i.cl = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit91, label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.ap
  %.promoted23.i85 = load i8, ptr %i.c, align 4
  %.promoted24.i86 = load i32, ptr %i.d, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.at, %.lr.ph.i84
  %i.cn = phi i32 [ %.promoted24.i86, %.lr.ph.i84 ], [ %i.ct, %bb.at ] ; 3 uses
  %i.co = phi i8 [ %.promoted23.i85, %.lr.ph.i84 ], [ %storemerge.i88, %bb.at ]
  %i.cp = phi ptr [ %i.ck, %.lr.ph.i84 ], [ %i.cu, %bb.at ] ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1             ; 2 uses
  switch i8 %i.cq, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i87 [
    i8 13, label %bb.ar
    i8 10, label %bb.ar
    i8 0, label %bb.ar
    i8 12, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq, %bb.aq, %bb.aq
  %i.cr = trunc nuw i8 %i.co to i1
  br i1 %i.cr, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i87, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cs = add i32 %i.cn, 1                        ; 2 uses
  store i32 %i.cs, ptr %i.d, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i87

_ZN6Assimp9IsLineEndIcEEbT_.exit.i87:             ; preds = %bb.as, %bb.ar, %bb.aq
  %storemerge.i88 = phi i8 [ 1, %bb.as ], [ 0, %bb.aq ], [ 0, %bb.ar ] ; 2 uses
  %i.ct = phi i32 [ %i.cs, %bb.as ], [ %i.cn, %bb.aq ], [ %i.cn, %bb.ar ]
  store i8 %storemerge.i88, ptr %i.c, align 4
  switch i8 %i.cq, label %bb.at [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit91
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit91
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit91
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit91
  ]

bb.at:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i87
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 1 ; 3 uses
  store ptr %i.cu, ptr %0, align 8
  %i.cv = icmp eq ptr %i.cu, %i.cl
  br i1 %i.cv, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit91, label %bb.aq

_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit91:  ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i87, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i87, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i87, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i87, %bb.at, %bb.ap
  ret void

bb.au:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit82.thread
  call void @_ZN6Assimp3ASE6Parser8LogErrorEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.119) #29
  unreachable

bb.av:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit82.thread, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit82.thread, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit82.thread
  %i.cw = load i8, ptr %i.c, align 4, !range !32, !noundef !33
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cy = load i32, ptr %i.d, align 8
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.d, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.av, %bb.ao, %bb.an, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit82.thread, %bb.aw
  %storemerge = phi i8 [ 1, %bb.aw ], [ 0, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit82.thread ], [ 0, %bb.an ], [ 0, %bb.ao ], [ 0, %bb.av ]
  %.1105108 = phi i32 [ %.0.ph112, %bb.aw ], [ %.0.ph112, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit82.thread ], [ %i.ch, %bb.an ], [ %i.ci, %bb.ao ], [ %.0.ph112, %bb.av ]
  store i8 %storemerge, ptr %i.c, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 2 uses
  store ptr %i.da, ptr %0, align 8
  br label %.outer111, !llvm.loop !86
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser26ParseLV2LightSettingsBlockERNS0_5LightE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(368) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = alloca [2048 x i8], align 16             ; 4 uses
  %i.c = alloca [2048 x i8], align 16             ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 356 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 364 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %.pre = load ptr, ptr %0, align 8
  br label %.outer

.outer:                                           ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %bb.a
  %i.k = phi ptr [ %i.cl, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.pre, %bb.a ] ; 3 uses
  %.0.ph = phi i32 [ %.14346, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ 0, %bb.a ] ; 5 uses
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = icmp eq i8 %i.l, 42
  br i1 %i.m, label %.lr.ph, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread

.lr.ph:                                           ; preds = %.outer, %.backedge
  %i.n = phi ptr [ %i.t, %.backedge ], [ %i.k, %.outer ] ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 7 uses
  store ptr %i.o, ptr %0, align 8
  %i.p = call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.101, ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 11) #30
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  switch i8 %i.r, label %bb.d [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 10, label %bb.c
    i8 0, label %bb.c
    i8 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.not11.i = icmp eq i8 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 13
  %storemerge.i = select i1 %.not11.i, ptr %i.q, ptr %i.s
  store ptr %storemerge.i, ptr %0, align 8
  call void @_ZN6Assimp3ASE6Parser23ParseLV4MeshFloatTripleEPf(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull %i.d)
  br label %.backedge

.backedge:                                        ; preds = %bb.x, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i35, %bb.q, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i23, %bb.j, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %bb.c
  %i.t = load ptr, ptr %0, align 8                ; 3 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, 42
  br i1 %i.v, label %.lr.ph, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread.loopexit, !llvm.loop !87

bb.d:                                             ; preds = %.lr.ph, %bb.b
  %i.w = call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.102, ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 12) #30
  %.not.i8 = icmp eq i32 %i.w, 0
  br i1 %.not.i8, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 13 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  switch i8 %i.y, label %bb.k [
    i8 32, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
    i8 10, label %bb.f
    i8 0, label %bb.f
    i8 12, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %.not11.i10 = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 14
  %storemerge.i11 = select i1 %.not11.i10, ptr %i.x, ptr %i.z ; 4 uses
  store ptr %storemerge.i11, ptr %0, align 8
  %i.aa = load ptr, ptr %i.f, align 8             ; 2 uses
  %2 = ptrtoint ptr %storemerge.i11 to i64
  %3 = ptrtoint ptr %i.aa to i64
  %i.ab = sub i64 %3, %2
  %scevgep.i.i.i = getelementptr i8, ptr %storemerge.i11, i64 %i.ab
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.0.i.i.i = phi ptr [ %storemerge.i11, %bb.f ], [ %i.ad, %bb.i ] ; 4 uses
  %i.ac = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.ac, label %.critedge.i.i.i [
    i8 32, label %bb.h
    i8 9, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.aa
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.g, !llvm.loop !34

.critedge.i.i.i:                                  ; preds = %bb.h, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.g ], [ %scevgep.i.i.i, %bb.h ] ; 3 uses
  store ptr %.0.lcssa.i.i.i, ptr %0, align 8
  %i.ae = load i8, ptr %.0.lcssa.i.i.i, align 1
  switch i8 %i.ae, label %bb.j [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i:       ; preds = %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.af = load i32, ptr %i.g, align 8
  %i.ag = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.af, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.ah = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ah, ptr noundef nonnull align 1 dereferenceable(2048) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  store float 0.000000e+00, ptr %i.e, align 4
  %i.ai = load i32, ptr %i.g, align 8
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.g, align 8
  br label %.backedge

bb.j:                                             ; preds = %.critedge.i.i.i
  %i.ak = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.e, i1 noundef zeroext true)
  store ptr %i.ak, ptr %0, align 8
  br label %.backedge

bb.k:                                             ; preds = %bb.d, %bb.e
  %i.al = call i32 @strncmp(ptr noundef nonnull dereferenceable(14) @.str.103, ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 13) #30
  %.not.i13 = icmp eq i32 %i.al, 0
  br i1 %.not.i13, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 14 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  switch i8 %i.an, label %bb.r [
    i8 32, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
    i8 10, label %bb.m
    i8 0, label %bb.m
    i8 12, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %.not11.i15 = icmp eq i8 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  %storemerge.i16 = select i1 %.not11.i15, ptr %i.am, ptr %i.ao ; 4 uses
  store ptr %storemerge.i16, ptr %0, align 8
  %i.ap = load ptr, ptr %i.f, align 8             ; 2 uses
  %4 = ptrtoint ptr %storemerge.i16 to i64
  %5 = ptrtoint ptr %i.ap to i64
  %i.aq = sub i64 %5, %4
  %scevgep.i.i.i18 = getelementptr i8, ptr %storemerge.i16, i64 %i.aq
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.0.i.i.i19 = phi ptr [ %storemerge.i16, %bb.m ], [ %i.as, %bb.p ] ; 4 uses
  %i.ar = load i8, ptr %.0.i.i.i19, align 1
  switch i8 %i.ar, label %.critedge.i.i.i21 [
    i8 32, label %bb.o
    i8 9, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %.not.i.i.i20 = icmp eq ptr %.0.i.i.i19, %i.ap
  br i1 %.not.i.i.i20, label %.critedge.i.i.i21, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i19, i64 1
  br label %bb.n, !llvm.loop !34

.critedge.i.i.i21:                                ; preds = %bb.o, %bb.n
  %.0.lcssa.i.i.i22 = phi ptr [ %.0.i.i.i19, %bb.n ], [ %scevgep.i.i.i18, %bb.o ] ; 3 uses
  store ptr %.0.lcssa.i.i.i22, ptr %0, align 8
  %i.at = load i8, ptr %.0.lcssa.i.i.i22, align 1
  switch i8 %i.at, label %bb.q [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i23
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i23
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i23
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i23
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i23:     ; preds = %.critedge.i.i.i21, %.critedge.i.i.i21, %.critedge.i.i.i21, %.critedge.i.i.i21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.au = load i32, ptr %i.g, align 8
  %i.av = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.au, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.aw = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.aw, ptr noundef nonnull align 1 dereferenceable(2048) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  store float 0.000000e+00, ptr %i.h, align 8
  %i.ax = load i32, ptr %i.g, align 8
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.g, align 8
  br label %.backedge

bb.q:                                             ; preds = %.critedge.i.i.i21
  %i.az = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i22, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i1 noundef zeroext true)
  store ptr %i.az, ptr %0, align 8
  br label %.backedge

bb.r:                                             ; preds = %bb.k, %bb.l
  %i.ba = call i32 @strncmp(ptr noundef nonnull dereferenceable(14) @.str.104, ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 13) #30
  %.not.i25 = icmp eq i32 %i.ba, 0
  br i1 %.not.i25, label %bb.s, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread.loopexit

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 14 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1             ; 2 uses
  switch i8 %i.bc, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread.loopexit [
    i8 32, label %bb.t
    i8 9, label %bb.t
    i8 13, label %bb.t
    i8 10, label %bb.t
    i8 0, label %bb.t
    i8 12, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s
  %.not11.i27 = icmp eq i8 %i.bc, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  %storemerge.i28 = select i1 %.not11.i27, ptr %i.bb, ptr %i.bd ; 4 uses
  store ptr %storemerge.i28, ptr %0, align 8
  %i.be = load ptr, ptr %i.f, align 8             ; 2 uses
  %6 = ptrtoint ptr %storemerge.i28 to i64
  %7 = ptrtoint ptr %i.be to i64
  %i.bf = sub i64 %7, %6
  %scevgep.i.i.i30 = getelementptr i8, ptr %storemerge.i28, i64 %i.bf
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.0.i.i.i31 = phi ptr [ %storemerge.i28, %bb.t ], [ %i.bh, %bb.w ] ; 4 uses
  %i.bg = load i8, ptr %.0.i.i.i31, align 1
  switch i8 %i.bg, label %.critedge.i.i.i33 [
    i8 32, label %bb.v
    i8 9, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %.not.i.i.i32 = icmp eq ptr %.0.i.i.i31, %i.be
  br i1 %.not.i.i.i32, label %.critedge.i.i.i33, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i31, i64 1
  br label %bb.u, !llvm.loop !34

.critedge.i.i.i33:                                ; preds = %bb.v, %bb.u
  %.0.lcssa.i.i.i34 = phi ptr [ %.0.i.i.i31, %bb.u ], [ %scevgep.i.i.i30, %bb.v ] ; 3 uses
  store ptr %.0.lcssa.i.i.i34, ptr %0, align 8
  %i.bi = load i8, ptr %.0.lcssa.i.i.i34, align 1
  switch i8 %i.bi, label %bb.x [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i35
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i35
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i35
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i35
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i35:     ; preds = %.critedge.i.i.i33, %.critedge.i.i.i33, %.critedge.i.i.i33, %.critedge.i.i.i33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.bj = load i32, ptr %i.g, align 8
  %i.bk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.bj, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.bl = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bl, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store float 0.000000e+00, ptr %i.i, align 4
  %i.bm = load i32, ptr %i.g, align 8
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.g, align 8
  br label %.backedge

bb.x:                                             ; preds = %.critedge.i.i.i33
  %i.bo = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i34, ptr noundef nonnull align 4 dereferenceable(4) %i.i, i1 noundef zeroext true)
  store ptr %i.bo, ptr %0, align 8
  br label %.backedge

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread.loopexit: ; preds = %bb.s, %bb.r, %.backedge
  %i.bp = phi ptr [ %i.o, %bb.s ], [ %i.o, %bb.r ], [ %i.t, %.backedge ] ; 2 uses
  %.pre53 = load i8, ptr %i.bp, align 1
  br label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread: ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread.loopexit, %.outer
  %i.bq = phi i8 [ %.pre53, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread.loopexit ], [ %i.l, %.outer ]
  %i.br = phi ptr [ %i.bp, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread.loopexit ], [ %i.k, %.outer ] ; 2 uses
  switch i8 %i.bq, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 123, label %bb.y
    i8 125, label %bb.z
    i8 0, label %bb.af
    i8 13, label %bb.ag
    i8 10, label %bb.ag
    i8 12, label %bb.ag
  ]

bb.y:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread
  %i.bs = add nsw i32 %.0.ph, 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.z:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread
  %i.bt = add nsw i32 %.0.ph, -1                  ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.aa, label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.aa:                                            ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 1 ; 3 uses
  store ptr %i.bv, ptr %0, align 8
  %i.bw = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aa
  %.promoted23.i = load i8, ptr %i.j, align 4
  %.promoted24.i = load i32, ptr %i.g, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %.lr.ph.i
  %i.by = phi i32 [ %.promoted24.i, %.lr.ph.i ], [ %i.ce, %bb.ae ] ; 3 uses
  %i.bz = phi i8 [ %.promoted23.i, %.lr.ph.i ], [ %storemerge.i37, %bb.ae ]
  %i.ca = phi ptr [ %i.bv, %.lr.ph.i ], [ %i.cf, %bb.ae ] ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1             ; 2 uses
  switch i8 %i.cb, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %bb.ac
    i8 10, label %bb.ac
    i8 0, label %bb.ac
    i8 12, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %i.cc = trunc nuw i8 %i.bz to i1
  br i1 %i.cc, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = add i32 %i.by, 1                        ; 2 uses
  store i32 %i.cd, ptr %i.g, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %bb.ad, %bb.ac, %bb.ab
  %storemerge.i37 = phi i8 [ 1, %bb.ad ], [ 0, %bb.ab ], [ 0, %bb.ac ] ; 2 uses
  %i.ce = phi i32 [ %i.cd, %bb.ad ], [ %i.by, %bb.ab ], [ %i.by, %bb.ac ]
  store i8 %storemerge.i37, ptr %i.j, align 4
  switch i8 %i.cb, label %bb.ae [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

bb.ae:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 3 uses
  store ptr %i.cf, ptr %0, align 8
  %i.cg = icmp eq ptr %i.cf, %i.bw
  br i1 %i.cg, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %bb.ab

_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit:    ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %bb.ae, %bb.aa
  ret void

bb.af:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread
  call void @_ZN6Assimp3ASE6Parser8LogErrorEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.105) #29
  unreachable

bb.ag:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread
  %i.ch = load i8, ptr %i.j, align 4, !range !32, !noundef !33
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cj = load i32, ptr %i.g, align 8
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.g, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.ag, %bb.z, %bb.y, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread, %bb.ah
  %storemerge = phi i8 [ 1, %bb.ah ], [ 0, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread ], [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.ag ]
  %.14346 = phi i32 [ %.0.ph, %bb.ah ], [ %.0.ph, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit29.thread ], [ %i.bs, %bb.y ], [ %i.bt, %bb.z ], [ %.0.ph, %bb.ag ]
  store i8 %storemerge, ptr %i.j, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.br, i64 1 ; 2 uses
  store ptr %i.cl, ptr %0, align 8
  br label %.outer, !llvm.loop !87
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser27ParseLV2CameraSettingsBlockERNS0_6CameraE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(356) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = alloca [2048 x i8], align 16             ; 4 uses
  %i.c = alloca [2048 x i8], align 16             ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 348 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 340 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %.pre = load ptr, ptr %0, align 8
  br label %.outer

.outer:                                           ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %bb.a
  %i.j = phi ptr [ %i.cg, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.pre, %bb.a ] ; 3 uses
  %.0.ph = phi i32 [ %.13639, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ 0, %bb.a ] ; 5 uses
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = icmp eq i8 %i.k, 42
  br i1 %i.l, label %.lr.ph, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread

.lr.ph:                                           ; preds = %.outer, %.backedge
  %i.m = phi ptr [ %i.ad, %.backedge ], [ %i.j, %.outer ] ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 6 uses
  store ptr %i.n, ptr %0, align 8
  %i.o = call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.97, ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 11) #30
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  switch i8 %i.q, label %bb.h [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 10, label %bb.c
    i8 0, label %bb.c
    i8 12, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.not11.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 13
  %storemerge.i = select i1 %.not11.i, ptr %i.p, ptr %i.r ; 4 uses
  store ptr %storemerge.i, ptr %0, align 8
  %i.s = load ptr, ptr %i.e, align 8              ; 2 uses
  %2 = ptrtoint ptr %storemerge.i to i64
  %3 = ptrtoint ptr %i.s to i64
  %i.t = sub i64 %3, %2
  %scevgep.i.i.i = getelementptr i8, ptr %storemerge.i, i64 %i.t
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.0.i.i.i = phi ptr [ %storemerge.i, %bb.c ], [ %i.v, %bb.f ] ; 4 uses
  %i.u = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.u, label %.critedge.i.i.i [
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.s
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.d, !llvm.loop !34

.critedge.i.i.i:                                  ; preds = %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.d ], [ %scevgep.i.i.i, %bb.e ] ; 3 uses
  store ptr %.0.lcssa.i.i.i, ptr %0, align 8
  %i.w = load i8, ptr %.0.lcssa.i.i.i, align 1
  switch i8 %i.w, label %bb.g [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i:       ; preds = %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.x = load i32, ptr %i.f, align 8
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.x, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.z = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.z, ptr noundef nonnull align 1 dereferenceable(2048) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  store float 0.000000e+00, ptr %i.d, align 8
  %i.aa = load i32, ptr %i.f, align 8
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.f, align 8
  br label %.backedge

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.ac = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i1 noundef zeroext true)
  store ptr %i.ac, ptr %0, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i29, %bb.n, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i17, %bb.g, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  %i.ad = load ptr, ptr %0, align 8               ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp eq i8 %i.ae, 42
  br i1 %i.af, label %.lr.ph, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread.loopexit, !llvm.loop !88

bb.h:                                             ; preds = %.lr.ph, %bb.b
  %i.ag = call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.98, ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 10) #30
  %.not.i7 = icmp eq i32 %i.ag, 0
  br i1 %.not.i7, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 11 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  switch i8 %i.ai, label %bb.o [
    i8 32, label %bb.j
    i8 9, label %bb.j
    i8 13, label %bb.j
    i8 10, label %bb.j
    i8 0, label %bb.j
    i8 12, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  %.not11.i9 = icmp eq i8 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %storemerge.i10 = select i1 %.not11.i9, ptr %i.ah, ptr %i.aj ; 4 uses
  store ptr %storemerge.i10, ptr %0, align 8
  %i.ak = load ptr, ptr %i.e, align 8             ; 2 uses
  %4 = ptrtoint ptr %storemerge.i10 to i64
  %5 = ptrtoint ptr %i.ak to i64
  %i.al = sub i64 %5, %4
  %scevgep.i.i.i12 = getelementptr i8, ptr %storemerge.i10, i64 %i.al
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.0.i.i.i13 = phi ptr [ %storemerge.i10, %bb.j ], [ %i.an, %bb.m ] ; 4 uses
  %i.am = load i8, ptr %.0.i.i.i13, align 1
  switch i8 %i.am, label %.critedge.i.i.i15 [
    i8 32, label %bb.l
    i8 9, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %.not.i.i.i14 = icmp eq ptr %.0.i.i.i13, %i.ak
  br i1 %.not.i.i.i14, label %.critedge.i.i.i15, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i13, i64 1
  br label %bb.k, !llvm.loop !34

.critedge.i.i.i15:                                ; preds = %bb.l, %bb.k
  %.0.lcssa.i.i.i16 = phi ptr [ %.0.i.i.i13, %bb.k ], [ %scevgep.i.i.i12, %bb.l ] ; 3 uses
  store ptr %.0.lcssa.i.i.i16, ptr %0, align 8
  %i.ao = load i8, ptr %.0.lcssa.i.i.i16, align 1
  switch i8 %i.ao, label %bb.n [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i17
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i17
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i17
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i17
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i17:     ; preds = %.critedge.i.i.i15, %.critedge.i.i.i15, %.critedge.i.i.i15, %.critedge.i.i.i15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.ap = load i32, ptr %i.f, align 8
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.ap, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.ar = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ar, ptr noundef nonnull align 1 dereferenceable(2048) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  store float 0.000000e+00, ptr %i.g, align 4
  %i.as = load i32, ptr %i.f, align 8
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.f, align 8
  br label %.backedge

bb.n:                                             ; preds = %.critedge.i.i.i15
  %i.au = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i16, ptr noundef nonnull align 4 dereferenceable(4) %i.g, i1 noundef zeroext true)
  store ptr %i.au, ptr %0, align 8
  br label %.backedge

bb.o:                                             ; preds = %bb.h, %bb.i
  %i.av = call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.99, ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 10) #30
  %.not.i19 = icmp eq i32 %i.av, 0
  br i1 %.not.i19, label %bb.p, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread.loopexit

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 11 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1             ; 2 uses
  switch i8 %i.ax, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread.loopexit [
    i8 32, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
    i8 10, label %bb.q
    i8 0, label %bb.q
    i8 12, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  %.not11.i21 = icmp eq i8 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %storemerge.i22 = select i1 %.not11.i21, ptr %i.aw, ptr %i.ay ; 4 uses
  store ptr %storemerge.i22, ptr %0, align 8
  %i.az = load ptr, ptr %i.e, align 8             ; 2 uses
  %6 = ptrtoint ptr %storemerge.i22 to i64
  %7 = ptrtoint ptr %i.az to i64
  %i.ba = sub i64 %7, %6
  %scevgep.i.i.i24 = getelementptr i8, ptr %storemerge.i22, i64 %i.ba
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.0.i.i.i25 = phi ptr [ %storemerge.i22, %bb.q ], [ %i.bc, %bb.t ] ; 4 uses
  %i.bb = load i8, ptr %.0.i.i.i25, align 1
  switch i8 %i.bb, label %.critedge.i.i.i27 [
    i8 32, label %bb.s
    i8 9, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %.not.i.i.i26 = icmp eq ptr %.0.i.i.i25, %i.az
  br i1 %.not.i.i.i26, label %.critedge.i.i.i27, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i.i25, i64 1
  br label %bb.r, !llvm.loop !34

.critedge.i.i.i27:                                ; preds = %bb.s, %bb.r
  %.0.lcssa.i.i.i28 = phi ptr [ %.0.i.i.i25, %bb.r ], [ %scevgep.i.i.i24, %bb.s ] ; 3 uses
  store ptr %.0.lcssa.i.i.i28, ptr %0, align 8
  %i.bd = load i8, ptr %.0.lcssa.i.i.i28, align 1
  switch i8 %i.bd, label %bb.u [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i29
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i29
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i29
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i29
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i29:     ; preds = %.critedge.i.i.i27, %.critedge.i.i.i27, %.critedge.i.i.i27, %.critedge.i.i.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.be = load i32, ptr %i.f, align 8
  %i.bf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.be, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.bg = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bg, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store float 0.000000e+00, ptr %i.h, align 4
  %i.bh = load i32, ptr %i.f, align 8
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.f, align 8
  br label %.backedge

bb.u:                                             ; preds = %.critedge.i.i.i27
  %i.bj = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i28, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i1 noundef zeroext true)
  store ptr %i.bj, ptr %0, align 8
  br label %.backedge

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread.loopexit: ; preds = %bb.p, %bb.o, %.backedge
  %i.bk = phi ptr [ %i.n, %bb.p ], [ %i.n, %bb.o ], [ %i.ad, %.backedge ] ; 2 uses
  %.pre46 = load i8, ptr %i.bk, align 1
  br label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread: ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread.loopexit, %.outer
  %i.bl = phi i8 [ %.pre46, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread.loopexit ], [ %i.k, %.outer ]
  %i.bm = phi ptr [ %i.bk, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread.loopexit ], [ %i.j, %.outer ] ; 2 uses
  switch i8 %i.bl, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 123, label %bb.v
    i8 125, label %bb.w
    i8 0, label %bb.ac
    i8 13, label %bb.ad
    i8 10, label %bb.ad
    i8 12, label %bb.ad
  ]

bb.v:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread
  %i.bn = add nsw i32 %.0.ph, 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.w:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread
  %i.bo = add nsw i32 %.0.ph, -1                  ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.x, label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 3 uses
  store ptr %i.bq, ptr %0, align 8
  %i.br = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.x
  %.promoted23.i = load i8, ptr %i.i, align 4
  %.promoted24.i = load i32, ptr %i.f, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %.lr.ph.i
  %i.bt = phi i32 [ %.promoted24.i, %.lr.ph.i ], [ %i.bz, %bb.ab ] ; 3 uses
  %i.bu = phi i8 [ %.promoted23.i, %.lr.ph.i ], [ %storemerge.i31, %bb.ab ]
  %i.bv = phi ptr [ %i.bq, %.lr.ph.i ], [ %i.ca, %bb.ab ] ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1             ; 2 uses
  switch i8 %i.bw, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %bb.z
    i8 10, label %bb.z
    i8 0, label %bb.z
    i8 12, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y, %bb.y, %bb.y
  %i.bx = trunc nuw i8 %i.bu to i1
  br i1 %i.bx, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = add i32 %i.bt, 1                        ; 2 uses
  store i32 %i.by, ptr %i.f, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %bb.aa, %bb.z, %bb.y
  %storemerge.i31 = phi i8 [ 1, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.z ] ; 2 uses
  %i.bz = phi i32 [ %i.by, %bb.aa ], [ %i.bt, %bb.y ], [ %i.bt, %bb.z ]
  store i8 %storemerge.i31, ptr %i.i, align 4
  switch i8 %i.bw, label %bb.ab [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

bb.ab:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 3 uses
  store ptr %i.ca, ptr %0, align 8
  %i.cb = icmp eq ptr %i.ca, %i.br
  br i1 %i.cb, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %bb.y

_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit:    ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %bb.ab, %bb.x
  ret void

bb.ac:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread
  call void @_ZN6Assimp3ASE6Parser8LogErrorEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.100) #29
  unreachable

bb.ad:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread
  %i.cc = load i8, ptr %i.i, align 4, !range !32, !noundef !33
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = load i32, ptr %i.f, align 8
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.f, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.ad, %bb.w, %bb.v, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread, %bb.ae
  %storemerge = phi i8 [ 1, %bb.ae ], [ 0, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread ], [ 0, %bb.v ], [ 0, %bb.w ], [ 0, %bb.ad ]
  %.13639 = phi i32 [ %.0.ph, %bb.ae ], [ %.0.ph, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit23.thread ], [ %i.bn, %bb.v ], [ %i.bo, %bb.w ], [ %.0.ph, %bb.ad ]
  store i8 %storemerge, ptr %i.i, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  store ptr %i.cg, ptr %0, align 8
  br label %.outer, !llvm.loop !88
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser17ParseLV2MeshBlockERNS0_4MeshE(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(717) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i32 0, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  store i32 0, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.012 = phi i32 [ 0, %bb.a ], [ %.012.be, %.backedge.backedge ] ; 21 uses
  %i.j = load ptr, ptr %0, align 8                ; 29 uses
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = icmp eq i8 %i.k, 42
  br i1 %i.l, label %bb.b, label %bb.ay

bb.b:                                             ; preds = %.backedge
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 14 uses
  store ptr %i.m, ptr %0, align 8
  %i.n = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(15) @.str.141, ptr noundef nonnull dereferenceable(1) %i.m, i64 noundef 14) #30
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 15 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  switch i8 %i.p, label %bb.e [
    i8 32, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
    i8 10, label %bb.d
end_hunk_4
begin_hunk_5_@_ZN6Assimp3ASE6Parser27ParseLV3ScaleAnimationBlockERNS0_9AnimationE:bb.a
  ]

bb.t:                                             ; preds = %bb.s, %bb.s, %bb.s, %bb.s
  %i.bo = trunc nuw i8 %i.bl to i1
  br i1 %i.bo, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = add i32 %i.bk, 1                        ; 2 uses
  store i32 %i.bp, ptr %i.g, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %bb.u, %bb.t, %bb.s
  %storemerge.i25 = phi i8 [ 1, %bb.u ], [ 0, %bb.s ], [ 0, %bb.t ] ; 2 uses
  %i.bq = phi i32 [ %i.bp, %bb.u ], [ %i.bk, %bb.s ], [ %i.bk, %bb.t ]
  store i8 %storemerge.i25, ptr %i.f, align 4
  switch i8 %i.bn, label %bb.v [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

bb.v:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 3 uses
  store ptr %i.br, ptr %0, align 8
  %i.bs = icmp eq ptr %i.br, %i.bi
  br i1 %i.bs, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %bb.s

_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit:    ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %bb.v, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.w:                                             ; preds = %bb.o
  tail call void @_ZN6Assimp3ASE6Parser8LogErrorEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.123) #29
  unreachable

bb.x:                                             ; preds = %bb.o, %bb.o, %bb.o
  %i.bt = load i8, ptr %i.f, align 4, !range !32, !noundef !33
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = load i32, ptr %i.g, align 8
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.g, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.x, %bb.q, %bb.p, %bb.o, %bb.y
  %storemerge = phi i8 [ 1, %bb.y ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.x ]
  %.13134 = phi i32 [ %.0, %bb.y ], [ %.0, %bb.o ], [ %i.bd, %bb.p ], [ %i.be, %bb.q ], [ %.0, %bb.x ]
  store i8 %storemerge, ptr %i.f, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 2 uses
  store ptr %i.bx, ptr %0, align 8
  br label %bb.b, !llvm.loop !100
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser25ParseLV3RotAnimationBlockERNS0_9AnimationE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %class.aiVector3t, align 8          ; 6 uses
  %i.c = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %.pre = load ptr, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %bb.a
  %i.k = phi ptr [ %.pre, %bb.a ], [ %i.cp, %_ZN6Assimp9IsLineEndIcEEbT_.exit ] ; 5 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %.13336, %_ZN6Assimp9IsLineEndIcEEbT_.exit ] ; 5 uses
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = icmp eq i8 %i.l, 42
  br i1 %i.m, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 4 uses
  store ptr %i.n, ptr %0, align 8
  %i.o = call i32 @strncmp(ptr noundef nonnull dereferenceable(19) @.str.127, ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 18) #30
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.d, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 19 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  switch i8 %i.q, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread [
    i8 32, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 10, label %bb.e
    i8 0, label %bb.e
    i8 12, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %.not11.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %storemerge.i = select i1 %.not11.i, ptr %i.p, ptr %i.r
  store ptr %storemerge.i, ptr %0, align 8
  store i32 0, ptr %1, align 8
  %.pre41 = load ptr, ptr %0, align 8
  br label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread: ; preds = %bb.d, %bb.c, %bb.e
  %i.s = phi ptr [ %.pre41, %bb.e ], [ %i.n, %bb.c ], [ %i.n, %bb.d ] ; 5 uses
  %.0.i29 = phi i1 [ true, %bb.e ], [ false, %bb.c ], [ false, %bb.d ] ; 2 uses
  %i.t = call i32 @strncmp(ptr noundef nonnull dereferenceable(23) @.str.128, ptr noundef nonnull dereferenceable(1) %i.s, i64 noundef 22) #30
  %.not.i16 = icmp eq i32 %i.t, 0
  br i1 %.not.i16, label %bb.f, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread

bb.f:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 22 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  switch i8 %i.v, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread [
    i8 32, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 10, label %bb.g
    i8 0, label %bb.g
    i8 12, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %.not11.i18 = icmp eq i8 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 23
  %storemerge.i19 = select i1 %.not11.i18, ptr %i.u, ptr %i.w
  store ptr %storemerge.i19, ptr %0, align 8
  store i32 1, ptr %1, align 8
  %.pre42 = load ptr, ptr %0, align 8
  br label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread: ; preds = %bb.f, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread, %bb.g
  %i.x = phi ptr [ %.pre42, %bb.g ], [ %i.s, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread ], [ %i.s, %bb.f ] ; 4 uses
  %.113 = phi i1 [ true, %bb.g ], [ %.0.i29, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread ], [ %.0.i29, %bb.f ]
  %i.y = call i32 @strncmp(ptr noundef nonnull dereferenceable(20) @.str.129, ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 19) #30
  %.not.i21 = icmp eq i32 %i.y, 0
  br i1 %.not.i21, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 19 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  switch i8 %i.aa, label %bb.i [
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 13, label %.critedge
    i8 10, label %.critedge
    i8 0, label %.critedge
    i8 12, label %.critedge
  ]

.critedge:                                        ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %.not11.i23 = icmp eq i8 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %storemerge.i24 = select i1 %.not11.i23, ptr %i.z, ptr %i.ab
  store ptr %storemerge.i24, ptr %0, align 8
  store i32 2, ptr %1, align 8
  br label %bb.j

bb.i:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread, %bb.h
  br i1 %.113, label %bb.j, label %thread-pre-split

bb.j:                                             ; preds = %.critedge, %bb.i
  %i.ac = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.ad = load ptr, ptr %i.e, align 8
  %.not.i26 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store double 0.000000e+00, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i32 1, ptr %i.af, align 8
  %i.ag = load ptr, ptr %i.d, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  store ptr %i.ah, ptr %i.d, align 8
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

bb.l:                                             ; preds = %bb.j
  call void @_ZNSt6vectorI9aiQuatKeySaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.ac)
  %.pre43 = load ptr, ptr %i.d, align 8
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit: ; preds = %bb.k, %bb.l
  %i.ai = phi ptr [ %i.ah, %bb.k ], [ %.pre43, %bb.l ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store <2 x float> zeroinitializer, ptr %2, align 8
  store float 0.000000e+00, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @_ZN6Assimp3ASE6Parser22ParseLV4MeshRealTripleEPf(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull %2)
  %i.ak = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.al = load ptr, ptr %0, align 8               ; 3 uses
  %3 = ptrtoint ptr %i.al to i64
  %4 = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %4, %3
  %scevgep.i.i.i = getelementptr i8, ptr %i.al, i64 %i.am
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %.0.i.i.i = phi ptr [ %i.al, %_ZNSt6vectorI9aiQuatKeySaIS0_EE12emplace_backIJEEERS0_DpOT_.exit ], [ %i.ao, %bb.o ] ; 4 uses
  %i.an = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.an, label %.critedge.i.i.i [
    i8 32, label %bb.n
    i8 9, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.ak
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.m, !llvm.loop !34

.critedge.i.i.i:                                  ; preds = %bb.n, %bb.m
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.m ], [ %scevgep.i.i.i, %bb.n ] ; 3 uses
  store ptr %.0.lcssa.i.i.i, ptr %0, align 8
  %i.ap = load i8, ptr %.0.lcssa.i.i.i, align 1
  switch i8 %i.ap, label %bb.p [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i:       ; preds = %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.aq = load i32, ptr %i.i, align 8
  %i.ar = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.aq, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.as = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.as, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.at = load i32, ptr %i.i, align 8
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.i, align 8
  br label %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit

bb.p:                                             ; preds = %.critedge.i.i.i
  %i.av = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true)
  store ptr %i.av, ptr %0, align 8
  %.pre44 = load float, ptr %i.c, align 4
  %i.aw = fmul float %.pre44, 5.000000e-01
  br label %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit

_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit:  ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %bb.p
  %i.ax = phi float [ 0.000000e+00, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i ], [ %i.aw, %bb.p ] ; 2 uses
  %i.ay = load i32, ptr %i.b, align 4
  %i.az = uitofp i32 %i.ay to double
  store double %i.az, ptr %i.aj, align 8
  %.sroa.01.0.copyload = load <2 x float>, ptr %2, align 8 ; 5 uses
  %.sroa.22.0.copyload = load float, ptr %i.g, align 8 ; 4 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.01.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.01.0.copyload, %.sroa.01.0.copyload
  %i.ba = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bb = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %i.ba)
  %i.bc = call noundef float @llvm.fmuladd.f32(float %.sroa.22.0.copyload, float %.sroa.22.0.copyload, float %i.bb) ; 2 uses
  %i.bd = fcmp oeq float %i.bc, 0.000000e+00
  br i1 %i.bd, label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.bc)
  %i.be = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.bf = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x float> %.sroa.01.0.copyload, %i.bg
  %i.bi = fmul float %.sroa.22.0.copyload, %i.be
  br label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit

_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit:    ; preds = %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit, %_ZN10aiVector3tIfEdVEf.exit.i.i
  %.sroa.7.0.i = phi float [ %.sroa.22.0.copyload, %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit ], [ %i.bi, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.bj = phi <2 x float> [ %.sroa.01.0.copyload, %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit ], [ %i.bh, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.bk = call noundef float @sinf(float noundef %i.ax) #27
  %i.bl = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %i.bm = call noundef float @cosf(float noundef %i.ax) #27
  %i.bn = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.bo = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x float> %i.bn, <4 x float> %i.bo, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bq = insertelement <4 x float> %i.bp, float %.sroa.7.0.i, i64 3
  %i.br = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.bk, i64 1
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bt = fmul <4 x float> %i.bq, %i.bs
  store <4 x float> %i.bt, ptr %i.bl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %.pre45 = load ptr, ptr %0, align 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit, %bb.i
  %.ph = phi ptr [ %.pre45, %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit ], [ %i.x, %bb.i ] ; 2 uses
  %.pr = load i8, ptr %.ph, align 1
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split, %bb.b
  %i.bu = phi i8 [ %.pr, %thread-pre-split ], [ %i.l, %bb.b ]
  %i.bv = phi ptr [ %.ph, %thread-pre-split ], [ %i.k, %bb.b ] ; 2 uses
  switch i8 %i.bu, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 123, label %bb.r
    i8 125, label %bb.s
    i8 0, label %bb.y
    i8 13, label %bb.z
    i8 10, label %bb.z
    i8 12, label %bb.z
  ]

bb.r:                                             ; preds = %bb.q
  %i.bw = add nsw i32 %.0, 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.s:                                             ; preds = %bb.q
  %i.bx = add nsw i32 %.0, -1                     ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.t, label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 3 uses
  store ptr %i.bz, ptr %0, align 8
  %i.ca = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t
  %.promoted23.i = load i8, ptr %i.j, align 4
  %.promoted24.i = load i32, ptr %i.i, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %.lr.ph.i
  %i.cc = phi i32 [ %.promoted24.i, %.lr.ph.i ], [ %i.ci, %bb.x ] ; 3 uses
  %i.cd = phi i8 [ %.promoted23.i, %.lr.ph.i ], [ %storemerge.i27, %bb.x ]
  %i.ce = phi ptr [ %i.bz, %.lr.ph.i ], [ %i.cj, %bb.x ] ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1             ; 2 uses
  switch i8 %i.cf, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %bb.v
    i8 10, label %bb.v
    i8 0, label %bb.v
    i8 12, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u, %bb.u, %bb.u
  %i.cg = trunc nuw i8 %i.cd to i1
  br i1 %i.cg, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = add i32 %i.cc, 1                        ; 2 uses
  store i32 %i.ch, ptr %i.i, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %bb.w, %bb.v, %bb.u
  %storemerge.i27 = phi i8 [ 1, %bb.w ], [ 0, %bb.u ], [ 0, %bb.v ] ; 2 uses
  %i.ci = phi i32 [ %i.ch, %bb.w ], [ %i.cc, %bb.u ], [ %i.cc, %bb.v ]
  store i8 %storemerge.i27, ptr %i.j, align 4
  switch i8 %i.cf, label %bb.x [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

bb.x:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 3 uses
  store ptr %i.cj, ptr %0, align 8
  %i.ck = icmp eq ptr %i.cj, %i.ca
  br i1 %i.ck, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %bb.u

_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit:    ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %bb.x, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  ret void

bb.y:                                             ; preds = %bb.q
  call void @_ZN6Assimp3ASE6Parser8LogErrorEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.130) #29
  unreachable

bb.z:                                             ; preds = %bb.q, %bb.q, %bb.q
  %i.cl = load i8, ptr %i.j, align 4, !range !32, !noundef !33
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = load i32, ptr %i.i, align 8
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.i, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.z, %bb.s, %bb.r, %bb.q, %bb.aa
  %storemerge = phi i8 [ 1, %bb.aa ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.z ]
  %.13336 = phi i32 [ %.0, %bb.aa ], [ %.0, %bb.q ], [ %i.bw, %bb.r ], [ %i.bx, %bb.s ], [ %.0, %bb.z ]
  store i8 %storemerge, ptr %i.j, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  store ptr %i.cp, ptr %0, align 8
  br label %bb.b, !llvm.loop !101
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser22ParseLV4MeshRealTripleEPfRj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  tail call void @_ZN6Assimp3ASE6Parser22ParseLV4MeshRealTripleEPf(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5errorIJRA35_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(35) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(35) %1) #27
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(35) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #27
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #28
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #27
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser22ParseLV4MeshRealTripleEPf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  %2 = ptrtoint ptr %i.e to i64
  %3 = ptrtoint ptr %i.d to i64
  %i.f = sub i64 %3, %2
  %scevgep.i.i.i = getelementptr i8, ptr %i.e, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i.i = phi ptr [ %i.e, %bb.a ], [ %i.h, %bb.d ] ; 4 uses
  %i.g = load i8, ptr %.0.i.i.i, align 1
  switch i8 %i.g, label %.critedge.i.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.d
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.b, !llvm.loop !34

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.b ], [ %scevgep.i.i.i, %bb.c ] ; 3 uses
  store ptr %.0.lcssa.i.i.i, ptr %0, align 8
  %i.i = load i8, ptr %.0.lcssa.i.i.i, align 1
  switch i8 %i.i, label %bb.e [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i:       ; preds = %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i, %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.j = load i32, ptr %i.c, align 8
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.j, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.l = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store float 0.000000e+00, ptr %1, align 4
  %i.m = load i32, ptr %i.c, align 8
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.c, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit

bb.e:                                             ; preds = %.critedge.i.i.i
  %i.o = tail call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %1, i1 noundef zeroext true) ; 2 uses
  store ptr %i.o, ptr %0, align 8
  br label %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit

_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit:  ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i, %bb.e
  %i.p = phi ptr [ %.pre, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i ], [ %i.o, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.r = load ptr, ptr %i.b, align 8              ; 2 uses
  %4 = ptrtoint ptr %i.p to i64
  %5 = ptrtoint ptr %i.r to i64
  %i.s = sub i64 %5, %4
  %scevgep.i.i.i.1 = getelementptr i8, ptr %i.p, i64 %i.s
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit
  %.0.i.i.i.1 = phi ptr [ %i.p, %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit ], [ %i.u, %bb.h ] ; 4 uses
  %i.t = load i8, ptr %.0.i.i.i.1, align 1
  switch i8 %i.t, label %.critedge.i.i.i.1 [
    i8 32, label %bb.g
    i8 9, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %.not.i.i.i.1 = icmp eq ptr %.0.i.i.i.1, %i.r
  br i1 %.not.i.i.i.1, label %.critedge.i.i.i.1, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i.1, i64 1
  br label %bb.f, !llvm.loop !34

.critedge.i.i.i.1:                                ; preds = %bb.g, %bb.f
  %.0.lcssa.i.i.i.1 = phi ptr [ %.0.i.i.i.1, %bb.f ], [ %scevgep.i.i.i.1, %bb.g ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.1, ptr %0, align 8
  %i.v = load i8, ptr %.0.lcssa.i.i.i.1, align 1
  switch i8 %i.v, label %bb.i [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.1
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.1
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.1
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.1
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.1:     ; preds = %.critedge.i.i.i.1, %.critedge.i.i.i.1, %.critedge.i.i.i.1, %.critedge.i.i.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.w = load i32, ptr %i.c, align 8
  %i.x = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.w, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.y = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store float 0.000000e+00, ptr %i.q, align 4
  %i.z = load i32, ptr %i.c, align 8
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.c, align 8
  %.pre6 = load ptr, ptr %0, align 8
  br label %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit.1

bb.i:                                             ; preds = %.critedge.i.i.i.1
  %i.ab = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i.1, ptr noundef nonnull align 4 dereferenceable(4) %i.q, i1 noundef zeroext true) ; 2 uses
  store ptr %i.ab, ptr %0, align 8
  br label %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit.1

_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit.1: ; preds = %bb.i, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.1
  %i.ac = phi ptr [ %i.ab, %bb.i ], [ %.pre6, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.1 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.b, align 8             ; 2 uses
  %6 = ptrtoint ptr %i.ac to i64
  %7 = ptrtoint ptr %i.ae to i64
  %i.af = sub i64 %7, %6
  %scevgep.i.i.i.2 = getelementptr i8, ptr %i.ac, i64 %i.af
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit.1
  %.0.i.i.i.2 = phi ptr [ %i.ac, %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit.1 ], [ %i.ah, %bb.l ] ; 4 uses
  %i.ag = load i8, ptr %.0.i.i.i.2, align 1
  switch i8 %i.ag, label %.critedge.i.i.i.2 [
    i8 32, label %bb.k
    i8 9, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %.not.i.i.i.2 = icmp eq ptr %.0.i.i.i.2, %i.ae
  br i1 %.not.i.i.i.2, label %.critedge.i.i.i.2, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.2, i64 1
  br label %bb.j, !llvm.loop !34

.critedge.i.i.i.2:                                ; preds = %bb.k, %bb.j
  %.0.lcssa.i.i.i.2 = phi ptr [ %.0.i.i.i.2, %bb.j ], [ %scevgep.i.i.i.2, %bb.k ] ; 3 uses
  store ptr %.0.lcssa.i.i.i.2, ptr %0, align 8
  %i.ai = load i8, ptr %.0.lcssa.i.i.i.2, align 1
  switch i8 %i.ai, label %bb.m [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.2
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.2
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.2
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.2
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.2:     ; preds = %.critedge.i.i.i.2, %.critedge.i.i.i.2, %.critedge.i.i.i.2, %.critedge.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.aj = load i32, ptr %i.c, align 8
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.aj, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.al = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.al, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store float 0.000000e+00, ptr %i.ad, align 4
  %i.am = load i32, ptr %i.c, align 8
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.c, align 8
  br label %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit.2

bb.m:                                             ; preds = %.critedge.i.i.i.2
  %i.ao = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i.i.2, ptr noundef nonnull align 4 dereferenceable(4) %i.ad, i1 noundef zeroext true)
  store ptr %i.ao, ptr %0, align 8
  br label %_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit.2

_ZN6Assimp3ASE6Parser16ParseLV4MeshRealERf.exit.2: ; preds = %bb.m, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.i.2
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser22ParseLV4MeshLongTripleEPj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr nofree noundef nonnull writeonly captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser27ParseLV3MeshVertexListBlockEjRNS0_4MeshE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(717) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %3 = alloca %class.aiVector3t, align 8          ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = zext i32 %1 to i64                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %2, align 8                ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 12                  ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.c
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = sub nuw nsw i64 %i.c, %i.j
  tail call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.l)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.j, %i.c
  br i1 %i.m, label %bb.d, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.c ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.n, ptr %i.d, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %.pre = load ptr, ptr %0, align 8
  br label %.outer

.outer:                                           ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.r = phi ptr [ %i.bh, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.pre, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ] ; 3 uses
  %.0.ph = phi i32 [ %.11215, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ 0, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit ] ; 5 uses
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = icmp eq i8 %i.s, 42
  br i1 %i.t, label %.lr.ph, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread

.lr.ph:                                           ; preds = %.outer, %bb.i
  %i.u = phi ptr [ %i.ah, %bb.i ], [ %i.r, %.outer ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 4 uses
  store ptr %i.v, ptr %0, align 8
  %i.w = call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.172, ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 11) #30
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.e, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  switch i8 %i.y, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.loopexit [
    i8 32, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
    i8 10, label %bb.f
    i8 0, label %bb.f
    i8 12, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %.not11.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 13
  %storemerge.i = select i1 %.not11.i, ptr %i.x, ptr %i.z
  store ptr %storemerge.i, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store <2 x float> zeroinitializer, ptr %3, align 8
  store float 0.000000e+00, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @_ZN6Assimp3ASE6Parser22ParseLV4MeshRealTripleEPf(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull %3)
  %i.aa = load i32, ptr %i.b, align 4             ; 2 uses
  %.not = icmp ult i32 %i.aa, %1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ab = load i32, ptr %i.p, align 8
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.ab, ptr noundef nonnull @.str.173) #27 ; 0 uses
  %i.ad = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ad, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ae = zext i32 %i.aa to i64
  %i.af = load ptr, ptr %2, align 8
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ah = load ptr, ptr %0, align 8               ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = icmp eq i8 %i.ai, 42
  br i1 %i.aj, label %.lr.ph, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.loopexit

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.loopexit: ; preds = %bb.e, %.lr.ph, %bb.i
  %i.ak = phi ptr [ %i.v, %bb.e ], [ %i.v, %.lr.ph ], [ %i.ah, %bb.i ] ; 2 uses
  %.pre22 = load i8, ptr %i.ak, align 1
  br label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread: ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.loopexit, %.outer
  %i.al = phi i8 [ %.pre22, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.loopexit ], [ %i.s, %.outer ]
  %i.am = phi ptr [ %i.ak, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.loopexit ], [ %i.r, %.outer ] ; 2 uses
  switch i8 %i.al, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 123, label %bb.j
    i8 125, label %bb.k
    i8 0, label %bb.q
    i8 13, label %bb.r
    i8 10, label %bb.r
    i8 12, label %bb.r
  ]

bb.j:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread
  %i.an = add nsw i32 %.0.ph, 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.k:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread
  %i.ao = add nsw i32 %.0.ph, -1                  ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN6Assimp3ASE6Parser24ParseLV3MeshWeightsBlockERNS0_4MeshE:bb.a
  %i.ao = phi i32 [ %.promoted24.i, %.lr.ph.i ], [ %i.au, %bb.s ] ; 3 uses
  %i.ap = phi i8 [ %.promoted23.i, %.lr.ph.i ], [ %storemerge.i21, %bb.s ]
  %i.aq = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.av, %bb.s ] ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  switch i8 %i.ar, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %bb.q
    i8 10, label %bb.q
    i8 0, label %bb.q
    i8 12, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p
  %i.as = trunc nuw i8 %i.ap to i1
  br i1 %i.as, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = add i32 %i.ao, 1                        ; 2 uses
  store i32 %i.at, ptr %i.d, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %bb.r, %bb.q, %bb.p
  %storemerge.i21 = phi i8 [ 1, %bb.r ], [ 0, %bb.p ], [ 0, %bb.q ] ; 2 uses
  %i.au = phi i32 [ %i.at, %bb.r ], [ %i.ao, %bb.p ], [ %i.ao, %bb.q ]
  store i8 %storemerge.i21, ptr %i.c, align 4
  switch i8 %i.ar, label %bb.s [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

bb.s:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 3 uses
  store ptr %i.av, ptr %0, align 8
  %i.aw = icmp eq ptr %i.av, %i.am
  br i1 %i.aw, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %bb.p

_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit:    ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %bb.s, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.t:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread
  tail call void @_ZN6Assimp3ASE6Parser8LogErrorEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.164) #29
  unreachable

bb.u:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread
  %i.ax = load i8, ptr %i.c, align 4, !range !32, !noundef !33
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.az = load i32, ptr %i.d, align 8
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.d, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.u, %bb.n, %bb.m, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread, %bb.v
  %storemerge = phi i8 [ 1, %bb.v ], [ 0, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.u ]
  %.12730 = phi i32 [ %.0.ph, %bb.v ], [ %.0.ph, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit20.thread ], [ %i.ah, %bb.m ], [ %i.ai, %bb.n ], [ %.0.ph, %bb.u ]
  store i8 %storemerge, ptr %i.c, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store ptr %i.bb, ptr %0, align 8
  br label %.outer, !llvm.loop !110
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser17ParseLV4MeshBonesEjRNS0_4MeshE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(717) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %3 = alloca %"struct.Assimp::ASE::Bone", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 656 ; 3 uses
  %i.c = zext i32 %1 to i64                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.d, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.d, ptr noundef nonnull align 1 dereferenceable(7) @.str.8, i64 7, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 23
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.g, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.g, ptr noundef nonnull align 1 dereferenceable(7) @.str.8, i64 7, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 7, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 23
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 664 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.l = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 5                   ; 3 uses
  %i.q = icmp ult i64 %i.p, %i.c
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = sub nuw nsw i64 %i.c, %i.p
  invoke void @_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.k, i64 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE6resizeEmRKS2_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ugt i64 %i.p, %i.c
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE6resizeEmRKS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.c ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE6resizeEmRKS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyIN6Assimp3ASE4BoneEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN6Assimp3ASE4BoneEEvPT_.exit.i.i.i.i ], [ %i.t, %bb.d ] ; 3 uses
  %i.u = load ptr, ptr %.05.i.i.i.i, align 8      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZSt8_DestroyIN6Assimp3ASE4BoneEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #28
  br label %_ZSt8_DestroyIN6Assimp3ASE4BoneEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6Assimp3ASE4BoneEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3ASE4BoneES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !111

_ZSt8_DestroyIPN6Assimp3ASE4BoneES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3ASE4BoneEEvPT_.exit.i.i.i.i
  store ptr %i.t, ptr %i.j, align 8
  br label %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE6resizeEmRKS2_.exit

_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE6resizeEmRKS2_.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3ASE4BoneES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d, %bb.c, %bb.b
  %i.aa = load ptr, ptr %3, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.g
  br i1 %i.ab, label %_ZN6Assimp3ASE4BoneD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE6resizeEmRKS2_.exit
  %i.ac = load i64, ptr %i.g, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #28
  br label %_ZN6Assimp3ASE4BoneD2Ev.exit

_ZN6Assimp3ASE4BoneD2Ev.exit:                     ; preds = %_ZNSt6vectorIN6Assimp3ASE4BoneESaIS2_EE6resizeEmRKS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ae = load ptr, ptr %4, align 8               ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.d
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp3ASE4BoneD2Ev.exit
  %i.ag = load i64, ptr %i.d, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp3ASE4BoneD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 6 uses
  %.pre = load ptr, ptr %0, align 8
  br label %.outer

.outer:                                           ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = phi ptr [ %i.dh, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.0.ph = phi i32 [ %.14245, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.am = load i8, ptr %i.al, align 1             ; 2 uses
  %i.an = icmp eq i8 %i.am, 42
  br i1 %i.an, label %.lr.ph, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit

.lr.ph:                                           ; preds = %.outer, %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  %i.ao = phi ptr [ %i.ci, %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit ], [ %i.al, %.outer ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 4 uses
  store ptr %i.ap, ptr %0, align 8
  %i.aq = call i32 @strncmp(ptr noundef nonnull dereferenceable(15) @.str.165, ptr noundef nonnull dereferenceable(1) %i.ap, i64 noundef 14) #30
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %bb.e, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 15 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  switch i8 %i.as, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit [
    i8 32, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
    i8 10, label %bb.f
    i8 0, label %bb.f
    i8 12, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %.not11.i = icmp eq i8 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %storemerge.i = select i1 %.not11.i, ptr %i.ar, ptr %i.at ; 4 uses
  store ptr %storemerge.i, ptr %0, align 8
  %i.au = load ptr, ptr %i.ai, align 8            ; 2 uses
  %5 = ptrtoint ptr %storemerge.i to i64
  %6 = ptrtoint ptr %i.au to i64
  %i.av = sub i64 %6, %5
  %scevgep.i.i = getelementptr i8, ptr %storemerge.i, i64 %i.av
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.0.i.i = phi ptr [ %storemerge.i, %bb.f ], [ %i.ax, %bb.i ] ; 4 uses
  %i.aw = load i8, ptr %.0.i.i, align 1
  switch i8 %i.aw, label %.critedge.i.i [
    i8 32, label %bb.h
    i8 9, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %.not.i.i21 = icmp eq ptr %.0.i.i, %i.au
  br i1 %.not.i.i21, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.g, !llvm.loop !34

.critedge.i.i:                                    ; preds = %bb.h, %bb.g
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.g ], [ %scevgep.i.i, %bb.h ] ; 8 uses
  store ptr %.0.lcssa.i.i, ptr %0, align 8
  %i.ay = load i8, ptr %.0.lcssa.i.i, align 1     ; 3 uses
  switch i8 %i.ay, label %bb.j [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit
  ]

bb.j:                                             ; preds = %.critedge.i.i
  %i.az = add i8 %i.ay, -58
  %or.cond11.i = icmp ult i8 %i.az, -10
  br i1 %or.cond11.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %i.ba = phi i8 [ %i.bf, %.lr.ph.i ], [ %i.ay, %bb.j ]
  %.013.i = phi i32 [ %i.bd, %.lr.ph.i ], [ 0, %bb.j ]
  %.0812.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.0.lcssa.i.i, %bb.j ]
  %i.bb = mul i32 %.013.i, 10
  %narrow.i = add nsw i8 %i.ba, -48
  %i.bc = zext nneg i8 %narrow.i to i32
  %i.bd = add i32 %i.bb, %i.bc                    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1 ; 3 uses
  %i.bf = load i8, ptr %i.be, align 1             ; 2 uses
  %i.bg = add i8 %i.bf, -58
  %or.cond.i = icmp ult i8 %i.bg, -10
  br i1 %or.cond.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i, !llvm.loop !35

_ZN6Assimp9strtoul10EPKcPS1_.exit:                ; preds = %.lr.ph.i, %bb.j
  %.08.lcssa.i = phi ptr [ %.0.lcssa.i.i, %bb.j ], [ %i.be, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.bd, %.lr.ph.i ] ; 2 uses
  store ptr %.08.lcssa.i, ptr %0, align 8
  %.not = icmp ult i32 %.0.lcssa.i, %1
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.bh = load i32, ptr %i.aj, align 8
  %i.bi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.bh, ptr noundef nonnull @.str.166) #27 ; 0 uses
  %i.bj = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bj, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.pre59 = load ptr, ptr %0, align 8
  br label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, !llvm.loop !112

bb.l:                                             ; preds = %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %3, align 8               ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.g
  br i1 %i.bm, label %_ZN6Assimp3ASE4BoneD2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %bb.l
  %i.bn = load i64, ptr %i.g, align 8
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #28
  br label %_ZN6Assimp3ASE4BoneD2Ev.exit25

_ZN6Assimp3ASE4BoneD2Ev.exit25:                   ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23
  %i.bp = load ptr, ptr %4, align 8               ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.d
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZN6Assimp3ASE4BoneD2Ev.exit25
  %i.br = load i64, ptr %i.d, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZN6Assimp3ASE4BoneD2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.bk

bb.m:                                             ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit
  %i.bt = zext i32 %.0.lcssa.i to i64
  %i.bu = load ptr, ptr %i.b, align 8
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = call noundef zeroext i1 @_ZN6Assimp3ASE6Parser11ParseStringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull @.str.167)
  %.pre60 = load ptr, ptr %0, align 8             ; 4 uses
  br i1 %i.bw, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %bb.n, !llvm.loop !112

bb.n:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.by = icmp eq ptr %.pre60, %i.bx
  br i1 %i.by, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %.lr.ph.i29, !llvm.loop !112

.lr.ph.i29:                                       ; preds = %bb.n
  %.promoted23.i = load i8, ptr %i.ak, align 4
  %.promoted24.i = load i32, ptr %i.aj, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.lr.ph.i29
  %i.bz = phi i32 [ %.promoted24.i, %.lr.ph.i29 ], [ %i.cf, %bb.r ] ; 3 uses
  %i.ca = phi i8 [ %.promoted23.i, %.lr.ph.i29 ], [ %storemerge.i30, %bb.r ]
  %i.cb = phi ptr [ %.pre60, %.lr.ph.i29 ], [ %i.cg, %bb.r ] ; 6 uses
  %i.cc = load i8, ptr %i.cb, align 1             ; 2 uses
  switch i8 %i.cc, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %bb.p
    i8 10, label %bb.p
    i8 0, label %bb.p
    i8 12, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o
  %i.cd = trunc nuw i8 %i.ca to i1
  br i1 %i.cd, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = add i32 %i.bz, 1                        ; 2 uses
  store i32 %i.ce, ptr %i.aj, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %bb.q, %bb.p, %bb.o
  %storemerge.i30 = phi i8 [ 1, %bb.q ], [ 0, %bb.o ], [ 0, %bb.p ] ; 2 uses
  %i.cf = phi i32 [ %i.ce, %bb.q ], [ %i.bz, %bb.o ], [ %i.bz, %bb.p ]
  store i8 %storemerge.i30, ptr %i.ak, align 4
  switch i8 %i.cc, label %bb.r [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ], !llvm.loop !112

bb.r:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 1 ; 4 uses
  store ptr %i.cg, ptr %0, align 8
  %i.ch = icmp eq ptr %i.cg, %i.bx
  br i1 %i.ch, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %bb.o, !llvm.loop !112

_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit:    ; preds = %bb.r, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %bb.n, %bb.m, %bb.k
  %i.ci = phi ptr [ %.pre59, %bb.k ], [ %.pre60, %bb.n ], [ %.pre60, %bb.m ], [ %i.cg, %bb.r ], [ %i.cb, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %i.cb, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %i.cb, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ], [ %i.cb, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i ] ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = icmp eq i8 %i.cj, 42
  br i1 %i.ck, label %.lr.ph, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit: ; preds = %bb.e, %.lr.ph, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  %i.cl = phi ptr [ %i.ap, %bb.e ], [ %i.ap, %.lr.ph ], [ %.0.lcssa.i.i, %.critedge.i.i ], [ %.0.lcssa.i.i, %.critedge.i.i ], [ %.0.lcssa.i.i, %.critedge.i.i ], [ %.0.lcssa.i.i, %.critedge.i.i ], [ %i.ci, %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit ] ; 2 uses
  %.pre61 = load i8, ptr %i.cl, align 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit, %.outer
  %i.cm = phi i8 [ %.pre61, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit ], [ %i.am, %.outer ]
  %i.cn = phi ptr [ %i.cl, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit ], [ %i.al, %.outer ] ; 2 uses
  switch i8 %i.cm, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 123, label %bb.s
    i8 125, label %bb.t
    i8 0, label %bb.z
    i8 13, label %bb.aa
    i8 10, label %bb.aa
    i8 12, label %bb.aa
  ]

bb.s:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %i.co = add nsw i32 %.0.ph, 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.t:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %i.cp = add nsw i32 %.0.ph, -1                  ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.u, label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 3 uses
  store ptr %i.cr, ptr %0, align 8
  %i.cs = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit39, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.u
  %.promoted23.i33 = load i8, ptr %i.ak, align 4
  %.promoted24.i34 = load i32, ptr %i.aj, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.lr.ph.i32
  %i.cu = phi i32 [ %.promoted24.i34, %.lr.ph.i32 ], [ %i.da, %bb.y ] ; 3 uses
  %i.cv = phi i8 [ %.promoted23.i33, %.lr.ph.i32 ], [ %storemerge.i36, %bb.y ]
  %i.cw = phi ptr [ %i.cr, %.lr.ph.i32 ], [ %i.db, %bb.y ] ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6Assimp3ASE6Parser17ParseLV4MeshBonesEjRNS0_4MeshE:bb.a
_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit39:  ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i35, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i35, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i35, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i35, %bb.y, %bb.u
  ret void

bb.z:                                             ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  call void @_ZN6Assimp3ASE6Parser8LogErrorEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.168) #29
  unreachable

bb.aa:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %i.dd = load i8, ptr %i.ak, align 4, !range !32, !noundef !33
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %_ZN6Assimp9IsLineEndIcEEbT_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.df = load i32, ptr %i.aj, align 8
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.aj, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.aa, %bb.t, %bb.s, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, %bb.ab
  %storemerge = phi i8 [ 1, %bb.ab ], [ 0, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.aa ]
  %.14245 = phi i32 [ %.0.ph, %bb.ab ], [ %.0.ph, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit ], [ %i.co, %bb.s ], [ %i.cp, %bb.t ], [ %.0.ph, %bb.aa ]
  store i8 %storemerge, ptr %i.ak, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 2 uses
  store ptr %i.dh, ptr %0, align 8
  br label %.outer, !llvm.loop !112
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser25ParseLV4MeshBonesVerticesEjRNS0_4MeshE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(717) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = alloca [3 x float], align 4              ; 3 uses
  %3 = alloca %"struct.std::pair", align 8        ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 632 ; 6 uses
  %i.d = zext i32 %1 to i64                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 640 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 3 uses
  %i.l = icmp ult i64 %i.k, %i.d
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw nsw i64 %i.d, %i.k
  tail call void @_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.m)
  br label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, %i.d
  br i1 %i.n, label %bb.d, label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.d ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, %i.o
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyIN6Assimp3ASE10BoneVertexEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN6Assimp3ASE10BoneVertexEEvPT_.exit.i.i.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3ASE10BoneVertexEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #28
  br label %_ZSt8_DestroyIN6Assimp3ASE10BoneVertexEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6Assimp3ASE10BoneVertexEEvPT_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp3ASE10BoneVertexES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !113

_ZSt8_DestroyIPN6Assimp3ASE10BoneVertexES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3ASE10BoneVertexEEvPT_.exit.i.i.i.i
  store ptr %i.o, ptr %i.e, align 8
  br label %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN6Assimp3ASE10BoneVertexES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %.pre = load ptr, ptr %0, align 8
  br label %.outer

.outer:                                           ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE6resizeEm.exit
  %i.aa = phi ptr [ %i.ev, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.pre, %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE6resizeEm.exit ] ; 3 uses
  %.010.ph = phi i32 [ %.13740, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ 0, %_ZNSt6vectorIN6Assimp3ASE10BoneVertexESaIS2_EE6resizeEm.exit ] ; 5 uses
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 42
  br i1 %i.ac, label %.lr.ph, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread

.lr.ph:                                           ; preds = %.outer, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %i.ad = phi ptr [ %i.dw, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit ], [ %i.aa, %.outer ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 4 uses
  store ptr %i.ae, ptr %0, align 8
  %i.af = call i32 @strncmp(ptr noundef nonnull dereferenceable(17) @.str.169, ptr noundef nonnull dereferenceable(1) %i.ae, i64 noundef 16) #30
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %bb.f, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 17 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  switch i8 %i.ah, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.loopexit [
    i8 32, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 10, label %bb.g
    i8 0, label %bb.g
    i8 12, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %.not11.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 18
  %storemerge.i = select i1 %.not11.i, ptr %i.ag, ptr %i.ai ; 4 uses
  store ptr %storemerge.i, ptr %0, align 8
  %i.aj = load i8, ptr %storemerge.i, align 1     ; 2 uses
  %i.ak = add i8 %i.aj, -58
  %or.cond11.i = icmp ult i8 %i.ak, -10
  br i1 %or.cond11.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.al = phi i8 [ %i.aq, %.lr.ph.i ], [ %i.aj, %bb.g ]
  %.013.i = phi i32 [ %i.ao, %.lr.ph.i ], [ 0, %bb.g ]
  %.0812.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %storemerge.i, %bb.g ]
  %i.am = mul i32 %.013.i, 10
  %narrow.i = add nsw i8 %i.al, -48
  %i.an = zext nneg i8 %narrow.i to i32
  %i.ao = add i32 %i.am, %i.an                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1             ; 2 uses
  %i.ar = add i8 %i.aq, -58
  %or.cond.i = icmp ult i8 %i.ar, -10
  br i1 %or.cond.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !35

_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit:       ; preds = %.lr.ph.i
  %i.as = zext i32 %i.ao to i64
  br label %_ZN6Assimp9strtoul10EPKcPS1_.exit

_ZN6Assimp9strtoul10EPKcPS1_.exit:                ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit, %bb.g
  %.08.lcssa.i = phi ptr [ %storemerge.i, %bb.g ], [ %i.ap, %_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit ]
  %.0.lcssa.i = phi i64 [ 0, %bb.g ], [ %i.as, %_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit ] ; 2 uses
  store ptr %.08.lcssa.i, ptr %0, align 8
  %i.at = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.au = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit
  %i.aw = call noundef zeroext i1 @_ZN6Assimp3ASE6Parser11SkipSectionEv(ptr noundef nonnull align 8 dereferenceable(188) %0) ; 0 uses
  %.pre57 = load ptr, ptr %i.e, align 8
  %.pre58 = load ptr, ptr %i.c, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6Assimp9strtoul10EPKcPS1_.exit
  %i.ax = phi ptr [ %.pre58, %bb.h ], [ %i.at, %_ZN6Assimp9strtoul10EPKcPS1_.exit ]
  %i.ay = phi ptr [ %.pre57, %bb.h ], [ %i.au, %_ZN6Assimp9strtoul10EPKcPS1_.exit ]
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 24
  %.not = icmp ugt i64 %i.bc, %.0.lcssa.i
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.bd = load i32, ptr %i.w, align 8
  %i.be = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.bd, ptr noundef nonnull @.str.170) #27 ; 0 uses
  %i.bf = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bf, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.bg = load ptr, ptr %i.e, align 8
  %i.bh = load ptr, ptr %i.c, align 8
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = sdiv exact i64 %i.bk, 24
  %i.bm = add nsw i64 %i.bl, 4294967295
  %.pre60 = and i64 %i.bm, 4294967295
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi = phi i64 [ %.pre60, %bb.j ], [ %.0.lcssa.i, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @_ZN6Assimp3ASE6Parser22ParseLV4MeshRealTripleEPf(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 0, ptr %3, align 8
  store float 0.000000e+00, ptr %i.x, align 4
  br label %_ZNSt6vectorISt4pairIifESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorISt4pairIifESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorISt4pairIifESaIS1_EE9push_backERKS1_.exit.backedge, %bb.k
  %i.bn = load ptr, ptr %i.y, align 8             ; 3 uses
  %i.bo = load ptr, ptr %0, align 8               ; 3 uses
  %4 = ptrtoint ptr %i.bo to i64
  %5 = ptrtoint ptr %i.bn to i64                  ; 2 uses
  %i.bp = sub i64 %5, %4
  %scevgep.i.i = getelementptr i8, ptr %i.bo, i64 %i.bp
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %_ZNSt6vectorISt4pairIifESaIS1_EE9push_backERKS1_.exit
  %.0.i.i = phi ptr [ %i.bo, %_ZNSt6vectorISt4pairIifESaIS1_EE9push_backERKS1_.exit ], [ %i.br, %bb.n ] ; 4 uses
  %i.bq = load i8, ptr %.0.i.i, align 1
  switch i8 %i.bq, label %.critedge.i.i [
    i8 32, label %bb.m
    i8 9, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %.not.i.i15 = icmp eq ptr %.0.i.i, %i.bn
  br i1 %.not.i.i15, label %.critedge.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.l, !llvm.loop !34

.critedge.i.i:                                    ; preds = %bb.m, %bb.l
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.l ], [ %scevgep.i.i, %bb.m ] ; 8 uses
  store ptr %.0.lcssa.i.i, ptr %0, align 8
  %i.bs = load i8, ptr %.0.lcssa.i.i, align 1     ; 3 uses
  switch i8 %i.bs, label %bb.o [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

bb.o:                                             ; preds = %.critedge.i.i
  %i.bt = add i8 %i.bs, -58
  %or.cond11.i16 = icmp ult i8 %i.bt, -10
  br i1 %or.cond11.i16, label %_ZN6Assimp9strtoul10EPKcPS1_.exit25, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.o, %.lr.ph.i17
  %i.bu = phi i8 [ %i.bz, %.lr.ph.i17 ], [ %i.bs, %bb.o ]
  %.013.i18 = phi i32 [ %i.bx, %.lr.ph.i17 ], [ 0, %bb.o ]
  %.0812.i19 = phi ptr [ %i.by, %.lr.ph.i17 ], [ %.0.lcssa.i.i, %bb.o ]
  %i.bv = mul i32 %.013.i18, 10
  %narrow.i20 = add nsw i8 %i.bu, -48
  %i.bw = zext nneg i8 %narrow.i20 to i32
  %i.bx = add i32 %i.bv, %i.bw                    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0812.i19, i64 1 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1             ; 2 uses
  %i.ca = add i8 %i.bz, -58
  %or.cond.i21 = icmp ult i8 %i.ca, -10
  br i1 %or.cond.i21, label %_ZN6Assimp9strtoul10EPKcPS1_.exit25, label %.lr.ph.i17, !llvm.loop !35

_ZN6Assimp9strtoul10EPKcPS1_.exit25:              ; preds = %.lr.ph.i17, %bb.o
  %.08.lcssa.i22 = phi ptr [ %.0.lcssa.i.i, %bb.o ], [ %i.by, %.lr.ph.i17 ] ; 4 uses
  %.0.lcssa.i23 = phi i32 [ 0, %bb.o ], [ %i.bx, %.lr.ph.i17 ]
  store ptr %.08.lcssa.i22, ptr %0, align 8
  store i32 %.0.lcssa.i23, ptr %3, align 8
  %6 = ptrtoint ptr %.08.lcssa.i22 to i64
  %i.cb = sub i64 %5, %6
  %scevgep.i.i26 = getelementptr i8, ptr %.08.lcssa.i22, i64 %i.cb
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %_ZN6Assimp9strtoul10EPKcPS1_.exit25
  %.0.i.i27 = phi ptr [ %.08.lcssa.i22, %_ZN6Assimp9strtoul10EPKcPS1_.exit25 ], [ %i.cd, %bb.r ] ; 4 uses
  %i.cc = load i8, ptr %.0.i.i27, align 1
  switch i8 %i.cc, label %.critedge.i.i29 [
    i8 32, label %bb.q
    i8 9, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %.not.i.i28 = icmp eq ptr %.0.i.i27, %i.bn
  br i1 %.not.i.i28, label %.critedge.i.i29, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i27, i64 1
  br label %bb.p, !llvm.loop !34

.critedge.i.i29:                                  ; preds = %bb.q, %bb.p
  %.0.lcssa.i.i30 = phi ptr [ %.0.i.i27, %bb.p ], [ %scevgep.i.i26, %bb.q ] ; 7 uses
  store ptr %.0.lcssa.i.i30, ptr %0, align 8
  %i.ce = load i8, ptr %.0.lcssa.i.i30, align 1
  switch i8 %i.ce, label %bb.s [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

bb.s:                                             ; preds = %.critedge.i.i29
  %i.cf = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i30, ptr noundef nonnull align 4 dereferenceable(4) %i.x, i1 noundef zeroext true)
  store ptr %i.cf, ptr %0, align 8
  %i.cg = load i32, ptr %3, align 8
  %.not13 = icmp eq i32 %i.cg, -1
  br i1 %.not13, label %_ZNSt6vectorISt4pairIifESaIS1_EE9push_backERKS1_.exit.backedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = load ptr, ptr %i.c, align 8
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.ch, i64 %.pre-phi ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8            ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8
  %.not.i32 = icmp eq ptr %i.ck, %i.cm
  br i1 %.not.i32, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = load i64, ptr %3, align 8
  store i64 %i.cn, ptr %i.ck, align 4
  %i.co = load ptr, ptr %i.cj, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cp, ptr %i.cj, align 8
  br label %_ZNSt6vectorISt4pairIifESaIS1_EE9push_backERKS1_.exit.backedge

bb.v:                                             ; preds = %bb.t
  %i.cq = load ptr, ptr %i.ci, align 8            ; 7 uses
  %i.cr = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 3 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 4 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %bb.w, label %_ZNKSt6vectorISt4pairIifESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #29
  unreachable

_ZNKSt6vectorISt4pairIifESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.cv = ashr exact i64 %i.ct, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = call i64 @llvm.umin.i64(i64 %i.cw, i64 1152921504606846975)
  %i.cz = select i1 %i.cx, i64 1152921504606846975, i64 %i.cy ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cz, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #32 ; 8 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ct
  %i.dd = load i64, ptr %3, align 8
  store i64 %i.dd, ptr %i.dc, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.cq, %i.ck
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt4pairIifESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.de = ptrtoaddr ptr %i.db to i64
  %i.df = sub i64 %i.cr, %i.cs
  %i.dg = add i64 %i.df, -8                       ; 2 uses
  %i.dh = lshr i64 %i.dg, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dg, 24
  %i.dj = sub i64 %i.cs, %i.de
  %diff.check = icmp ugt i64 %i.dj, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader95, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.di, 4611686018427387900     ; 3 uses
  %i.dk = shl i64 %n.vec, 3                       ; 2 uses
  %i.dl = getelementptr i8, ptr %i.db, i64 %i.dk  ; 2 uses
  %i.dm = getelementptr i8, ptr %i.cq, i64 %i.dk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.db, i64 %i.dn ; 2 uses
  %next.gep92 = getelementptr i8, ptr %i.cq, i64 %i.dn ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.do = getelementptr i8, ptr %next.gep92, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep92, align 4, !alias.scope !117, !noalias !114
  %wide.load93 = load <2 x i64>, ptr %i.do, align 4, !alias.scope !117, !noalias !114
  %i.dp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !114, !noalias !117
  store <2 x i64> %wide.load93, ptr %i.dp, align 4, !alias.scope !114, !noalias !117
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader95

.lr.ph.i.i.i.i.i.preheader95:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dl, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader95, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader95 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader95 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.dr = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !117, !noalias !114
  store i64 %i.dr, ptr %.012.i.i.i.i.i, align 4, !alias.scope !114, !noalias !117
  %i.ds = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ds, %i.ck
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !120

_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt4pairIifESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.db, %_ZNKSt6vectorISt4pairIifESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dl, %middle.block ], [ %i.dt, %.lr.ph.i.i.i.i.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt4pairIifESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.ct) #28
  br label %_ZNSt6vectorISt4pairIifESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIifESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorISt4pairIifESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.db, ptr %i.ci, align 8
  store ptr %i.du, ptr %i.cj, align 8
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cz
  store ptr %i.dv, ptr %i.cl, align 8
  br label %_ZNSt6vectorISt4pairIifESaIS1_EE9push_backERKS1_.exit.backedge

_ZNSt6vectorISt4pairIifESaIS1_EE9push_backERKS1_.exit.backedge: ; preds = %_ZNSt6vectorISt4pairIifESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.u, %bb.s
  br label %_ZNSt6vectorISt4pairIifESaIS1_EE9push_backERKS1_.exit, !llvm.loop !121

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %.critedge.i.i29, %.critedge.i.i29, %.critedge.i.i29, %.critedge.i.i29, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i
  %i.dw = phi ptr [ %.0.lcssa.i.i30, %.critedge.i.i29 ], [ %.0.lcssa.i.i30, %.critedge.i.i29 ], [ %.0.lcssa.i.i30, %.critedge.i.i29 ], [ %.0.lcssa.i.i30, %.critedge.i.i29 ], [ %.0.lcssa.i.i, %.critedge.i.i ], [ %.0.lcssa.i.i, %.critedge.i.i ], [ %.0.lcssa.i.i, %.critedge.i.i ], [ %.0.lcssa.i.i, %.critedge.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = icmp eq i8 %i.dx, 42
  br i1 %i.dy, label %.lr.ph, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.loopexit

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.loopexit: ; preds = %bb.f, %.lr.ph, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %i.dz = phi ptr [ %i.ae, %bb.f ], [ %i.ae, %.lr.ph ], [ %i.dw, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit ] ; 2 uses
  %.pre59 = load i8, ptr %i.dz, align 1
  br label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread: ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.loopexit, %.outer
  %i.ea = phi i8 [ %.pre59, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.loopexit ], [ %i.ab, %.outer ]
  %i.eb = phi ptr [ %i.dz, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.loopexit ], [ %i.aa, %.outer ] ; 2 uses
  switch i8 %i.ea, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 123, label %bb.y
    i8 125, label %bb.z
    i8 0, label %bb.af
    i8 13, label %bb.ag
    i8 10, label %bb.ag
    i8 12, label %bb.ag
  ]

bb.y:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread
  %i.ec = add nsw i32 %.010.ph, 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.z:                                             ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread
  %i.ed = add nsw i32 %.010.ph, -1                ; 2 uses
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.aa, label %_ZN6Assimp9IsLineEndIcEEbT_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 1 ; 3 uses
  store ptr %i.ef, ptr %0, align 8
  %i.eg = load ptr, ptr %i.y, align 8             ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b:bb.a
  %i.o = tail call i32 @strncasecmp(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.221, i64 noundef 5) #30
  %i.p = icmp eq i32 %i.o, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %spec.select = select i1 %i.p, ptr %i.q, ptr %i.m
  br label %bb.ab

bb.j:                                             ; preds = %bb.c
  %i.r = add i8 %i.f, -48
  %or.cond44 = icmp ult i8 %i.r, 10
  br i1 %or.cond44, label %._crit_edge, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.j
  %i.s = icmp eq i8 %i.f, 46
  %i.t = icmp eq i8 %i.f, 44
  %or.cond45 = and i1 %2, %i.t
  %or.cond = or i1 %i.s, %or.cond45
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %i.w = add i8 %i.v, -48
  %or.cond46 = icmp ult i8 %i.w, 10
  br i1 %or.cond46, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.x = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #30
  %i.z = trunc i64 %i.y to i32
  invoke void @_Z18ai_str_toprintableB5cxx11PKcic(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.g, i32 noundef %i.z, i8 noundef signext 63)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN17DeadlyImportErrorC2IJRA22_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA82_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 1 dereferenceable(22) @.str.222, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(82) @.str.223)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ac unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %.026 = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ac = load ptr, ptr %3, align 8               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.026, label %bb.p, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.026, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn57 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.x) #27
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn56 = phi { ptr, i32 } [ %.pn57, %bb.p ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn56

._crit_edge:                                      ; preds = %bb.j, %bb.k
  %.not = icmp eq i8 %i.f, 46
  %.not43 = icmp eq i8 %i.f, 44
  %or.cond47 = and i1 %2, %.not43
  %or.cond51 = or i1 %.not, %or.cond47
  br i1 %or.cond51, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  %i.ah = call noundef i64 @_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef null)
  %i.ai = uitofp i64 %i.ah to float
  %.pre59 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.pre60 = load i8, ptr %.pre59, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %i.aj = phi i8 [ %.pre60, %bb.r ], [ %i.f, %._crit_edge ] ; 2 uses
  %i.ak = phi ptr [ %.pre59, %bb.r ], [ %i.g, %._crit_edge ] ; 3 uses
  %.025 = phi float [ %i.ai, %bb.r ], [ 0.000000e+00, %._crit_edge ] ; 4 uses
  %i.al = icmp eq i8 %i.aj, 46                    ; 2 uses
  %i.am = icmp eq i8 %i.aj, 44
  %or.cond48 = and i1 %2, %i.am
  %or.cond52 = or i1 %i.al, %or.cond48
  br i1 %or.cond52, label %bb.t, label %.thread58

bb.t:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 5 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = add i8 %i.ao, -48
  %or.cond49 = icmp ult i8 %i.ap, 10
  br i1 %or.cond49, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.an, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 15, ptr %i.b, align 4
  %i.aq = call noundef i64 @_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj(ptr noundef nonnull %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.ar = uitofp i64 %i.aq to double
  %i.as = load i32, ptr %i.b, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @_ZN6AssimpL15fast_atof_tableE, i64 %i.at
  %i.av = load double, ptr %i.au, align 8
  %i.aw = fmul double %i.av, %i.ar
  %i.ax = fptrunc double %i.aw to float
  %i.ay = fadd float %.025, %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %.pre61 = load ptr, ptr %i.a, align 8
  br label %.thread58

bb.v:                                             ; preds = %bb.t
  br i1 %i.al, label %bb.w, label %.thread58

bb.w:                                             ; preds = %bb.v
  store ptr %i.an, ptr %i.a, align 8
  br label %.thread58

.thread58:                                        ; preds = %bb.s, %bb.v, %bb.w, %bb.u
  %i.az = phi ptr [ %.pre61, %bb.u ], [ %i.an, %bb.w ], [ %i.ak, %bb.v ], [ %i.ak, %bb.s ] ; 4 uses
  %.1 = phi float [ %i.ay, %bb.u ], [ %.025, %bb.w ], [ %.025, %bb.v ], [ %.025, %bb.s ] ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1
  switch i8 %i.ba, label %bb.aa [
    i8 101, label %bb.x
    i8 69, label %bb.x
  ]

bb.x:                                             ; preds = %.thread58, %.thread58
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 3 uses
  store ptr %i.bb, ptr %i.a, align 8
  %i.bc = load i8, ptr %i.bb, align 1             ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 45
  switch i8 %i.bc, label %bb.z [
    i8 45, label %bb.y
    i8 43, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 2 ; 2 uses
  store ptr %i.be, ptr %i.a, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.bf = phi ptr [ %i.bb, %bb.x ], [ %i.be, %bb.y ]
  %i.bg = call noundef i64 @_ZN6Assimp12strtoul10_64I17DeadlyImportErrorEEmPKcPS3_Pj(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, ptr noundef null)
  %i.bh = uitofp i64 %i.bg to float               ; 2 uses
  %i.bi = fneg float %i.bh
  %.0 = select i1 %i.bd, float %i.bi, float %i.bh
  %i.bj = call noundef float @powf(float noundef 1.000000e+01, float noundef %.0) #27
  %i.bk = fmul float %.1, %i.bj
  %.pre62 = load ptr, ptr %i.a, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %.thread58, %bb.z
  %i.bl = phi ptr [ %.pre62, %bb.z ], [ %i.az, %.thread58 ]
  %.2 = phi float [ %i.bk, %bb.z ], [ %.1, %.thread58 ] ; 2 uses
  %i.bm = fneg float %.2
  %.3 = select i1 %i.d, float %i.bm, float %.2
  store float %.3, ptr %1, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.i, %bb.h, %bb.aa, %bb.e
  %.024 = phi ptr [ %i.j, %bb.e ], [ %i.bl, %bb.aa ], [ %i.m, %bb.h ], [ %spec.select, %bb.i ]
  ret ptr %.024

bb.ac:                                            ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser16ParseLV4MeshFaceERNS0_4FaceE(ptr nofree noundef nonnull align 8 dereferenceable(188) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(132) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [2048 x i8], align 16             ; 4 uses
  %i.d = alloca [2048 x i8], align 16             ; 4 uses
  %i.e = alloca [2048 x i8], align 16             ; 4 uses
  %i.f = alloca [2048 x i8], align 16             ; 4 uses
  %i.g = alloca [2048 x i8], align 16             ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %0, align 8                ; 3 uses
  %7 = ptrtoint ptr %i.j to i64
  %8 = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %8, %7
  %scevgep.i.i = getelementptr i8, ptr %i.j, i64 %i.k
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i = phi ptr [ %i.j, %bb.a ], [ %i.m, %bb.d ] ; 4 uses
  %i.l = load i8, ptr %.0.i.i, align 1
  switch i8 %i.l, label %.critedge.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i = icmp eq ptr %.0.i.i, %i.i
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.b, !llvm.loop !34

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.b ], [ %scevgep.i.i, %bb.c ] ; 4 uses
  store ptr %.0.lcssa.i.i, ptr %0, align 8
  %i.n = load i8, ptr %.0.lcssa.i.i, align 1      ; 3 uses
  switch i8 %i.n, label %bb.i [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.p, ptr noundef nonnull @.str.195) #27 ; 0 uses
  %i.r = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull align 1 dereferenceable(2048) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %i.s = load ptr, ptr %i.h, align 8              ; 2 uses
  %.promoted.i = load ptr, ptr %0, align 8        ; 2 uses
  %i.t = icmp eq ptr %.promoted.i, %i.s
  br i1 %i.t, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %.promoted23.i = load i8, ptr %i.u, align 4
  %.promoted24.i = load i32, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %i.v = phi i32 [ %.promoted24.i, %.lr.ph.i ], [ %i.ab, %bb.h ] ; 3 uses
  %i.w = phi i8 [ %.promoted23.i, %.lr.ph.i ], [ %storemerge.i, %bb.h ]
  %i.x = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.ac, %bb.h ] ; 2 uses
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  switch i8 %i.y, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i [
    i8 13, label %bb.f
    i8 10, label %bb.f
    i8 0, label %bb.f
    i8 12, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.z = trunc nuw i8 %i.w to i1
  br i1 %i.z, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add i32 %i.v, 1                         ; 2 uses
  store i32 %i.aa, ptr %i.o, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i

_ZN6Assimp9IsLineEndIcEEbT_.exit.i:               ; preds = %bb.g, %bb.f, %bb.e
  %storemerge.i = phi i8 [ 1, %bb.g ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %i.ab = phi i32 [ %i.aa, %bb.g ], [ %i.v, %bb.e ], [ %i.v, %bb.f ]
  store i8 %storemerge.i, ptr %i.u, align 4
  switch i8 %i.y, label %bb.h [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

bb.h:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 3 uses
  store ptr %i.ac, ptr %0, align 8
  %i.ad = icmp eq ptr %i.ac, %i.s
  br i1 %i.ad, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %bb.e

bb.i:                                             ; preds = %.critedge.i.i
  %i.ae = add i8 %i.n, -58
  %or.cond11.i = icmp ult i8 %i.ae, -10
  br i1 %or.cond11.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.i, %.lr.ph.i31
  %i.af = phi i8 [ %i.ak, %.lr.ph.i31 ], [ %i.n, %bb.i ]
  %.013.i = phi i32 [ %i.ai, %.lr.ph.i31 ], [ 0, %bb.i ]
  %.0812.i = phi ptr [ %i.aj, %.lr.ph.i31 ], [ %.0.lcssa.i.i, %bb.i ]
  %i.ag = mul i32 %.013.i, 10
  %narrow.i = add nsw i8 %i.af, -48
  %i.ah = zext nneg i8 %narrow.i to i32
  %i.ai = add i32 %i.ag, %i.ah                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.al = add i8 %i.ak, -58
  %or.cond.i = icmp ult i8 %i.al, -10
  br i1 %or.cond.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i31, !llvm.loop !35

_ZN6Assimp9strtoul10EPKcPS1_.exit:                ; preds = %.lr.ph.i31, %bb.i
  %.08.lcssa.i = phi ptr [ %.0.lcssa.i.i, %bb.i ], [ %i.aj, %.lr.ph.i31 ]
  %.0.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.ai, %.lr.ph.i31 ]
  store ptr %.08.lcssa.i, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 %.0.lcssa.i, ptr %i.am, align 4
  %i.an = load ptr, ptr %i.h, align 8             ; 5 uses
  %i.ao = load ptr, ptr %0, align 8               ; 3 uses
  %9 = ptrtoint ptr %i.ao to i64
  %10 = ptrtoint ptr %i.an to i64                 ; 4 uses
  %i.ap = sub i64 %10, %9
  %scevgep.i.i32 = getelementptr i8, ptr %i.ao, i64 %i.ap
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %_ZN6Assimp9strtoul10EPKcPS1_.exit
  %.0.i.i33 = phi ptr [ %i.ao, %_ZN6Assimp9strtoul10EPKcPS1_.exit ], [ %i.ar, %bb.l ] ; 4 uses
  %i.aq = load i8, ptr %.0.i.i33, align 1
  switch i8 %i.aq, label %.critedge.i.i35 [
    i8 32, label %bb.k
    i8 9, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %.not.i.i34 = icmp eq ptr %.0.i.i33, %i.an
  br i1 %.not.i.i34, label %.critedge.i.i35, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i33, i64 1
  br label %bb.j, !llvm.loop !34

.critedge.i.i35:                                  ; preds = %bb.k, %bb.j
  %.0.lcssa.i.i36 = phi ptr [ %.0.i.i33, %bb.j ], [ %scevgep.i.i32, %bb.k ] ; 4 uses
  store ptr %.0.lcssa.i.i36, ptr %0, align 8
  %i.as = load i8, ptr %.0.lcssa.i.i36, align 1
  switch i8 %i.as, label %bb.r [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit37
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit37
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit37
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit37
    i8 58, label %bb.q
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit37:       ; preds = %.critedge.i.i35, %.critedge.i.i35, %.critedge.i.i35, %.critedge.i.i35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.au, ptr noundef nonnull @.str.196) #27 ; 0 uses
  %i.aw = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.aw, ptr noundef nonnull align 1 dereferenceable(2048) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.ax = load ptr, ptr %i.h, align 8             ; 2 uses
  %.promoted.i38 = load ptr, ptr %0, align 8      ; 2 uses
  %i.ay = icmp eq ptr %.promoted.i38, %i.ax
  br i1 %i.ay, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit37
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %.promoted23.i40 = load i8, ptr %i.az, align 4
  %.promoted24.i41 = load i32, ptr %i.at, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph.i39
  %i.ba = phi i32 [ %.promoted24.i41, %.lr.ph.i39 ], [ %i.bg, %bb.p ] ; 3 uses
  %i.bb = phi i8 [ %.promoted23.i40, %.lr.ph.i39 ], [ %storemerge.i43, %bb.p ]
  %i.bc = phi ptr [ %.promoted.i38, %.lr.ph.i39 ], [ %i.bh, %bb.p ] ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  switch i8 %i.bd, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i42 [
    i8 13, label %bb.n
    i8 10, label %bb.n
    i8 0, label %bb.n
    i8 12, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.be = trunc nuw i8 %i.bb to i1
  br i1 %i.be, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i42, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = add i32 %i.ba, 1                        ; 2 uses
  store i32 %i.bf, ptr %i.at, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i42

_ZN6Assimp9IsLineEndIcEEbT_.exit.i42:             ; preds = %bb.o, %bb.n, %bb.m
  %storemerge.i43 = phi i8 [ 1, %bb.o ], [ 0, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %i.bg = phi i32 [ %i.bf, %bb.o ], [ %i.ba, %bb.m ], [ %i.ba, %bb.n ]
  store i8 %storemerge.i43, ptr %i.az, align 4
  switch i8 %i.bd, label %bb.p [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

bb.p:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i42
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 3 uses
  store ptr %i.bh, ptr %0, align 8
  %i.bi = icmp eq ptr %i.bh, %i.ax
  br i1 %i.bi, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %bb.m

bb.q:                                             ; preds = %.critedge.i.i35
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i36, i64 1 ; 2 uses
  store ptr %i.bj, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %.critedge.i.i35, %bb.q
  %i.bk = phi ptr [ %.0.lcssa.i.i36, %.critedge.i.i35 ], [ %i.bj, %bb.q ] ; 3 uses
  %11 = ptrtoint ptr %i.bk to i64
  %i.bl = sub i64 %10, %11
  %scevgep.i.i47 = getelementptr i8, ptr %i.bk, i64 %i.bl
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.0.i.i48 = phi ptr [ %i.bk, %bb.r ], [ %i.bn, %bb.u ] ; 4 uses
  %i.bm = load i8, ptr %.0.i.i48, align 1
  switch i8 %i.bm, label %.critedge.i.i50 [
    i8 32, label %bb.t
    i8 9, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %.not.i.i49 = icmp eq ptr %.0.i.i48, %i.an
  br i1 %.not.i.i49, label %.critedge.i.i50, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i48, i64 1
  br label %bb.s, !llvm.loop !34

.critedge.i.i50:                                  ; preds = %bb.t, %bb.s
  %.0.lcssa.i.i51 = phi ptr [ %.0.i.i48, %bb.s ], [ %scevgep.i.i47, %bb.t ] ; 3 uses
  store ptr %.0.lcssa.i.i51, ptr %0, align 8
  %i.bo = load i8, ptr %.0.lcssa.i.i51, align 1
  switch i8 %i.bo, label %bb.ab [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit52
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit52
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit52
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit52
    i8 65, label %bb.ac
    i8 97, label %bb.ac
    i8 66, label %bb.z
    i8 98, label %bb.z
    i8 67, label %bb.aa
    i8 99, label %bb.aa
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit52:       ; preds = %.critedge.i.i50.2, %.critedge.i.i50.2, %.critedge.i.i50.2, %.critedge.i.i50.2, %.critedge.i.i50.1, %.critedge.i.i50.1, %.critedge.i.i50.1, %.critedge.i.i50.1, %.critedge.i.i50, %.critedge.i.i50, %.critedge.i.i50, %.critedge.i.i50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.bq, ptr noundef nonnull @.str.197) #27 ; 0 uses
  %i.bs = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bs, ptr noundef nonnull align 1 dereferenceable(2048) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.bt = load ptr, ptr %i.h, align 8             ; 2 uses
  %.promoted.i53 = load ptr, ptr %0, align 8      ; 2 uses
  %i.bu = icmp eq ptr %.promoted.i53, %i.bt
  br i1 %i.bu, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit52
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %.promoted23.i55 = load i8, ptr %i.bv, align 4
  %.promoted24.i56 = load i32, ptr %i.bp, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.lr.ph.i54
  %i.bw = phi i32 [ %.promoted24.i56, %.lr.ph.i54 ], [ %i.cc, %bb.y ] ; 3 uses
  %i.bx = phi i8 [ %.promoted23.i55, %.lr.ph.i54 ], [ %storemerge.i58, %bb.y ]
  %i.by = phi ptr [ %.promoted.i53, %.lr.ph.i54 ], [ %i.cd, %bb.y ] ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1             ; 2 uses
  switch i8 %i.bz, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i57 [
    i8 13, label %bb.w
    i8 10, label %bb.w
    i8 0, label %bb.w
    i8 12, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v, %bb.v, %bb.v
  %i.ca = trunc nuw i8 %i.bx to i1
  br i1 %i.ca, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i57, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = add i32 %i.bw, 1                        ; 2 uses
  store i32 %i.cb, ptr %i.bp, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i57

_ZN6Assimp9IsLineEndIcEEbT_.exit.i57:             ; preds = %bb.x, %bb.w, %bb.v
  %storemerge.i58 = phi i8 [ 1, %bb.x ], [ 0, %bb.v ], [ 0, %bb.w ] ; 2 uses
  %i.cc = phi i32 [ %i.cb, %bb.x ], [ %i.bw, %bb.v ], [ %i.bw, %bb.w ]
  store i8 %storemerge.i58, ptr %i.bv, align 4
  switch i8 %i.bz, label %bb.y [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

bb.y:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i57
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 3 uses
  store ptr %i.cd, ptr %0, align 8
  %i.ce = icmp eq ptr %i.cd, %i.bt
  br i1 %i.ce, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %bb.v

bb.z:                                             ; preds = %.critedge.i.i50, %.critedge.i.i50
  br label %bb.ac

bb.aa:                                            ; preds = %.critedge.i.i50, %.critedge.i.i50
  br label %bb.ac

bb.ab:                                            ; preds = %.critedge.i.i50.2, %.critedge.i.i50.1, %.critedge.i.i50
  tail call void @_ZN6Assimp3ASE6Parser10LogWarningEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.198)
  %i.cf = tail call noundef zeroext i1 @_ZN6Assimp3ASE6Parser15SkipToNextTokenEv(ptr noundef nonnull align 8 dereferenceable(188) %0) ; 0 uses
  br label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit

bb.ac:                                            ; preds = %.critedge.i.i50, %.critedge.i.i50, %bb.aa, %bb.z
  %.019 = phi i64 [ 0, %.critedge.i.i50 ], [ 0, %.critedge.i.i50 ], [ 1, %bb.z ], [ 2, %bb.aa ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i51, i64 1 ; 4 uses
  store ptr %i.cg, ptr %0, align 8
  %12 = ptrtoint ptr %i.cg to i64
  %i.ch = sub i64 %10, %12
  %scevgep.i.i62 = getelementptr i8, ptr %i.cg, i64 %i.ch
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ac
  %.0.i.i63 = phi ptr [ %i.cg, %bb.ac ], [ %i.cj, %bb.af ] ; 4 uses
  %i.ci = load i8, ptr %.0.i.i63, align 1
  switch i8 %i.ci, label %.critedge.i.i65 [
    i8 32, label %bb.ae
    i8 9, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %.not.i.i64 = icmp eq ptr %.0.i.i63, %i.an
  br i1 %.not.i.i64, label %.critedge.i.i65, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i63, i64 1
  br label %bb.ad, !llvm.loop !34

.critedge.i.i65:                                  ; preds = %bb.ae, %bb.ad
  %.0.lcssa.i.i66 = phi ptr [ %.0.i.i63, %bb.ad ], [ %scevgep.i.i62, %bb.ae ] ; 3 uses
  store ptr %.0.lcssa.i.i66, ptr %0, align 8
  %i.ck = load i8, ptr %.0.lcssa.i.i66, align 1
  %cond = icmp eq i8 %i.ck, 58
  br i1 %cond, label %bb.ak, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit67

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit67:       ; preds = %.critedge.i.i65.2, %.critedge.i.i65.1, %.critedge.i.i65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.cm, ptr noundef nonnull @.str.196) #27 ; 0 uses
  %i.co = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.co, ptr noundef nonnull align 1 dereferenceable(2048) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.cp = load ptr, ptr %i.h, align 8             ; 2 uses
  %.promoted.i68 = load ptr, ptr %0, align 8      ; 2 uses
  %i.cq = icmp eq ptr %.promoted.i68, %i.cp
  br i1 %i.cq, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit67
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %.promoted23.i70 = load i8, ptr %i.cr, align 4
  %.promoted24.i71 = load i32, ptr %i.cl, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %.lr.ph.i69
  %i.cs = phi i32 [ %.promoted24.i71, %.lr.ph.i69 ], [ %i.cy, %bb.aj ] ; 3 uses
  %i.ct = phi i8 [ %.promoted23.i70, %.lr.ph.i69 ], [ %storemerge.i73, %bb.aj ]
  %i.cu = phi ptr [ %.promoted.i68, %.lr.ph.i69 ], [ %i.cz, %bb.aj ] ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1             ; 2 uses
  switch i8 %i.cv, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i72 [
    i8 13, label %bb.ah
    i8 10, label %bb.ah
    i8 0, label %bb.ah
    i8 12, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag
  %i.cw = trunc nuw i8 %i.ct to i1
  br i1 %i.cw, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i72, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cx = add i32 %i.cs, 1                        ; 2 uses
  store i32 %i.cx, ptr %i.cl, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i72

_ZN6Assimp9IsLineEndIcEEbT_.exit.i72:             ; preds = %bb.ai, %bb.ah, %bb.ag
  %storemerge.i73 = phi i8 [ 1, %bb.ai ], [ 0, %bb.ag ], [ 0, %bb.ah ] ; 2 uses
  %i.cy = phi i32 [ %i.cx, %bb.ai ], [ %i.cs, %bb.ag ], [ %i.cs, %bb.ah ]
  store i8 %storemerge.i73, ptr %i.cr, align 4
  switch i8 %i.cv, label %bb.aj [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

bb.aj:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i72
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 1 ; 3 uses
  store ptr %i.cz, ptr %0, align 8
  %i.da = icmp eq ptr %i.cz, %i.cp
  br i1 %i.da, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %bb.ag

bb.ak:                                            ; preds = %.critedge.i.i65
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i66, i64 1 ; 4 uses
  store ptr %i.db, ptr %0, align 8
  %13 = ptrtoint ptr %i.db to i64
  %i.dc = sub i64 %10, %13
  %scevgep.i.i77 = getelementptr i8, ptr %i.db, i64 %i.dc
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %.0.i.i78 = phi ptr [ %i.db, %bb.ak ], [ %i.de, %bb.an ] ; 4 uses
  %i.dd = load i8, ptr %.0.i.i78, align 1
  switch i8 %i.dd, label %.critedge.i.i80 [
    i8 32, label %bb.am
    i8 9, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al
  %.not.i.i79 = icmp eq ptr %.0.i.i78, %i.an
  br i1 %.not.i.i79, label %.critedge.i.i80, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i78, i64 1
  br label %bb.al, !llvm.loop !34

.critedge.i.i80:                                  ; preds = %bb.am, %bb.al
  %.0.lcssa.i.i81 = phi ptr [ %.0.i.i78, %bb.al ], [ %scevgep.i.i77, %bb.am ] ; 4 uses
  store ptr %.0.lcssa.i.i81, ptr %0, align 8
  %i.df = load i8, ptr %.0.lcssa.i.i81, align 1   ; 3 uses
  switch i8 %i.df, label %bb.as [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit82
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit82
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit82
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit82
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit82:       ; preds = %.critedge.i.i80.2, %.critedge.i.i80.2, %.critedge.i.i80.2, %.critedge.i.i80.2, %.critedge.i.i80.1, %.critedge.i.i80.1, %.critedge.i.i80.1, %.critedge.i.i80.1, %.critedge.i.i80, %.critedge.i.i80, %.critedge.i.i80, %.critedge.i.i80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.dh, ptr noundef nonnull @.str.199) #27 ; 0 uses
  %i.dj = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.dj, ptr noundef nonnull align 1 dereferenceable(2048) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.dk = load ptr, ptr %i.h, align 8             ; 2 uses
  %.promoted.i83 = load ptr, ptr %0, align 8      ; 2 uses
  %i.dl = icmp eq ptr %.promoted.i83, %i.dk
  br i1 %i.dl, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit82
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %.promoted23.i85 = load i8, ptr %i.dm, align 4
  %.promoted24.i86 = load i32, ptr %i.dg, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %.lr.ph.i84
  %i.dn = phi i32 [ %.promoted24.i86, %.lr.ph.i84 ], [ %i.dt, %bb.ar ] ; 3 uses
  %i.do = phi i8 [ %.promoted23.i85, %.lr.ph.i84 ], [ %storemerge.i88, %bb.ar ]
  %i.dp = phi ptr [ %.promoted.i83, %.lr.ph.i84 ], [ %i.du, %bb.ar ] ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1             ; 2 uses
  switch i8 %i.dq, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i87 [
    i8 13, label %bb.ap
    i8 10, label %bb.ap
    i8 0, label %bb.ap
    i8 12, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.dr = trunc nuw i8 %i.do to i1
  br i1 %i.dr, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i87, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ds = add i32 %i.dn, 1                        ; 2 uses
  store i32 %i.ds, ptr %i.dg, align 8
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i87

_ZN6Assimp9IsLineEndIcEEbT_.exit.i87:             ; preds = %bb.aq, %bb.ap, %bb.ao
  %storemerge.i88 = phi i8 [ 1, %bb.aq ], [ 0, %bb.ao ], [ 0, %bb.ap ] ; 2 uses
  %i.dt = phi i32 [ %i.ds, %bb.aq ], [ %i.dn, %bb.ao ], [ %i.dn, %bb.ap ]
  store i8 %storemerge.i88, ptr %i.dm, align 4
  switch i8 %i.dq, label %bb.ar [
    i8 125, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 123, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 42, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

bb.ar:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i87
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 3 uses
  store ptr %i.du, ptr %0, align 8
  %i.dv = icmp eq ptr %i.du, %i.dk
  br i1 %i.dv, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, label %bb.ao

bb.as:                                            ; preds = %.critedge.i.i80
  %i.dw = add i8 %i.df, -58
  %or.cond11.i92 = icmp ult i8 %i.dw, -10
  br i1 %or.cond11.i92, label %_ZN6Assimp9strtoul10EPKcPS1_.exit100, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %bb.as, %.lr.ph.i93
  %i.dx = phi i8 [ %i.ec, %.lr.ph.i93 ], [ %i.df, %bb.as ]
  %.013.i94 = phi i32 [ %i.ea, %.lr.ph.i93 ], [ 0, %bb.as ]
  %.0812.i95 = phi ptr [ %i.eb, %.lr.ph.i93 ], [ %.0.lcssa.i.i81, %bb.as ]
  %i.dy = mul i32 %.013.i94, 10
  %narrow.i96 = add nsw i8 %i.dx, -48
  %i.dz = zext nneg i8 %narrow.i96 to i32
  %i.ea = add i32 %i.dy, %i.dz                    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0812.i95, i64 1 ; 3 uses
  %i.ec = load i8, ptr %i.eb, align 1             ; 2 uses
  %i.ed = add i8 %i.ec, -58
  %or.cond.i97 = icmp ult i8 %i.ed, -10
  br i1 %or.cond.i97, label %_ZN6Assimp9strtoul10EPKcPS1_.exit100, label %.lr.ph.i93, !llvm.loop !35

_ZN6Assimp9strtoul10EPKcPS1_.exit100:             ; preds = %.lr.ph.i93, %bb.as
  %.08.lcssa.i98 = phi ptr [ %.0.lcssa.i.i81, %bb.as ], [ %i.eb, %.lr.ph.i93 ]
  %.0.lcssa.i99 = phi i32 [ 0, %bb.as ], [ %i.ea, %.lr.ph.i93 ]
  store ptr %.08.lcssa.i98, ptr %0, align 8
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.019
  store i32 %.0.lcssa.i99, ptr %i.ee, align 4
  %i.ef = load ptr, ptr %i.h, align 8             ; 4 uses
  %i.eg = load ptr, ptr %0, align 8               ; 3 uses
  %14 = ptrtoint ptr %i.eg to i64
  %15 = ptrtoint ptr %i.ef to i64                 ; 3 uses
  %i.eh = sub i64 %15, %14
  %scevgep.i.i47.1 = getelementptr i8, ptr %i.eg, i64 %i.eh
  br label %bb.at

bb.at:                                            ; preds = %bb.av, %_ZN6Assimp9strtoul10EPKcPS1_.exit100
  %.0.i.i48.1 = phi ptr [ %i.eg, %_ZN6Assimp9strtoul10EPKcPS1_.exit100 ], [ %i.ej, %bb.av ] ; 4 uses
  %i.ei = load i8, ptr %.0.i.i48.1, align 1
  switch i8 %i.ei, label %.critedge.i.i50.1 [
    i8 32, label %bb.au
    i8 9, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at, %bb.at
  %.not.i.i49.1 = icmp eq ptr %.0.i.i48.1, %i.ef
  br i1 %.not.i.i49.1, label %.critedge.i.i50.1, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i.i48.1, i64 1
  br label %bb.at, !llvm.loop !34

.critedge.i.i50.1:                                ; preds = %bb.au, %bb.at
  %.0.lcssa.i.i51.1 = phi ptr [ %.0.i.i48.1, %bb.at ], [ %scevgep.i.i47.1, %bb.au ] ; 3 uses
  store ptr %.0.lcssa.i.i51.1, ptr %0, align 8
  %i.ek = load i8, ptr %.0.lcssa.i.i51.1, align 1
  switch i8 %i.ek, label %bb.ab [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit52
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit52
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit52
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit52
    i8 65, label %bb.ay
    i8 97, label %bb.ay
    i8 66, label %bb.ax
    i8 98, label %bb.ax
    i8 67, label %bb.aw
    i8 99, label %bb.aw
  ]

bb.aw:                                            ; preds = %.critedge.i.i50.1, %.critedge.i.i50.1
  br label %bb.ay

bb.ax:                                            ; preds = %.critedge.i.i50.1, %.critedge.i.i50.1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %.critedge.i.i50.1, %.critedge.i.i50.1
  %.019.1 = phi i64 [ 0, %.critedge.i.i50.1 ], [ 0, %.critedge.i.i50.1 ], [ 1, %bb.ax ], [ 2, %bb.aw ]
  %i.el = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i51.1, i64 1 ; 4 uses
  store ptr %i.el, ptr %0, align 8
  %16 = ptrtoint ptr %i.el to i64
  %i.em = sub i64 %15, %16
  %scevgep.i.i62.1 = getelementptr i8, ptr %i.el, i64 %i.em
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %bb.ay
  %.0.i.i63.1 = phi ptr [ %i.el, %bb.ay ], [ %i.eo, %bb.bb ] ; 4 uses
  %i.en = load i8, ptr %.0.i.i63.1, align 1
  switch i8 %i.en, label %.critedge.i.i65.1 [
    i8 32, label %bb.ba
    i8 9, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %.not.i.i64.1 = icmp eq ptr %.0.i.i63.1, %i.ef
  br i1 %.not.i.i64.1, label %.critedge.i.i65.1, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i.i63.1, i64 1
  br label %bb.az, !llvm.loop !34

.critedge.i.i65.1:                                ; preds = %bb.ba, %bb.az
  %.0.lcssa.i.i66.1 = phi ptr [ %.0.i.i63.1, %bb.az ], [ %scevgep.i.i62.1, %bb.ba ] ; 3 uses
  store ptr %.0.lcssa.i.i66.1, ptr %0, align 8
  %i.ep = load i8, ptr %.0.lcssa.i.i66.1, align 1
  %cond.1 = icmp eq i8 %i.ep, 58
  br i1 %cond.1, label %bb.bc, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit67

bb.bc:                                            ; preds = %.critedge.i.i65.1
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i66.1, i64 1 ; 4 uses
  store ptr %i.eq, ptr %0, align 8
  %17 = ptrtoint ptr %i.eq to i64
  %i.er = sub i64 %15, %17
  %scevgep.i.i77.1 = getelementptr i8, ptr %i.eq, i64 %i.er
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %bb.bc
  %.0.i.i78.1 = phi ptr [ %i.eq, %bb.bc ], [ %i.et, %bb.bf ] ; 4 uses
  %i.es = load i8, ptr %.0.i.i78.1, align 1
  switch i8 %i.es, label %.critedge.i.i80.1 [
    i8 32, label %bb.be
    i8 9, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd, %bb.bd
  %.not.i.i79.1 = icmp eq ptr %.0.i.i78.1, %i.ef
  br i1 %.not.i.i79.1, label %.critedge.i.i80.1, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i78.1, i64 1
  br label %bb.bd, !llvm.loop !34

.critedge.i.i80.1:                                ; preds = %bb.be, %bb.bd
  %.0.lcssa.i.i81.1 = phi ptr [ %.0.i.i78.1, %bb.bd ], [ %scevgep.i.i77.1, %bb.be ] ; 4 uses
  store ptr %.0.lcssa.i.i81.1, ptr %0, align 8
  %i.eu = load i8, ptr %.0.lcssa.i.i81.1, align 1 ; 3 uses
  switch i8 %i.eu, label %bb.bg [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit82
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit82
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit82
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit82
  ]

bb.bg:                                            ; preds = %.critedge.i.i80.1
  %i.ev = add i8 %i.eu, -58
  %or.cond11.i92.1 = icmp ult i8 %i.ev, -10
  br i1 %or.cond11.i92.1, label %_ZN6Assimp9strtoul10EPKcPS1_.exit100.1, label %.lr.ph.i93.1

.lr.ph.i93.1:                                     ; preds = %bb.bg, %.lr.ph.i93.1
  %i.ew = phi i8 [ %i.fb, %.lr.ph.i93.1 ], [ %i.eu, %bb.bg ]
  %.013.i94.1 = phi i32 [ %i.ez, %.lr.ph.i93.1 ], [ 0, %bb.bg ]
  %.0812.i95.1 = phi ptr [ %i.fa, %.lr.ph.i93.1 ], [ %.0.lcssa.i.i81.1, %bb.bg ]
  %i.ex = mul i32 %.013.i94.1, 10
  %narrow.i96.1 = add nsw i8 %i.ew, -48
  %i.ey = zext nneg i8 %narrow.i96.1 to i32
  %i.ez = add i32 %i.ex, %i.ey                    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0812.i95.1, i64 1 ; 3 uses
  %i.fb = load i8, ptr %i.fa, align 1             ; 2 uses
  %i.fc = add i8 %i.fb, -58
  %or.cond.i97.1 = icmp ult i8 %i.fc, -10
  br i1 %or.cond.i97.1, label %_ZN6Assimp9strtoul10EPKcPS1_.exit100.1, label %.lr.ph.i93.1, !llvm.loop !35

_ZN6Assimp9strtoul10EPKcPS1_.exit100.1:           ; preds = %.lr.ph.i93.1, %bb.bg
  %.08.lcssa.i98.1 = phi ptr [ %.0.lcssa.i.i81.1, %bb.bg ], [ %i.fa, %.lr.ph.i93.1 ]
  %.0.lcssa.i99.1 = phi i32 [ 0, %bb.bg ], [ %i.ez, %.lr.ph.i93.1 ]
  store ptr %.08.lcssa.i98.1, ptr %0, align 8
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.019.1
  store i32 %.0.lcssa.i99.1, ptr %i.fd, align 4
  %i.fe = load ptr, ptr %i.h, align 8             ; 4 uses
  %i.ff = load ptr, ptr %0, align 8               ; 3 uses
  %18 = ptrtoint ptr %i.ff to i64
  %19 = ptrtoint ptr %i.fe to i64                 ; 3 uses
  %i.fg = sub i64 %19, %18
  %scevgep.i.i47.2 = getelementptr i8, ptr %i.ff, i64 %i.fg
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bj, %_ZN6Assimp9strtoul10EPKcPS1_.exit100.1
  %.0.i.i48.2 = phi ptr [ %i.ff, %_ZN6Assimp9strtoul10EPKcPS1_.exit100.1 ], [ %i.fi, %bb.bj ] ; 4 uses
  %i.fh = load i8, ptr %.0.i.i48.2, align 1
  switch i8 %i.fh, label %.critedge.i.i50.2 [
    i8 32, label %bb.bi
    i8 9, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bh
  %.not.i.i49.2 = icmp eq ptr %.0.i.i48.2, %i.fe
  br i1 %.not.i.i49.2, label %.critedge.i.i50.2, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i.i48.2, i64 1
  br label %bb.bh, !llvm.loop !34

.critedge.i.i50.2:                                ; preds = %bb.bi, %bb.bh
  %.0.lcssa.i.i51.2 = phi ptr [ %.0.i.i48.2, %bb.bh ], [ %scevgep.i.i47.2, %bb.bi ] ; 3 uses
  store ptr %.0.lcssa.i.i51.2, ptr %0, align 8
  %i.fj = load i8, ptr %.0.lcssa.i.i51.2, align 1
  switch i8 %i.fj, label %bb.ab [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit52
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit52
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit52
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit52
    i8 65, label %bb.bm
    i8 97, label %bb.bm
    i8 66, label %bb.bl
    i8 98, label %bb.bl
    i8 67, label %bb.bk
    i8 99, label %bb.bk
  ]

bb.bk:                                            ; preds = %.critedge.i.i50.2, %.critedge.i.i50.2
  br label %bb.bm

bb.bl:                                            ; preds = %.critedge.i.i50.2, %.critedge.i.i50.2
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %.critedge.i.i50.2, %.critedge.i.i50.2
  %.019.2 = phi i64 [ 0, %.critedge.i.i50.2 ], [ 0, %.critedge.i.i50.2 ], [ 1, %bb.bl ], [ 2, %bb.bk ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i51.2, i64 1 ; 4 uses
  store ptr %i.fk, ptr %0, align 8
  %20 = ptrtoint ptr %i.fk to i64
  %i.fl = sub i64 %19, %20
  %scevgep.i.i62.2 = getelementptr i8, ptr %i.fk, i64 %i.fl
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bp, %bb.bm
  %.0.i.i63.2 = phi ptr [ %i.fk, %bb.bm ], [ %i.fn, %bb.bp ] ; 4 uses
  %i.fm = load i8, ptr %.0.i.i63.2, align 1
  switch i8 %i.fm, label %.critedge.i.i65.2 [
    i8 32, label %bb.bo
    i8 9, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn, %bb.bn
  %.not.i.i64.2 = icmp eq ptr %.0.i.i63.2, %i.fe
  br i1 %.not.i.i64.2, label %.critedge.i.i65.2, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i.i63.2, i64 1
  br label %bb.bn, !llvm.loop !34

.critedge.i.i65.2:                                ; preds = %bb.bo, %bb.bn
  %.0.lcssa.i.i66.2 = phi ptr [ %.0.i.i63.2, %bb.bn ], [ %scevgep.i.i62.2, %bb.bo ] ; 3 uses
  store ptr %.0.lcssa.i.i66.2, ptr %0, align 8
  %i.fo = load i8, ptr %.0.lcssa.i.i66.2, align 1
  %cond.2 = icmp eq i8 %i.fo, 58
  br i1 %cond.2, label %bb.bq, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit67

bb.bq:                                            ; preds = %.critedge.i.i65.2
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i66.2, i64 1 ; 4 uses
  store ptr %i.fp, ptr %0, align 8
  %21 = ptrtoint ptr %i.fp to i64
  %i.fq = sub i64 %19, %21
  %scevgep.i.i77.2 = getelementptr i8, ptr %i.fp, i64 %i.fq
  br label %bb.br

bb.br:                                            ; preds = %bb.bt, %bb.bq
  %.0.i.i78.2 = phi ptr [ %i.fp, %bb.bq ], [ %i.fs, %bb.bt ] ; 4 uses
  %i.fr = load i8, ptr %.0.i.i78.2, align 1
  switch i8 %i.fr, label %.critedge.i.i80.2 [
    i8 32, label %bb.bs
    i8 9, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br, %bb.br
  %.not.i.i79.2 = icmp eq ptr %.0.i.i78.2, %i.fe
  br i1 %.not.i.i79.2, label %.critedge.i.i80.2, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i78.2, i64 1
  br label %bb.br, !llvm.loop !34

.critedge.i.i80.2:                                ; preds = %bb.bs, %bb.br
  %.0.lcssa.i.i81.2 = phi ptr [ %.0.i.i78.2, %bb.br ], [ %scevgep.i.i77.2, %bb.bs ] ; 4 uses
  store ptr %.0.lcssa.i.i81.2, ptr %0, align 8
  %i.ft = load i8, ptr %.0.lcssa.i.i81.2, align 1 ; 3 uses
  switch i8 %i.ft, label %bb.bu [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit82
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit82
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit82
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit82
  ]

bb.bu:                                            ; preds = %.critedge.i.i80.2
  %i.fu = add i8 %i.ft, -58
  %or.cond11.i92.2 = icmp ult i8 %i.fu, -10
  br i1 %or.cond11.i92.2, label %_ZN6Assimp9strtoul10EPKcPS1_.exit100.2, label %.lr.ph.i93.2

.lr.ph.i93.2:                                     ; preds = %bb.bu, %.lr.ph.i93.2
  %i.fv = phi i8 [ %i.ga, %.lr.ph.i93.2 ], [ %i.ft, %bb.bu ]
  %.013.i94.2 = phi i32 [ %i.fy, %.lr.ph.i93.2 ], [ 0, %bb.bu ]
  %.0812.i95.2 = phi ptr [ %i.fz, %.lr.ph.i93.2 ], [ %.0.lcssa.i.i81.2, %bb.bu ]
  %i.fw = mul i32 %.013.i94.2, 10
  %narrow.i96.2 = add nsw i8 %i.fv, -48
  %i.fx = zext nneg i8 %narrow.i96.2 to i32
  %i.fy = add i32 %i.fw, %i.fx                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0812.i95.2, i64 1 ; 3 uses
  %i.ga = load i8, ptr %i.fz, align 1             ; 2 uses
  %i.gb = add i8 %i.ga, -58
  %or.cond.i97.2 = icmp ult i8 %i.gb, -10
  br i1 %or.cond.i97.2, label %_ZN6Assimp9strtoul10EPKcPS1_.exit100.2, label %.lr.ph.i93.2, !llvm.loop !35

_ZN6Assimp9strtoul10EPKcPS1_.exit100.2:           ; preds = %.lr.ph.i93.2, %bb.bu
  %.08.lcssa.i98.2 = phi ptr [ %.0.lcssa.i.i81.2, %bb.bu ], [ %i.fz, %.lr.ph.i93.2 ]
  %.0.lcssa.i99.2 = phi i32 [ 0, %bb.bu ], [ %i.fy, %.lr.ph.i93.2 ]
  store ptr %.08.lcssa.i98.2, ptr %0, align 8
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.019.2
  store i32 %.0.lcssa.i99.2, ptr %i.gc, align 4
  %.promoted = load ptr, ptr %0, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit100.2, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %i.gd = phi ptr [ %.promoted, %_ZN6Assimp9strtoul10EPKcPS1_.exit100.2 ], [ %i.gf, %_ZN6Assimp9IsLineEndIcEEbT_.exit ] ; 7 uses
  %i.ge = load i8, ptr %i.gd, align 1
  switch i8 %i.ge, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 42, label %bb.bv
    i8 13, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 10, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 12, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %.critedge
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 1 ; 2 uses
  store ptr %i.gf, ptr %0, align 8
  br label %.critedge, !llvm.loop !123

bb.bv:                                            ; preds = %.critedge
  %i.gg = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.200, ptr noundef nonnull dereferenceable(1) %i.gd, i64 noundef 15) #30
  %.not.i = icmp eq i32 %i.gg, 0
  br i1 %.not.i, label %bb.bw, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.preheader

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.preheader: ; preds = %.critedge.i.i187, %bb.bw, %bb.bv
  %.ph = phi i8 [ 42, %bb.bv ], [ 42, %bb.bw ], [ %i.mw, %.critedge.i.i187 ]
  %.ph390 = phi ptr [ %i.gd, %bb.bv ], [ %i.gd, %bb.bw ], [ %.0.lcssa.i.i188, %.critedge.i.i187 ]
  br label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread

bb.bw:                                            ; preds = %bb.bv
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 15 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1             ; 2 uses
  switch i8 %i.gi, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.preheader [
    i8 32, label %bb.bx
    i8 9, label %bb.bx
    i8 13, label %bb.bx
    i8 10, label %bb.bx
    i8 0, label %bb.bx
    i8 12, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw, %bb.bw, %bb.bw, %bb.bw, %bb.bw, %bb.bw
  %.not11.i = icmp eq i8 %i.gi, 0
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %storemerge.i101 = select i1 %.not11.i, ptr %i.gh, ptr %i.gj ; 4 uses
  store ptr %storemerge.i101, ptr %0, align 8
  %i.gk = load ptr, ptr %i.h, align 8             ; 2 uses
  %22 = ptrtoint ptr %storemerge.i101 to i64
  %23 = ptrtoint ptr %i.gk to i64
  %i.gl = sub i64 %23, %22
  %scevgep.i.i102 = getelementptr i8, ptr %storemerge.i101, i64 %i.gl
  br label %bb.by

bb.by:                                            ; preds = %bb.ca, %bb.bx
  %.0.i.i103 = phi ptr [ %storemerge.i101, %bb.bx ], [ %i.gn, %bb.ca ] ; 4 uses
  %i.gm = load i8, ptr %.0.i.i103, align 1
  switch i8 %i.gm, label %.critedge.i.i105 [
    i8 32, label %bb.bz
    i8 9, label %bb.bz
  ]

bb.bz:                                            ; preds = %bb.by, %bb.by
  %.not.i.i104 = icmp eq ptr %.0.i.i103, %i.gk
  br i1 %.not.i.i104, label %.critedge.i.i105, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i.i103, i64 1
  br label %bb.by, !llvm.loop !34

.critedge.i.i105:                                 ; preds = %bb.bz, %bb.by
  %.0.lcssa.i.i106 = phi ptr [ %.0.i.i103, %bb.by ], [ %scevgep.i.i102, %bb.bz ] ; 3 uses
  store ptr %.0.lcssa.i.i106, ptr %0, align 8
  %i.go = load i8, ptr %.0.lcssa.i.i106, align 1  ; 2 uses
  switch i8 %i.go, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107.preheader [
    i8 13, label %bb.cb
    i8 10, label %bb.cb
    i8 0, label %bb.cb
    i8 12, label %bb.cb
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107.preheader: ; preds = %.critedge.i.i105
  %i.gp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %6, i64 29
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107

bb.cb:                                            ; preds = %.critedge.i.i105, %.critedge.i.i105, %.critedge.i.i105, %.critedge.i.i105
  tail call void @_ZN6Assimp3ASE6Parser10LogWarningEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.201)
  %i.hc = tail call noundef zeroext i1 @_ZN6Assimp3ASE6Parser15SkipToNextTokenEv(ptr noundef nonnull align 8 dereferenceable(188) %0) ; 0 uses
  br label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107:      ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107.preheader, %.critedge.i.i193
  %i.hd = phi i8 [ %i.go, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107.preheader ], [ %.pre, %.critedge.i.i193 ] ; 2 uses
  %i.he = phi ptr [ %.0.lcssa.i.i106, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107.preheader ], [ %.0.lcssa.i.i194, %.critedge.i.i193 ]
  %i.hf = add i8 %i.hd, -48
  %or.cond = icmp ult i8 %i.hf, 9
  br i1 %or.cond, label %.lr.ph.i109, label %bb.cs

.lr.ph.i109:                                      ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107, %.lr.ph.i109
  %i.hg = phi i8 [ %i.hl, %.lr.ph.i109 ], [ %i.hd, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107 ]
  %.013.i110 = phi i32 [ %i.hj, %.lr.ph.i109 ], [ 0, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107 ]
  %.0812.i111 = phi ptr [ %i.hk, %.lr.ph.i109 ], [ %i.he, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107 ]
  %i.hh = mul i32 %.013.i110, 10
  %narrow.i112 = add nsw i8 %i.hg, -48
  %i.hi = zext nneg i8 %narrow.i112 to i32
  %i.hj = add i32 %i.hh, %i.hi                    ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0812.i111, i64 1 ; 6 uses
  %i.hl = load i8, ptr %i.hk, align 1             ; 2 uses
  %i.hm = add i8 %i.hl, -58
  %or.cond.i113 = icmp ult i8 %i.hm, -10
  br i1 %or.cond.i113, label %_ZN6Assimp9strtoul10EPKcPS1_.exit117, label %.lr.ph.i109, !llvm.loop !35

_ZN6Assimp9strtoul10EPKcPS1_.exit117:             ; preds = %.lr.ph.i109
  store ptr %i.hk, ptr %0, align 8
  %i.hn = icmp ult i32 %i.hj, 32
  br i1 %i.hn, label %bb.cc, label %.noexc.i

bb.cc:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit117
  %i.ho = load i8, ptr %i.hk, align 1             ; 2 uses
  %i.hp = add i8 %i.ho, -58
  %or.cond11.i118 = icmp ult i8 %i.hp, -10
  br i1 %or.cond11.i118, label %_ZN6Assimp9strtoul10EPKcPS1_.exit127, label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %bb.cc, %.lr.ph.i119
  %i.hq = phi i8 [ %i.hv, %.lr.ph.i119 ], [ %i.ho, %bb.cc ]
  %.013.i120 = phi i32 [ %i.ht, %.lr.ph.i119 ], [ 0, %bb.cc ]
  %.0812.i121 = phi ptr [ %i.hu, %.lr.ph.i119 ], [ %i.hk, %bb.cc ]
  %i.hr = mul i32 %.013.i120, 10
  %narrow.i122 = add nsw i8 %i.hq, -48
  %i.hs = zext nneg i8 %narrow.i122 to i32
  %i.ht = add i32 %i.hr, %i.hs                    ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.0812.i121, i64 1 ; 3 uses
  %i.hv = load i8, ptr %i.hu, align 1             ; 2 uses
  %i.hw = add i8 %i.hv, -58
  %or.cond.i123 = icmp ult i8 %i.hw, -10
  br i1 %or.cond.i123, label %_ZN6Assimp9strtoul10EPKcPS1_.exit127, label %.lr.ph.i119, !llvm.loop !35

_ZN6Assimp9strtoul10EPKcPS1_.exit127:             ; preds = %.lr.ph.i119, %bb.cc
  %.08.lcssa.i124 = phi ptr [ %i.hk, %bb.cc ], [ %i.hu, %.lr.ph.i119 ]
  %.0.lcssa.i125 = phi i32 [ 0, %bb.cc ], [ %i.ht, %.lr.ph.i119 ]
  store ptr %.08.lcssa.i124, ptr %0, align 8
  %i.hx = shl nuw i32 1, %.0.lcssa.i125
  %i.hy = load i32, ptr %i.ha, align 4
  %i.hz = or i32 %i.hy, %i.hx
  store i32 %i.hz, ptr %i.ha, align 4
  br label %bb.cs

.noexc.i:                                         ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit117
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.gp, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 39, ptr %i.b, align 8
  %i.ia = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.co    ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ia, ptr %4, align 8
  %i.ib = load i64, ptr %i.b, align 8             ; 3 uses
  store i64 %i.ib, ptr %i.gp, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.ia, ptr noundef nonnull align 1 dereferenceable(39) @.str.202, i64 39, i1 false)
  store i64 %i.ib, ptr %i.gq, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ib
  store i8 0, ptr %i.ic, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_Z12ai_to_stringIjENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %i.hj)
          to label %bb.cd unwind label %bb.cp

bb.cd:                                            ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.id = load i64, ptr %i.gq, align 8, !noalias !124 ; 4 uses
  %i.ie = load i64, ptr %i.gr, align 8, !noalias !124 ; 4 uses
  %i.if = add i64 %i.ie, %i.id                    ; 2 uses
  %i.ig = load ptr, ptr %4, align 8, !noalias !124 ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.gp
  br i1 %i.ih, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.cd
  %i.ii = icmp ult i64 %i.id, 16
  call void @llvm.assume(i1 %i.ii)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cd
  %i.ij = load i64, ptr %i.gp, align 8, !noalias !124
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ik = phi i64 [ %i.ij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.il = icmp ugt i64 %i.if, %i.ik
  br i1 %i.il, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.im = load ptr, ptr %5, align 8, !noalias !124
  %i.in = icmp eq ptr %i.im, %i.gs
  br i1 %i.in, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.ce
  %i.io = icmp ult i64 %i.ie, 16
  call void @llvm.assume(i1 %i.io)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.ce
  %i.ip = load i64, ptr %i.gs, align 8, !noalias !124
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.iq = phi i64 [ %i.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i128 = icmp ugt i64 %i.if, %i.iq
  br i1 %.not.i128, label %bb.cg, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.ir = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ig, i64 noundef %i.id)
          to label %.noexc129 unwind label %.loopexit ; 5 uses

.noexc129:                                        ; preds = %.critedge.i
  store ptr %i.gt, ptr %3, align 8, !alias.scope !124
  %i.is = load ptr, ptr %i.ir, align 8            ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 5 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %bb.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.cf:                                            ; preds = %.noexc129
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.iw = load i64, ptr %i.iv, align 8            ; 2 uses
  %i.ix = icmp ult i64 %i.iw, 16
  call void @llvm.assume(i1 %i.ix)
  %i.iy = add nuw nsw i64 %i.iw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gt, ptr noundef nonnull align 8 dereferenceable(1) %i.it, i64 %i.iy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc129
  store ptr %i.is, ptr %3, align 8, !alias.scope !124
  %i.iz = load i64, ptr %i.it, align 8
  store i64 %i.iz, ptr %i.gt, align 8, !alias.scope !124
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.cf
end_hunk_8
begin_hunk_9_@_ZN6Assimp3ASE6Parser16ParseLV4MeshFaceERNS0_4FaceE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gx, ptr noundef nonnull align 8 dereferenceable(1) %i.kn, i64 %i.ks, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i139: ; preds = %.noexc151
  store ptr %i.km, ptr %2, align 8, !alias.scope !127
  %i.kt = load i64, ptr %i.kn, align 8
  store i64 %i.kt, ptr %i.gx, align 8, !alias.scope !127
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i140: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i139, %bb.cm
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8
  store i64 %i.kv, ptr %i.gy, align 8, !alias.scope !127
  store ptr %i.kn, ptr %i.kl, align 8
  store i64 0, ptr %i.ku, align 8
  store i8 0, ptr %i.kn, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit152

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i146
  %i.kw = load ptr, ptr %6, align 8               ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %i.gv
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit152
  %i.ky = load i64, ptr %i.gv, align 8
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.kz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.la = load ptr, ptr %3, align 8               ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.gt
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.lc = load i64, ptr %i.gt, align 8
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  %i.le = load ptr, ptr %5, align 8               ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.gs
  br i1 %i.lf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.lg = load i64, ptr %i.gs, align 8
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.li = load ptr, ptr %4, align 8               ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.gp
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.lk = load i64, ptr %i.gp, align 8
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.lm = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ln = load i32, ptr %i.gz, align 8
  %i.lo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.ln, ptr noundef %i.lm) #27 ; 0 uses
  %i.lp = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc164 unwind label %bb.cr

.noexc164:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  invoke void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.lp, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
          to label %bb.cn unwind label %bb.cr

bb.cn:                                            ; preds = %.noexc164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.lq = load ptr, ptr %2, align 8               ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.gx
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.cn
  %i.ls = load i64, ptr %i.gx, align 8
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.cs

bb.co:                                            ; preds = %.noexc.i
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

bb.cp:                                            ; preds = %.noexc
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

.loopexit:                                        ; preds = %.critedge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

.loopexit.split-lp:                               ; preds = %bb.ch
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

.loopexit225:                                     ; preds = %.critedge.i144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i138
  %lpad.loopexit227 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp226:                            ; preds = %bb.cl
  %lpad.loopexit.split-lp228 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cq:                                            ; preds = %.loopexit.split-lp226, %.loopexit225
  %lpad.phi229 = phi { ptr, i32 } [ %lpad.loopexit227, %.loopexit225 ], [ %lpad.loopexit.split-lp228, %.loopexit.split-lp226 ] ; 2 uses
  %i.lw = load ptr, ptr %6, align 8               ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.gv
  br i1 %i.lx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %bb.cq
  %i.ly = load i64, ptr %i.gv, align 8
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.lz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.ma = load ptr, ptr %3, align 8               ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.gt
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %i.mc = load i64, ptr %i.gt, align 8
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.md) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.phi229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ] ; 2 uses
  %i.me = load ptr, ptr %5, align 8               ; 2 uses
  %i.mf = icmp eq ptr %i.me, %i.gs
  br i1 %i.mf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.mg = load i64, ptr %i.gs, align 8
  %i.mh = add i64 %i.mg, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.cp
  %.pn.pn.pn = phi { ptr, i32 } [ %i.lv, %bb.cp ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.mi = load ptr, ptr %4, align 8               ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.gp
  br i1 %i.mj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %i.mk = load i64, ptr %i.gp, align 8
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.ml) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178, %bb.co
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lu, %bb.co ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

bb.cr:                                            ; preds = %.noexc164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.mm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mn = load ptr, ptr %2, align 8               ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.gx
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %bb.cr
  %i.mp = load i64, ptr %i.gx, align 8
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180
  %.pn28 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180 ], [ %i.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181 ], [ %i.mm, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn28

bb.cs:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107
  %i.mr = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ms = load ptr, ptr %0, align 8               ; 3 uses
  %24 = ptrtoint ptr %i.ms to i64
  %25 = ptrtoint ptr %i.mr to i64                 ; 2 uses
  %i.mt = sub i64 %25, %24
  %scevgep.i.i184 = getelementptr i8, ptr %i.ms, i64 %i.mt
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cv, %bb.cs
  %.0.i.i185 = phi ptr [ %i.ms, %bb.cs ], [ %i.mv, %bb.cv ] ; 4 uses
  %i.mu = load i8, ptr %.0.i.i185, align 1
  switch i8 %i.mu, label %.critedge.i.i187 [
    i8 32, label %bb.cu
    i8 9, label %bb.cu
  ]

bb.cu:                                            ; preds = %bb.ct, %bb.ct
  %.not.i.i186 = icmp eq ptr %.0.i.i185, %i.mr
  br i1 %.not.i.i186, label %.critedge.i.i187, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mv = getelementptr inbounds nuw i8, ptr %.0.i.i185, i64 1
  br label %bb.ct, !llvm.loop !34

.critedge.i.i187:                                 ; preds = %bb.cu, %bb.ct
  %.0.lcssa.i.i188 = phi ptr [ %.0.i.i185, %bb.ct ], [ %scevgep.i.i184, %bb.cu ] ; 4 uses
  store ptr %.0.lcssa.i.i188, ptr %0, align 8
  %i.mw = load i8, ptr %.0.lcssa.i.i188, align 1  ; 2 uses
  %.not30 = icmp eq i8 %i.mw, 44
  br i1 %.not30, label %bb.cw, label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.preheader

bb.cw:                                            ; preds = %.critedge.i.i187
  %i.mx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i188, i64 1 ; 4 uses
  store ptr %i.mx, ptr %0, align 8
  %26 = ptrtoint ptr %i.mx to i64
  %i.my = sub i64 %25, %26
  %scevgep.i.i190 = getelementptr i8, ptr %i.mx, i64 %i.my
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cz, %bb.cw
  %.0.i.i191 = phi ptr [ %i.mx, %bb.cw ], [ %i.na, %bb.cz ] ; 4 uses
  %i.mz = load i8, ptr %.0.i.i191, align 1
  switch i8 %i.mz, label %.critedge.i.i193 [
    i8 32, label %bb.cy
    i8 9, label %bb.cy
  ]

bb.cy:                                            ; preds = %bb.cx, %bb.cx
  %.not.i.i192 = icmp eq ptr %.0.i.i191, %i.mr
  br i1 %.not.i.i192, label %.critedge.i.i193, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.na = getelementptr inbounds nuw i8, ptr %.0.i.i191, i64 1
  br label %bb.cx, !llvm.loop !34

.critedge.i.i193:                                 ; preds = %bb.cy, %bb.cx
  %.0.lcssa.i.i194 = phi ptr [ %.0.i.i191, %bb.cx ], [ %scevgep.i.i190, %bb.cy ] ; 3 uses
  store ptr %.0.lcssa.i.i194, ptr %0, align 8
  %.pre = load i8, ptr %.0.lcssa.i.i194, align 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit107, !llvm.loop !130

_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread: ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.preheader, %_ZN6Assimp9IsLineEndIcEEbT_.exit196
  %i.nb = phi i8 [ %.pre292, %_ZN6Assimp9IsLineEndIcEEbT_.exit196 ], [ %.ph, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.preheader ]
  %i.nc = phi ptr [ %i.nd, %_ZN6Assimp9IsLineEndIcEEbT_.exit196 ], [ %.ph390, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread.preheader ] ; 4 uses
  switch i8 %i.nb, label %_ZN6Assimp9IsLineEndIcEEbT_.exit196 [
    i8 42, label %bb.da
    i8 13, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 10, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 0, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
    i8 12, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit196:              ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 1 ; 3 uses
  store ptr %i.nd, ptr %0, align 8
  %.pre292 = load i8, ptr %i.nd, align 1
  br label %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread, !llvm.loop !131

bb.da:                                            ; preds = %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread
  %i.ne = call i32 @strncmp(ptr noundef nonnull dereferenceable(12) @.str.204, ptr noundef nonnull dereferenceable(1) %i.nc, i64 noundef 11) #30
  %.not.i197 = icmp eq i32 %i.ne, 0
  br i1 %.not.i197, label %bb.db, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit

bb.db:                                            ; preds = %bb.da
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 11 ; 2 uses
  %i.ng = load i8, ptr %i.nf, align 1             ; 2 uses
  switch i8 %i.ng, label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit [
    i8 32, label %bb.dc
    i8 9, label %bb.dc
    i8 13, label %bb.dc
    i8 10, label %bb.dc
    i8 0, label %bb.dc
    i8 12, label %bb.dc
  ]

bb.dc:                                            ; preds = %bb.db, %bb.db, %bb.db, %bb.db, %bb.db, %bb.db
  %.not11.i199 = icmp eq i8 %i.ng, 0
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 12
  %storemerge.i200 = select i1 %.not11.i199, ptr %i.nf, ptr %i.nh ; 4 uses
  store ptr %storemerge.i200, ptr %0, align 8
  %i.ni = load ptr, ptr %i.h, align 8             ; 2 uses
  %27 = ptrtoint ptr %storemerge.i200 to i64
  %28 = ptrtoint ptr %i.ni to i64
  %i.nj = sub i64 %28, %27
  %scevgep.i.i202 = getelementptr i8, ptr %storemerge.i200, i64 %i.nj
  br label %bb.dd

bb.dd:                                            ; preds = %bb.df, %bb.dc
  %.0.i.i203 = phi ptr [ %storemerge.i200, %bb.dc ], [ %i.nl, %bb.df ] ; 4 uses
  %i.nk = load i8, ptr %.0.i.i203, align 1
  switch i8 %i.nk, label %.critedge.i.i205 [
    i8 32, label %bb.de
    i8 9, label %bb.de
  ]

bb.de:                                            ; preds = %bb.dd, %bb.dd
  %.not.i.i204 = icmp eq ptr %.0.i.i203, %i.ni
  br i1 %.not.i.i204, label %.critedge.i.i205, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.nl = getelementptr inbounds nuw i8, ptr %.0.i.i203, i64 1
  br label %bb.dd, !llvm.loop !34

.critedge.i.i205:                                 ; preds = %bb.de, %bb.dd
  %.0.lcssa.i.i206 = phi ptr [ %.0.i.i203, %bb.dd ], [ %scevgep.i.i202, %bb.de ] ; 4 uses
  store ptr %.0.lcssa.i.i206, ptr %0, align 8
  %i.nm = load i8, ptr %.0.lcssa.i.i206, align 1  ; 3 uses
  switch i8 %i.nm, label %bb.dg [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit207
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit207
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit207
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit207
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit207:      ; preds = %.critedge.i.i205, %.critedge.i.i205, %.critedge.i.i205, %.critedge.i.i205
  call void @_ZN6Assimp3ASE6Parser10LogWarningEPKc(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.205)
  %i.nn = call noundef zeroext i1 @_ZN6Assimp3ASE6Parser15SkipToNextTokenEv(ptr noundef nonnull align 8 dereferenceable(188) %0) ; 0 uses
  br label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit

bb.dg:                                            ; preds = %.critedge.i.i205
  %i.no = add i8 %i.nm, -58
  %or.cond11.i208 = icmp ult i8 %i.no, -10
  br i1 %or.cond11.i208, label %_ZN6Assimp9strtoul10EPKcPS1_.exit217, label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %bb.dg, %.lr.ph.i209
  %i.np = phi i8 [ %i.nu, %.lr.ph.i209 ], [ %i.nm, %bb.dg ]
  %.013.i210 = phi i32 [ %i.ns, %.lr.ph.i209 ], [ 0, %bb.dg ]
  %.0812.i211 = phi ptr [ %i.nt, %.lr.ph.i209 ], [ %.0.lcssa.i.i206, %bb.dg ]
  %i.nq = mul i32 %.013.i210, 10
  %narrow.i212 = add nsw i8 %i.np, -48
  %i.nr = zext nneg i8 %narrow.i212 to i32
  %i.ns = add i32 %i.nq, %i.nr                    ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.0812.i211, i64 1 ; 3 uses
  %i.nu = load i8, ptr %i.nt, align 1             ; 2 uses
  %i.nv = add i8 %i.nu, -58
  %or.cond.i213 = icmp ult i8 %i.nv, -10
  br i1 %or.cond.i213, label %_ZN6Assimp9strtoul10EPKcPS1_.exit217, label %.lr.ph.i209, !llvm.loop !35

_ZN6Assimp9strtoul10EPKcPS1_.exit217:             ; preds = %.lr.ph.i209, %bb.dg
  %.08.lcssa.i214 = phi ptr [ %.0.lcssa.i.i206, %bb.dg ], [ %i.nt, %.lr.ph.i209 ]
  %.0.lcssa.i215 = phi i32 [ 0, %bb.dg ], [ %i.ns, %.lr.ph.i209 ]
  store ptr %.08.lcssa.i214, ptr %0, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 124
  store i32 %.0.lcssa.i215, ptr %i.nw, align 4
  br label %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit

_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit:    ; preds = %bb.h, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i, %bb.p, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i42, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i42, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i42, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i42, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i72, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i72, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i72, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i72, %bb.aj, %bb.ar, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i87, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i87, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i87, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i87, %.critedge, %.critedge, %.critedge, %.critedge, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread, %_ZN6Assimp10TokenMatchIKcEEbRPT_PS1_j.exit.thread, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i57, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i57, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i57, %_ZN6Assimp9IsLineEndIcEEbT_.exit.i57, %bb.y, %bb.db, %bb.da, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit82, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit67, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit52, %bb.ab, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit37, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit, %_ZN6Assimp9strtoul10EPKcPS1_.exit217, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit207, %bb.cb
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser22ParseLV4MeshLongTripleEPjRj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  tail call void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser23ParseLV4MeshFloatTripleEPfRj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6Assimp3ASE6Parser16ParseLV4MeshLongERj(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  tail call void @_ZN6Assimp3ASE6Parser23ParseLV4MeshFloatTripleEPf(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z12ai_to_stringIjENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = zext i32 %1 to i64
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.a)
          to label %_ZNSolsEj.exit unwind label %bb.e ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !138
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !138
  store i8 0, ptr %i.c, align 8, !alias.scope !138
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !138 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !138 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEj.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !138 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !alias.scope !138 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !138
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #28
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #28
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3ASE6Parser17ParseLV4MeshFloatERf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %0, align 8                ; 3 uses
  %2 = ptrtoint ptr %i.d to i64
  %3 = ptrtoint ptr %i.c to i64
  %i.e = sub i64 %3, %2
  %scevgep.i.i = getelementptr i8, ptr %i.d, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0.i.i = phi ptr [ %i.d, %bb.a ], [ %i.g, %bb.d ] ; 4 uses
  %i.f = load i8, ptr %.0.i.i, align 1
  switch i8 %i.f, label %.critedge.i.i [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %.not.i.i = icmp eq ptr %.0.i.i, %i.c
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br label %bb.b, !llvm.loop !34

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i = phi ptr [ %.0.i.i, %bb.b ], [ %scevgep.i.i, %bb.c ] ; 3 uses
  store ptr %.0.lcssa.i.i, ptr %0, align 8
  %i.h = load i8, ptr %.0.lcssa.i.i, align 1
  switch i8 %i.h, label %bb.e [
    i8 13, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 10, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 0, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
    i8 12, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ]

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit:         ; preds = %.critedge.i.i, %.critedge.i.i, %.critedge.i.i, %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 2048, ptr noundef nonnull @.str, i32 noundef %i.j, ptr noundef nonnull @.str.206) #27 ; 0 uses
  %i.l = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnIJRA2048_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr noundef nonnull align 1 dereferenceable(2048) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store float 0.000000e+00, ptr %1, align 4
  %i.m = load i32, ptr %i.i, align 8
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %.critedge.i.i
  %i.o = tail call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i, ptr noundef nonnull align 4 dereferenceable(4) %1, i1 noundef zeroext true)
  store ptr %i.o, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp4D3DS8MaterialC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(689) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp4D3DS8MaterialE, i64 16), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %i.b, align 8
  %i.i = load i64, ptr %i.a, align 8
  store i64 %i.i, ptr %i.c, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <4 x float> <float 6.000000e-01, float 6.000000e-01, float 6.000000e-01, float 0.000000e+00>, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float 1.000000e+00, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store i32 2, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float 1.000000e+00, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.x, align 8
  store i8 0, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 0, ptr %i.aa, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.z, i8 0, i64 9, i1 false)
  store float +qnan, ptr %i.u, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.ae, align 8
  store i8 0, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 0, ptr %i.ah, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ag, i8 0, i64 9, i1 false)
  store float +qnan, ptr %i.ab, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 0, ptr %i.al, align 8
  store i8 0, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 280
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 0, ptr %i.ao, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.an, i8 0, i64 9, i1 false)
  store float +qnan, ptr %i.ai, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store ptr %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 0, ptr %i.as, align 8
  store i8 0, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 0, ptr %i.av, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.au, i8 0, i64 9, i1 false)
  store float +qnan, ptr %i.ap, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 0, ptr %i.az, align 8
  store i8 0, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 424
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 0, ptr %i.bc, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bb, i8 0, i64 9, i1 false)
  store float +qnan, ptr %i.aw, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  store ptr %i.bf, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i64 0, ptr %i.bg, align 8
  store i8 0, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 496
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 0, ptr %i.bj, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bi, i8 0, i64 9, i1 false)
  store float +qnan, ptr %i.bd, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  store ptr %i.bm, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 544
end_hunk_9
