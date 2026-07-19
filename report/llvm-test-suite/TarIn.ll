inline.NumInlined: 60
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN8NArchive4NTar8ReadItemEP19ISequentialInStreamRbRNS0_7CItemExER11CStringBaseIcE:bb.a
          cleanup                                 ; 2 uses
  %i.pa = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.pb = icmp eq ptr %i.pa, null
  br i1 %i.pb, label %_ZN11CStringBaseIcED2Ev.exit222.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZdaPv(ptr noundef nonnull %i.pa) #11
  br label %_ZN11CStringBaseIcED2Ev.exit222.i

_ZN11CStringBaseIcED2Ev.exit222.i:                ; preds = %bb.ch, %bb.cg, %bb.cf
  %.pn.i = phi { ptr, i32 } [ %i.oy, %bb.cf ], [ %i.oz, %bb.cg ], [ %i.oz, %bb.ch ] ; 2 uses
  %i.pc = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.pd = icmp eq ptr %i.pc, null
  br i1 %i.pd, label %_ZN11CStringBaseIcED2Ev.exit223.i, label %bb.ci

bb.ci:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit222.i
  call void @_ZdaPv(ptr noundef nonnull %i.pc) #11
  br label %_ZN11CStringBaseIcED2Ev.exit223.i

_ZN11CStringBaseIcED2Ev.exit223.i:                ; preds = %bb.ci, %_ZN11CStringBaseIcED2Ev.exit222.i, %bb.ce
  %.pn.pn.i = phi { ptr, i32 } [ %i.ox, %bb.ce ], [ %.pn.i, %_ZN11CStringBaseIcED2Ev.exit222.i ], [ %.pn.i, %bb.ci ] ; 2 uses
  %i.pe = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.pf = icmp eq ptr %i.pe, null
  br i1 %i.pf, label %_ZN11CStringBaseIcED2Ev.exit224.i, label %bb.cj

bb.cj:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit223.i
  call void @_ZdaPv(ptr noundef nonnull %i.pe) #11
  br label %_ZN11CStringBaseIcED2Ev.exit224.i

