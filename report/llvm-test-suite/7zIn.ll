inline.NumInlined: 462
inline.NumDeleted: 124
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN8NArchive3N7z10CInArchive12ReadPackInfoERyR13CRecordVectorIyERS3_IbERS3_IjE:bb.a
  store i64 %i.ci, ptr %i.aq, align 8, !tbaa !55
  %i.cj = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ca
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !58
  %i.cl = zext i8 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 32
  %i.cn = or disjoint i64 %i.cm, %i.cf            ; 2 uses
  %i.co = and i32 %i.aw, 4
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.h, label %bb.t

bb.t:                                             ; preds = %bb.s
  %exitcond.5.not.i = icmp eq i64 %i.ay, 5
  br i1 %exitcond.5.not.i, label %bb.j, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = add nuw i64 %i.ap, 7                    ; 2 uses
  store i64 %i.cq, ptr %i.aq, align 8, !tbaa !55
  %i.cr = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ci
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !58
  %i.ct = zext i8 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 40
  %i.cv = or i64 %i.cu, %i.cn                     ; 2 uses
  %i.cw = and i32 %i.aw, 2
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.h, label %bb.v

bb.v:                                             ; preds = %bb.u
  %exitcond.6.not.i = icmp eq i64 %i.ay, 6
  br i1 %exitcond.6.not.i, label %bb.j, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cy = add nuw i64 %i.ap, 8                    ; 2 uses
  store i64 %i.cy, ptr %i.aq, align 8, !tbaa !55
  %i.cz = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cq
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !58
  %i.db = zext i8 %i.da to i64
  %i.dc = shl nuw nsw i64 %i.db, 48
  %i.dd = or i64 %i.dc, %i.cv                     ; 2 uses
  %i.de = and i32 %i.aw, 1
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.h, label %bb.x

bb.x:                                             ; preds = %bb.w
  %exitcond.7.not.i = icmp eq i64 %i.ay, 7
  br i1 %exitcond.7.not.i, label %bb.j, label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.x
  %i.dg = add nuw i64 %i.ap, 9
  store i64 %i.dg, ptr %i.aq, align 8, !tbaa !55
  %i.dh = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cy
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !58
  %i.dj = zext i8 %i.di to i64
  %i.dk = shl nuw i64 %i.dj, 56
  %i.dl = or i64 %i.dk, %i.dd
  br label %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit

_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit:     ; preds = %bb.h, %.loopexit.loopexit.i
  %spec.select.i = phi i64 [ %i.bd, %bb.h ], [ %i.dl, %.loopexit.loopexit.i ]
  switch i64 %spec.select.i, label %bb.z [
    i64 0, label %bb.ab
    i64 10, label %bb.y
  ]

bb.y:                                             ; preds = %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit
  tail call void @_ZN8NArchive3N7z10CInArchive15ReadHashDigestsEiR13CRecordVectorIbERS2_IjE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br label %.backedge

.backedge:                                        ; preds = %bb.y, %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !55 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !54 ; 2 uses
  %.not.i = icmp ult i64 %i.do, %i.dq
  br i1 %.not.i, label %.lr.ph30, label %._crit_edge, !llvm.loop !104

bb.z:                                             ; preds = %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit
  %i.dr = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ar) ; 2 uses
  %i.ds = load i64, ptr %i.ao, align 8, !tbaa !54
  %i.dt = load i64, ptr %i.aq, align 8, !tbaa !55 ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = icmp ugt i64 %i.dr, %i.du
  br i1 %i.dv, label %bb.aa, label %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit:     ; preds = %bb.z
  %i.dw = add i64 %i.dt, %i.dr
  store i64 %i.dw, ptr %i.aq, align 8, !tbaa !55
  br label %.backedge

