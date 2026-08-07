inline.NumInlined: 183
inline.NumDeleted: 52
begin_hunk_0_@_ZNK6icu_785UTS4611processUTF8ENS_11StringPieceEaaRNS_8ByteSinkERNS_8IDNAInfoER10UErrorCode:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.en

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

.split.split:                                     ; preds = %bb.cg, %bb.de
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %bb.de ], [ 4, %bb.cg ] ; 6 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv214
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !12  ; 5 uses
  %i.ib = sext i8 %i.ia to i32                    ; 2 uses
  %i.ic = icmp slt i8 %i.ia, 0
  br i1 %i.ic, label %.split178.us.loopexit257.loopexit, label %bb.cx

bb.cx:                                            ; preds = %.split.split
  %i.id = add nsw i32 %i.ib, -65
  %i.ie = icmp ult i32 %i.id, 26
  br i1 %i.ie, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.if = or i8 %i.ia, 32
  %i.ig = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv214
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !12
  br label %bb.de

bb.cz:                                            ; preds = %bb.cx
  %i.ih = zext nneg i32 %i.ib to i64
  %i.ii = getelementptr inbounds nuw i8, ptr @_ZN6icu_78L9asciiDataE, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !12
  %i.ik = icmp slt i8 %i.ij, 0
  br i1 %i.ik, label %.split178.us.loopexit257.loopexit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.il = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv214
  store i8 %i.ia, ptr %i.il, align 1, !tbaa !12
  switch i8 %i.ia, label %bb.de [
    i8 45, label %bb.db
    i8 46, label %.split178.us.loopexit257.loopexit
  ]

bb.db:                                            ; preds = %bb.da
  %i.im = add nuw nsw i64 %indvars.iv214, 1       ; 2 uses
  %i.in = icmp eq i64 %i.im, %i.y
  br i1 %i.in, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 %i.im
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !12
  %i.iq = icmp eq i8 %i.ip, 46
  br i1 %i.iq, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.ir = load i32, ptr %i.x, align 4, !tbaa !25
  %i.is = or i32 %i.ir, 16
  store i32 %i.is, ptr %i.x, align 4, !tbaa !25
  br label %bb.de

bb.de:                                            ; preds = %bb.da, %bb.dc, %bb.dd, %bb.cy
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %.not149 = icmp eq i64 %indvars.iv.next215, %i.y
  br i1 %.not149, label %.split181.us, label %.split.split, !llvm.loop !35

.split178.us.loopexit257.loopexit:                ; preds = %bb.da, %.split.split, %bb.cz
  %i.it = trunc nuw nsw i64 %indvars.iv214 to i32
  br label %.split178.us

.split178.us.loopexit260.loopexit:                ; preds = %bb.ci, %.split.split.us
  %i.iu = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split178.us