_ZN11CStringBaseIcED2Ev.exit224.i:                ; preds = %bb.cj, %_ZN11CStringBaseIcED2Ev.exit223.i, %bb.cd
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.ow, %bb.cd ], [ %.pn.pn.i, %_ZN11CStringBaseIcED2Ev.exit223.i ], [ %.pn.pn.i, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.cp

bb.ck:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit221.i, %bb.bs, %bb.br
  %.pr.i = load i8, ptr %i.ap, align 8, !tbaa !46
  %i.pg = icmp eq i8 %.pr.i, 49
  br i1 %i.pg, label %bb.cl, label %vector.body461.preheader

bb.cl:                                            ; preds = %bb.ck
  store i64 0, ptr %i.af, align 8, !tbaa !43
  br label %vector.body461.preheader

vector.body461.preheader:                         ; preds = %bb.bt, %bb.ck, %bb.cl
  br label %vector.body461

vector.body461:                                   ; preds = %vector.body461, %vector.body461.preheader
  %index462 = phi i64 [ 0, %vector.body461.preheader ], [ %index.next466.1, %vector.body461 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.body461.preheader ], [ %i.ps, %vector.body461 ]
  %vec.phi463 = phi <4 x i32> [ zeroinitializer, %vector.body461.preheader ], [ %i.pt, %vector.body461 ]
  %i.ph = getelementptr inbounds nuw i8, ptr %i.o, i64 %index462 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %wide.load464 = load <4 x i8>, ptr %i.ph, align 16, !tbaa !17
  %wide.load465 = load <4 x i8>, ptr %i.pi, align 4, !tbaa !17
  %i.pj = zext <4 x i8> %wide.load464 to <4 x i32>
  %i.pk = zext <4 x i8> %wide.load465 to <4 x i32>
  %i.pl = add <4 x i32> %vec.phi, %i.pj
  %i.pm = add <4 x i32> %vec.phi463, %i.pk
  %i.pn = getelementptr inbounds nuw i8, ptr %i.o, i64 %index462 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 12
  %wide.load464.1 = load <4 x i8>, ptr %i.po, align 8, !tbaa !17
  %wide.load465.1 = load <4 x i8>, ptr %i.pp, align 4, !tbaa !17
  %i.pq = zext <4 x i8> %wide.load464.1 to <4 x i32>
  %i.pr = zext <4 x i8> %wide.load465.1 to <4 x i32>
  %i.ps = add <4 x i32> %i.pl, %i.pq              ; 2 uses
  %i.pt = add <4 x i32> %i.pm, %i.pr              ; 2 uses
  %index.next466.1 = add nuw nsw i64 %index462, 16 ; 2 uses
  %i.pu = icmp eq i64 %index.next466.1, 512
  br i1 %i.pu, label %middle.block467, label %vector.body461, !llvm.loop !49

middle.block467:                                  ; preds = %vector.body461
  %bin.rdx = add <4 x i32> %i.pt, %i.ps
  %i.pv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %.not111.i = icmp eq i32 %i.pv, %i.nc
  br i1 %.not111.i, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %middle.block467
  store i8 1, ptr %1, align 1, !tbaa !20
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %middle.block467
  %.3100.i = phi i32 [ 0, %bb.cm ], [ 1, %middle.block467 ]
  %i.pw = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.px = icmp eq ptr %i.pw, null
  br i1 %i.px, label %_ZN11CStringBaseIcED2Ev.exit225.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZdaPv(ptr noundef nonnull %i.pw) #11
  br label %_ZN11CStringBaseIcED2Ev.exit225.i

_ZN11CStringBaseIcED2Ev.exit225.i:                ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.cr

bb.cp:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit224.i, %bb.cc
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZN11CStringBaseIcED2Ev.exit224.i ], [ %i.ov, %bb.cc ]
  %i.py = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.pz = icmp eq ptr %i.py, null
  br i1 %i.pz, label %_ZN11CStringBaseIcED2Ev.exit226.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @_ZdaPv(ptr noundef nonnull %i.py) #11
  br label %_ZN11CStringBaseIcED2Ev.exit226.i

_ZN11CStringBaseIcED2Ev.exit226.i:                ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  br label %.body

.thread:                                          ; preds = %.noexc82, %.noexc85, %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit.i, %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit193.i, %.noexc87, %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit217.i, %_ZN8NArchive4NTarL15OctalToNumber32EPKciRj.exit205.i, %.noexc92, %.noexc86, %.noexc91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  br label %.thread163

