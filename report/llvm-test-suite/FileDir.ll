inline.NumInlined: 243
inline.NumDeleted: 63
begin_hunk_0_@_ZN8NWindows5NFile10NDirectory22CreateComplexDirectoryEPKw:bb.a
bb.av:                                            ; preds = %bb.au
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #24
  br label %_ZN11CStringBaseIwED2Ev.exit69

_ZN11CStringBaseIwED2Ev.exit68:                   ; preds = %bb.at, %_ZNK11CStringBaseIwE11ReverseFindEw.exit42.thread
  %.pr = load ptr, ptr %3, align 8, !tbaa !8      ; 2 uses
  %i.fa = icmp eq ptr %.pr, null
  br i1 %i.fa, label %_ZN11CStringBaseIwED2Ev.exit70, label %_ZN11CStringBaseIwED2Ev.exit68.thread

_ZN11CStringBaseIwED2Ev.exit68.thread:            ; preds = %bb.h, %_ZN11CStringBaseIwED2Ev.exit68
  %.12482 = phi i1 [ %.023, %_ZN11CStringBaseIwED2Ev.exit68 ], [ true, %bb.h ]
  %i.fb = phi ptr [ %.pr, %_ZN11CStringBaseIwED2Ev.exit68 ], [ %.pre105, %bb.h ]
  call void @_ZdaPv(ptr noundef nonnull %i.fb) #24
  br label %_ZN11CStringBaseIwED2Ev.exit70

_ZN11CStringBaseIwED2Ev.exit70:                   ; preds = %_ZN11CStringBaseIwED2Ev.exit68, %_ZN11CStringBaseIwED2Ev.exit68.thread
  %.12483 = phi i1 [ %.023, %_ZN11CStringBaseIwED2Ev.exit68 ], [ %.12482, %_ZN11CStringBaseIwED2Ev.exit68.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i1 %.12483

_ZN11CStringBaseIwED2Ev.exit69:                   ; preds = %bb.o, %bb.au, %bb.av
  %.pn29.pn.pn.pn = phi { ptr, i32 } [ %.pn29.pn, %bb.av ], [ %i.bk, %bb.o ], [ %.pn29.pn, %bb.au ]
  %i.fc = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %_ZN11CStringBaseIwED2Ev.exit71, label %bb.aw

bb.aw:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit69
  call void @_ZdaPv(ptr noundef nonnull %i.fc) #24
  br label %_ZN11CStringBaseIwED2Ev.exit71

_ZN11CStringBaseIwED2Ev.exit71:                   ; preds = %_ZN11CStringBaseIwED2Ev.exit69, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn29.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.CStringBase, align 8         ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !12
  %.not6 = icmp eq i32 %i.a, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call ptr @__errno_location() #26
  store i32 2, ptr %i.b, align 4, !tbaa !4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_Z17nameWindowToUnix2PKw(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %1, ptr noundef nonnull %0)
  %i.c = load ptr, ptr %1, align 8, !tbaa !18     ; 3 uses
  %i.d = tail call i32 @remove(ptr noundef %i.c) #22
  %i.e = icmp eq i32 %i.d, 0
  %i.f = icmp eq ptr %i.c, null
  br i1 %i.f, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #24
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.f

bb.f:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit, %bb.c
  %.04 = phi i1 [ %i.e, %_ZN11CStringBaseIcED2Ev.exit ], [ false, %bb.c ]
  ret i1 %.04
}

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory27RemoveDirectoryWithSubItemsERK11CStringBaseIwE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.CStringBase, align 8         ; 4 uses
  %2 = alloca %class.CStringBase, align 8         ; 4 uses
  %3 = alloca %class.CStringBase.0, align 8       ; 9 uses
  %4 = alloca %"class.NWindows::NFile::NFind::CFileInfoW", align 8 ; 7 uses
  %5 = alloca %"class.NWindows::NFile::NFind::CEnumeratorW", align 8 ; 15 uses
  %6 = alloca %class.CStringBase.0, align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  store i64 17179869184, ptr %i.b, align 8
  %i.c = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !8
  store i32 0, ptr %i.c, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17, !noalias !61 ; 19 uses
  %i.f = add nsw i32 %i.e, 1                      ; 9 uses
  %i.g = icmp eq i32 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64
  %i.i = icmp slt i32 %i.e, -1
  %i.j = shl nuw nsw i64 %i.h, 2
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #23
          to label %.noexc unwind label %bb.as    ; 2 uses

