inline.NumInlined: 60
inline.NumDeleted: 20
begin_hunk_0_@_ZN8NArchive4NTar8ReadItemEP19ISequentialInStreamRbRNS0_7CItemExER11CStringBaseIcE:bb.a

bb.cg:                                            ; preds = %bb.cf
  call void @_ZdaPv(ptr noundef nonnull %i.pa) #11
  br label %_ZN11CStringBaseIcED2Ev.exit223.i

_ZN11CStringBaseIcED2Ev.exit223.i:                ; preds = %bb.cg, %bb.cf, %bb.ce
  %.pn.i = phi { ptr, i32 } [ %i.oy, %bb.ce ], [ %i.oz, %bb.cf ], [ %i.oz, %bb.cg ] ; 2 uses
  %i.pc = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.pd = icmp eq ptr %i.pc, null
  br i1 %i.pd, label %_ZN11CStringBaseIcED2Ev.exit224.i, label %bb.ch

bb.ch:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit223.i
  call void @_ZdaPv(ptr noundef nonnull %i.pc) #11
  br label %_ZN11CStringBaseIcED2Ev.exit224.i

_ZN11CStringBaseIcED2Ev.exit224.i:                ; preds = %bb.ch, %_ZN11CStringBaseIcED2Ev.exit223.i, %bb.cd
  %.pn.pn.i = phi { ptr, i32 } [ %i.ox, %bb.cd ], [ %.pn.i, %_ZN11CStringBaseIcED2Ev.exit223.i ], [ %.pn.i, %bb.ch ] ; 2 uses
  %i.pe = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.pf = icmp eq ptr %i.pe, null
  br i1 %i.pf, label %_ZN11CStringBaseIcED2Ev.exit225.i, label %bb.ci

bb.ci:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit224.i
  call void @_ZdaPv(ptr noundef nonnull %i.pe) #11
  br label %_ZN11CStringBaseIcED2Ev.exit225.i

_ZN11CStringBaseIcED2Ev.exit225.i:                ; preds = %bb.ci, %_ZN11CStringBaseIcED2Ev.exit224.i, %bb.cc
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.ow, %bb.cc ], [ %.pn.pn.i, %_ZN11CStringBaseIcED2Ev.exit224.i ], [ %.pn.pn.i, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.co

thread-pre-split.i:                               ; preds = %_ZN11CStringBaseIcED2Ev.exit222.i, %bb.br
  %.pr.i = load i8, ptr %i.ap, align 8, !tbaa !46
  br label %bb.cj

bb.cj:                                            ; preds = %thread-pre-split.i, %bb.bs
  %i.pg = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ol, %bb.bs ]
  %i.ph = icmp eq i8 %i.pg, 49
  br i1 %i.ph, label %bb.ck, label %vector.body461.preheader

bb.ck:                                            ; preds = %bb.cj
  store i64 0, ptr %i.af, align 8, !tbaa !43
  br label %vector.body461.preheader

vector.body461.preheader:                         ; preds = %bb.cj, %bb.ck
  br label %vector.body461

vector.body461:                                   ; preds = %vector.body461, %vector.body461.preheader
  %index462 = phi i64 [ 0, %vector.body461.preheader ], [ %index.next466.1, %vector.body461 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.body461.preheader ], [ %i.pt, %vector.body461 ]
  %vec.phi463 = phi <4 x i32> [ zeroinitializer, %vector.body461.preheader ], [ %i.pu, %vector.body461 ]
  %i.pi = getelementptr inbounds nuw i8, ptr %i.o, i64 %index462 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 4
  %wide.load464 = load <4 x i8>, ptr %i.pi, align 16, !tbaa !17
  %wide.load465 = load <4 x i8>, ptr %i.pj, align 4, !tbaa !17
  %i.pk = zext <4 x i8> %wide.load464 to <4 x i32>
  %i.pl = zext <4 x i8> %wide.load465 to <4 x i32>
  %i.pm = add <4 x i32> %vec.phi, %i.pk
  %i.pn = add <4 x i32> %vec.phi463, %i.pl
  %i.po = getelementptr inbounds nuw i8, ptr %i.o, i64 %index462 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 12
  %wide.load464.1 = load <4 x i8>, ptr %i.pp, align 8, !tbaa !17
  %wide.load465.1 = load <4 x i8>, ptr %i.pq, align 4, !tbaa !17
  %i.pr = zext <4 x i8> %wide.load464.1 to <4 x i32>
  %i.ps = zext <4 x i8> %wide.load465.1 to <4 x i32>
  %i.pt = add <4 x i32> %i.pm, %i.pr              ; 2 uses
  %i.pu = add <4 x i32> %i.pn, %i.ps              ; 2 uses
  %index.next466.1 = add nuw nsw i64 %index462, 16 ; 2 uses
  %i.pv = icmp eq i64 %index.next466.1, 512
  br i1 %i.pv, label %middle.block467, label %vector.body461, !llvm.loop !49