bb.cr:                                            ; preds = %_ZN11CStringBaseIcED2Ev.exit225.i, %.thread.i
  %.5.i = phi i32 [ %i.ho, %.thread.i ], [ %.3100.i, %_ZN11CStringBaseIcED2Ev.exit225.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  %.not = icmp eq i32 %.5.i, 0
  br i1 %.not, label %bb.ct, label %.thread163

bb.cs:                                            ; preds = %bb.a
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit133

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.b, %bb.e, %bb.h, %bb.o, %bb.q, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i.i, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i160.i, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i172.i, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i190.i, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i202.i, %bb.bg, %.noexc88, %.noexc89, %_ZN8NArchive4NTarL13OctalToNumberEPKciRy.exit.i214.i, %bb.bp, %bb.bq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ct:                                            ; preds = %.thread157, %bb.cr
  %i.qb = load i8, ptr %1, align 1, !tbaa !20, !range !50, !noundef !51
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %bb.cu, label %.thread163

bb.cu:                                            ; preds = %bb.ct
  %i.qd = load i8, ptr %i.ap, align 8, !tbaa !46  ; 4 uses
  switch i8 %i.qd, label %bb.dk [
    i8 68, label %.loopexit168
    i8 88, label %.loopexit168
    i8 103, label %.loopexit168
    i8 120, label %.loopexit168
    i8 76, label %bb.cv
    i8 75, label %bb.cw
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.qe = trunc nuw i8 %.047 to i1
  br i1 %i.qe, label %.thread163, label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.qf = trunc nuw i8 %.050 to i1
  br i1 %i.qf, label %.thread163, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.053.sroa.phi = phi ptr [ %.sroa.14153, %bb.cv ], [ %.sroa.14, %bb.cw ] ; 2 uses
  %.053.sroa.phi136 = phi ptr [ %.sroa.9151, %bb.cv ], [ %.sroa.9, %bb.cw ] ; 3 uses
  %.053 = phi ptr [ %.sroa.0148, %bb.cv ], [ %.sroa.0, %bb.cw ] ; 4 uses
  %.151 = phi i8 [ %.050, %bb.cv ], [ 1, %bb.cw ]
  %.148 = phi i8 [ 1, %bb.cv ], [ %.047, %bb.cw ]
  %i.qg = load ptr, ptr @_ZN8NArchive4NTar11NFileHeader9kLongLinkE, align 8, !tbaa !42
  %i.qh = load ptr, ptr %2, align 8, !tbaa !16
  %i.qi = invoke noundef i32 @_Z15MyStringComparePKcS0_(ptr noundef %i.qh, ptr noundef %i.qg)
          to label %_ZNK11CStringBaseIcE7CompareEPKc.exit unwind label %bb.cz

_ZNK11CStringBaseIcE7CompareEPKc.exit:            ; preds = %bb.cx
  %.not70 = icmp eq i32 %i.qi, 0
  br i1 %.not70, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %_ZNK11CStringBaseIcE7CompareEPKc.exit
  %i.qj = load ptr, ptr @_ZN8NArchive4NTar11NFileHeader10kLongLink2E, align 8, !tbaa !42
  %i.qk = load ptr, ptr %2, align 8, !tbaa !16
  %i.ql = invoke noundef i32 @_Z15MyStringComparePKcS0_(ptr noundef %i.qk, ptr noundef %i.qj)
          to label %_ZNK11CStringBaseIcE7CompareEPKc.exit96 unwind label %bb.cz

_ZNK11CStringBaseIcE7CompareEPKc.exit96:          ; preds = %bb.cy
  %.not71 = icmp eq i32 %i.ql, 0
  br i1 %.not71, label %bb.da, label %.thread163

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.da:                                            ; preds = %_ZNK11CStringBaseIcE7CompareEPKc.exit96, %_ZNK11CStringBaseIcE7CompareEPKc.exit
  %i.qn = load i64, ptr %i.af, align 8, !tbaa !43 ; 2 uses
  %i.qo = icmp ugt i64 %i.qn, 16384
  br i1 %i.qo, label %.thread163, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qp = add nuw nsw i64 %i.qn, 511
  %i.qq = and i64 %i.qp, 65024                    ; 2 uses
  %i.qr = trunc nuw nsw i64 %i.qq to i32          ; 3 uses
  %i.qs = load i32, ptr %.053.sroa.phi, align 4, !tbaa !18 ; 2 uses
  %.not.i97 = icmp sgt i32 %i.qs, %i.qr
  br i1 %.not.i97, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %.pre.i = load ptr, ptr %.053, align 8, !tbaa !16
  br label %bb.df

bb.dd:                                            ; preds = %bb.db
  %8 = or disjoint i32 %i.qr, 1                   ; 2 uses
  %i.qt = zext nneg i32 %8 to i64
  %i.qu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.qt) #9
          to label %.noexc101 unwind label %bb.dh ; 11 uses

.noexc101:                                        ; preds = %bb.dd
  %i.qv = ptrtoaddr ptr %i.qu to i64
  %i.qw = icmp sgt i32 %i.qs, 0
  %.pre252 = load i32, ptr %.053.sroa.phi136, align 8, !tbaa !19 ; 6 uses
  br i1 %i.qw, label %.preheader.i.i, label %bb.de

.preheader.i.i:                                   ; preds = %.noexc101
  %i.qx = icmp sgt i32 %.pre252, 0
  %.pre.i.i98 = load ptr, ptr %.053, align 8, !tbaa !16 ; 10 uses
  br i1 %i.qx, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %.pre.i.i98358 = ptrtoaddr ptr %.pre.i.i98 to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre252 to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.pre252, 4
  %i.qy = sub i64 %.pre.i.i98358, %i.qv
  %diff.check = icmp ugt i64 %i.qy, -32
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
  %i.qz = getelementptr inbounds nuw i8, ptr %.pre.i.i98, i64 %index ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %wide.load = load <16 x i8>, ptr %i.qz, align 1, !tbaa !17
  %wide.load360 = load <16 x i8>, ptr %i.ra, align 1, !tbaa !17
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qu, i64 %index ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  store <16 x i8> %wide.load, ptr %i.rb, align 1, !tbaa !17
  store <16 x i8> %wide.load360, ptr %i.rc, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.rd = icmp eq i64 %index.next, %n.vec
  br i1 %i.rd, label %middle.block, label %vector.body, !llvm.loop !52

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
  %i.re = getelementptr inbounds nuw i8, ptr %.pre.i.i98, i64 %index363
  %wide.load364 = load <4 x i8>, ptr %i.re, align 1, !tbaa !17
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qu, i64 %index363
  store <4 x i8> %wide.load364, ptr %i.rf, align 1, !tbaa !17
  %index.next365 = add nuw i64 %index363, 4       ; 2 uses
  %i.rg = icmp eq i64 %index.next365, %n.vec362
  br i1 %i.rg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !53

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
  %i.rh = getelementptr inbounds nuw i8, ptr %.pre.i.i98, i64 %indvars.iv.i.i99.prol
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !17
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv.i.i99.prol
  store i8 %i.ri, ptr %i.rj, align 1, !tbaa !17
  %indvars.iv.next.i.i100.prol = add nuw nsw i64 %indvars.iv.i.i99.prol, 1 ; 2 uses
  %prol.iter585.next = add i64 %prol.iter585, 1   ; 2 uses
  %prol.iter585.cmp.not = icmp eq i64 %prol.iter585.next, %xtraiter583
  br i1 %prol.iter585.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !54

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i99.unr = phi i64 [ %indvars.iv.i.i99.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i100.prol, %vec.epilog.scalar.ph.prol ]
  %i.rk = sub nsw i64 %indvars.iv.i.i99.ph, %wide.trip.count.i.i
  %i.rl = icmp ugt i64 %i.rk, -4
  br i1 %i.rl, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.rm = icmp eq ptr %.pre.i.i98, null
  br i1 %i.rm, label %bb.de, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i99 = phi i64 [ %indvars.iv.next.i.i100.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i99.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %.pre.i.i98, i64 %indvars.iv.i.i99
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !17
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv.i.i99
  store i8 %i.ro, ptr %i.rp, align 1, !tbaa !17
  %indvars.iv.next.i.i100 = add nuw nsw i64 %indvars.iv.i.i99, 1 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.pre.i.i98, i64 %indvars.iv.next.i.i100
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !17
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv.next.i.i100
  store i8 %i.rr, ptr %i.rs, align 1, !tbaa !17
  %indvars.iv.next.i.i100.1 = add nuw nsw i64 %indvars.iv.i.i99, 2 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.pre.i.i98, i64 %indvars.iv.next.i.i100.1
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !17
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv.next.i.i100.1
  store i8 %i.ru, ptr %i.rv, align 1, !tbaa !17
  %indvars.iv.next.i.i100.2 = add nuw nsw i64 %indvars.iv.i.i99, 3 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.pre.i.i98, i64 %indvars.iv.next.i.i100.2
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !17
  %i.ry = getelementptr inbounds nuw i8, ptr %i.qu, i64 %indvars.iv.next.i.i100.2
  store i8 %i.rx, ptr %i.ry, align 1, !tbaa !17
  %indvars.iv.next.i.i100.3 = add nuw nsw i64 %indvars.iv.i.i99, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i100.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !55

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i98) #11
  %.pre = load i32, ptr %.053.sroa.phi136, align 8, !tbaa !19
  br label %bb.de

bb.de:                                            ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.noexc101
  %i.rz = phi i32 [ %.pre, %._crit_edge.thread.i.i ], [ %.pre252, %._crit_edge.i.i ], [ %.pre252, %.noexc101 ]
  store ptr %i.qu, ptr %.053, align 8, !tbaa !16
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr inbounds i8, ptr %i.qu, i64 %i.sa
  store i8 0, ptr %i.sb, align 1, !tbaa !17
  store i32 %8, ptr %.053.sroa.phi, align 4, !tbaa !18
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dc
  %9 = phi ptr [ %.pre.i, %bb.dc ], [ %i.qu, %bb.de ] ; 2 uses
  %i.sc = invoke noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %0, ptr noundef %9, i64 noundef %i.qq)
          to label %bb.dg unwind label %bb.di     ; 2 uses