.noexc:                                           ; preds = %bb.b
  store i32 0, ptr %i.l, align 4, !tbaa !12, !noalias !61
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %.noexc, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.l, %.noexc ] ; 7 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !8, !noalias !61
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.m, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %.0.i.i.i = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.p, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.o = load i32, ptr %.04.i.i.i, align 4, !tbaa !12, !noalias !61 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.o, ptr %.0.i.i.i, align 4, !tbaa !12, !noalias !61
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i, label %bb.c, !llvm.loop !15

_ZN11CStringBaseIwEC2ERKS0_.exit.i:               ; preds = %bb.c
  %i.q = icmp sgt i32 %i.e, 63
  %i.r = lshr i32 %i.f, 1
  %i.s = icmp sgt i32 %i.e, 7
  %..i.i = select i1 %i.s, i32 16, i32 4
  %i.t = tail call i32 @llvm.umax.i32(i32 %i.r, i32 1)
  %.1.i.i47 = select i1 %i.q, i32 %i.t, i32 %..i.i
  %i.u = add nsw i32 %.1.i.i47, %i.f              ; 3 uses
  %i.v = icmp eq i32 %i.u, %i.e
  br i1 %i.v, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i._crit_edge, label %bb.d

_ZN11CStringBaseIwEC2ERKS0_.exit.i._crit_edge:    ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %.pre = sext i32 %i.e to i64
  br label %bb.h

bb.d:                                             ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %i.w = add nsw i32 %i.u, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = icmp slt i32 %i.u, -1
  %i.z = shl nuw nsw i64 %i.x, 2
  %i.aa = select i1 %i.y, i64 -1, i64 %i.z
  %i.ab = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #23
          to label %.noexc48 unwind label %bb.f   ; 3 uses

.noexc48:                                         ; preds = %bb.d
  %i.ac = icmp sgt i32 %i.e, -1
  br i1 %i.ac, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %.noexc48
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.e to i64
  %i.ad = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %.sroa.0.0, i64 %i.ad, i1 false), !tbaa !12
  br label %._crit_edge.thread.i.i.i

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.ae = icmp eq ptr %.sroa.0.0, null
  br i1 %i.ae, label %bb.e, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #24
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i, %.noexc48
  %i.af = sext i32 %i.e to i64                    ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.af
  store i32 0, ptr %i.ag, align 4, !tbaa !12
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = icmp eq ptr %.sroa.0.0, null
  br i1 %i.ai, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #24
  br label %.body

bb.h:                                             ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i._crit_edge, %bb.e
  %.pre-phi = phi i64 [ %.pre, %_ZN11CStringBaseIwEC2ERKS0_.exit.i._crit_edge ], [ %i.af, %bb.e ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_ZN11CStringBaseIwEC2ERKS0_.exit.i._crit_edge ], [ %i.ab, %bb.e ] ; 9 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %.sroa.0.1, i64 %.pre-phi
  store i32 47, ptr %i.aj, align 4, !tbaa !12
  %i.ak = sext i32 %i.f to i64                    ; 7 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %.sroa.0.1, i64 %i.ak
  store i32 0, ptr %i.al, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !alias.scope !64
  %i.am = add nsw i32 %i.e, 2                     ; 14 uses
  %i.an = icmp eq i32 %i.am, 0                    ; 3 uses
  br i1 %i.an, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i19, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = icmp slt i32 %i.e, -2
  %i.aq = shl nuw nsw i64 %i.ao, 2
  %i.ar = select i1 %i.ap, i64 -1, i64 %i.aq
  %i.as = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #23
          to label %.noexc25 unwind label %bb.at  ; 3 uses