.split178.us:                                     ; preds = %.split.split.us.peel, %bb.af, %.split.split.us.peel266, %bb.am, %.split.split.us.peel272, %bb.at, %bb.au, %.split178.us.loopexit260.loopexit, %.split.split.peel, %bb.bj, %bb.bk, %.split.split.peel280, %bb.br, %bb.bs, %.split.split.peel285, %bb.bz, %bb.ca, %bb.cb, %.split178.us.loopexit257.loopexit, %.split.us, %bb.j, %bb.p, %.split.split.us.preheader, %bb.y, %.split.split.preheader, %bb.bb, %bb.bc
  %.us-phi = phi i32 [ 0, %.split.split.us.preheader ], [ 2, %bb.bs ], [ 0, %bb.y ], [ %i.ad, %.split.us ], [ 0, %.split.split.preheader ], [ 0, %bb.bb ], [ 0, %bb.bc ], [ %i.ad, %bb.p ], [ %i.ad, %bb.j ], [ 3, %.split.split.peel285 ], [ 3, %bb.bz ], [ 3, %bb.ca ], [ 3, %bb.cb ], [ 1, %.split.split.peel ], [ 1, %bb.bj ], [ 1, %bb.bk ], [ %i.it, %.split178.us.loopexit257.loopexit ], [ 2, %.split.split.peel280 ], [ 2, %bb.br ], [ 3, %.split.split.us.peel272 ], [ 3, %bb.at ], [ 3, %bb.au ], [ 1, %.split.split.us.peel ], [ 1, %bb.af ], [ %i.iu, %.split178.us.loopexit260.loopexit ], [ 2, %.split.split.us.peel266 ], [ 2, %bb.am ]
  %.us-phi179 = phi i32 [ 0, %.split.split.us.preheader ], [ 0, %.split.split.peel ], [ 0, %bb.y ], [ %.0118176.us, %.split.us ], [ 0, %.split.split.preheader ], [ 0, %bb.bb ], [ 0, %bb.bc ], [ %.0118176.us, %bb.p ], [ %.0118176.us, %bb.j ], [ 0, %.split178.us.loopexit257.loopexit ], [ 0, %bb.cb ], [ 0, %bb.ca ], [ 0, %bb.bz ], [ 0, %.split.split.peel285 ], [ 0, %bb.bs ], [ 0, %bb.br ], [ 0, %.split.split.peel280 ], [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %.split178.us.loopexit260.loopexit ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %.split.split.us.peel272 ], [ 0, %bb.am ], [ 0, %.split.split.us.peel266 ], [ 0, %bb.af ], [ 0, %.split.split.us.peel ] ; 5 uses
  %i.iv = load i32, ptr %i.x, align 4, !tbaa !25
  %i.iw = load i32, ptr %6, align 4, !tbaa !22
  %i.ix = or i32 %i.iw, %i.iv
  store i32 %i.ix, ptr %6, align 4, !tbaa !22
  %i.iy = sub nsw i32 %.us-phi, %.us-phi179       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.iz = sext i32 %.us-phi179 to i64
  %i.ja = getelementptr inbounds i8, ptr %i.s, i64 %i.iz
  invoke void @_ZN6icu_7813UnicodeString8fromUTF8ENS_11StringPieceE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %10, ptr %i.ja, i32 %i.iy)
          to label %bb.df unwind label %bb.dk

bb.df:                                            ; preds = %.split178.us
  %i.jb = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %10) #12 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.jc = load ptr, ptr %5, align 8, !tbaa !10
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  invoke void %i.je(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.s, i32 noundef %.us-phi179)
          to label %bb.dg unwind label %bb.dl

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  invoke void @_ZN6icu_7811StringPieceC1ERKS0_i(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %8, i32 noundef %.us-phi179)
          to label %bb.dh unwind label %bb.dm

bb.dh:                                            ; preds = %bb.dg
  %i.jf = load ptr, ptr %12, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.jh = load i32, ptr %i.jg, align 8
  invoke void @_ZN6icu_7813UnicodeString8fromUTF8ENS_11StringPieceE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %11, ptr %i.jf, i32 %i.jh)
          to label %bb.di unwind label %bb.dm

bb.di:                                            ; preds = %bb.dh
  %i.ji = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_785UTS4614processUnicodeERKNS_13UnicodeStringEiiaaRS1_RNS_8IDNAInfoER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(64) %11, i32 noundef 0, i32 noundef %i.iy, i8 noundef signext %3, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(11) %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.dj unwind label %bb.dn     ; 0 uses

bb.dj:                                            ; preds = %bb.di
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.dw

bb.dk:                                            ; preds = %.split178.us
  %i.jj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.dp