bb.dg:                                            ; preds = %bb.df
  %.not72 = icmp eq i32 %i.sc, 0
  br i1 %.not72, label %bb.dj, label %.thread163

bb.dh:                                            ; preds = %bb.dd
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.di:                                            ; preds = %bb.df
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dj:                                            ; preds = %bb.dg
  %i.sf = load i32, ptr %i.q, align 8, !tbaa !8
  %i.sg = add i32 %i.sf, %i.qr
  store i32 %i.sg, ptr %i.q, align 8, !tbaa !8
  %i.sh = load i64, ptr %i.af, align 8, !tbaa !43
  %i.si = getelementptr inbounds nuw i8, ptr %9, i64 %i.sh
  store i8 0, ptr %i.si, align 1, !tbaa !17
  %i.sj = load ptr, ptr %.053, align 8, !tbaa !16 ; 2 uses
  %strlen.i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sj) ; 2 uses
  %i.sk = trunc i64 %strlen.i.i to i32
  %sext.i = shl i64 %strlen.i.i, 32
  %i.sl = ashr exact i64 %sext.i, 32
  %i.sm = getelementptr inbounds i8, ptr %i.sj, i64 %i.sl
  store i8 0, ptr %i.sm, align 1, !tbaa !17
  store i32 %i.sk, ptr %.053.sroa.phi136, align 8, !tbaa !19
  br label %bb.b