.noexc25:                                         ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 12
  store ptr %i.as, ptr %6, align 8, !tbaa !8, !alias.scope !64
  store i32 0, ptr %i.as, align 4, !tbaa !12, !noalias !64
  store i32 %i.am, ptr %i.at, align 4, !tbaa !14, !alias.scope !64
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i19

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i19:    ; preds = %.noexc25, %bb.h
  %.pre.i.i.i54 = phi ptr [ null, %bb.h ], [ %i.as, %.noexc25 ] ; 7 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i19
  %.04.i.i.i20 = phi ptr [ %.sroa.0.1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i19 ], [ %i.au, %bb.j ] ; 2 uses
  %.0.i.i.i21 = phi ptr [ %.pre.i.i.i54, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i19 ], [ %i.aw, %bb.j ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.04.i.i.i20, i64 4
  %i.av = load i32, ptr %.04.i.i.i20, align 4, !tbaa !12, !noalias !64 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i21, i64 4
  store i32 %i.av, ptr %.0.i.i.i21, align 4, !tbaa !12, !noalias !64
  %.not.i.i.i22 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i22, label %bb.k, label %bb.j, !llvm.loop !15

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.az = icmp sgt i32 %i.e, 62                   ; 2 uses
  %i.ba = lshr i32 %i.am, 1                       ; 2 uses
  %i.bb = icmp sgt i32 %i.e, 6
  %..i.i50 = select i1 %i.bb, i32 16, i32 4       ; 2 uses
  %i.bc = tail call i32 @llvm.umax.i32(i32 %i.ba, i32 1)
  %.1.i.i52 = select i1 %i.az, i32 %i.bc, i32 %..i.i50
  %i.bd = add nsw i32 %.1.i.i52, %i.am            ; 2 uses
  %i.be = add nsw i32 %i.bd, 1                    ; 3 uses
  %i.bf = icmp eq i32 %i.be, %i.am
  br i1 %i.bf, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = icmp slt i32 %i.bd, -1
  %i.bi = shl nuw nsw i64 %i.bg, 2
  %i.bj = select i1 %i.bh, i64 -1, i64 %i.bi
  %i.bk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bj) #23
          to label %.noexc63 unwind label %bb.n   ; 4 uses

.noexc63:                                         ; preds = %bb.l
  %i.bl = icmp sgt i32 %i.e, -2
  br i1 %i.bl, label %.preheader.i.i.i53, label %bb.m

.preheader.i.i.i53:                               ; preds = %.noexc63
  %i.bm = icmp sgt i32 %i.e, -1
  br i1 %i.bm, label %.lr.ph.i.i.i58, label %._crit_edge.i.i.i55

.lr.ph.i.i.i58:                                   ; preds = %.preheader.i.i.i53
  %wide.trip.count.i.i.i59 = zext nneg i32 %i.f to i64
  %i.bn = shl nuw nsw i64 %wide.trip.count.i.i.i59, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr align 4 %.pre.i.i.i54, i64 %i.bn, i1 false), !tbaa !12
  br label %._crit_edge.thread.i.i.i56

._crit_edge.i.i.i55:                              ; preds = %.preheader.i.i.i53
  %i.bo = icmp eq ptr %.pre.i.i.i54, null
  br i1 %i.bo, label %bb.m, label %._crit_edge.thread.i.i.i56

._crit_edge.thread.i.i.i56:                       ; preds = %.lr.ph.i.i.i58, %._crit_edge.i.i.i55
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i54) #24
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i.i.i56, %._crit_edge.i.i.i55, %.noexc63
  store ptr %i.bk, ptr %6, align 8, !tbaa !8
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.ak
  store i32 0, ptr %i.bp, align 4, !tbaa !12
  store i32 %i.be, ptr %i.ay, align 4, !tbaa !14
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.br = icmp eq ptr %.pre.i.i.i54, null
  br i1 %i.br, label %.body26, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i54) #24
  br label %.body26

