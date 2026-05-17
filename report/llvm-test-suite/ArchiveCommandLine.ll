inline.NumInlined: 373
inline.NumDeleted: 76
begin_hunk_0_@_ZN25CArchiveCommandLineParser6Parse2ER26CArchiveCommandLineOptions:bb.a
_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %bb.f, %bb.e
  %i.w = phi ptr [ null, %bb.e ], [ %i.v, %bb.f ] ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %.val, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.x, %bb.g ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.w, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.z, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.y = load i32, ptr %.04.i.i.i, align 4, !tbaa !48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.y, ptr %.0.i.i.i, align 4, !tbaa !48
  %.not.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i, label %_ZN11CStringBaseIwEC2ERKS0_.exit.i, label %bb.g, !llvm.loop !51

_ZN11CStringBaseIwEC2ERKS0_.exit.i:               ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.val222, ptr %i.aa, align 8, !tbaa !46
  %i.ab = invoke noundef ptr @_Z13MyStringUpperPw(ptr noundef %i.w)
          to label %_ZN11CStringBaseIwE9MakeUpperEv.exit.i unwind label %bb.j ; 0 uses

_ZN11CStringBaseIwE9MakeUpperEv.exit.i:           ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 17179869184, ptr %i.ac, align 8
  %i.ad = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #25
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %_ZN11CStringBaseIwE9MakeUpperEv.exit.i
  store ptr %i.ad, ptr %8, align 8, !tbaa !11
  store i32 0, ptr %i.ad, align 4, !tbaa !48
  %i.ae = invoke noundef i32 @_ZN18NCommandLineParser12ParseCommandEiPKNS_12CCommandFormERK11CStringBaseIwERS4_(i32 noundef 9, ptr noundef nonnull @_ZL14g_CommandForms, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.i unwind label %bb.l       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.af = icmp sgt i32 %i.ae, -1                  ; 2 uses
  br i1 %i.af, label %bb.n, label %bb.o

bb.j:                                             ; preds = %_ZN11CStringBaseIwEC2ERKS0_.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.k:                                             ; preds = %_ZN11CStringBaseIwE9MakeUpperEv.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit.i

bb.l:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %8, align 8, !tbaa !11    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN11CStringBaseIwED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.aj) #21
  br label %_ZN11CStringBaseIwED2Ev.exit.i

bb.n:                                             ; preds = %bb.i
  store i32 %i.ae, ptr %i.m, align 8, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %i.al = load ptr, ptr %8, align 8, !tbaa !11    ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN11CStringBaseIwED2Ev.exit13.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.al) #21
  br label %_ZN11CStringBaseIwED2Ev.exit13.i

_ZN11CStringBaseIwED2Ev.exit13.i:                 ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.an = load ptr, ptr %7, align 8, !tbaa !11    ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZL19ParseArchiveCommandRK11CStringBaseIwER15CArchiveCommand.exit, label %bb.q

bb.q:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit13.i
  call void @_ZdaPv(ptr noundef nonnull %i.an) #21
  br label %_ZL19ParseArchiveCommandRK11CStringBaseIwER15CArchiveCommand.exit

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.m, %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.ah, %bb.k ], [ %i.ai, %bb.l ], [ %i.ai, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit.i, %bb.j
  %i.ap = phi ptr [ %.pre.i, %_ZN11CStringBaseIwED2Ev.exit.i ], [ %i.w, %bb.j ] ; 2 uses
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZN11CStringBaseIwED2Ev.exit.i ], [ %i.ag, %bb.j ]
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN11CStringBaseIwED2Ev.exit15.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #21
  br label %_ZN11CStringBaseIwED2Ev.exit15.i

_ZN11CStringBaseIwED2Ev.exit15.i:                 ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume

_ZL19ParseArchiveCommandRK11CStringBaseIwER15CArchiveCommand.exit: ; preds = %_ZN11CStringBaseIwED2Ev.exit13.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %i.af, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_ZL19ParseArchiveCommandRK11CStringBaseIwER15CArchiveCommand.exit
  %i.ar = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN28CArchiveCommandLineExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull @.str.41)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTI28CArchiveCommandLineException, ptr nonnull @_ZN11CStringBaseIcED2Ev) #24
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ar) #22
  br label %common.resume

