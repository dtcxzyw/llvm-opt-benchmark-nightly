inline.NumInlined: 60
inline.NumDeleted: 20
begin_hunk_0_@_ZN8NArchive4NTar8ReadItemEP19ISequentialInStreamRbRNS0_7CItemExER11CStringBaseIcE:bb.a
  br i1 %.not.i.i.i196.i.1, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i200.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mo = load i8, ptr %i.dc, align 2, !tbaa !17  ; 2 uses
  store i8 %i.mo, ptr %i.dd, align 2, !tbaa !17
  %.not.i.i.i196.i.2 = icmp eq i8 %i.mo, 0
  br i1 %.not.i.i.i196.i.2, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i200.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mp = load i8, ptr %i.de, align 1, !tbaa !17  ; 2 uses
  store i8 %i.mp, ptr %i.df, align 1, !tbaa !17
  %.not.i.i.i196.i.3 = icmp eq i8 %i.mp, 0
  br i1 %.not.i.i.i196.i.3, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i200.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mq = load i8, ptr %i.dg, align 8, !tbaa !17  ; 2 uses
  store i8 %i.mq, ptr %i.dh, align 4, !tbaa !17
  %.not.i.i.i196.i.4 = icmp eq i8 %i.mq, 0
  br i1 %.not.i.i.i196.i.4, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i200.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mr = load i8, ptr %i.di, align 1, !tbaa !17  ; 2 uses
  store i8 %i.mr, ptr %i.dj, align 1, !tbaa !17
  %.not.i.i.i196.i.5 = icmp eq i8 %i.mr, 0
  br i1 %.not.i.i.i196.i.5, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i200.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ms = load i8, ptr %i.dk, align 2, !tbaa !17  ; 2 uses
  store i8 %i.ms, ptr %i.dl, align 2, !tbaa !17
  %.not.i.i.i196.i.6 = icmp eq i8 %i.ms, 0
  br i1 %.not.i.i.i196.i.6, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i200.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mt = load i8, ptr %i.dm, align 1, !tbaa !17
  store i8 %i.mt, ptr %i.dn, align 1, !tbaa !17
  br label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i200.i

_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i200.i: ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax
  store i8 0, ptr %i.am, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i200.i
  %indvars.iv.i.i201.i = phi i64 [ %indvars.iv.next.i.i202.i, %bb.bf ], [ 0, %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i200.i ] ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i201.i
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !17
  %i.mw = icmp eq i8 %i.mv, 32
  %indvars.iv.next.i.i202.i = add nuw nsw i64 %indvars.iv.i.i201.i, 1
  br i1 %i.mw, label %bb.bf, label %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i203.i, !llvm.loop !41

_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i203.i: ; preds = %bb.bf
  %i.mx = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i201.i
  %i.my = invoke noundef i64 @_Z24ConvertOctStringToUInt64PKcPS0_(ptr noundef nonnull %i.mx, ptr noundef nonnull %i.d)
          to label %.noexc87 unwind label %.loopexit.split-lp ; 2 uses

.noexc87:                                         ; preds = %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i203.i
  %i.mz = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !17
  %i.nb = and i8 %i.na, -33
  %spec.select.i.i204.i = icmp eq i8 %i.nb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br i1 %spec.select.i.i204.i, label %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit206.i, label %.thread

_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit206.i: ; preds = %.noexc87
  %i.nc = trunc i64 %i.my to i32
  %i.nd = icmp ult i64 %i.my, 4294967296
  br i1 %i.nd, label %bb.bg, label %.thread

