Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/scantree?download=true
inline.NumInlined: 28
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8ScanTree8FindProcEP8FindData:bb.a
  %i.dn = shl nuw nsw i8 %i.dm, 1
  %i.do = zext nneg i8 %i.dn to i32
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.dp = load i8, ptr %i.b, align 1, !tbaa !42, !range !37, !noundef !38
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = select i1 %i.dq, i32 2, i32 3
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %._crit_edge, %bb.ad
  %.3 = phi i32 [ 1, %._crit_edge ], [ 1, %bb.ad ], [ %i.do, %bb.an ], [ %i.dr, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.bk

.thread83:                                        ; preds = %bb.q, %.thread79
  %.25282 = phi i1 [ false, %.thread79 ], [ true, %bb.q ] ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8204
  %i.dt = load i8, ptr %i.ds, align 4, !tbaa !36, !range !37, !noundef !38
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.aq, label %bb.bh

bb.aq:                                            ; preds = %.thread83
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8212
  %i.dw = load i8, ptr %i.dv, align 4, !tbaa !22, !range !37, !noundef !38
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 8205
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !51, !range !37, !noundef !38
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.bh, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br i1 %.25282, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eb = load i32, ptr %i.i, align 8, !tbaa !30
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 25001
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !52, !range !37, !noundef !38
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8216
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !23
  %i.ei = icmp eq i32 %i.eh, 3
  %i.ej = select i1 %i.ei, i32 0, i32 3
  br label %bb.bk

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 33208 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !28 ; 2 uses
  %.not62 = icmp eq ptr %i.el, null
  br i1 %.not62, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.em = call noundef zeroext i1 @_ZN11CommandData9ExclCheckEPKwbbb(ptr noundef nonnull align 8 dereferenceable(100904) %i.el, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  br i1 %i.em, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.en = load ptr, ptr %i.ek, align 8, !tbaa !28
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 8200
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !56
  %i.eq = call noundef zeroext i1 @_ZN11CommandData13ExclDirByAttrEj(ptr noundef nonnull align 8 dereferenceable(100904) %i.en, i32 noundef %i.ep)
  br i1 %i.eq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.er = select i1 %.25282, i32 1, i32 3
  br label %bb.bk

bb.ba:                                            ; preds = %bb.ay, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  br i1 %.25282, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.es = call noundef ptr @_Z11PointToNamePKw(ptr noundef nonnull %i.f)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.et = phi ptr [ %i.es, %bb.bb ], [ @.str, %bb.ba ]
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.e, ptr noundef %i.et, i64 noundef 2048)
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.f, ptr noundef nonnull %1, i64 noundef 2048)
  %i.eu = call i64 @wcslen(ptr noundef nonnull %i.f) #15
  %i.ev = call i64 @wcslen(ptr noundef nonnull %i.e) #15
  %i.ew = add i64 %i.eu, -2047
  %i.ex = add i64 %i.ew, %i.ev
  %i.ey = icmp ult i64 %i.ex, -2048
  br i1 %i.ey, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ez = load i32, ptr %i.i, align 8, !tbaa !30
  %i.fa = icmp sgt i32 %i.ez, 1022
  br i1 %i.fa, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_Z11AddEndSlashPwm(ptr noundef nonnull %i.f, i64 noundef 2048)
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i64 noundef 2048)
  %i.fb = load i32, ptr %i.i, align 8, !tbaa !30
  %i.fc = add nsw i32 %i.fb, 1                    ; 2 uses
  store i32 %i.fc, ptr %i.i, align 8, !tbaa !30
  br i1 %.25282, label %bb.bf, label %.thread87

bb.bf:                                            ; preds = %bb.be
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8196
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !54
  br label %.thread87

.thread87:                                        ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 24
  store <4 x ptr> <ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3>, ptr %i.fg, align 8, !tbaa !43
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @.str.3, ptr %i.fh, align 8, !tbaa !43
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fi, i8 0, i64 40, i1 false)
  store i32 86, ptr %i.fj, align 8, !tbaa !46
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr %i.f, ptr %2, align 8, !tbaa !43
  store ptr @.str.2, ptr %i.fe, align 8, !tbaa !43
  store i32 3, ptr %i.fk, align 8, !tbaa !47
  store ptr %i.e, ptr %i.ff, align 8, !tbaa !43
  call void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.bk

bb.bh:                                            ; preds = %.thread87, %bb.ar, %.thread83
  br i1 %.25282, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fl = call noundef zeroext i1 @_Z7CmpNamePKwS0_i(ptr noundef nonnull %i.f, ptr noundef nonnull %1, i32 noundef 0)
  br i1 %i.fl, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bg, %bb.v, %bb.ap, %bb.av, %bb.az, %bb.bj, %bb.bi, %bb.a
  %.6 = phi i32 [ 3, %bb.a ], [ 0, %bb.bj ], [ %.047, %bb.v ], [ %i.er, %bb.az ], [ 2, %bb.bg ], [ %i.ej, %bb.av ], [ %.3, %bb.ap ], [ 3, %bb.bi ]
  ret i32 %.6
}