middle.block467:                                  ; preds = %vector.body461
  %bin.rdx = add <4 x i32> %i.pu, %i.pt
  %i.pw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %.not111.i = icmp eq i32 %i.pw, %i.nc
  br i1 %.not111.i, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %middle.block467
  store i8 1, ptr %1, align 1, !tbaa !20
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %middle.block467
  %.3100.i = phi i32 [ 0, %bb.cl ], [ 1, %middle.block467 ]
  %i.px = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.py = icmp eq ptr %i.px, null
  br i1 %i.py, label %_ZN11CStringBaseIcED2Ev.exit226.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZdaPv(ptr noundef nonnull %i.px) #11
  br label %_ZN11CStringBaseIcED2Ev.exit226.i

_ZN11CStringBaseIcED2Ev.exit226.i:                ; preds = %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.cq

bb.co:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit225.i, %bb.cb
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZN11CStringBaseIcED2Ev.exit225.i ], [ %i.ov, %bb.cb ]
  %i.pz = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.qa = icmp eq ptr %i.pz, null
  br i1 %i.qa, label %_ZN11CStringBaseIcED2Ev.exit227.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @_ZdaPv(ptr noundef nonnull %i.pz) #11
  br label %_ZN11CStringBaseIcED2Ev.exit227.i

_ZN11CStringBaseIcED2Ev.exit227.i:                ; preds = %bb.cp, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  br label %.body

.thread:                                          ; preds = %.noexc82, %.noexc85, %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit.i, %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit194.i, %.noexc87, %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit218.i, %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit206.i, %.noexc92, %.noexc86, %.noexc91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  br label %.thread163