bb.bg:                                            ; preds = %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit206.i
  %i.ne = load ptr, ptr @_ZN8NArchive4NTar11NFileHeader15kCheckSumBlanksE, align 8, !tbaa !42
  %i.nf = load i64, ptr %i.ne, align 1
  store i64 %i.nf, ptr %i.al, align 4
  %i.ng = load i8, ptr %i.an, align 4, !tbaa !17
  store i8 %i.ng, ptr %i.ap, align 8, !tbaa !46
  invoke fastcc void @_ZN8NArchive4NTarL10ReadStringEPKciR11CStringBaseIcE(ptr noundef %i.ao, i32 noundef 100, ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %.noexc88 unwind label %.loopexit.split-lp

.noexc88:                                         ; preds = %bb.bg
  %i.nh = load i64, ptr %i.ar, align 1
  store i64 %i.nh, ptr %i.as, align 8
  invoke fastcc void @_ZN8NArchive4NTarL10ReadStringEPKciR11CStringBaseIcE(ptr noundef %i.at, i32 noundef 32, ptr noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %.noexc89 unwind label %.loopexit.split-lp

.noexc89:                                         ; preds = %.noexc88
  invoke fastcc void @_ZN8NArchive4NTarL10ReadStringEPKciR11CStringBaseIcE(ptr noundef %i.av, i32 noundef 32, ptr noundef nonnull align 8 dereferenceable(16) %i.aw)
          to label %.noexc90 unwind label %.loopexit.split-lp

.noexc90:                                         ; preds = %.noexc89
  %i.ni = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.nj = icmp ne i8 %i.ni, 0
  %i.nk = zext i1 %i.nj to i8
  store i8 %i.nk, ptr %i.ay, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.nl = load i8, ptr %i.ax, align 1, !tbaa !17  ; 2 uses
  store i8 %i.nl, ptr %i.a, align 16, !tbaa !17
  %.not.i.i.i208.i = icmp eq i8 %i.nl, 0
  br i1 %.not.i.i.i208.i, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i212.i, label %bb.bh

bb.bh:                                            ; preds = %.noexc90
  %i.nm = load i8, ptr %i.do, align 2, !tbaa !17  ; 2 uses
  store i8 %i.nm, ptr %i.dp, align 1, !tbaa !17
  %.not.i.i.i208.i.1 = icmp eq i8 %i.nm, 0
  br i1 %.not.i.i.i208.i.1, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i212.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.nn = load i8, ptr %i.dq, align 1, !tbaa !17  ; 2 uses
  store i8 %i.nn, ptr %i.dr, align 2, !tbaa !17
  %.not.i.i.i208.i.2 = icmp eq i8 %i.nn, 0
  br i1 %.not.i.i.i208.i.2, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i212.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.no = load i8, ptr %i.ds, align 4, !tbaa !17  ; 2 uses
  store i8 %i.no, ptr %i.dt, align 1, !tbaa !17
  %.not.i.i.i208.i.3 = icmp eq i8 %i.no, 0
  br i1 %.not.i.i.i208.i.3, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i212.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.np = load i8, ptr %i.du, align 1, !tbaa !17  ; 2 uses
  store i8 %i.np, ptr %i.dv, align 4, !tbaa !17
  %.not.i.i.i208.i.4 = icmp eq i8 %i.np, 0
  br i1 %.not.i.i.i208.i.4, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i212.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nq = load i8, ptr %i.dw, align 2, !tbaa !17  ; 2 uses
  store i8 %i.nq, ptr %i.dx, align 1, !tbaa !17
  %.not.i.i.i208.i.5 = icmp eq i8 %i.nq, 0
  br i1 %.not.i.i.i208.i.5, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i212.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nr = load i8, ptr %i.dy, align 1, !tbaa !17  ; 2 uses
  store i8 %i.nr, ptr %i.dz, align 2, !tbaa !17
  %.not.i.i.i208.i.6 = icmp eq i8 %i.nr, 0
  br i1 %.not.i.i.i208.i.6, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i212.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ns = load i8, ptr %i.ea, align 16, !tbaa !17
  store i8 %i.ns, ptr %i.eb, align 1, !tbaa !17
  br label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i212.i

_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i212.i: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %.noexc90
  store i8 0, ptr %i.az, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i212.i
  %indvars.iv.i.i213.i = phi i64 [ %indvars.iv.next.i.i214.i, %bb.bo ], [ 0, %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit.i.i212.i ] ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i213.i
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !17
  %i.nv = icmp eq i8 %i.nu, 32
  %indvars.iv.next.i.i214.i = add nuw nsw i64 %indvars.iv.i.i213.i, 1
  br i1 %i.nv, label %bb.bo, label %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i215.i, !llvm.loop !41

_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i215.i: ; preds = %bb.bo
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i213.i
  %i.nx = invoke noundef i64 @_Z24ConvertOctStringToUInt64PKcPS0_(ptr noundef nonnull %i.nw, ptr noundef nonnull %i.b)
          to label %.noexc91 unwind label %.loopexit.split-lp ; 2 uses

.noexc91:                                         ; preds = %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i215.i
  %i.ny = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !17
  %i.oa = and i8 %i.nz, -33
  %spec.select.i.i216.i = icmp eq i8 %i.oa, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %spec.select.i.i216.i, label %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit218.i, label %.thread

_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit218.i: ; preds = %.noexc91
  %i.ob = trunc i64 %i.nx to i32
  store i32 %i.ob, ptr %i.ba, align 8, !tbaa !4
  %i.oc = icmp ult i64 %i.nx, 4294967296
  br i1 %i.oc, label %bb.bp, label %.thread

bb.bp:                                            ; preds = %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit218.i
  %i.od = load i8, ptr %i.bb, align 1, !tbaa !17
  %i.oe = icmp ne i8 %i.od, 0
  %i.of = zext i1 %i.oe to i8
  store i8 %i.of, ptr %i.bc, align 2, !tbaa !48
  %i.og = invoke fastcc noundef zeroext i1 @_ZN8NArchive4NTarL15OctalToNumber32EPKciRj(ptr noundef %i.bb, i32 noundef 8, ptr noundef nonnull align 4 dereferenceable(4) %i.bd)
          to label %.noexc92 unwind label %.loopexit.split-lp

.noexc92:                                         ; preds = %bb.bp
  br i1 %i.og, label %bb.bq, label %.thread

bb.bq:                                            ; preds = %.noexc92
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 0, ptr %i.be, align 8
  %i.oh = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #9
          to label %.noexc93 unwind label %.loopexit.split-lp ; 2 uses

.noexc93:                                         ; preds = %bb.bq
  store ptr %i.oh, ptr %4, align 8, !tbaa !16
  store i8 0, ptr %i.oh, align 1, !tbaa !17
  store i32 4, ptr %i.bf, align 4, !tbaa !18
  invoke fastcc void @_ZN8NArchive4NTarL10ReadStringEPKciR11CStringBaseIcE(ptr noundef %i.bg, i32 noundef 155, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.br unwind label %bb.cb

bb.br:                                            ; preds = %.noexc93
  %i.oi = load i32, ptr %i.be, align 8, !tbaa !19
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %thread-pre-split.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %8 = call noundef zeroext i1 @_ZNK8NArchive4NTar5CItem7IsMagicEv(ptr noundef nonnull align 8 dereferenceable(124) %2)
  %i.ok = load i8, ptr %i.ap, align 8             ; 2 uses
  %.not106.i = icmp ne i8 %i.ok, 76
  %or.cond.not.i = select i1 %8, i1 %.not106.i, i1 false
  br i1 %or.cond.not.i, label %bb.bt, label %bb.cj

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.ol = invoke noalias noundef nonnull dereferenceable(2) ptr @_Znam(i64 noundef 2) #9
          to label %bb.bu unwind label %bb.cc     ; 3 uses

bb.bu:                                            ; preds = %bb.bt
  store ptr %i.ol, ptr %7, align 8, !tbaa !16
  store i32 2, ptr %i.bh, align 4, !tbaa !18
  store i8 47, ptr %i.ol, align 1, !tbaa !17
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 1
  store i8 0, ptr %i.om, align 1, !tbaa !17
  store i32 1, ptr %i.bi, align 8, !tbaa !19
  invoke void @_ZplIcE11CStringBaseIT_ERKS2_S4_(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.bv unwind label %bb.cd

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZplIcE11CStringBaseIT_ERKS2_S4_(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(124) %2)
          to label %bb.bw unwind label %bb.ce

bb.bw:                                            ; preds = %bb.bv
  %i.on = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEaSERKS0_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.bx unwind label %bb.cf     ; 0 uses

bb.bx:                                            ; preds = %bb.bw
  %i.oo = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %_ZN11CStringBaseIcED2Ev.exit.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZdaPv(ptr noundef nonnull %i.oo) #11
  br label %_ZN11CStringBaseIcED2Ev.exit.i

_ZN11CStringBaseIcED2Ev.exit.i:                   ; preds = %bb.by, %bb.bx
  %i.oq = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %_ZN11CStringBaseIcED2Ev.exit221.i.a, label %bb.bz

bb.bz:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.oq) #11
  br label %_ZN11CStringBaseIcED2Ev.exit221.i.a

_ZN11CStringBaseIcED2Ev.exit221.i.a:              ; preds = %bb.bz, %_ZN11CStringBaseIcED2Ev.exit.i
  %i.os = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %_ZN11CStringBaseIcED2Ev.exit222.i.a, label %bb.ca

bb.ca:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit221.i.a
  call void @_ZdaPv(ptr noundef nonnull %i.os) #11
  br label %_ZN11CStringBaseIcED2Ev.exit222.i.a

_ZN11CStringBaseIcED2Ev.exit222.i.a:              ; preds = %bb.ca, %_ZN11CStringBaseIcED2Ev.exit221.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %thread-pre-split.i

bb.cb:                                            ; preds = %.noexc93
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cc:                                            ; preds = %bb.bt
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit225.i.a

bb.cd:                                            ; preds = %bb.bu
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit224.i.a

bb.ce:                                            ; preds = %bb.bv
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit223.i.a

bb.cf:                                            ; preds = %bb.bw
  %i.oy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oz = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.pa = icmp eq ptr %i.oz, null
  br i1 %i.pa, label %_ZN11CStringBaseIcED2Ev.exit223.i.a, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZdaPv(ptr noundef nonnull %i.oz) #11
  br label %_ZN11CStringBaseIcED2Ev.exit223.i.a

_ZN11CStringBaseIcED2Ev.exit223.i.a:              ; preds = %bb.cg, %bb.cf, %bb.ce
  %.pn.i = phi { ptr, i32 } [ %i.ox, %bb.ce ], [ %i.oy, %bb.cf ], [ %i.oy, %bb.cg ] ; 2 uses
  %i.pb = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %_ZN11CStringBaseIcED2Ev.exit224.i.a, label %bb.ch

bb.ch:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit223.i.a
  call void @_ZdaPv(ptr noundef nonnull %i.pb) #11
  br label %_ZN11CStringBaseIcED2Ev.exit224.i.a

_ZN11CStringBaseIcED2Ev.exit224.i.a:              ; preds = %bb.ch, %_ZN11CStringBaseIcED2Ev.exit223.i.a, %bb.cd
  %.pn.pn.i = phi { ptr, i32 } [ %i.ow, %bb.cd ], [ %.pn.i, %_ZN11CStringBaseIcED2Ev.exit223.i.a ], [ %.pn.i, %bb.ch ] ; 2 uses
  %i.pd = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %_ZN11CStringBaseIcED2Ev.exit225.i.a, label %bb.ci

bb.ci:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit224.i.a
  call void @_ZdaPv(ptr noundef nonnull %i.pd) #11
  br label %_ZN11CStringBaseIcED2Ev.exit225.i.a

_ZN11CStringBaseIcED2Ev.exit225.i.a:              ; preds = %bb.ci, %_ZN11CStringBaseIcED2Ev.exit224.i.a, %bb.cc
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.ov, %bb.cc ], [ %.pn.pn.i, %_ZN11CStringBaseIcED2Ev.exit224.i.a ], [ %.pn.pn.i, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.co

thread-pre-split.i:                               ; preds = %_ZN11CStringBaseIcED2Ev.exit222.i.a, %bb.br
  %.pr.i = load i8, ptr %i.ap, align 8, !tbaa !46
  br label %bb.cj

bb.cj:                                            ; preds = %thread-pre-split.i, %bb.bs
  %9 = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ok, %bb.bs ]
  %i.pf = icmp eq i8 %9, 49
  br i1 %i.pf, label %bb.ck, label %vector.body462.preheader

bb.ck:                                            ; preds = %bb.cj
  store i64 0, ptr %i.af, align 8, !tbaa !43
  br label %vector.body462.preheader

vector.body462.preheader:                         ; preds = %bb.cj, %bb.ck
  br label %vector.body462

vector.body462:                                   ; preds = %vector.body462, %vector.body462.preheader
  %index463 = phi i64 [ 0, %vector.body462.preheader ], [ %index.next467.1, %vector.body462 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.body462.preheader ], [ %i.pr, %vector.body462 ]
  %vec.phi464 = phi <4 x i32> [ zeroinitializer, %vector.body462.preheader ], [ %i.ps, %vector.body462 ]
  %i.pg = getelementptr inbounds nuw i8, ptr %i.o, i64 %index463 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  %wide.load465 = load <4 x i8>, ptr %i.pg, align 16, !tbaa !17
  %wide.load466 = load <4 x i8>, ptr %i.ph, align 4, !tbaa !17
  %i.pi = zext <4 x i8> %wide.load465 to <4 x i32>
  %i.pj = zext <4 x i8> %wide.load466 to <4 x i32>
  %i.pk = add <4 x i32> %vec.phi, %i.pi
  %i.pl = add <4 x i32> %vec.phi464, %i.pj
  %i.pm = getelementptr inbounds nuw i8, ptr %i.o, i64 %index463 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 12
  %wide.load465.1 = load <4 x i8>, ptr %i.pn, align 8, !tbaa !17
  %wide.load466.1 = load <4 x i8>, ptr %i.po, align 4, !tbaa !17
  %i.pp = zext <4 x i8> %wide.load465.1 to <4 x i32>
  %i.pq = zext <4 x i8> %wide.load466.1 to <4 x i32>
  %i.pr = add <4 x i32> %i.pk, %i.pp              ; 2 uses
  %i.ps = add <4 x i32> %i.pl, %i.pq              ; 2 uses
  %index.next467.1 = add nuw nsw i64 %index463, 16 ; 2 uses
  %i.pt = icmp eq i64 %index.next467.1, 512
  br i1 %i.pt, label %middle.block468, label %vector.body462, !llvm.loop !49

middle.block468:                                  ; preds = %vector.body462
  %bin.rdx = add <4 x i32> %i.ps, %i.pr
  %i.pu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %.not111.i = icmp eq i32 %i.pu, %i.nc
  br i1 %.not111.i, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %middle.block468
  store i8 1, ptr %1, align 1, !tbaa !20
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %middle.block468
  %.3100.i = phi i32 [ 0, %bb.cl ], [ 1, %middle.block468 ]
  %i.pv = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.pw = icmp eq ptr %i.pv, null
  br i1 %i.pw, label %_ZN11CStringBaseIcED2Ev.exit226.i.a, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZdaPv(ptr noundef nonnull %i.pv) #11
  br label %_ZN11CStringBaseIcED2Ev.exit226.i.a

_ZN11CStringBaseIcED2Ev.exit226.i.a:              ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.cq

bb.co:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit225.i.a, %bb.cb
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZN11CStringBaseIcED2Ev.exit225.i.a ], [ %i.ou, %bb.cb ]
  %i.px = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.py = icmp eq ptr %i.px, null
  br i1 %i.py, label %_ZN11CStringBaseIcED2Ev.exit227.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @_ZdaPv(ptr noundef nonnull %i.px) #11
  br label %_ZN11CStringBaseIcED2Ev.exit227.i

_ZN11CStringBaseIcED2Ev.exit227.i:                ; preds = %bb.cp, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  br label %.body

.thread:                                          ; preds = %.noexc82, %.noexc85, %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit.i, %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit194.i, %.noexc87, %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit218.i, %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit206.i, %.noexc92, %.noexc86, %.noexc91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  br label %_ZN11CStringBaseIcEaSERKS0_.exit132

bb.cq:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit226.i.a, %.thread.i
  %.5.i = phi i32 [ %i.ho, %.thread.i ], [ %.3100.i, %_ZN11CStringBaseIcED2Ev.exit226.i.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  %.not = icmp eq i32 %.5.i, 0
  br i1 %.not, label %bb.cs, label %_ZN11CStringBaseIcEaSERKS0_.exit132

bb.cr:                                            ; preds = %bb.a
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit134

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.b, %bb.e, %bb.h, %bb.o, %bb.q, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i.i, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i161.i, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i173.i, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i191.i, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i203.i, %bb.bg, %.noexc88, %.noexc89, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i215.i, %bb.bp, %bb.bq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cs:                                            ; preds = %.thread149, %bb.cq
  %i.qa = load i8, ptr %1, align 1, !tbaa !20, !range !50, !noundef !51
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %bb.ct, label %_ZN11CStringBaseIcEaSERKS0_.exit132

bb.ct:                                            ; preds = %bb.cs
  %i.qc = load i8, ptr %i.ap, align 8, !tbaa !46  ; 4 uses
  switch i8 %i.qc, label %bb.dj [
    i8 68, label %.loopexit162
    i8 88, label %.loopexit162
    i8 103, label %.loopexit162
    i8 120, label %.loopexit162
    i8 76, label %bb.cu
    i8 75, label %bb.cv
  ]

bb.cu:                                            ; preds = %bb.ct
  %i.qd = trunc nuw i8 %.047 to i1
  br i1 %i.qd, label %_ZN11CStringBaseIcEaSERKS0_.exit132, label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.qe = trunc nuw i8 %.050 to i1
  br i1 %i.qe, label %_ZN11CStringBaseIcEaSERKS0_.exit132, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.053.sroa.phi = phi ptr [ %.sroa.11252, %bb.cu ], [ %.sroa.11, %bb.cv ] ; 2 uses
  %.053.sroa.phi137 = phi ptr [ %.sroa.9251, %bb.cu ], [ %.sroa.9, %bb.cv ] ; 3 uses
  %.053 = phi ptr [ %.sroa.0248, %bb.cu ], [ %.sroa.0, %bb.cv ] ; 4 uses
  %.151 = phi i8 [ %.050, %bb.cu ], [ 1, %bb.cv ]
  %.148 = phi i8 [ 1, %bb.cu ], [ %.047, %bb.cv ]
  %i.qf = load ptr, ptr @_ZN8NArchive4NTar11NFileHeader9kLongLinkE, align 8, !tbaa !42
  %i.qg = load ptr, ptr %2, align 8, !tbaa !16
  %i.qh = invoke noundef i32 @_Z15MyStringComparePKcS0_(ptr noundef %i.qg, ptr noundef %i.qf)
          to label %_ZNK11CStringBaseIcE7CompareEPKc.exit unwind label %bb.cy

_ZNK11CStringBaseIcE7CompareEPKc.exit:            ; preds = %bb.cw
  %.not70 = icmp eq i32 %i.qh, 0
  br i1 %.not70, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %_ZNK11CStringBaseIcE7CompareEPKc.exit
  %i.qi = load ptr, ptr @_ZN8NArchive4NTar11NFileHeader10kLongLink2E, align 8, !tbaa !42
  %i.qj = load ptr, ptr %2, align 8, !tbaa !16
  %i.qk = invoke noundef i32 @_Z15MyStringComparePKcS0_(ptr noundef %i.qj, ptr noundef %i.qi)
          to label %_ZNK11CStringBaseIcE7CompareEPKc.exit96 unwind label %bb.cy

_ZNK11CStringBaseIcE7CompareEPKc.exit96:          ; preds = %bb.cx
  %.not71 = icmp eq i32 %i.qk, 0
  br i1 %.not71, label %bb.cz, label %_ZN11CStringBaseIcEaSERKS0_.exit132

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cz:                                            ; preds = %_ZNK11CStringBaseIcE7CompareEPKc.exit96, %_ZNK11CStringBaseIcE7CompareEPKc.exit
  %i.qm = load i64, ptr %i.af, align 8, !tbaa !43 ; 2 uses
  %i.qn = icmp ugt i64 %i.qm, 16384
  br i1 %i.qn, label %_ZN11CStringBaseIcEaSERKS0_.exit132, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qo = add nuw nsw i64 %i.qm, 511
  %i.qp = and i64 %i.qo, 65024                    ; 2 uses
  %i.qq = trunc nuw nsw i64 %i.qp to i32          ; 3 uses
  %i.qr = load i32, ptr %.053.sroa.phi, align 4, !tbaa !18 ; 3 uses
  %.not.i97 = icmp sgt i32 %i.qr, %i.qq
  br i1 %.not.i97, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qs = or disjoint i32 %i.qq, 1                ; 3 uses
  %i.qt = icmp eq i32 %i.qs, %i.qr
  br i1 %i.qt, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.qu = zext nneg i32 %i.qs to i64
  %i.qv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qu) #9
          to label %.noexc101 unwind label %bb.dg ; 10 uses

.noexc101:                                        ; preds = %bb.dc
  %i.qw = ptrtoaddr ptr %i.qv to i64
  %i.qx = icmp sgt i32 %i.qr, 0
  %.pre253 = load i32, ptr %.053.sroa.phi137, align 8, !tbaa !19 ; 6 uses
  br i1 %i.qx, label %.preheader.i.i, label %bb.dd

.preheader.i.i:                                   ; preds = %.noexc101
  %i.qy = icmp sgt i32 %.pre253, 0
  %.pre.i.i98 = load ptr, ptr %.053, align 8, !tbaa !16 ; 10 uses
  br i1 %i.qy, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %.pre.i.i98359 = ptrtoaddr ptr %.pre.i.i98 to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre253 to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.pre253, 4
  %i.qz = sub i64 %i.qw, %.pre.i.i98359
  %diff.check = icmp ult i64 %i.qz, 32
  %or.cond536 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond536, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check360 = icmp ult i32 %.pre253, 32
  br i1 %min.iters.check360, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.pre.i.i98, i64 %index ; 2 uses
end_hunk_0
