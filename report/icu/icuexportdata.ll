Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/icuexportdata?download=true
inline.NumInlined: 823
inline.NumDeleted: 326
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z10exportNormv:bb.a
bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.ck = load ptr, ptr %5, align 8, !tbaa !122   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !127
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit

_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.cq = load ptr, ptr %4, align 8, !tbaa !122   ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit77, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !127
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit77

_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit77: ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.cw = load ptr, ptr %3, align 8, !tbaa !122   ; 3 uses
  %.not.i.i.i78 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit79, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit77
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !127
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit79

_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit79: ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit77, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.dc = load ptr, ptr %2, align 8, !tbaa !126   ; 3 uses
  %.not.i.i.i80 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i80, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit79
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !175
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit79, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.di = load ptr, ptr %1, align 8, !tbaa !65    ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i81, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !64
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dn) #26
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  ret i32 0

bb.ba:                                            ; preds = %.noexc73, %.noexc72, %bb.al, %.noexc70, %.noexc, %bb.ak, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.aj, %bb.ai, %bb.ah
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.do, %bb.ba ], [ %i.bc, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.dp = load ptr, ptr %5, align 8, !tbaa !122   ; 3 uses
  %.not.i.i.i82 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i82, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit83, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !127
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit83

_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit83: ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ab, %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit83, %bb.ac, %bb.s
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.s ], [ %i.ba, %bb.ab ], [ %.pn, %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit83 ], [ %i.bb, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.dv = load ptr, ptr %4, align 8, !tbaa !122   ; 3 uses
  %.not.i.i.i84 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i84, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit85, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !127
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit85

_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit85: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.bf

bb.bf:                                            ; preds = %bb.q, %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit85, %bb.r, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.ap, %bb.q ], [ %.pn.pn.pn.pn, %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit85 ], [ %i.aq, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.eb = load ptr, ptr %3, align 8, !tbaa !122   ; 3 uses
  %.not.i.i.i86 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i86, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit87, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !127
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.eg) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit87

_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit87: ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.bh

bb.bh:                                            ; preds = %bb.j, %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit87, %bb.i
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorI17PendingDescriptorSaIS0_EED2Ev.exit87 ], [ %i.r, %bb.j ]
  %i.eh = load ptr, ptr %2, align 8, !tbaa !126   ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIjSaIjEED2Ev.exit89, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !175
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.em) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit89

_ZNSt6vectorIjSaIjEED2Ev.exit89:                  ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.en = load ptr, ptr %1, align 8, !tbaa !65    ; 3 uses
  %.not.i.i.i90 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorItSaItEED2Ev.exit91, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit89
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !64
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.es) #26
  br label %_ZNSt6vectorItSaItEED2Ev.exit91

_ZNSt6vectorItSaItEED2Ev.exit91:                  ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit89, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit91, %bb.h
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorItSaItEED2Ev.exit91 ], [ %i.p, %bb.h ]
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef range(i32 0, 6) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call ptr @u_getDataDirectory_78()
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 208), align 16, !tbaa !183
  %i.b = tail call i32 @u_parseArgs(i32 noundef %0, ptr noundef %1, i32 noundef 11, ptr noundef nonnull @_ZL7options) ; 5 uses
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 194), align 2, !tbaa !179
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, ptr noundef nonnull @.str.71) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.92) ; 0 uses
  tail call void @exit(i32 noundef 0) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %i.b, -1                    ; 3 uses
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !184
  %i.g = sub nsw i32 0, %i.b
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.93, ptr noundef %i.j) #32 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 34), align 2
  %i.m = icmp eq i8 %i.l, 0
  %or.cond.not = select i1 %i.e, i1 %i.m, i1 false
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 74), align 2
  %i.o = icmp eq i8 %i.n, 0
  %or.cond3 = select i1 %or.cond.not, i1 %i.o, i1 false
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 114), align 2
  %i.q = icmp ne i8 %i.p, 0
  %or.cond5 = select i1 %or.cond3, i1 %i.q, i1 false
  br i1 %or.cond5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @stderr, align 8
  %i.s = load ptr, ptr @stdout, align 8
  %i.t = select i1 %i.e, ptr %i.s, ptr %i.r
  %i.u = load ptr, ptr %1, align 8, !tbaa !83
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.60, ptr noundef %i.u) #25 ; 0 uses
  %.lobit = lshr i32 %i.b, 31
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 354), align 2, !tbaa !179
  store i8 %i.w, ptr @haveCopyright, align 1, !tbaa !82
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 208), align 16, !tbaa !183
  store ptr %i.x, ptr @destdir, align 8, !tbaa !83
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 394), align 2, !tbaa !179
  store i8 %i.y, ptr @VERBOSE, align 1, !tbaa !82
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 434), align 2, !tbaa !179
  store i8 %i.z, ptr @QUIET, align 1, !tbaa !82
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 154), align 2, !tbaa !179
  %.not25 = icmp eq i8 %i.aa, 0
  br i1 %.not25, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 128), align 16, !tbaa !183 ; 2 uses
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(5) @.str.66) #30
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(6) @.str.67) #30
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !184
  %i.ah = tail call i64 @fwrite(ptr nonnull @.str.68, i64 55, i64 1, ptr %i.ag) #31 ; 0 uses
  br label %bb.r