bb.p:                                             ; preds = %bb.k, %bb.m
  %i.bs = phi ptr [ %i.bk, %bb.m ], [ %.pre.i.i.i54, %bb.k ] ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ak
  store i32 42, ptr %i.bt, align 4, !tbaa !12
  store i32 %i.am, ptr %i.ax, align 8, !tbaa !17
  %i.bu = sext i32 %i.am to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bu
  store i32 0, ptr %i.bv, align 4, !tbaa !12
  invoke void @_ZN8NWindows5NFile5NFind12CEnumeratorWC2ERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.q unwind label %bb.au

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %6, align 8, !tbaa !8     ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bw) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bz = zext nneg i32 %i.am to i64
  %i.ca = icmp slt i32 %i.e, -2
  %i.cb = shl nuw nsw i64 %i.bz, 2
  %i.cc = select i1 %i.ca, i64 -1, i64 %i.cb      ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cf = icmp sgt i32 %i.e, -1
  %wide.trip.count.i.i.i117 = zext i32 %i.f to i64
  %.0.i.i90 = select i1 %i.az, i32 %i.ba, i32 %..i.i50 ; 2 uses
  %i.cg = icmp sgt i32 %i.e, -2                   ; 2 uses
  %i.ch = shl nuw nsw i64 %wide.trip.count.i.i.i117, 2 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZN11CStringBaseIwED2Ev.exit
  %i.ci = invoke noundef zeroext i1 @_ZN8NWindows5NFile5NFind12CEnumeratorW4NextERNS1_10CFileInfoWE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.s unwind label %bb.aw

bb.s:                                             ; preds = %.backedge
  br i1 %i.ci, label %.noexc29, label %.critedge

.noexc29:                                         ; preds = %bb.s
  %i.cj = load i32, ptr %i.by, align 8, !tbaa !67
  %i.ck = and i32 %i.cj, 16
  %.not142 = icmp eq i32 %i.ck, 0
  br i1 %.not142, label %bb.af, label %bb.t

bb.t:                                             ; preds = %.noexc29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !70
  br i1 %i.an, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i78, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cc) #23
          to label %.noexc84 unwind label %bb.aw  ; 3 uses

.noexc84:                                         ; preds = %bb.u
  store ptr %i.cl, ptr %3, align 8, !tbaa !8, !alias.scope !70
  store i32 0, ptr %i.cl, align 4, !tbaa !12, !noalias !70
  store i32 %i.am, ptr %i.cd, align 4, !tbaa !14, !alias.scope !70
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i78

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i78:    ; preds = %.noexc84, %bb.t
  %.pr = phi ptr [ null, %bb.t ], [ %i.cl, %.noexc84 ] ; 8 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i78
  %.04.i.i.i79 = phi ptr [ %.sroa.0.1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i78 ], [ %i.cm, %bb.v ] ; 2 uses
  %.0.i.i.i80 = phi ptr [ %.pr, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i78 ], [ %i.co, %bb.v ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.04.i.i.i79, i64 4
  %i.cn = load i32, ptr %.04.i.i.i79, align 4, !tbaa !12, !noalias !70 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i80, i64 4
  store i32 %i.cn, ptr %.0.i.i.i80, align 4, !tbaa !12, !noalias !70
  %.not.i.i.i81 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i81, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i82, label %bb.v, !llvm.loop !15

_ZN11CStringBaseIwEC2ERKS0_.exit.i82:             ; preds = %bb.v
  store i32 %i.f, ptr %i.ce, align 8, !tbaa !17, !alias.scope !70
  %i.cp = load i32, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %.not.i.i103 = icmp sgt i32 %i.cp, 0
  br i1 %.not.i.i103, label %7, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i104

7:                                                ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i82
  %.1.i.i110 = call i32 @llvm.smax.i32(i32 %.0.i.i90, i32 %i.cp)
  %8 = add nsw i32 %.1.i.i110, %i.am              ; 2 uses
  %9 = add nsw i32 %8, 1                          ; 3 uses
  %10 = icmp eq i32 %9, %i.am
  br i1 %10, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i104, label %bb.w

bb.w:                                             ; preds = %7
  %i.cq = zext nneg i32 %9 to i64
  %i.cr = icmp slt i32 %8, -1
  %i.cs = shl nuw nsw i64 %i.cq, 2
  %i.ct = select i1 %i.cr, i64 -1, i64 %i.cs
  %i.cu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ct) #23
          to label %.noexc121 unwind label %bb.z  ; 4 uses