bb.ab:                                            ; preds = %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !8
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.g)
  br i1 %.not33, label %.loopexit.critedge, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i26
  %.06.i = phi i32 [ 0, %.lr.ph.i26 ], [ %i.eg, %bb.ad ]
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !15
  %i.ec = load i32, ptr %i.dx, align 4, !tbaa !8  ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %i.eb, i64 %i.ed
  store i8 0, ptr %i.ee, align 1, !tbaa !16
  %i.ef = add nsw i32 %i.ec, 1
  store i32 %i.ef, ptr %i.dx, align 4, !tbaa !8
  %i.eg = add nuw nsw i32 %.06.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.eg, %i.g
  br i1 %exitcond.not.i, label %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit, label %bb.ad, !llvm.loop !18

_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit: ; preds = %bb.ad
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %i.g)
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit, %bb.ae
  %.031 = phi i32 [ 0, %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit ], [ %i.ep, %bb.ae ]
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !15
  %i.ek = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.el
  store i32 0, ptr %i.em, align 4, !tbaa !4
  %i.en = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %i.ei, align 4, !tbaa !8
  %i.ep = add nuw i32 %.031, 1                    ; 2 uses
  %exitcond36.not = icmp eq i32 %i.ep, %i.g
  br i1 %exitcond36.not, label %.loopexit, label %bb.ae, !llvm.loop !105

.loopexit.critedge:                               ; preds = %bb.ac
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %i.g)
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %.loopexit.critedge, %bb.ab
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z10CInArchive14ReadUnpackInfoEPK13CObjectVectorI7CBufferIhEERS2_INS0_7CFolderEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.NArchive::N7z::CStreamSwitch", align 8 ; 7 uses
  %4 = alloca %"struct.NArchive::N7z::CFolder", align 8 ; 21 uses
  %5 = alloca %class.CRecordVector.3, align 8     ; 10 uses
  %6 = alloca %class.CRecordVector.1, align 8     ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 11
  br i1 %i.d, label %_ZN8NArchive3N7z10CInArchive13WaitAttributeEy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %i.e = phi i64 [ %i.q, %bb.e ], [ %i.c, %bb.a ]
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.h = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !55   ; 2 uses
  %i.m = sub i64 %i.j, %i.l
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = add i64 %i.l, %i.h
  store i64 %i.o, ptr %i.k, align 8, !tbaa !55
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.q = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p) ; 2 uses
  %i.r = icmp eq i64 %i.q, 11
  br i1 %i.r, label %_ZN8NArchive3N7z10CInArchive13WaitAttributeEy.exit, label %.lr.ph.i

_ZN8NArchive3N7z10CInArchive13WaitAttributeEy.exit: ; preds = %bb.e, %bb.a
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.t = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s) ; 4 uses
  %i.u = icmp ugt i64 %i.t, 2147483647
  br i1 %i.u, label %bb.f, label %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit

bb.f:                                             ; preds = %_ZN8NArchive3N7z10CInArchive13WaitAttributeEy.exit
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit:      ; preds = %_ZN8NArchive3N7z10CInArchive13WaitAttributeEy.exit
  %i.v = trunc nuw i64 %i.t to i32                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i8 0, ptr %i.w, align 8, !tbaa !41
  invoke void @_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPK13CObjectVectorI7CBufferIhEE(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.v)
          to label %.preheader74 unwind label %bb.p

.preheader74:                                     ; preds = %bb.h
  %.not = icmp eq i64 %i.t, 0                     ; 3 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader74
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  br label %bb.q

._crit_edge:                                      ; preds = %bb.w, %.preheader74
  %i.al = load i8, ptr %i.w, align 8, !tbaa !41, !range !23, !noundef !24
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.i, label %_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit

bb.i:                                             ; preds = %._crit_edge
  %i.an = load ptr, ptr %3, align 8, !tbaa !44    ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  invoke void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8  ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.noexc.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15
  %i.au = sext i32 %i.aq to i64
  %i.av = getelementptr [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !45
  br label %_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #20
  unreachable

_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit:         ; preds = %._crit_edge, %.noexc.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.bc = call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bb) ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 12
  br i1 %i.bd, label %_ZN8NArchive3N7z10CInArchive13WaitAttributeEy.exit53, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit, %bb.o
  %i.be = phi i64 [ %i.bq, %bb.o ], [ %i.bc, %_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit ]
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i52
  call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.m:                                             ; preds = %.lr.ph.i52
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  %i.bh = call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bg) ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !54
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !55 ; 2 uses
  %i.bm = sub i64 %i.bj, %i.bl
  %i.bn = icmp ugt i64 %i.bh, %i.bm
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bo = add i64 %i.bl, %i.bh
  store i64 %i.bo, ptr %i.bk, align 8, !tbaa !55
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.bq = call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bp) ; 2 uses
  %i.br = icmp eq i64 %i.bq, 12
  br i1 %i.br, label %_ZN8NArchive3N7z10CInArchive13WaitAttributeEy.exit53, label %.lr.ph.i52

_ZN8NArchive3N7z10CInArchive13WaitAttributeEy.exit53: ; preds = %bb.o, %_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit
  br i1 %.not, label %.preheader73, label %.lr.ph83

.lr.ph83:                                         ; preds = %_ZN8NArchive3N7z10CInArchive13WaitAttributeEy.exit53
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.z

bb.p:                                             ; preds = %bb.h, %bb.g, %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.q:                                             ; preds = %.lr.ph, %bb.w
  %.04278 = phi i32 [ 0, %.lr.ph ], [ %i.cj, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.y, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, i64 16), ptr %4, align 8, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ab, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIN8NArchive3N7z9CBindPairEE, i64 16), ptr %i.z, align 8, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.ae, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %i.ac, align 8, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ah, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIyE, i64 16), ptr %i.af, align 8, !tbaa !13
  store i8 0, ptr %i.ai, align 4, !tbaa !106
  %i.bu = invoke noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #18
          to label %.noexc unwind label %bb.x     ; 3 uses

.noexc:                                           ; preds = %bb.q
  invoke void @_ZN8NArchive3N7z7CFolderC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(133) %i.bu, ptr noundef nonnull align 8 dereferenceable(133) %4)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.t unwind label %bb.x

bb.s:                                             ; preds = %.noexc
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 136) #19
  br label %.body

bb.t:                                             ; preds = %bb.r
  %i.bw = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.bx = load i32, ptr %i.ak, align 4, !tbaa !8  ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.by
  store ptr %i.bu, ptr %i.bz, align 8, !tbaa !28
  %i.ca = add nsw i32 %i.bx, 1
  store i32 %i.ca, ptr %i.ak, align 4, !tbaa !8
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.af) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ac) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.z) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, i64 16), ptr %4, align 8, !tbaa !13
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(133) %4)
          to label %bb.v unwind label %bb.u, !inline_history !112

bb.u:                                             ; preds = %bb.t
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #20, !inline_history !112
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(133) %4) #17, !inline_history !112
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.cd = load i32, ptr %i.ak, align 4, !tbaa !8
  %i.ce = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.cf = sext i32 %i.cd to i64
  %i.cg = getelementptr [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !28
  invoke void @_ZN8NArchive3N7z10CInArchive17GetNextFolderItemERNS0_7CFolderE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(133) %i.ci)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cj = add nuw i32 %.04278, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.cj, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !113

bb.x:                                             ; preds = %bb.r, %bb.q
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.ck, %bb.x ], [ %i.bv, %bb.s ]
  call void @_ZN8NArchive3N7z7CFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(133) dereferenceable(133) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.ac

bb.y:                                             ; preds = %bb.v
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.preheader73:                                     ; preds = %._crit_edge81, %_ZN8NArchive3N7z10CInArchive13WaitAttributeEy.exit53
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !55 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !54 ; 2 uses
  %.not.i5787 = icmp ult i64 %i.co, %i.cq
  br i1 %.not.i5787, label %.lr.ph88, label %._crit_edge89