bb.cq:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit226.i, %.thread.i
  %.5.i = phi i32 [ %i.ho, %.thread.i ], [ %.3100.i, %_ZN11CStringBaseIcED2Ev.exit226.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  %.not = icmp eq i32 %.5.i, 0
  br i1 %.not, label %bb.cs, label %.thread163

bb.cr:                                            ; preds = %bb.a
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit133

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.b, %bb.e, %bb.h, %bb.o, %bb.q, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i.i, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i161.i, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i173.i, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i191.i, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i203.i, %bb.bg, %.noexc88, %.noexc89, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i215.i, %bb.bp, %bb.bq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cs:                                            ; preds = %.thread157, %bb.cq
  %i.qc = load i8, ptr %1, align 1, !tbaa !20, !range !50, !noundef !51
  %i.qd = trunc nuw i8 %i.qc to i1
  br i1 %i.qd, label %bb.ct, label %.thread163

bb.ct:                                            ; preds = %bb.cs
  %i.qe = load i8, ptr %i.ap, align 8, !tbaa !46  ; 4 uses
  switch i8 %i.qe, label %bb.dj [
    i8 68, label %.loopexit168
    i8 88, label %.loopexit168
    i8 103, label %.loopexit168
    i8 120, label %.loopexit168
    i8 76, label %bb.cu
    i8 75, label %bb.cv
  ]

bb.cu:                                            ; preds = %bb.ct
  %i.qf = trunc nuw i8 %.047 to i1
  br i1 %i.qf, label %.thread163, label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.qg = trunc nuw i8 %.050 to i1
  br i1 %i.qg, label %.thread163, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.053.sroa.phi = phi ptr [ %.sroa.14153, %bb.cu ], [ %.sroa.14, %bb.cv ] ; 2 uses
  %.053.sroa.phi136 = phi ptr [ %.sroa.9151, %bb.cu ], [ %.sroa.9, %bb.cv ] ; 3 uses
  %.053 = phi ptr [ %.sroa.0148, %bb.cu ], [ %.sroa.0, %bb.cv ] ; 4 uses
  %.151 = phi i8 [ %.050, %bb.cu ], [ 1, %bb.cv ]
  %.148 = phi i8 [ 1, %bb.cu ], [ %.047, %bb.cv ]
  %i.qh = load ptr, ptr @_ZN8NArchive4NTar11NFileHeader9kLongLinkE, align 8, !tbaa !42
  %i.qi = load ptr, ptr %2, align 8, !tbaa !16
  %i.qj = invoke noundef i32 @_Z15MyStringComparePKcS0_(ptr noundef %i.qi, ptr noundef %i.qh)
          to label %_ZNK11CStringBaseIcE7CompareEPKc.exit unwind label %bb.cy

_ZNK11CStringBaseIcE7CompareEPKc.exit:            ; preds = %bb.cw
  %.not70 = icmp eq i32 %i.qj, 0
  br i1 %.not70, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %_ZNK11CStringBaseIcE7CompareEPKc.exit
  %i.qk = load ptr, ptr @_ZN8NArchive4NTar11NFileHeader10kLongLink2E, align 8, !tbaa !42
  %i.ql = load ptr, ptr %2, align 8, !tbaa !16
  %i.qm = invoke noundef i32 @_Z15MyStringComparePKcS0_(ptr noundef %i.ql, ptr noundef %i.qk)
          to label %_ZNK11CStringBaseIcE7CompareEPKc.exit96 unwind label %bb.cy

_ZNK11CStringBaseIcE7CompareEPKc.exit96:          ; preds = %bb.cx
  %.not71 = icmp eq i32 %i.qm, 0
  br i1 %.not71, label %bb.cz, label %.thread163

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cz:                                            ; preds = %_ZNK11CStringBaseIcE7CompareEPKc.exit96, %_ZNK11CStringBaseIcE7CompareEPKc.exit
  %i.qo = load i64, ptr %i.af, align 8, !tbaa !43 ; 2 uses
  %i.qp = icmp ugt i64 %i.qo, 16384
  br i1 %i.qp, label %.thread163, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qq = add nuw nsw i64 %i.qo, 511
  %i.qr = and i64 %i.qq, 65024                    ; 2 uses
  %i.qs = trunc nuw nsw i64 %i.qr to i32          ; 3 uses
  %i.qt = load i32, ptr %.053.sroa.phi, align 4, !tbaa !18 ; 2 uses
  %.not.i97 = icmp sgt i32 %i.qt, %i.qs
  br i1 %.not.i97, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %.pre.i = load ptr, ptr %.053, align 8, !tbaa !16
  br label %bb.de

bb.dc:                                            ; preds = %bb.da
  %8 = or disjoint i32 %i.qs, 1                   ; 2 uses
  %i.qu = zext nneg i32 %8 to i64
  %i.qv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qu) #9
          to label %.noexc101 unwind label %bb.dg ; 11 uses

.noexc101:                                        ; preds = %bb.dc
  %i.qw = ptrtoaddr ptr %i.qv to i64
  %i.qx = icmp sgt i32 %i.qt, 0
  %.pre252 = load i32, ptr %.053.sroa.phi136, align 8, !tbaa !19 ; 6 uses
  br i1 %i.qx, label %.preheader.i.i, label %bb.dd