declare noundef zeroext i1 @_ZN11CommandData9CheckArgsEP10StringListbPKwbi(ptr noundef, i1 noundef zeroext, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8ScanTree16ExpandFolderMaskEv(ptr noundef nonnull align 8 dereferenceable(33216) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 6 uses
  %1 = alloca %class.FindFile, align 8            ; 8 uses
  %2 = alloca %struct.FindData, align 8           ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8228 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %.018 = phi i1 [ %.11925, %bb.d ], [ false, %bb.a ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26   ; 2 uses
  switch i32 %i.d, label %bb.c [
    i32 0, label %bb.e
    i32 63, label %.thread
    i32 42, label %.thread
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %.018, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b, %bb.b, %bb.c
  %i.e = tail call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.d)
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %.11925 = phi i1 [ false, %bb.c ], [ true, %.thread ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !57

bb.e:                                             ; preds = %.thread, %bb.b
  %.017 = phi i64 [ 0, %bb.b ], [ %indvars.iv, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef 2048)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.017
  store i32 0, ptr %i.f, align 4, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24616 ; 3 uses
  call void @_ZN10StringList5ResetEv(ptr noundef nonnull align 8 dereferenceable(184) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @_ZN8FindFileC1Ev(ptr noundef nonnull align 8 dereferenceable(8208) %1)
  invoke void @_ZN8FindFile7SetMaskEPKw(ptr noundef nonnull align 8 dereferenceable(8208) %1, ptr noundef nonnull %i.a)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8204
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.017
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %bb.f
  %i.k = invoke noundef zeroext i1 @_ZN8FindFile4NextEP8FindDatab(ptr noundef nonnull align 8 dereferenceable(8208) %1, ptr noundef nonnull %2, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  br i1 %i.k, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.l = load i8, ptr %i.i, align 4, !tbaa !36, !range !37, !noundef !38
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.j, label %.backedge

bb.j:                                             ; preds = %bb.i
  invoke void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %2, ptr noundef nonnull %i.j, i64 noundef 2048)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.n = invoke noundef ptr @_Z11PointToNamePKw(ptr noundef nonnull %2)
          to label %bb.l unwind label %bb.o       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.o = call i32 @wcscmp(ptr noundef %i.n, ptr noundef nonnull @.str) #15
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = call i32 @wcscmp(ptr noundef %i.n, ptr noundef nonnull @.str.1) #15
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  invoke void @_Z18RemoveNameFromPathPw(ptr noundef nonnull %2)
          to label %bb.p unwind label %bb.o

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.g, %bb.j, %bb.p, %bb.n, %bb.k, %bb.r
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.t

bb.p:                                             ; preds = %bb.n, %bb.m
  invoke void @_ZN10StringList9AddStringEPKw(ptr noundef nonnull align 8 dereferenceable(184) %i.g, ptr noundef nonnull %2)
          to label %.backedge unwind label %bb.o

.backedge:                                        ; preds = %bb.p, %bb.i
  br label %bb.g, !llvm.loop !58

bb.q:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24656
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39
  %i.v = icmp ne i64 %i.u, 0                      ; 2 uses
  br i1 %i.v, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.w = invoke noundef zeroext i1 @_ZN10StringList9GetStringEPwm(ptr noundef nonnull align 8 dereferenceable(184) %i.g, ptr noundef nonnull %i.b, i64 noundef 2048)
          to label %bb.s unwind label %bb.o       ; 0 uses

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @_ZN8FindFileD1Ev(ptr noundef nonnull align 8 dead_on_return(8208) dereferenceable(8208) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %i.v

bb.t:                                             ; preds = %bb.o, %.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.o ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8FindFileD1Ev(ptr noundef nonnull align 8 dead_on_return(8208) dereferenceable(8208) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  resume { ptr, i32 } %.pn.pn
}

declare noundef zeroext i1 @_Z9IsPathDivi(i32 noundef) local_unnamed_addr #1

declare void @_Z8wcsncpyzPwPKwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN10StringList5ResetEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

declare void @_ZN8FindFileC1Ev(ptr noundef nonnull align 8 dereferenceable(8208)) unnamed_addr #1

declare void @_ZN8FindFile7SetMaskEPKw(ptr noundef nonnull align 8 dereferenceable(8208), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN8FindFile4NextEP8FindDatab(ptr noundef nonnull align 8 dereferenceable(8208), ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_Z8wcsncatzPwPKwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef ptr @_Z11PointToNamePKw(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wcscmp(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @_Z18RemoveNameFromPathPw(ptr noundef) local_unnamed_addr #1

declare void @_ZN10StringList9AddStringEPKw(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN10StringList9GetStringEPwm(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8ScanTree15GetFilteredMaskEv(ptr noundef nonnull align 8 dereferenceable(33216) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24656
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24616
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8228
  %i.f = tail call noundef zeroext i1 @_ZN10StringList9GetStringEPwm(ptr noundef nonnull align 8 dereferenceable(184) %i.d, ptr noundef nonnull %i.e, i64 noundef 2048)
  br i1 %i.f, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 25000 ; 2 uses
  store i8 0, ptr %i.g, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24800 ; 2 uses
  tail call void @_ZN10StringList5ResetEv(ptr noundef nonnull align 8 dereferenceable(184) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8228 ; 6 uses
  %i.l = tail call noundef zeroext i1 @_ZN10StringList9GetStringEPwm(ptr noundef nonnull align 8 dereferenceable(184) %i.j, ptr noundef nonnull %i.k, i64 noundef 2048)
  br i1 %i.l, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.c, %bb.i
  %.033 = phi i8 [ %.3, %bb.i ], [ 0, %bb.c ]
  %.030 = phi i32 [ %.232, %bb.i ], [ 0, %bb.c ]  ; 5 uses
  %.029 = phi i32 [ %.1, %bb.i ], [ 0, %bb.c ]    ; 4 uses
  %.0 = phi i32 [ %i.v, %bb.i ], [ 0, %bb.c ]     ; 3 uses
  %i.m = zext i32 %.0 to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !26   ; 2 uses
  switch i32 %i.o, label %bb.f [
    i32 0, label %bb.d
    i32 63, label %bb.e
    i32 42, label %bb.e
  ]

bb.d:                                             ; preds = %.preheader
  %i.p = icmp eq i32 %.030, 0
  br i1 %i.p, label %bb.w, label %bb.j

bb.e:                                             ; preds = %.preheader, %.preheader
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.e
  %.134 = phi i8 [ 1, %bb.e ], [ %.033, %.preheader ] ; 2 uses
  %i.q = tail call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.o)
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.n, align 4, !tbaa !26
  %i.s = tail call noundef zeroext i1 @_Z10IsDriveDivi(i32 noundef %i.r)
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = zext nneg i8 %.134 to i32
  %spec.select41 = add i32 %.030, %i.t            ; 2 uses
  %i.u = icmp eq i32 %spec.select41, 0
  %spec.select44 = select i1 %i.u, i32 %.0, i32 %.029
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3 = phi i8 [ %.134, %bb.g ], [ 0, %bb.h ]
  %.232 = phi i32 [ %.030, %bb.g ], [ %spec.select41, %bb.h ]
  %.1 = phi i32 [ %.029, %bb.g ], [ %spec.select44, %bb.h ]
  %i.v = add i32 %.0, 1
  br label %.preheader, !llvm.loop !59

bb.j:                                             ; preds = %bb.d
  store i8 1, ptr %i.g, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8208
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21   ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = icmp eq i32 %i.x, 1
  %i.aa = icmp eq i32 %.030, 1
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %.old1 = icmp eq i32 %.030, 1
  br i1 %.old1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ab = tail call noundef zeroext i1 @_ZN8ScanTree16ExpandFolderMaskEv(ptr noundef nonnull align 8 dereferenceable(33216) %0)
  br label %bb.w

bb.n:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i64 noundef 2048)
  call void @_Z11AddEndSlashPwm(ptr noundef nonnull %i.a, i64 noundef 2048)
  %i.ac = zext i32 %.029 to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ac ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = call noundef zeroext i1 @_Z9IsPathDivi(i32 noundef %i.ae)
  br i1 %i.af, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.ah = call noundef zeroext i1 @_Z10IsDriveDivi(i32 noundef %i.ag)
  br i1 %i.ah, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.aj = phi ptr [ %i.ai, %bb.p ], [ %i.ad, %bb.o ]
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.aj, i64 noundef 2048)
  %i.ak = call noundef ptr @_Z11PointToNamePKw(ptr noundef nonnull %i.a) ; 3 uses
  %i.al = call i32 @wcscmp(ptr noundef %i.ak, ptr noundef nonnull @.str) #15
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = call i32 @wcscmp(ptr noundef %i.ak, ptr noundef nonnull @.str.1) #15
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 0, ptr %i.ak, align 4, !tbaa !26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @_ZN10StringList9AddStringEPKw(ptr noundef nonnull align 8 dereferenceable(184) %i.h, ptr noundef nonnull %i.a)
  %i.ap = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.aq = call noundef zeroext i1 @_Z10IsDriveDivi(i32 noundef %i.ap) ; 2 uses
  %i.ar = zext i1 %i.aq to i32
  %spec.select42 = add i32 %.029, %i.ar
  %i.as = zext i32 %spec.select42 to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.as
  store i32 0, ptr %i.at, align 4, !tbaa !26
  br i1 %i.aq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_Z11AddEndSlashPwm(ptr noundef nonnull %i.k, i64 noundef 2048)
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.k, ptr noundef nonnull @.str, i64 noundef 2048)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.m, %bb.v, %bb.d, %bb.c, %bb.b
  %.137 = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ true, %bb.v ], [ %i.ab, %bb.m ], [ true, %bb.d ]
  ret i1 %.137
}

declare noundef zeroext i1 @_Z10IsDriveDivi(i32 noundef) local_unnamed_addr #1

declare void @_Z11AddEndSlashPwm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @wcschr(ptr noundef, i32 noundef signext) local_unnamed_addr #7

declare noundef zeroext i1 @_Z13IsDriveLetterPKw(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_Z10IsWildcardPKw(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN8FindFile8FastFindEPKwP8FindDatab(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

end_hunk_0