.noexc121:                                        ; preds = %bb.w
  br i1 %i.cg, label %.preheader.i.i.i111, label %bb.x

.preheader.i.i.i111:                              ; preds = %.noexc121
  br i1 %i.cf, label %.lr.ph.i.i.i116.preheader, label %._crit_edge.i.i.i113

.lr.ph.i.i.i116.preheader:                        ; preds = %.preheader.i.i.i111
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %.pr, i64 %i.ch, i1 false), !tbaa !12
  br label %._crit_edge.thread.i.i.i114

._crit_edge.i.i.i113:                             ; preds = %.preheader.i.i.i111
  %i.cv = icmp eq ptr %.pr, null
  br i1 %i.cv, label %bb.x, label %._crit_edge.thread.i.i.i114

._crit_edge.thread.i.i.i114:                      ; preds = %.lr.ph.i.i.i116.preheader, %._crit_edge.i.i.i113
  call void @_ZdaPv(ptr noundef nonnull %.pr) #24
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread.i.i.i114, %._crit_edge.i.i.i113, %.noexc121
  store ptr %i.cu, ptr %3, align 8, !tbaa !8
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.ak
  store i32 0, ptr %i.cw, align 4, !tbaa !12
  store i32 %9, ptr %i.cd, align 4, !tbaa !14
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i104

_ZN11CStringBaseIwE10GrowLengthEi.exit.i104:      ; preds = %7, %_ZN11CStringBaseIwEC2ERKS0_.exit.i82, %bb.x
  %11 = phi ptr [ %i.cu, %bb.x ], [ %.pr, %_ZN11CStringBaseIwEC2ERKS0_.exit.i82 ], [ %.pr, %7 ] ; 5 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %11, i64 %i.ak
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i104
  %.04.i.i105 = phi ptr [ %i.cy, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i104 ], [ %i.cz, %bb.y ] ; 2 uses
  %.0.i4.i106 = phi ptr [ %i.cx, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i104 ], [ %i.db, %bb.y ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.04.i.i105, i64 4
  %i.da = load i32, ptr %.04.i.i105, align 4, !tbaa !12 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i4.i106, i64 4
  store i32 %i.da, ptr %.0.i4.i106, align 4, !tbaa !12
  %.not.i5.i107 = icmp eq i32 %i.da, 0
  br i1 %.not.i5.i107, label %.noexc30, label %bb.y, !llvm.loop !15

bb.z:                                             ; preds = %bb.w
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = icmp eq ptr %.pr, null
  br i1 %i.dd, label %.body32, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %.pr) #24
  br label %.body32

.noexc30:                                         ; preds = %bb.y
  %i.de = load i32, ptr %i.b, align 8, !tbaa !17
  %i.df = add nsw i32 %i.de, %i.f
  store i32 %i.df, ptr %i.ce, align 8, !tbaa !17
  %i.dg = invoke noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory27RemoveDirectoryWithSubItemsERK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.ab unwind label %bb.ad, !inline_history !73

bb.ab:                                            ; preds = %.noexc30
  %i.dh = icmp eq ptr %11, null
  br i1 %i.dh, label %_ZN11CStringBaseIwED2Ev.exit77, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %11) #24
  br label %_ZN11CStringBaseIwED2Ev.exit77

_ZN11CStringBaseIwED2Ev.exit77:                   ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %i.dg, label %.backedge.backedge, label %.loopexit