.preheader.i.i:                                   ; preds = %.noexc101
  %i.qy = icmp sgt i32 %.pre252, 0
  %.pre.i.i98 = load ptr, ptr %.053, align 8, !tbaa !16 ; 10 uses
  br i1 %i.qy, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %.pre.i.i98358 = ptrtoaddr ptr %.pre.i.i98 to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre252 to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.pre252, 4
  %i.qz = sub i64 %i.qw, %.pre.i.i98358
  %diff.check = icmp ult i64 %i.qz, 32
  %or.cond535 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond535, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check359 = icmp ult i32 %.pre252, 32
  br i1 %min.iters.check359, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.pre.i.i98, i64 %index ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %wide.load = load <16 x i8>, ptr %i.ra, align 1, !tbaa !17
  %wide.load360 = load <16 x i8>, ptr %i.rb, align 1, !tbaa !17
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qv, i64 %index ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  store <16 x i8> %wide.load, ptr %i.rc, align 1, !tbaa !17
  store <16 x i8> %wide.load360, ptr %i.rd, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.re = icmp eq i64 %index.next, %n.vec
  br i1 %i.re, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec362 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index363 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next365, %vec.epilog.vector.body ] ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.pre.i.i98, i64 %index363
  %wide.load364 = load <4 x i8>, ptr %i.rf, align 1, !tbaa !17
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qv, i64 %index363
  store <4 x i8> %wide.load364, ptr %i.rg, align 1, !tbaa !17
  %index.next365 = add nuw i64 %index363, 4       ; 2 uses
  %i.rh = icmp eq i64 %index.next365, %n.vec362
  br i1 %i.rh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !53

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n366 = icmp eq i64 %n.vec362, %wide.trip.count.i.i
  br i1 %cmp.n366, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i99.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec362, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter583 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod584.not = icmp eq i64 %xtraiter583, 0
  br i1 %lcmp.mod584.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i99.prol = phi i64 [ %indvars.iv.next.i.i100.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i99.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter585 = phi i64 [ %prol.iter585.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ri = getelementptr inbounds nuw i8, ptr %.pre.i.i98, i64 %indvars.iv.i.i99.prol
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !17
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qv, i64 %indvars.iv.i.i99.prol
  store i8 %i.rj, ptr %i.rk, align 1, !tbaa !17
  %indvars.iv.next.i.i100.prol = add nuw nsw i64 %indvars.iv.i.i99.prol, 1 ; 2 uses
  %prol.iter585.next = add i64 %prol.iter585, 1   ; 2 uses
  %prol.iter585.cmp.not = icmp eq i64 %prol.iter585.next, %xtraiter583
  br i1 %prol.iter585.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !54

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i99.unr = phi i64 [ %indvars.iv.i.i99.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i100.prol, %vec.epilog.scalar.ph.prol ]
  %i.rl = sub nsw i64 %indvars.iv.i.i99.ph, %wide.trip.count.i.i
  %i.rm = icmp ugt i64 %i.rl, -4
  br i1 %i.rm, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.rn = icmp eq ptr %.pre.i.i98, null
  br i1 %i.rn, label %bb.dd, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i99 = phi i64 [ %indvars.iv.next.i.i100.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i99.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.pre.i.i98, i64 %indvars.iv.i.i99
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !17
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qv, i64 %indvars.iv.i.i99
  store i8 %i.rp, ptr %i.rq, align 1, !tbaa !17
  %indvars.iv.next.i.i100 = add nuw nsw i64 %indvars.iv.i.i99, 1 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.pre.i.i98, i64 %indvars.iv.next.i.i100
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !17
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qv, i64 %indvars.iv.next.i.i100
  store i8 %i.rs, ptr %i.rt, align 1, !tbaa !17
  %indvars.iv.next.i.i100.1 = add nuw nsw i64 %indvars.iv.i.i99, 2 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %.pre.i.i98, i64 %indvars.iv.next.i.i100.1
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !17
  %i.rw = getelementptr inbounds nuw i8, ptr %i.qv, i64 %indvars.iv.next.i.i100.1
  store i8 %i.rv, ptr %i.rw, align 1, !tbaa !17
  %indvars.iv.next.i.i100.2 = add nuw nsw i64 %indvars.iv.i.i99, 3 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %.pre.i.i98, i64 %indvars.iv.next.i.i100.2
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !17
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qv, i64 %indvars.iv.next.i.i100.2
  store i8 %i.ry, ptr %i.rz, align 1, !tbaa !17
  %indvars.iv.next.i.i100.3 = add nuw nsw i64 %indvars.iv.i.i99, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i100.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !55

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i98) #11
  %.pre = load i32, ptr %.053.sroa.phi136, align 8, !tbaa !19
  br label %bb.dd

bb.dd:                                            ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.noexc101
  %i.sa = phi i32 [ %.pre, %._crit_edge.thread.i.i ], [ %.pre252, %._crit_edge.i.i ], [ %.pre252, %.noexc101 ]
  store ptr %i.qv, ptr %.053, align 8, !tbaa !16
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds i8, ptr %i.qv, i64 %i.sb
  store i8 0, ptr %i.sc, align 1, !tbaa !17
  store i32 %8, ptr %.053.sroa.phi, align 4, !tbaa !18
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.db
  %9 = phi ptr [ %.pre.i, %bb.db ], [ %i.qv, %bb.dd ] ; 2 uses
  %i.sd = invoke noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %0, ptr noundef %9, i64 noundef %i.qr)
          to label %bb.df unwind label %bb.dh     ; 2 uses

bb.df:                                            ; preds = %bb.de
  %.not72 = icmp eq i32 %i.sd, 0
  br i1 %.not72, label %bb.di, label %.thread163

bb.dg:                                            ; preds = %bb.dc
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dh:                                            ; preds = %bb.de
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.di:                                            ; preds = %bb.df
  %i.sg = load i32, ptr %i.q, align 8, !tbaa !8
  %i.sh = add i32 %i.sg, %i.qs
  store i32 %i.sh, ptr %i.q, align 8, !tbaa !8
  %i.si = load i64, ptr %i.af, align 8, !tbaa !43
  %i.sj = getelementptr inbounds nuw i8, ptr %9, i64 %i.si
  store i8 0, ptr %i.sj, align 1, !tbaa !17
  %i.sk = load ptr, ptr %.053, align 8, !tbaa !16 ; 2 uses
  %strlen.i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sk) ; 2 uses
  %i.sl = trunc i64 %strlen.i.i to i32
  %sext.i = shl i64 %strlen.i.i, 32
  %i.sm = ashr exact i64 %sext.i, 32
  %i.sn = getelementptr inbounds i8, ptr %i.sk, i64 %i.sm
  store i8 0, ptr %i.sn, align 1, !tbaa !17
  store i32 %i.sl, ptr %.053.sroa.phi136, align 8, !tbaa !19
  br label %bb.b