bb.w:                                             ; preds = %_ZL19ParseArchiveCommandRK11CStringBaseIwER15CArchiveCommand.exit
  %i.at = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 27)
  %i.au = load i8, ptr %i.at, align 8, !tbaa !35, !range !37, !noundef !38
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 %i.au, ptr %i.av, align 8, !tbaa !53
  %i.aw = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 29)
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !35, !range !37, !noundef !38
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 97
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !54
  %i.az = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 28)
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !35, !range !37, !noundef !38
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bc = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 28)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !55
  %.lobit = lshr i32 %i.be, 31
  %i.bf = trunc nuw nsw i32 %.lobit to i8
  store i8 %i.bf, ptr @g_CaseSensitive, align 1, !tbaa !56
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bg = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 18)
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !35, !range !37, !noundef !38
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bj = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 18)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !55 ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.bl, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 0
  %switch.selectcmp2.i = icmp eq i32 %i.bl, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 1, i32 %switch.select.i
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.0 = phi i32 [ %switch.select3.i, %bb.z ], [ 2, %bb.y ] ; 5 uses
  %i.bm = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 11)
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !35, !range !37, !noundef !38
  %i.bo = trunc nuw i8 %i.bn to i1                ; 2 uses
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 11)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  call fastcc void @_ZL26AddSwitchWildCardsToCensorRN9NWildcard7CCensorERK13CObjectVectorI11CStringBaseIwEEbN13NRecursedType5EEnumEj(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i1 noundef zeroext true, i32 noundef %.0)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bs = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 12)
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !35, !range !37, !noundef !38
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 12)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  call fastcc void @_ZL26AddSwitchWildCardsToCensorRN9NWildcard7CCensorERK13CObjectVectorI11CStringBaseIwEEbN13NRecursedType5EEnumEj(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i1 noundef zeroext false, i32 noundef %.0)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.by = call noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 15)
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !35, !range !37, !noundef !38
  %i.ca = trunc nuw i8 %i.bz to i1
  %i.cb = load i32, ptr %i.m, align 8             ; 2 uses
  %i.cc = add i32 %i.cb, -7
  %spec.select = icmp ult i32 %i.cc, 2
  %.off.i = add i32 %i.cb, -3                     ; 2 uses
  %switch.i = icmp ult i32 %.off.i, 3
  %i.cd = icmp ult i32 %.off.i, 4                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !range !37
  %i.cg = trunc nuw i8 %i.cf to i1
  %or.cond = select i1 %i.cd, i1 %i.cg, i1 false
  %18 = select i1 %or.cond, i1 true, i1 %i.ca
  %.0146.not = or i1 %spec.select, %18            ; 2 uses
  br i1 %.0146.not, label %bb.ar, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ch = icmp eq i32 %i.f, 1
  br i1 %i.ch, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ci = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN28CArchiveCommandLineExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull @.str.41)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTI28CArchiveCommandLineException, ptr nonnull @_ZN11CStringBaseIcED2Ev) #24
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ci) #22
  br label %common.resume

bb.aj:                                            ; preds = %bb.af
  %i.ck = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !45 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  br i1 %i.co, label %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge, label %bb.ak

._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge:      ; preds = %bb.aj
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !46
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %.phi.trans.insert, align 8, !tbaa !46
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !11 ; 3 uses
  store i32 0, ptr %i.cp, align 4, !tbaa !48
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !46 ; 2 uses
  %i.cs = add nsw i32 %i.cr, 1                    ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !50 ; 2 uses
  %i.cv = icmp eq i32 %i.cs, %i.cu
  br i1 %i.cv, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cw = zext nneg i32 %i.cs to i64
  %i.cx = icmp slt i32 %i.cr, -1
  %i.cy = shl nuw nsw i64 %i.cw, 2
  %i.cz = select i1 %i.cx, i64 -1, i64 %i.cy
  %i.da = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cz) #25 ; 3 uses
  %i.db = icmp sgt i32 %i.cu, 0
  br i1 %i.db, label %._crit_edge.thread.i.i, label %bb.am

._crit_edge.thread.i.i:                           ; preds = %bb.al
  call void @_ZdaPv(ptr noundef nonnull %i.cp) #21
  %.pre.i225 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !46
  %i.dc = sext i32 %.pre.i225 to i64
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge.thread.i.i, %bb.al
  %i.dd = phi i64 [ %i.dc, %._crit_edge.thread.i.i ], [ 0, %bb.al ]
  store ptr %i.da, ptr %i.cn, align 8, !tbaa !11
  %i.de = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.dd
  store i32 0, ptr %i.de, align 4, !tbaa !48
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !50
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.am, %bb.ak
  %i.df = phi ptr [ %i.cp, %bb.ak ], [ %i.da, %bb.am ]
  %i.dg = load ptr, ptr %i.cm, align 8, !tbaa !11
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.dg, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.dh, %bb.an ] ; 2 uses
  %.0.i.i = phi ptr [ %i.df, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.dj, %bb.an ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.di = load i32, ptr %.04.i.i, align 4, !tbaa !48 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.di, ptr %.0.i.i, align 4, !tbaa !48
  %.not.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.an, !llvm.loop !51

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.an
  %i.dk = load i32, ptr %i.cq, align 8, !tbaa !46 ; 2 uses
  store i32 %i.dk, ptr %.phi.trans.insert, align 8, !tbaa !46
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  %i.dl = phi i32 [ %.pre, %._ZN11CStringBaseIwEaSERKS0_.exit_crit_edge ], [ %i.dk, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i ]
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  %i.dn = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN28CArchiveCommandLineExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull @.str.41)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @__cxa_throw(ptr nonnull %i.dn, ptr nonnull @_ZTI28CArchiveCommandLineException, ptr nonnull @_ZN11CStringBaseIcED2Ev) #24
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dn) #22
  br label %common.resume