.backedge.backedge:                               ; preds = %_ZN11CStringBaseIwED2Ev.exit77, %bb.aq
  br label %.backedge, !llvm.loop !74

bb.ad:                                            ; preds = %.noexc30
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = icmp eq ptr %11, null
  br i1 %i.dj, label %_ZN11CStringBaseIwED2Ev.exit76, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %11) #24
  br label %_ZN11CStringBaseIwED2Ev.exit76

_ZN11CStringBaseIwED2Ev.exit76:                   ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.body32

bb.af:                                            ; preds = %.noexc29
  br i1 %i.an, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i67, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cc) #23
          to label %.noexc73 unwind label %bb.aw  ; 2 uses

.noexc73:                                         ; preds = %bb.ag
  store i32 0, ptr %i.dk, align 4, !tbaa !12, !noalias !75
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i67

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i67:    ; preds = %.noexc73, %bb.af
  %.sroa.0136.0 = phi ptr [ null, %bb.af ], [ %i.dk, %.noexc73 ] ; 8 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i67
  %.04.i.i.i68 = phi ptr [ %.sroa.0.1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i67 ], [ %i.dl, %bb.ah ] ; 2 uses
  %.0.i.i.i69 = phi ptr [ %.sroa.0136.0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i67 ], [ %i.dn, %bb.ah ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.04.i.i.i68, i64 4
  %i.dm = load i32, ptr %.04.i.i.i68, align 4, !tbaa !12, !noalias !75 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i.i69, i64 4
  store i32 %i.dm, ptr %.0.i.i.i69, align 4, !tbaa !12, !noalias !75
  %.not.i.i.i70 = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i.i70, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i71, label %bb.ah, !llvm.loop !15

_ZN11CStringBaseIwEC2ERKS0_.exit.i71:             ; preds = %bb.ah
  %i.do = load i32, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %.not.i.i88 = icmp sgt i32 %i.do, 0
  br i1 %.not.i.i88, label %12, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

12:                                               ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i71
  %.1.i.i91 = call i32 @llvm.smax.i32(i32 %.0.i.i90, i32 %i.do)
  %13 = add nsw i32 %.1.i.i91, %i.am              ; 2 uses
  %14 = add nsw i32 %13, 1                        ; 2 uses
  %15 = icmp eq i32 %14, %i.am
  br i1 %15, label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i, label %bb.ai

bb.ai:                                            ; preds = %12
  %i.dp = zext nneg i32 %14 to i64
  %i.dq = icmp slt i32 %13, -1
  %i.dr = shl nuw nsw i64 %i.dp, 2
  %i.ds = select i1 %i.dq, i64 -1, i64 %i.dr
  %i.dt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ds) #23
          to label %.noexc102 unwind label %bb.al ; 3 uses

.noexc102:                                        ; preds = %bb.ai
  br i1 %i.cg, label %.preheader.i.i.i92, label %bb.aj

.preheader.i.i.i92:                               ; preds = %.noexc102
  br i1 %i.g, label %._crit_edge.i.i.i94, label %.lr.ph.i.i.i97.preheader

.lr.ph.i.i.i97.preheader:                         ; preds = %.preheader.i.i.i92
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dt, ptr align 4 %.sroa.0136.0, i64 %i.ch, i1 false), !tbaa !12
  br label %._crit_edge.thread.i.i.i95

._crit_edge.i.i.i94:                              ; preds = %.preheader.i.i.i92
  %i.du = icmp eq ptr %.sroa.0136.0, null
  br i1 %i.du, label %bb.aj, label %._crit_edge.thread.i.i.i95

._crit_edge.thread.i.i.i95:                       ; preds = %.lr.ph.i.i.i97.preheader, %._crit_edge.i.i.i94
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0136.0) #24
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.thread.i.i.i95, %._crit_edge.i.i.i94, %.noexc102
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.ak
  store i32 0, ptr %i.dv, align 4, !tbaa !12
  br label %_ZN11CStringBaseIwE10GrowLengthEi.exit.i