bb.dk:                                            ; preds = %bb.cu
  %i.sn = icmp sgt i8 %i.qd, 55
  br i1 %i.sn, label %.thread163, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.so = icmp sgt i8 %i.qd, 47
  %.not69 = icmp eq i8 %i.qd, 0
  %or.cond = or i1 %i.so, %.not69
  br i1 %or.cond, label %.loopexit168, label %.thread163

.loopexit168:                                     ; preds = %bb.cu, %bb.cu, %bb.cu, %bb.cu, %bb.dl
  %i.sp = trunc nuw i8 %.047 to i1
  br i1 %i.sp, label %bb.dm, label %bb.dr

bb.dm:                                            ; preds = %.loopexit168
  %i.sq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i32 0, ptr %i.sq, align 8, !tbaa !19
  %i.sr = load ptr, ptr %2, align 8, !tbaa !16
  store i8 0, ptr %i.sr, align 1, !tbaa !17
  %.sroa.9151.0..sroa.9151.0..sroa.9151.0..sroa.9151.8. = load i32, ptr %.sroa.9151, align 8, !tbaa !19 ; 2 uses
  %i.ss = add nsw i32 %.sroa.9151.0..sroa.9151.0..sroa.9151.0..sroa.9151.8., 1 ; 3 uses
  %i.st = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.su = load i32, ptr %i.st, align 4, !tbaa !18 ; 2 uses
  %i.sv = icmp eq i32 %i.ss, %i.su
  br i1 %i.sv, label %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i, label %bb.dn

._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i: ; preds = %bb.dm
  %.pre8.i = load ptr, ptr %2, align 8, !tbaa !16
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

bb.dn:                                            ; preds = %bb.dm
  %i.sw = sext i32 %i.ss to i64
  %i.sx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.sw) #9
          to label %.noexc112 unwind label %bb.dq ; 11 uses

.noexc112:                                        ; preds = %bb.dn
  %i.sy = ptrtoaddr ptr %i.sx to i64
  %i.sz = icmp sgt i32 %i.su, 0
  %.pre7.i = load i32, ptr %i.sq, align 8, !tbaa !19 ; 6 uses
  br i1 %i.sz, label %.preheader.i.i103, label %bb.do