bb.dj:                                            ; preds = %bb.ct
  %i.so = icmp sgt i8 %i.qe, 55
  br i1 %i.so, label %.thread163, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.sp = icmp sgt i8 %i.qe, 47
  %.not69 = icmp eq i8 %i.qe, 0
  %or.cond = or i1 %i.sp, %.not69
  br i1 %or.cond, label %.loopexit168, label %.thread163

.loopexit168:                                     ; preds = %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.dk
  %i.sq = trunc nuw i8 %.047 to i1
  br i1 %i.sq, label %bb.dl, label %bb.dq

bb.dl:                                            ; preds = %.loopexit168
  %i.sr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i32 0, ptr %i.sr, align 8, !tbaa !19
  %i.ss = load ptr, ptr %2, align 8, !tbaa !16
  store i8 0, ptr %i.ss, align 1, !tbaa !17
  %.sroa.9151.0..sroa.9151.0..sroa.9151.0..sroa.9151.8. = load i32, ptr %.sroa.9151, align 8, !tbaa !19 ; 2 uses
  %i.st = add nsw i32 %.sroa.9151.0..sroa.9151.0..sroa.9151.0..sroa.9151.8., 1 ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !18 ; 2 uses
  %i.sw = icmp eq i32 %i.st, %i.sv
  br i1 %i.sw, label %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i, label %bb.dm

._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i: ; preds = %bb.dl
  %.pre8.i = load ptr, ptr %2, align 8, !tbaa !16
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

bb.dm:                                            ; preds = %bb.dl
  %i.sx = sext i32 %i.st to i64
  %i.sy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sx) #9
          to label %.noexc112 unwind label %bb.dp ; 11 uses