.lr.ph88:                                         ; preds = %.preheader73
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %umax99 = call i32 @llvm.umax.i32(i32 %i.v, i32 1) ; 3 uses
  %xtraiter138 = and i32 %umax99, 1
  %i.cy = icmp eq i64 %i.t, 1
  %unroll_iter142 = and i32 %umax99, 2147483646
  %lcmp.mod140.not = icmp eq i32 %xtraiter138, 0
  %lcmp.mod141 = trunc i32 %umax99 to i1
  br label %bb.ax

bb.z:                                             ; preds = %.lr.ph83, %._crit_edge81
  %.04382 = phi i32 [ 0, %.lr.ph83 ], [ %i.ep, %._crit_edge81 ] ; 2 uses
  %i.cz = load ptr, ptr %i.bs, align 8, !tbaa !15
  %i.da = sext i32 %.04382 to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !28 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !8  ; 3 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph.i55, label %_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit.thread

_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit.thread: ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, i32 noundef 0)
  br label %._crit_edge81

.lr.ph.i55:                                       ; preds = %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !15 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.de to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.dj = icmp ult i32 %i.de, 4
  br i1 %i.dj, label %.epil.preheader, label %.lr.ph.i55.new

.lr.ph.i55.new:                                   ; preds = %.lr.ph.i55
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i55.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i55.new ], [ %indvars.iv.next.i.3, %bb.aa ] ; 5 uses
  %.056.i = phi i32 [ 0, %.lr.ph.i55.new ], [ %i.eg, %bb.aa ]
  %niter = phi i64 [ 0, %.lr.ph.i55.new ], [ %niter.next.3, %bb.aa ]
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.i
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !28
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 36
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !34
  %i.do = add i32 %i.dn, %.056.i
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !28
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 36
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !34
  %i.du = add i32 %i.dt, %i.do
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !28
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 36
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !34
  %i.ea = add i32 %i.dz, %i.du
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !28
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 36
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !34
  %i.eg = add i32 %i.ef, %i.ea                    ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit.unr-lcssa, label %bb.aa, !llvm.loop !114