.preheader.i.i103:                                ; preds = %.noexc112
  %i.ta = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i104 = load ptr, ptr %2, align 8, !tbaa !16 ; 10 uses
  br i1 %i.ta, label %iter.check485, label %._crit_edge.i.i105

iter.check485:                                    ; preds = %.preheader.i.i103
  %.pre.i.i104469 = ptrtoaddr ptr %.pre.i.i104 to i64
  %wide.trip.count.i.i108 = zext nneg i32 %.pre7.i to i64 ; 8 uses
  %min.iters.check471 = icmp ult i32 %.pre7.i, 4
  %i.tb = sub i64 %.pre.i.i104469, %i.sy
  %diff.check470 = icmp ugt i64 %i.tb, -32
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
  %i.tc = getelementptr inbounds nuw i8, ptr %.pre.i.i104, i64 %index478 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  %wide.load479 = load <16 x i8>, ptr %i.tc, align 1, !tbaa !17
  %wide.load480 = load <16 x i8>, ptr %i.td, align 1, !tbaa !17
  %i.te = getelementptr inbounds nuw i8, ptr %i.sx, i64 %index478 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  store <16 x i8> %wide.load479, ptr %i.te, align 1, !tbaa !17
  store <16 x i8> %wide.load480, ptr %i.tf, align 1, !tbaa !17
  %index.next481 = add nuw i64 %index478, 32      ; 2 uses
  %i.tg = icmp eq i64 %index.next481, %n.vec476
  br i1 %i.tg, label %middle.block482, label %vector.body477, !llvm.loop !56

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
  %i.th = getelementptr inbounds nuw i8, ptr %.pre.i.i104, i64 %index493
  %wide.load494 = load <4 x i8>, ptr %i.th, align 1, !tbaa !17
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sx, i64 %index493
  store <4 x i8> %wide.load494, ptr %i.ti, align 1, !tbaa !17
  %index.next495 = add nuw i64 %index493, 4       ; 2 uses
  %i.tj = icmp eq i64 %index.next495, %n.vec491
  br i1 %i.tj, label %vec.epilog.middle.block496, label %vec.epilog.vector.body492, !llvm.loop !57

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
  %i.tk = getelementptr inbounds nuw i8, ptr %.pre.i.i104, i64 %indvars.iv.i.i109.prol
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !17
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sx, i64 %indvars.iv.i.i109.prol
  store i8 %i.tl, ptr %i.tm, align 1, !tbaa !17
  %indvars.iv.next.i.i110.prol = add nuw nsw i64 %indvars.iv.i.i109.prol, 1 ; 2 uses
  %prol.iter588.next = add i64 %prol.iter588, 1   ; 2 uses
  %prol.iter588.cmp.not = icmp eq i64 %prol.iter588.next, %xtraiter586
  br i1 %prol.iter588.cmp.not, label %vec.epilog.scalar.ph486.prol.loopexit, label %vec.epilog.scalar.ph486.prol, !llvm.loop !58

vec.epilog.scalar.ph486.prol.loopexit:            ; preds = %vec.epilog.scalar.ph486.prol, %vec.epilog.scalar.ph486.preheader
  %indvars.iv.i.i109.unr = phi i64 [ %indvars.iv.i.i109.ph, %vec.epilog.scalar.ph486.preheader ], [ %indvars.iv.next.i.i110.prol, %vec.epilog.scalar.ph486.prol ]
  %i.tn = sub nsw i64 %indvars.iv.i.i109.ph, %wide.trip.count.i.i108
  %i.to = icmp ugt i64 %i.tn, -4
  br i1 %i.to, label %._crit_edge.thread.i.i106, label %vec.epilog.scalar.ph486

._crit_edge.i.i105:                               ; preds = %.preheader.i.i103
  %i.tp = icmp eq ptr %.pre.i.i104, null
  br i1 %i.tp, label %bb.do, label %._crit_edge.thread.i.i106