.noexc112:                                        ; preds = %bb.dm
  %i.sz = ptrtoaddr ptr %i.sy to i64
  %i.ta = icmp sgt i32 %i.sv, 0
  %.pre7.i = load i32, ptr %i.sr, align 8, !tbaa !19 ; 6 uses
  br i1 %i.ta, label %.preheader.i.i103, label %bb.dn

.preheader.i.i103:                                ; preds = %.noexc112
  %i.tb = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i104 = load ptr, ptr %2, align 8, !tbaa !16 ; 10 uses
  br i1 %i.tb, label %iter.check485, label %._crit_edge.i.i105

iter.check485:                                    ; preds = %.preheader.i.i103
  %.pre.i.i104469 = ptrtoaddr ptr %.pre.i.i104 to i64
  %wide.trip.count.i.i108 = zext nneg i32 %.pre7.i to i64 ; 8 uses
  %min.iters.check471 = icmp ult i32 %.pre7.i, 4
  %i.tc = sub i64 %i.sz, %.pre.i.i104469
  %diff.check470 = icmp ult i64 %i.tc, 32
  %or.cond536 = select i1 %min.iters.check471, i1 true, i1 %diff.check470
  br i1 %or.cond536, label %vec.epilog.scalar.ph486.preheader, label %vector.main.loop.iter.check472

vector.main.loop.iter.check472:                   ; preds = %iter.check485
  %min.iters.check473 = icmp ult i32 %.pre7.i, 32
  br i1 %min.iters.check473, label %vec.epilog.ph489, label %vector.ph474

vector.ph474:                                     ; preds = %vector.main.loop.iter.check472
  %n.mod.vf475 = and i64 %wide.trip.count.i.i108, 28
  %n.vec476 = and i64 %wide.trip.count.i.i108, 2147483616 ; 4 uses
  br label %vector.body477

vector.body477:                                   ; preds = %vector.body477, %vector.ph474
  %index478 = phi i64 [ 0, %vector.ph474 ], [ %index.next481, %vector.body477 ] ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.pre.i.i104, i64 %index478 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %wide.load479 = load <16 x i8>, ptr %i.td, align 1, !tbaa !17
  %wide.load480 = load <16 x i8>, ptr %i.te, align 1, !tbaa !17
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sy, i64 %index478 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  store <16 x i8> %wide.load479, ptr %i.tf, align 1, !tbaa !17
  store <16 x i8> %wide.load480, ptr %i.tg, align 1, !tbaa !17
  %index.next481 = add nuw i64 %index478, 32      ; 2 uses
  %i.th = icmp eq i64 %index.next481, %n.vec476
  br i1 %i.th, label %middle.block482, label %vector.body477, !llvm.loop !56

middle.block482:                                  ; preds = %vector.body477
  %cmp.n483 = icmp eq i64 %n.vec476, %wide.trip.count.i.i108
  br i1 %cmp.n483, label %._crit_edge.thread.i.i106, label %vec.epilog.iter.check487

vec.epilog.iter.check487:                         ; preds = %middle.block482
  %min.epilog.iters.check488 = icmp eq i64 %n.mod.vf475, 0
  br i1 %min.epilog.iters.check488, label %vec.epilog.scalar.ph486.preheader, label %vec.epilog.ph489, !prof !27

vec.epilog.ph489:                                 ; preds = %vector.main.loop.iter.check472, %vec.epilog.iter.check487
  %vec.epilog.resume.val484 = phi i64 [ %n.vec476, %vec.epilog.iter.check487 ], [ 0, %vector.main.loop.iter.check472 ]
  %n.vec491 = and i64 %wide.trip.count.i.i108, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body492

vec.epilog.vector.body492:                        ; preds = %vec.epilog.vector.body492, %vec.epilog.ph489
  %index493 = phi i64 [ %vec.epilog.resume.val484, %vec.epilog.ph489 ], [ %index.next495, %vec.epilog.vector.body492 ] ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.pre.i.i104, i64 %index493
  %wide.load494 = load <4 x i8>, ptr %i.ti, align 1, !tbaa !17
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sy, i64 %index493
  store <4 x i8> %wide.load494, ptr %i.tj, align 1, !tbaa !17
  %index.next495 = add nuw i64 %index493, 4       ; 2 uses
  %i.tk = icmp eq i64 %index.next495, %n.vec491
  br i1 %i.tk, label %vec.epilog.middle.block496, label %vec.epilog.vector.body492, !llvm.loop !57