_ZN11CStringBaseIwE10GrowLengthEi.exit.i:         ; preds = %bb.aj, %12, %_ZN11CStringBaseIwEC2ERKS0_.exit.i71
  %.sroa.0136.1 = phi ptr [ %.sroa.0136.0, %12 ], [ %i.dt, %bb.aj ], [ %.sroa.0136.0, %_ZN11CStringBaseIwEC2ERKS0_.exit.i71 ] ; 7 uses
  %i.dw = getelementptr inbounds [4 x i8], ptr %.sroa.0136.1, i64 %i.ak
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i
  %.04.i.i = phi ptr [ %i.dx, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.dy, %bb.ak ] ; 2 uses
  %.0.i4.i = phi ptr [ %i.dw, %_ZN11CStringBaseIwE10GrowLengthEi.exit.i ], [ %i.ea, %bb.ak ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.dz = load i32, ptr %.04.i.i, align 4, !tbaa !12 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i4.i, i64 4
  store i32 %i.dz, ptr %.0.i4.i, align 4, !tbaa !12
  %.not.i5.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i5.i, label %.noexc31, label %bb.ak, !llvm.loop !15

bb.al:                                            ; preds = %bb.ai
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = icmp eq ptr %.sroa.0136.0, null
  br i1 %i.ec, label %.body32, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0136.0) #24
  br label %.body32

.noexc31:                                         ; preds = %bb.ak
  %.not.i = icmp eq ptr %.sroa.0136.1, null
  br i1 %.not.i, label %_ZN8NWindows5NFile10NDirectoryL24RemoveDirectorySubItems2ERK11CStringBaseIwERKNS0_5NFind10CFileInfoWE.exit, label %bb.an

bb.an:                                            ; preds = %.noexc31
  %i.ed = load i32, ptr %.sroa.0136.1, align 4, !tbaa !12
  %.not6.i = icmp eq i32 %i.ed, 0
  br i1 %.not6.i, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_Z17nameWindowToUnix2PKw(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %1, ptr noundef nonnull readonly %.sroa.0136.1)
          to label %.noexc174 unwind label %bb.ar

.noexc174:                                        ; preds = %bb.ao
  %i.ee = load ptr, ptr %1, align 8, !tbaa !18    ; 3 uses
  %i.ef = call i32 @remove(ptr noundef %i.ee) #22
  %i.eg = icmp eq i32 %i.ef, 0
  %i.eh = icmp eq ptr %i.ee, null
  br i1 %i.eh, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.noexc174
  call void @_ZdaPv(ptr noundef nonnull %i.ee) #24
  br label %bb.aq

.thread:                                          ; preds = %bb.an
  %i.ei = tail call ptr @__errno_location() #26
  store i32 2, ptr %i.ei, align 4, !tbaa !4
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0136.1) #24
  br label %.loopexit

bb.aq:                                            ; preds = %.noexc174, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0136.1) #24
  br i1 %i.eg, label %.backedge.backedge, label %.loopexit

bb.ar:                                            ; preds = %bb.ao
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0136.1) #24
  br label %.body32

_ZN8NWindows5NFile10NDirectoryL24RemoveDirectorySubItems2ERK11CStringBaseIwERKNS0_5NFind10CFileInfoWE.exit: ; preds = %.noexc31
  %i.ek = tail call ptr @__errno_location() #26
  store i32 2, ptr %i.ek, align 4, !tbaa !4
  br label %.loopexit

bb.as:                                            ; preds = %bb.b
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %bb.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body26

bb.au:                                            ; preds = %bb.p
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %6, align 8, !tbaa !8     ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %.body26, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZdaPv(ptr noundef nonnull %i.eo) #24
  br label %.body26