bb.dl:                                            ; preds = %bb.df
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dm:                                            ; preds = %bb.dh, %bb.dg
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dn:                                            ; preds = %bb.di
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #12
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.pn142 = phi { ptr, i32 } [ %i.jm, %bb.dn ], [ %i.jl, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.dp

bb.dp:                                            ; preds = %bb.cw, %bb.do, %bb.dl, %bb.dk, %bb.cq
  %.pn146.pn = phi { ptr, i32 } [ %i.hj, %bb.cq ], [ %i.hy, %bb.cw ], [ %.pn142, %bb.do ], [ %i.jk, %bb.dl ], [ %i.jj, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ep

bb.dq:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  invoke void @_ZN6icu_7813UnicodeString8fromUTF8ENS_11StringPieceE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %13, ptr %1, i32 %2)
          to label %bb.dr unwind label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.jn = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_785UTS4614processUnicodeERKNS_13UnicodeStringEiiaaRS1_RNS_8IDNAInfoER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(64) %13, i32 noundef 0, i32 noundef 0, i8 noundef signext %3, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(11) %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.ds unwind label %bb.du     ; 0 uses

bb.ds:                                            ; preds = %bb.dr
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %bb.dw

bb.dt:                                            ; preds = %bb.dq
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.du:                                            ; preds = %bb.dr
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #12
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.pn = phi { ptr, i32 } [ %i.jp, %bb.du ], [ %i.jo, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %bb.ep

bb.dw:                                            ; preds = %bb.dj, %bb.ds
  %.5 = phi i32 [ %.us-phi179, %bb.dj ], [ 0, %bb.ds ] ; 5 uses
  invoke void @_ZNK6icu_7813UnicodeString6toUTF8ERNS_8ByteSinkE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.dx unwind label %bb.eg

bb.dx:                                            ; preds = %bb.dw
  %i.jq = icmp eq i8 %4, 0
  %i.jr = icmp ne i8 %3, 0
  %or.cond7 = or i1 %i.jr, %i.jq
  br i1 %or.cond7, label %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.js = load i16, ptr %i.m, align 8, !tbaa !12  ; 5 uses
  %i.jt = icmp slt i16 %i.js, 0
  %i.ju = ashr i16 %i.js, 5
  %i.jv = sext i16 %i.ju to i32
  %i.jw = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.jx = load i32, ptr %i.jw, align 4
  %i.jy = select i1 %i.jt, i32 %i.jx, i32 %i.jv   ; 2 uses
  %i.jz = add nsw i32 %i.jy, %.5                  ; 2 uses
  %i.ka = icmp sgt i32 %i.jz, 253
  br i1 %i.ka, label %bb.dz, label %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread

bb.dz:                                            ; preds = %bb.dy
  %i.kb = and i16 %i.js, 17
  %.not.i.i = icmp eq i16 %i.kb, 0
  br i1 %.not.i.i, label %bb.ea, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i

bb.ea:                                            ; preds = %bb.dz
  %i.kc = and i16 %i.js, 2
  %.not2.i.i = icmp eq i16 %i.kc, 0
  br i1 %.not2.i.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.kd = getelementptr inbounds nuw i8, ptr %9, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i

bb.ec:                                            ; preds = %bb.ea
  %i.ke = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !12
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i

_ZNK6icu_7813UnicodeString9getBufferEv.exit.i:    ; preds = %bb.ec, %bb.eb, %bb.dz
  %.0.i.i = phi ptr [ %i.kf, %bb.ec ], [ %i.kd, %bb.eb ], [ null, %bb.dz ] ; 2 uses
  %i.kg = sext i32 %i.jy to i64
  %i.kh = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.kg
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ee, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i
  %.06.i = phi ptr [ %.0.i.i, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i ], [ %i.kj, %bb.ee ] ; 3 uses
  %i.ki = icmp ult ptr %.06.i, %i.kh
  br i1 %i.ki, label %bb.ee, label %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit

bb.ee:                                            ; preds = %bb.ed
  %i.kj = getelementptr inbounds nuw i8, ptr %.06.i, i64 2
  %i.kk = load i16, ptr %.06.i, align 2, !tbaa !23
  %i.kl = icmp ugt i16 %i.kk, 127
  br i1 %i.kl, label %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread, label %bb.ed, !llvm.loop !32

_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit: ; preds = %bb.ed
  %.not151 = icmp eq i32 %i.jz, 254
  br i1 %.not151, label %bb.ef, label %_ZNK6icu_7813UnicodeStringixEi.exit.thread

bb.ef:                                            ; preds = %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit
  %i.km = icmp slt i32 %.5, 254
  br i1 %i.km, label %_ZNK6icu_7813UnicodeStringixEi.exit, label %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %bb.ef
  %14 = sub nsw i32 253, %.5
  %i.kn = and i16 %i.js, 2
  %.not.i.i.i = icmp eq i16 %i.kn, 0
  %i.ko = getelementptr inbounds nuw i8, ptr %9, i64 10
  %i.kp = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = select i1 %.not.i.i.i, ptr %i.kq, ptr %i.ko
  %i.ks = zext nneg i32 %14 to i64
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.kr, i64 %i.ks
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !23
  %.not154 = icmp eq i16 %i.ku, 46
  br i1 %.not154, label %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread, label %_ZNK6icu_7813UnicodeStringixEi.exit.thread

_ZNK6icu_7813UnicodeStringixEi.exit.thread:       ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit, %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit
  %i.kv = load i32, ptr %6, align 4, !tbaa !22
  %i.kw = or i32 %i.kv, 4
  store i32 %i.kw, ptr %6, align 4, !tbaa !22
  br label %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread

bb.eg:                                            ; preds = %bb.dw
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread: ; preds = %bb.ee, %bb.dy, %bb.ef, %_ZNK6icu_7813UnicodeStringixEi.exit, %_ZNK6icu_7813UnicodeStringixEi.exit.thread, %bb.dx
  %i.ky = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !31
  %.not155 = icmp eq i8 %i.kz, 0
  br i1 %.not155, label %bb.en, label %bb.eh

bb.eh:                                            ; preds = %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread
  %i.la = load i32, ptr %7, align 4, !tbaa !8
  %i.lb = icmp sgt i32 %i.la, 0
  br i1 %i.lb, label %bb.en, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.lc = load i32, ptr %6, align 4, !tbaa !22    ; 2 uses
  %i.ld = and i32 %i.lc, 1984
  %i.le = icmp eq i32 %i.ld, 0
  br i1 %i.le, label %bb.ej, label %bb.en

bb.ej:                                            ; preds = %bb.ei
  %i.lf = load i8, ptr %i.h, align 2, !tbaa !20
  %.not157 = icmp eq i8 %i.lf, 0
  br i1 %.not157, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.lg = icmp sgt i32 %.5, 0
  br i1 %i.lg, label %bb.el, label %bb.en

bb.el:                                            ; preds = %bb.ek
  %i.lh = call fastcc noundef signext i8 @_ZN6icu_78L13isASCIIOkBiDiEPKci(ptr noundef %1, i32 noundef %.5)
  %.not158 = icmp eq i8 %i.lh, 0
  br i1 %.not158, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el, %bb.ej
  %i.li = or i32 %i.lc, 2048
  store i32 %i.li, ptr %6, align 4, !tbaa !22
  br label %bb.en

bb.en:                                            ; preds = %.thread166, %_ZN6icu_78L13isASCIIStringERKNS_13UnicodeStringE.exit.thread, %bb.eh, %bb.ei, %bb.ek, %bb.el, %bb.em
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.eo

bb.eo:                                            ; preds = %bb.c, %bb.e, %bb.en, %bb.a
  ret void

bb.ep:                                            ; preds = %bb.eg, %bb.dv, %bb.dp
  %.pn152 = phi { ptr, i32 } [ %.pn, %bb.dv ], [ %i.kx, %bb.eg ], [ %.pn146.pn, %bb.dp ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  resume { ptr, i32 } %.pn152
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_785UTS4618labelToUnicodeUTF8ENS_11StringPieceERNS_8ByteSinkERNS_8IDNAInfoER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(11) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZNK6icu_785UTS4611processUTF8ENS_11StringPieceEaaRNS_8ByteSinkERNS_8IDNAInfoER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr %1, i32 %2, i8 noundef signext 1, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(11) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_785UTS4616nameToASCII_UTF8ENS_11StringPieceERNS_8ByteSinkERNS_8IDNAInfoER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(11) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZNK6icu_785UTS4611processUTF8ENS_11StringPieceEaaRNS_8ByteSinkERNS_8IDNAInfoER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr %1, i32 %2, i8 noundef signext 0, i8 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(11) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_785UTS4617nameToUnicodeUTF8ENS_11StringPieceERNS_8ByteSinkERNS_8IDNAInfoER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(11) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZNK6icu_785UTS4611processUTF8ENS_11StringPieceEaaRNS_8ByteSinkERNS_8IDNAInfoER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr %1, i32 %2, i8 noundef signext 0, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(11) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  ret void
}

declare void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #6

declare void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_785UTS4614processUnicodeERKNS_13UnicodeStringEiiaaRS1_RNS_8IDNAInfoER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, i8 noundef signext %5, ptr noundef nonnull returned align 8 dereferenceable(64) %6, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(11) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.a = icmp eq i32 %3, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36, !nonnull !37, !align !38 ; 4 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef nonnull align 8 dereferenceable(64) ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(4) %8) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %3, i32 noundef 2147483647)
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(4) %8)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  resume { ptr, i32 } %i.l

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.m = load i32, ptr %8, align 4, !tbaa !8
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.g, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit124.thread