.sink.split:                                      ; preds = %bb.i, %bb.h
  %.sink = phi i32 [ 0, %bb.h ], [ 1, %bb.i ]
  store i32 %.sink, ptr @trieType, align 4, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.g
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 88), align 8, !tbaa !183 ; 3 uses
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(5) @.str.94) #30
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = tail call noundef i32 @_Z10exportNormv() ; 0 uses
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.am = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(7) @.str.64) #30
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ao = tail call noundef i32 @_Z12exportUpropsiPPc(i32 noundef %i.b, ptr noundef %1)
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.ap = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(6) @.str.78) #30
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ar = tail call noundef i32 @_Z10exportCaseiPPc(i32 noundef %i.b, ptr poison)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !184
  %i.at = tail call i64 @fwrite(ptr nonnull @.str.95, i64 59, i64 1, ptr %i.as) #31 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.l, %bb.n, %bb.p, %bb.q, %bb.j, %bb.f
  %.1 = phi i32 [ %.lobit, %bb.f ], [ 1, %bb.j ], [ 0, %bb.l ], [ %i.ao, %bb.n ], [ %i.ar, %bb.p ], [ 1, %bb.q ]
  ret i32 %.1
}

declare ptr @u_getDataDirectory_78() local_unnamed_addr #2

declare i32 @u_parseArgs(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN23PropertyValueNameGetter7getNameEj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = tail call ptr @u_getPropertyValueName_78(i32 noundef %i.b, i32 noundef %1, i32 noundef 0)
  ret ptr %i.c
}

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @uset_getRangeCount_78(ptr noundef) local_unnamed_addr #2

declare i32 @uset_getItem_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #15

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare void @umutablecptrie_close_78(ptr noundef) local_unnamed_addr #2

declare void @ucptrie_close_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 1                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.au, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !193

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -2 ; 4 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !60   ; 2 uses
  %i.k = load i16, ptr %0, align 2, !tbaa !60
  store i16 %i.k, ptr %i.i, align 2, !tbaa !60
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 1                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [2 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [2 x i8], ptr %0, i64 %i.u
  %i.w = load i16, ptr %i.t, align 2, !tbaa !60
  %i.x = load i16, ptr %i.v, align 2, !tbaa !60
  %i.y = icmp ult i16 %i.w, %i.x
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !60
  %i.ab = getelementptr inbounds [2 x i8], ptr %0, i64 %.035.i.i.i.i
  store i16 %i.aa, ptr %i.ab, align 2, !tbaa !60
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !194

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 2
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.n, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !60
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i16 %i.al, ptr %i.am, align 2, !tbaa !60
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0920.i.i56.i.i.i
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !60 ; 2 uses
  %i.ap = icmp ult i16 %i.ao, %i.j
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds [2 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i16 %i.ao, ptr %i.aq, align 2, !tbaa !60
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !195

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [2 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i16 %i.j, ptr %i.ar, align 2, !tbaa !60
  %i.as = icmp sgt i64 %i.m, 2
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !196

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %i.at = phi i64 [ %i.bt, %bb.b ], [ %i.d, %.lr.ph ]
  %i.au = add nsw i64 %.01841, -1                 ; 3 uses
  %i.av = lshr i64 %i.at, 1
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %storemerge1742, i64 -2 ; 3 uses
  %i.ay = load i16, ptr %i.f, align 2, !tbaa !60  ; 5 uses
  %i.az = load i16, ptr %i.aw, align 2, !tbaa !60 ; 5 uses
  %i.ba = icmp ult i16 %i.ay, %i.az
  %i.bb = load i16, ptr %i.ax, align 2, !tbaa !60 ; 6 uses
end_hunk_0