bb.ar:                                            ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit, %bb.ae
  %.0144 = phi i32 [ 1, %bb.ae ], [ 2, %_ZN11CStringBaseIwEaSERKS0_.exit ] ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.dq = load i32, ptr %i.e, align 4, !tbaa !47  ; 2 uses
  %i.dr = icmp ne i32 %i.dq, %.0144
  %or.cond.i = or i1 %i.dr, %i.bo
  br i1 %or.cond.i, label %bb.ax, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i227

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i227:   ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.dt = call noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #25 ; 2 uses
  store ptr %i.dt, ptr %6, align 8, !tbaa !11
  store i32 2, ptr %i.ds, align 4, !tbaa !50
  store i64 42, ptr %i.dt, align 4, !tbaa !48
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 1, ptr %i.du, align 8, !tbaa !46
  switch i32 %.0, label %.noexc.i [
    i32 1, label %bb.as
    i32 0, label %bb.at
  ]

bb.as:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i227
  %i.dv = invoke noundef zeroext i1 @_Z23DoesNameContainWildCardRK11CStringBaseIwE(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc.i unwind label %bb.av

bb.at:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i227
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.at, %bb.as, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i227
  %.0.i.i228 = phi i1 [ false, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i227 ], [ true, %bb.at ], [ %i.dv, %bb.as ]
  invoke void @_ZN9NWildcard7CCensor7AddItemEbRK11CStringBaseIwEb(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext %.0.i.i228)
          to label %_ZL15AddNameToCensorRN9NWildcard7CCensorERK11CStringBaseIwEbN13NRecursedType5EEnumE.exit.i unwind label %bb.av

_ZL15AddNameToCensorRN9NWildcard7CCensorERK11CStringBaseIwEbN13NRecursedType5EEnumE.exit.i: ; preds = %.noexc.i
  %i.dw = load ptr, ptr %6, align 8, !tbaa !11    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %_ZN11CStringBaseIwED2Ev.exit.i229, label %bb.au

bb.au:                                            ; preds = %_ZL15AddNameToCensorRN9NWildcard7CCensorERK11CStringBaseIwEbN13NRecursedType5EEnumE.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.dw) #21
  br label %_ZN11CStringBaseIwED2Ev.exit.i229

_ZN11CStringBaseIwED2Ev.exit.i229:                ; preds = %bb.au, %_ZL15AddNameToCensorRN9NWildcard7CCensorERK11CStringBaseIwEbN13NRecursedType5EEnumE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %.pre.i230 = load i32, ptr %i.e, align 4, !tbaa !47
  br label %bb.ax

bb.av:                                            ; preds = %.noexc.i, %bb.as
  %i.dy = landingpad { ptr, i32 }
          cleanup
  %i.dz = load ptr, ptr %6, align 8, !tbaa !11    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %_ZN11CStringBaseIwED2Ev.exit26.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZdaPv(ptr noundef nonnull %i.dz) #21
  br label %_ZN11CStringBaseIwED2Ev.exit26.i

_ZN11CStringBaseIwED2Ev.exit26.i:                 ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume

bb.ax:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i229, %bb.ar
  %i.eb = phi i32 [ %.pre.i230, %_ZN11CStringBaseIwED2Ev.exit.i229 ], [ %i.dq, %bb.ar ]
  %i.ec = icmp slt i32 %.0144, %i.eb
  br i1 %i.ec, label %.lr.ph.i, label %_ZL33AddToCensorFromNonSwitchesStringsiRN9NWildcard7CCensorERK13CObjectVectorI11CStringBaseIwEEN13NRecursedType5EEnumEbj.exit

.lr.ph.i:                                         ; preds = %bb.ax
  %i.ed = zext nneg i32 %.0144 to i64
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bg, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ed, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bg ] ; 2 uses
  %i.ee = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.i
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !45 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !46 ; 7 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ek = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr @.str.48, ptr %i.ek, align 16, !tbaa !57
  call void @__cxa_throw(ptr nonnull %i.ek, ptr nonnull @_ZTIPKc, ptr null) #24
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.el = load ptr, ptr %i.eg, align 8, !tbaa !11
end_hunk_0