bb.g:                                             ; preds = %bb.f
  %.not112 = icmp eq i8 %5, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !16
  %. = select i1 %.not112, i32 32, i32 16
  %i.q = and i32 %i.p, %.
  %i.r = icmp eq i32 %i.q, 0
  %i.s = zext i1 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !12   ; 4 uses
  %i.v = and i16 %i.u, 17
  %.not.i = icmp eq i16 %i.v, 0
  br i1 %.not.i, label %bb.h, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.h:                                             ; preds = %bb.g
  %i.w = and i16 %i.u, 2
  %.not2.i = icmp eq i16 %i.w, 0
  br i1 %.not2.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.g, %bb.i, %bb.j
  %.0.i = phi ptr [ %i.z, %bb.j ], [ %i.x, %bb.i ], [ null, %bb.g ]
  %i.aa = icmp slt i16 %i.u, 0
  %i.ab = ashr i16 %i.u, 5
  %i.ac = sext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = select i1 %i.aa, i32 %i.ae, i32 %i.ac   ; 2 uses
  %i.ag = icmp slt i32 %2, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %i.ah = icmp ne i8 %4, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZNK6icu_7813UnicodeString9getBufferEv.exit124
  %.094143 = phi i32 [ %2, %.lr.ph ], [ %.296, %_ZNK6icu_7813UnicodeString9getBufferEv.exit124 ] ; 9 uses
  %.097142 = phi i8 [ %i.s, %.lr.ph ], [ %.198, %_ZNK6icu_7813UnicodeString9getBufferEv.exit124 ] ; 3 uses
  %.099140 = phi i32 [ %2, %.lr.ph ], [ %.2101, %_ZNK6icu_7813UnicodeString9getBufferEv.exit124 ] ; 10 uses
  %.0102139 = phi i32 [ %i.af, %.lr.ph ], [ %.2104, %_ZNK6icu_7813UnicodeString9getBufferEv.exit124 ] ; 3 uses
  %.0105138 = phi ptr [ %.0.i, %.lr.ph ], [ %.3108, %_ZNK6icu_7813UnicodeString9getBufferEv.exit124 ] ; 7 uses
  %i.am = sext i32 %.099140 to i64
  %i.an = getelementptr inbounds [2 x i8], ptr %.0105138, i64 %i.am ; 2 uses
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !23
  %.fr = freeze i16 %i.ao                         ; 6 uses
  %i.ap = zext i16 %.fr to i32                    ; 2 uses
  %i.aq = icmp ne i16 %.fr, 46
  %or.cond = or i1 %i.ah, %i.aq
  br i1 %or.cond, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = sub nsw i32 %.099140, %.094143          ; 2 uses
  %i.as = call noundef i32 @_ZNK6icu_785UTS4612processLabelERNS_13UnicodeStringEiiaRNS_8IDNAInfoER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef %.094143, i32 noundef %i.ar, i8 noundef signext %5, ptr noundef nonnull align 4 dereferenceable(11) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) ; 2 uses
  %i.at = load i32, ptr %i.ai, align 4, !tbaa !25
  %i.au = load i32, ptr %7, align 4, !tbaa !22
  %i.av = or i32 %i.au, %i.at
  store i32 %i.av, ptr %7, align 4, !tbaa !22
  store i32 0, ptr %i.ai, align 4, !tbaa !25
end_hunk_0