.body26:                                          ; preds = %bb.av, %bb.au, %bb.at, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.n ], [ %i.em, %bb.at ], [ %i.bq, %bb.o ], [ %i.en, %bb.au ], [ %i.en, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.bj

bb.aw:                                            ; preds = %bb.u, %bb.ag, %.backedge
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body32

.body32:                                          ; preds = %bb.am, %bb.al, %bb.z, %bb.aa, %bb.aw, %_ZN11CStringBaseIwED2Ev.exit76, %bb.ar
  %eh.lpad-body33 = phi { ptr, i32 } [ %i.ej, %bb.ar ], [ %i.di, %_ZN11CStringBaseIwED2Ev.exit76 ], [ %i.dc, %bb.z ], [ %i.eb, %bb.al ], [ %i.eb, %bb.am ], [ %i.eq, %bb.aw ], [ %i.dc, %bb.aa ]
  call void @_ZN8NWindows5NFile5NFind12CEnumeratorWD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #22
  br label %bb.bj

.loopexit:                                        ; preds = %bb.aq, %_ZN11CStringBaseIwED2Ev.exit77, %_ZN8NWindows5NFile10NDirectoryL24RemoveDirectorySubItems2ERK11CStringBaseIwERKNS0_5NFind10CFileInfoWE.exit, %.thread
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !8  ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %_ZN11CStringBaseIwED2Ev.exit.i35, label %bb.ax

bb.ax:                                            ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.es) #24
  br label %_ZN11CStringBaseIwED2Ev.exit.i35

_ZN11CStringBaseIwED2Ev.exit.i35:                 ; preds = %bb.ax, %.loopexit
  %i.eu = invoke noundef zeroext i1 @_ZN8NWindows5NFile5NFind9CFindFile5CloseEv(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.ay unwind label %bb.bb     ; 0 uses

bb.ay:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i35
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !18 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZN11CStringBaseIcED2Ev.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZdaPv(ptr noundef nonnull %i.ew) #24
  br label %_ZN11CStringBaseIcED2Ev.exit.i.i

_ZN11CStringBaseIcED2Ev.exit.i.i:                 ; preds = %bb.az, %bb.ay
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !18 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %_ZN8NWindows5NFile5NFind12CEnumeratorWD2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.ez) #24
  br label %_ZN8NWindows5NFile5NFind12CEnumeratorWD2Ev.exit

bb.bb:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i35
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #27
  unreachable

_ZN8NWindows5NFile5NFind12CEnumeratorWD2Ev.exit:  ; preds = %_ZN11CStringBaseIcED2Ev.exit.i.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN8NWindows5NFile10NDirectory17MyRemoveDirectoryEPKw.exit

.critedge:                                        ; preds = %bb.s
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !8  ; 2 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %_ZN11CStringBaseIwED2Ev.exit.i36, label %bb.bc

bb.bc:                                            ; preds = %.critedge
  call void @_ZdaPv(ptr noundef nonnull %i.fe) #24
  br label %_ZN11CStringBaseIwED2Ev.exit.i36

_ZN11CStringBaseIwED2Ev.exit.i36:                 ; preds = %bb.bc, %.critedge
  %i.fg = invoke noundef zeroext i1 @_ZN8NWindows5NFile5NFind9CFindFile5CloseEv(ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.bd unwind label %bb.bg     ; 0 uses

bb.bd:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i36
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !18 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %_ZN11CStringBaseIcED2Ev.exit.i.i37, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZdaPv(ptr noundef nonnull %i.fi) #24
  br label %_ZN11CStringBaseIcED2Ev.exit.i.i37

_ZN11CStringBaseIcED2Ev.exit.i.i37:               ; preds = %bb.be, %bb.bd
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !18 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit.i.i37
  call void @_ZdaPv(ptr noundef nonnull %i.fl) #24
  br label %bb.bh

bb.bg:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i36
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #27
  unreachable

bb.bh:                                            ; preds = %bb.bf, %_ZN11CStringBaseIcED2Ev.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.fp = load ptr, ptr %0, align 8, !tbaa !8
  %i.fq = invoke noundef zeroext i1 @_ZN8NWindows5NFile10NDirectory19MySetFileAttributesEPKwj(ptr noundef %i.fp, i32 noundef 0)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
end_hunk_0