vec.epilog.middle.block496:                       ; preds = %vec.epilog.vector.body492
  %cmp.n497 = icmp eq i64 %n.vec491, %wide.trip.count.i.i108
  br i1 %cmp.n497, label %._crit_edge.thread.i.i106, label %vec.epilog.scalar.ph486.preheader

vec.epilog.scalar.ph486.preheader:                ; preds = %iter.check485, %vec.epilog.iter.check487, %vec.epilog.middle.block496
  %indvars.iv.i.i109.ph = phi i64 [ 0, %iter.check485 ], [ %n.vec476, %vec.epilog.iter.check487 ], [ %n.vec491, %vec.epilog.middle.block496 ] ; 3 uses
  %xtraiter586 = and i64 %wide.trip.count.i.i108, 3 ; 2 uses
  %lcmp.mod587.not = icmp eq i64 %xtraiter586, 0
  br i1 %lcmp.mod587.not, label %vec.epilog.scalar.ph486.prol.loopexit, label %vec.epilog.scalar.ph486.prol

vec.epilog.scalar.ph486.prol:                     ; preds = %vec.epilog.scalar.ph486.preheader, %vec.epilog.scalar.ph486.prol
  %indvars.iv.i.i109.prol = phi i64 [ %indvars.iv.next.i.i110.prol, %vec.epilog.scalar.ph486.prol ], [ %indvars.iv.i.i109.ph, %vec.epilog.scalar.ph486.preheader ] ; 3 uses
  %prol.iter588 = phi i64 [ %prol.iter588.next, %vec.epilog.scalar.ph486.prol ], [ 0, %vec.epilog.scalar.ph486.preheader ]
  %i.tl = getelementptr inbounds nuw i8, ptr %.pre.i.i104, i64 %indvars.iv.i.i109.prol
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !17
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sy, i64 %indvars.iv.i.i109.prol
  store i8 %i.tm, ptr %i.tn, align 1, !tbaa !17
  %indvars.iv.next.i.i110.prol = add nuw nsw i64 %indvars.iv.i.i109.prol, 1 ; 2 uses
  %prol.iter588.next = add i64 %prol.iter588, 1   ; 2 uses
  %prol.iter588.cmp.not = icmp eq i64 %prol.iter588.next, %xtraiter586
  br i1 %prol.iter588.cmp.not, label %vec.epilog.scalar.ph486.prol.loopexit, label %vec.epilog.scalar.ph486.prol, !llvm.loop !58

vec.epilog.scalar.ph486.prol.loopexit:            ; preds = %vec.epilog.scalar.ph486.prol, %vec.epilog.scalar.ph486.preheader
  %indvars.iv.i.i109.unr = phi i64 [ %indvars.iv.i.i109.ph, %vec.epilog.scalar.ph486.preheader ], [ %indvars.iv.next.i.i110.prol, %vec.epilog.scalar.ph486.prol ]
  %i.to = sub nsw i64 %indvars.iv.i.i109.ph, %wide.trip.count.i.i108
  %i.tp = icmp ugt i64 %i.to, -4
  br i1 %i.tp, label %._crit_edge.thread.i.i106, label %vec.epilog.scalar.ph486

._crit_edge.i.i105:                               ; preds = %.preheader.i.i103
  %i.tq = icmp eq ptr %.pre.i.i104, null
  br i1 %i.tq, label %bb.dn, label %._crit_edge.thread.i.i106