_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit.unr-lcssa: ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit.unr-lcssa, %.lr.ph.i55
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i55 ], [ %indvars.iv.next.i.3, %_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit.unr-lcssa ]
  %.056.i.epil.init = phi i32 [ 0, %.lr.ph.i55 ], [ %i.eg, %_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit.unr-lcssa ]
  %lcmp.mod136 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod136)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.ab ] ; 2 uses
  %.056.i.epil = phi i32 [ %.056.i.epil.init, %.epil.preheader ], [ %i.el, %bb.ab ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ab ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv.i.epil
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !34
  %i.el = add i32 %i.ek, %.056.i.epil             ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit, label %bb.ab, !llvm.loop !115

_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit: ; preds = %bb.ab, %_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit.unr-lcssa
  %.lcssa = phi i32 [ %i.eg, %_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit.unr-lcssa ], [ %i.el, %bb.ab ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dc, i64 96 ; 2 uses
  call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.em, i32 noundef %.lcssa)
  %.not91 = icmp eq i32 %.lcssa, 0
  br i1 %.not91, label %._crit_edge81, label %.lr.ph80

.lr.ph80:                                         ; preds = %_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.dc, i64 112
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dc, i64 108 ; 2 uses
  br label %bb.ad

._crit_edge81:                                    ; preds = %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit, %_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit.thread, %_ZNK8NArchive3N7z7CFolder16GetNumOutStreamsEv.exit
  %i.ep = add nuw i32 %.04382, 1                  ; 2 uses
  %exitcond98.not = icmp eq i32 %i.ep, %i.v
  br i1 %exitcond98.not, label %.preheader73, label %bb.z, !llvm.loop !116

bb.ac:                                            ; preds = %.body, %bb.y, %bb.p
  %.pn48.pn = phi { ptr, i32 } [ %i.bt, %bb.p ], [ %i.cl, %bb.y ], [ %eh.lpad-body, %.body ]
  call void @_ZN8NArchive3N7z13CStreamSwitchD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.bv

bb.ad:                                            ; preds = %.lr.ph80, %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit
  %.04179 = phi i32 [ 0, %.lr.ph80 ], [ %i.hu, %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit ]
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 10 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !55 ; 12 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !54 ; 2 uses
  %.not.i = icmp ult i64 %i.es, %i.eu
  br i1 %.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ev = load ptr, ptr %i.eq, align 8, !tbaa !52 ; 9 uses
  %i.ew = add nuw i64 %i.es, 1                    ; 2 uses
  store i64 %i.ew, ptr %i.er, align 8, !tbaa !55
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.es
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !58  ; 2 uses
  %i.ez = zext i8 %i.ey to i32                    ; 8 uses
  %i.fa = xor i64 %i.es, -1
  %i.fb = add i64 %i.eu, %i.fa                    ; 8 uses
  %i.fc = icmp sgt i8 %i.ey, -1
  br i1 %i.fc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.af
  %.01732.lcssa.wide.i = phi i64 [ 0, %bb.af ], [ 8, %bb.aj ], [ 16, %bb.al ], [ 24, %bb.an ], [ 32, %bb.ap ], [ 40, %bb.ar ], [ 48, %bb.at ], [ 56, %bb.av ]
  %.01831.lcssa.i = phi i64 [ 0, %bb.af ], [ %i.fk, %bb.aj ], [ %i.fs, %bb.al ], [ %i.ga, %bb.an ], [ %i.gi, %bb.ap ], [ %i.gq, %bb.ar ], [ %i.gy, %bb.at ], [ %i.hg, %bb.av ]
  %.02030.lcssa.i = phi i32 [ 383, %bb.af ], [ 319, %bb.aj ], [ 287, %bb.al ], [ 271, %bb.an ], [ 263, %bb.ap ], [ 259, %bb.ar ], [ 257, %bb.at ], [ 256, %bb.av ]
  %i.fd = and i32 %.02030.lcssa.i, %i.ez
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = shl nuw nsw i64 %i.fe, %.01732.lcssa.wide.i
  %i.fg = add nuw nsw i64 %i.ff, %.01831.lcssa.i
  br label %_ZN8NArchive3N7z8CInByte210ReadNumberEv.exit

bb.ah:                                            ; preds = %bb.af
  %exitcond.not.i56 = icmp eq i64 %i.fb, 0
  br i1 %exitcond.not.i56, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ah
  call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.fh = add nuw i64 %i.es, 2                    ; 2 uses
  store i64 %i.fh, ptr %i.er, align 8, !tbaa !55
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ew
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !58
  %i.fk = zext i8 %i.fj to i64                    ; 2 uses
  %i.fl = and i32 %i.ez, 64
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.ag, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %exitcond.1.not.i = icmp eq i64 %i.fb, 1
  br i1 %exitcond.1.not.i, label %bb.ai, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fn = add nuw i64 %i.es, 3                    ; 2 uses
  store i64 %i.fn, ptr %i.er, align 8, !tbaa !55
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fh
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !58
  %i.fq = zext i8 %i.fp to i64
  %i.fr = shl nuw nsw i64 %i.fq, 8
  %i.fs = or disjoint i64 %i.fr, %i.fk            ; 2 uses
  %i.ft = and i32 %i.ez, 32
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.ag, label %bb.am

bb.am:                                            ; preds = %bb.al
  %exitcond.2.not.i = icmp eq i64 %i.fb, 2
  br i1 %exitcond.2.not.i, label %bb.ai, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fv = add nuw i64 %i.es, 4                    ; 2 uses
  store i64 %i.fv, ptr %i.er, align 8, !tbaa !55
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fn
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !58
  %i.fy = zext i8 %i.fx to i64
  %i.fz = shl nuw nsw i64 %i.fy, 16
  %i.ga = or disjoint i64 %i.fz, %i.fs            ; 2 uses
  %i.gb = and i32 %i.ez, 16
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.ag, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %exitcond.3.not.i = icmp eq i64 %i.fb, 3
  br i1 %exitcond.3.not.i, label %bb.ai, label %bb.ap

end_hunk_0