vec.epilog.scalar.ph486:                          ; preds = %vec.epilog.scalar.ph486.prol.loopexit, %vec.epilog.scalar.ph486
  %indvars.iv.i.i109 = phi i64 [ %indvars.iv.next.i.i110.3, %vec.epilog.scalar.ph486 ], [ %indvars.iv.i.i109.unr, %vec.epilog.scalar.ph486.prol.loopexit ] ; 6 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.pre.i.i104, i64 %indvars.iv.i.i109
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !17
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sx, i64 %indvars.iv.i.i109
  store i8 %i.tr, ptr %i.ts, align 1, !tbaa !17
  %indvars.iv.next.i.i110 = add nuw nsw i64 %indvars.iv.i.i109, 1 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.pre.i.i104, i64 %indvars.iv.next.i.i110
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !17
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sx, i64 %indvars.iv.next.i.i110
  store i8 %i.tu, ptr %i.tv, align 1, !tbaa !17
  %indvars.iv.next.i.i110.1 = add nuw nsw i64 %indvars.iv.i.i109, 2 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.pre.i.i104, i64 %indvars.iv.next.i.i110.1
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !17
  %i.ty = getelementptr inbounds nuw i8, ptr %i.sx, i64 %indvars.iv.next.i.i110.1
  store i8 %i.tx, ptr %i.ty, align 1, !tbaa !17
  %indvars.iv.next.i.i110.2 = add nuw nsw i64 %indvars.iv.i.i109, 3 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.pre.i.i104, i64 %indvars.iv.next.i.i110.2
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !17
  %i.ub = getelementptr inbounds nuw i8, ptr %i.sx, i64 %indvars.iv.next.i.i110.2
  store i8 %i.ua, ptr %i.ub, align 1, !tbaa !17
  %indvars.iv.next.i.i110.3 = add nuw nsw i64 %indvars.iv.i.i109, 4 ; 2 uses
  %exitcond.not.i.i111.3 = icmp eq i64 %indvars.iv.next.i.i110.3, %wide.trip.count.i.i108
  br i1 %exitcond.not.i.i111.3, label %._crit_edge.thread.i.i106, label %vec.epilog.scalar.ph486, !llvm.loop !59

._crit_edge.thread.i.i106:                        ; preds = %vec.epilog.scalar.ph486.prol.loopexit, %vec.epilog.scalar.ph486, %middle.block482, %vec.epilog.middle.block496, %._crit_edge.i.i105
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i104) #11
  %.pre.i.a = load i32, ptr %i.sq, align 8, !tbaa !19
  br label %bb.do

bb.do:                                            ; preds = %._crit_edge.thread.i.i106, %._crit_edge.i.i105, %.noexc112
  %i.uc = phi i32 [ %.pre.i.a, %._crit_edge.thread.i.i106 ], [ %.pre7.i, %._crit_edge.i.i105 ], [ %.pre7.i, %.noexc112 ]
  store ptr %i.sx, ptr %2, align 8, !tbaa !16
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds i8, ptr %i.sx, i64 %i.ud
  store i8 0, ptr %i.ue, align 1, !tbaa !17
  store i32 %i.ss, ptr %i.st, align 4, !tbaa !18
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %bb.do, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
  %i.uf = phi ptr [ %.pre8.i, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i ], [ %i.sx, %bb.do ]
  %.sroa.0148.0..sroa.0148.0..sroa.0148.0..sroa.0148.0. = load ptr, ptr %.sroa.0148, align 8, !tbaa !16
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dp, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %.sroa.0148.0..sroa.0148.0..sroa.0148.0..sroa.0148.0., %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.ug, %bb.dp ] ; 2 uses
  %.0.i.i = phi ptr [ %i.uf, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.ui, %bb.dp ] ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  %i.uh = load i8, ptr %.04.i.i, align 1, !tbaa !17 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  store i8 %i.uh, ptr %.0.i.i, align 1, !tbaa !17
  %.not.i.i102 = icmp eq i8 %i.uh, 0
  br i1 %.not.i.i102, label %_ZN11CStringBaseIcEaSERKS0_.exit, label %bb.dp, !llvm.loop !60

_ZN11CStringBaseIcEaSERKS0_.exit:                 ; preds = %bb.dp
  store i32 %.sroa.9151.0..sroa.9151.0..sroa.9151.0..sroa.9151.8., ptr %i.sq, align 8, !tbaa !19
end_hunk_0