vec.epilog.scalar.ph486:                          ; preds = %vec.epilog.scalar.ph486.prol.loopexit, %vec.epilog.scalar.ph486
  %indvars.iv.i.i109 = phi i64 [ %indvars.iv.next.i.i110.3, %vec.epilog.scalar.ph486 ], [ %indvars.iv.i.i109.unr, %vec.epilog.scalar.ph486.prol.loopexit ] ; 6 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.pre.i.i104, i64 %indvars.iv.i.i109
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !17
  %i.tt = getelementptr inbounds nuw i8, ptr %i.sy, i64 %indvars.iv.i.i109
  store i8 %i.ts, ptr %i.tt, align 1, !tbaa !17
  %indvars.iv.next.i.i110 = add nuw nsw i64 %indvars.iv.i.i109, 1 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.pre.i.i104, i64 %indvars.iv.next.i.i110
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !17
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sy, i64 %indvars.iv.next.i.i110
  store i8 %i.tv, ptr %i.tw, align 1, !tbaa !17
  %indvars.iv.next.i.i110.1 = add nuw nsw i64 %indvars.iv.i.i109, 2 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.pre.i.i104, i64 %indvars.iv.next.i.i110.1
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !17
  %i.tz = getelementptr inbounds nuw i8, ptr %i.sy, i64 %indvars.iv.next.i.i110.1
  store i8 %i.ty, ptr %i.tz, align 1, !tbaa !17
  %indvars.iv.next.i.i110.2 = add nuw nsw i64 %indvars.iv.i.i109, 3 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %.pre.i.i104, i64 %indvars.iv.next.i.i110.2
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !17
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sy, i64 %indvars.iv.next.i.i110.2
  store i8 %i.ub, ptr %i.uc, align 1, !tbaa !17
  %indvars.iv.next.i.i110.3 = add nuw nsw i64 %indvars.iv.i.i109, 4 ; 2 uses
  %exitcond.not.i.i111.3 = icmp eq i64 %indvars.iv.next.i.i110.3, %wide.trip.count.i.i108
  br i1 %exitcond.not.i.i111.3, label %._crit_edge.thread.i.i106, label %vec.epilog.scalar.ph486, !llvm.loop !59

._crit_edge.thread.i.i106:                        ; preds = %vec.epilog.scalar.ph486.prol.loopexit, %vec.epilog.scalar.ph486, %middle.block482, %vec.epilog.middle.block496, %._crit_edge.i.i105
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i104) #11
  %.pre.i.a = load i32, ptr %i.sr, align 8, !tbaa !19
  br label %bb.dn

bb.dn:                                            ; preds = %._crit_edge.thread.i.i106, %._crit_edge.i.i105, %.noexc112
  %i.ud = phi i32 [ %.pre.i.a, %._crit_edge.thread.i.i106 ], [ %.pre7.i, %._crit_edge.i.i105 ], [ %.pre7.i, %.noexc112 ]
  store ptr %i.sy, ptr %2, align 8, !tbaa !16
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds i8, ptr %i.sy, i64 %i.ue
  store i8 0, ptr %i.uf, align 1, !tbaa !17
  store i32 %i.st, ptr %i.su, align 4, !tbaa !18
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %bb.dn, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
  %i.ug = phi ptr [ %.pre8.i, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i ], [ %i.sy, %bb.dn ]
  %.sroa.0148.0..sroa.0148.0..sroa.0148.0..sroa.0148.0. = load ptr, ptr %.sroa.0148, align 8, !tbaa !16
  br label %bb.do

bb.do:                                            ; preds = %bb.do, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %.sroa.0148.0..sroa.0148.0..sroa.0148.0..sroa.0148.0., %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.uh, %bb.do ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ug, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.uj, %bb.do ] ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  %i.ui = load i8, ptr %.04.i.i, align 1, !tbaa !17 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  store i8 %i.ui, ptr %.0.i.i, align 1, !tbaa !17
  %.not.i.i102 = icmp eq i8 %i.ui, 0
  br i1 %.not.i.i102, label %_ZN11CStringBaseIcEaSERKS0_.exit, label %bb.do, !llvm.loop !60

_ZN11CStringBaseIcEaSERKS0_.exit:                 ; preds = %bb.do
  store i32 %.sroa.9151.0..sroa.9151.0..sroa.9151.0..sroa.9151.8., ptr %i.sr, align 8, !tbaa !19
end_hunk_0
