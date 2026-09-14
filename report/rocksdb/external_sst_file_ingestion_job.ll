Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/external_sst_file_ingestion_job?download=true
inline.NumInlined: 4284
inline.NumDeleted: 1560
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK7rocksdb27ExternalSstFileIngestionJob19ComputeFilesOverlapERKNS_10autovectorINS_16IngestedFileInfoELm8EEE:bb.a
  %i.er = load i64, ptr %i.eq, align 8            ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  %i.et = select i1 %i.ep, i1 true, i1 %i.es
  br i1 %i.et, label %.backedge.peel73, label %bb.u

bb.u:                                             ; preds = %.peel.next63
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !46 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %.backedge.peel73, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !46
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %.backedge.peel73, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fa = load ptr, ptr %i.bj, align 8, !tbaa !413
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !44
  store ptr %i.fc, ptr %2, align 8
  store i64 %i.er, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.fd = load ptr, ptr %i.em, align 8, !tbaa !44
  store ptr %i.fd, ptr %3, align 8
  store i64 %i.ev, ptr %i.bo, align 8
  %i.fe = invoke noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %i.fa, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc45.peel72 unwind label %.loopexit.split-lp95

.noexc45.peel72:                                  ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.ff = icmp sgt i32 %i.fe, -1
  br i1 %i.ff, label %.critedge, label %.backedge.peel73

.backedge.peel73:                                 ; preds = %.noexc45.peel72, %bb.v, %bb.u, %.peel.next63
  %exitcond56.peel74.not = icmp eq i64 %i.j, 5
  br i1 %exitcond56.peel74.not, label %.critedge, label %.peel.next69

.peel.next69:                                     ; preds = %.backedge.peel73
  %i.fg = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !530 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !530 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !46
  %i.fn = icmp eq i64 %i.fm, 0
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fp = load i64, ptr %i.fo, align 8            ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 0
  %i.fr = select i1 %i.fn, i1 true, i1 %i.fq
  br i1 %i.fr, label %.backedge.peel79, label %bb.x

bb.x:                                             ; preds = %.peel.next69
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !46 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %.backedge.peel79, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !46
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.backedge.peel79, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fy = load ptr, ptr %i.bj, align 8, !tbaa !413
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !44
  store ptr %i.ga, ptr %2, align 8
  store i64 %i.fp, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.gb = load ptr, ptr %i.fk, align 8, !tbaa !44
  store ptr %i.gb, ptr %3, align 8
  store i64 %i.ft, ptr %i.bo, align 8
  %i.gc = invoke noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %i.fy, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc45.peel78 unwind label %.loopexit.split-lp95

.noexc45.peel78:                                  ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.gd = icmp sgt i32 %i.gc, -1
  br i1 %i.gd, label %.critedge, label %.backedge.peel79

.backedge.peel79:                                 ; preds = %.noexc45.peel78, %bb.y, %bb.x, %.peel.next69
  %exitcond56.peel80.not = icmp eq i64 %i.j, 6
  br i1 %exitcond56.peel80.not, label %.critedge, label %.peel.next75

.peel.next75:                                     ; preds = %.backedge.peel79
  %i.ge = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !530 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !530 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !46
  %i.gl = icmp eq i64 %i.gk, 0
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  %i.gn = load i64, ptr %i.gm, align 8            ; 2 uses
  %i.go = icmp eq i64 %i.gn, 0
  %i.gp = select i1 %i.gl, i1 true, i1 %i.go
  br i1 %i.gp, label %.backedge.peel85, label %bb.aa

bb.aa:                                            ; preds = %.peel.next75
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !46 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %.backedge.peel85, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !46
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %.backedge.peel85, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gw = load ptr, ptr %i.bj, align 8, !tbaa !413
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !44
  store ptr %i.gy, ptr %2, align 8
  store i64 %i.gn, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.gz = load ptr, ptr %i.gi, align 8, !tbaa !44
  store ptr %i.gz, ptr %3, align 8
  store i64 %i.gr, ptr %i.bo, align 8
  %i.ha = invoke noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %i.gw, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc45.peel84 unwind label %.loopexit.split-lp95

.noexc45.peel84:                                  ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.hb = icmp sgt i32 %i.ha, -1
  br i1 %i.hb, label %.critedge, label %.backedge.peel85

.backedge.peel85:                                 ; preds = %.noexc45.peel84, %bb.ab, %bb.aa, %.peel.next75
  %exitcond56.peel86.not = icmp eq i64 %i.j, 7
  br i1 %exitcond56.peel86.not, label %.critedge, label %.peel.next81

.peel.next81:                                     ; preds = %.backedge.peel85
  %i.hc = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !530 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !530 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !46
  %i.hj = icmp eq i64 %i.hi, 0
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  %i.hl = load i64, ptr %i.hk, align 8            ; 2 uses
  %i.hm = icmp eq i64 %i.hl, 0
  %i.hn = select i1 %i.hj, i1 true, i1 %i.hm
  br i1 %i.hn, label %.backedge.peel91, label %bb.ad

bb.ad:                                            ; preds = %.peel.next81
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !46 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %.backedge.peel91, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !46
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %.backedge.peel91, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hu = load ptr, ptr %i.bj, align 8, !tbaa !413
  %i.hv = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !44
  store ptr %i.hw, ptr %2, align 8
  store i64 %i.hl, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.hx = load ptr, ptr %i.hg, align 8, !tbaa !44
  store ptr %i.hx, ptr %3, align 8
  store i64 %i.hp, ptr %i.bo, align 8
  %i.hy = invoke noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %i.hu, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc45.peel90 unwind label %.loopexit.split-lp95

.noexc45.peel90:                                  ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.hz = icmp sgt i32 %i.hy, -1
  br i1 %i.hz, label %.critedge, label %.backedge.peel91

.backedge.peel91:                                 ; preds = %.noexc45.peel90, %bb.ae, %bb.ad, %.peel.next81
  %exitcond56.peel92.not = icmp eq i64 %i.j, 8
  br i1 %exitcond56.peel92.not, label %.critedge, label %.peel.next87

bb.ag:                                            ; preds = %.noexc30, %.noexc.i
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.peel.next87:                                     ; preds = %.backedge.peel91, %.backedge
  %i.ib = phi i64 [ %i.jf, %.backedge ], [ 8, %.backedge.peel91 ] ; 4 uses
  %.05356 = add i64 %i.ib, -1                     ; 2 uses
  %i.ic = icmp ult i64 %i.ib, 9
  %i.id = load ptr, ptr %i.l, align 8
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.05356
  %i.if = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ig = getelementptr [8 x i8], ptr %i.if, i64 %.05356
  %i.ih = getelementptr i8, ptr %i.ig, i64 -64
  %.0.i32 = select i1 %i.ic, ptr %i.ie, ptr %i.ih
  %i.ii = load ptr, ptr %.0.i32, align 8, !tbaa !530 ; 3 uses
  %i.ij = getelementptr [8 x i8], ptr %i.if, i64 %i.ib
  %i.ik = getelementptr i8, ptr %i.ij, i64 -64
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !530 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.in = load i64, ptr %i.im, align 8, !tbaa !46
  %i.io = icmp eq i64 %i.in, 0
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  %i.iq = load i64, ptr %i.ip, align 8            ; 2 uses
  %i.ir = icmp eq i64 %i.iq, 0
  %i.is = select i1 %i.io, i1 true, i1 %i.ir
  br i1 %i.is, label %.backedge, label %bb.ah

bb.ah:                                            ; preds = %.peel.next87
  %i.it = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !46 ; 2 uses
  %i.iv = icmp eq i64 %i.iu, 0
  br i1 %i.iv, label %.backedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.iw = getelementptr inbounds nuw i8, ptr %i.il, i64 40
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !46
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %.backedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iz = load ptr, ptr %i.bj, align 8, !tbaa !413
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !44
  store ptr %i.jb, ptr %2, align 8
  store i64 %i.iq, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.jc = load ptr, ptr %i.il, align 8, !tbaa !44
  store ptr %i.jc, ptr %3, align 8
  store i64 %i.iu, ptr %i.bo, align 8
  %i.jd = invoke noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %i.iz, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc45 unwind label %.loopexit94

.noexc45:                                         ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.je = icmp sgt i32 %i.jd, -1
  br i1 %i.je, label %.critedge, label %.backedge

.backedge:                                        ; preds = %bb.ai, %bb.ah, %.peel.next87, %.noexc45
  %i.jf = add nuw i64 %i.ib, 1                    ; 2 uses
  %exitcond56.not = icmp eq i64 %i.jf, %umax
  br i1 %exitcond56.not, label %.critedge, label %.peel.next87, !llvm.loop !821

.loopexit94:                                      ; preds = %bb.aj
  %lpad.loopexit96 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp95:                             ; preds = %bb.n, %bb.q, %bb.t, %bb.w, %bb.z, %bb.ac, %bb.af
  %lpad.loopexit.split-lp97 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.critedge:                                        ; preds = %.backedge, %.noexc45, %.noexc45.peel, %.backedge.peel, %.noexc45.peel60, %.backedge.peel61, %.noexc45.peel66, %.backedge.peel67, %.noexc45.peel72, %.backedge.peel73, %.noexc45.peel78, %.backedge.peel79, %.noexc45.peel84, %.backedge.peel85, %.noexc45.peel90, %.backedge.peel91
  %.not.lcssa.ph = phi i1 [ true, %.noexc45.peel90 ], [ false, %.backedge.peel91 ], [ true, %.noexc45.peel ], [ false, %.backedge.peel ], [ true, %.noexc45.peel60 ], [ false, %.backedge.peel61 ], [ true, %.noexc45.peel66 ], [ false, %.backedge.peel67 ], [ true, %.noexc45.peel72 ], [ false, %.backedge.peel73 ], [ true, %.noexc45.peel78 ], [ false, %.backedge.peel79 ], [ true, %.noexc45.peel84 ], [ false, %.backedge.peel85 ], [ false, %.backedge ], [ true, %.noexc45 ]
  %.pr.i.i = load i64, ptr %8, align 8, !tbaa !827
  %.not1.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not1.i.i, label %bb.ak, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.critedge
  store i64 0, ptr %8, align 8, !tbaa !827
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.preheader.i.i, %.critedge
  %i.jg = load ptr, ptr %i.n, align 8, !tbaa !831 ; 5 uses
  %i.jh = load ptr, ptr %i.p, align 8, !tbaa !829
  %.not.i.i.i.i35 = icmp eq ptr %i.jh, %i.jg
  br i1 %.not.i.i.i.i35, label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i, label %_ZSt8_DestroyIPPKN7rocksdb16IngestedFileInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPKN7rocksdb16IngestedFileInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.ak
  store ptr %i.jg, ptr %i.p, align 8, !tbaa !829
  br label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i

_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPPKN7rocksdb16IngestedFileInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %bb.ak
  %.not.i.i.i1.i = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i1.i, label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i
  %i.ji = load ptr, ptr %i.q, align 8, !tbaa !830
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = ptrtoint ptr %i.jg to i64
  %i.jl = sub i64 %i.jj, %i.jk
  call void @_ZdlPvm(ptr noundef nonnull %i.jg, i64 noundef %i.jl) #29
  br label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EED2Ev.exit

_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EED2Ev.exit: ; preds = %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.ap

bb.am:                                            ; preds = %.loopexit94, %.loopexit.split-lp95, %.loopexit, %.loopexit.split-lp, %bb.ag
  %.pn26 = phi { ptr, i32 } [ %i.ia, %bb.ag ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit96, %.loopexit94 ], [ %lpad.loopexit.split-lp97, %.loopexit.split-lp95 ]
  %.pr.i.i36 = load i64, ptr %8, align 8, !tbaa !827
  %.not1.i.i37 = icmp eq i64 %.pr.i.i36, 0
  br i1 %.not1.i.i37, label %bb.an, label %.lr.ph.preheader.i.i38

.lr.ph.preheader.i.i38:                           ; preds = %bb.am
  store i64 0, ptr %8, align 8, !tbaa !827
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph.preheader.i.i38, %bb.am
  %i.jm = load ptr, ptr %i.n, align 8, !tbaa !831 ; 5 uses
  %i.jn = load ptr, ptr %i.p, align 8, !tbaa !829
  %.not.i.i.i.i39 = icmp eq ptr %i.jn, %i.jm
  br i1 %.not.i.i.i.i39, label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i41, label %_ZSt8_DestroyIPPKN7rocksdb16IngestedFileInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i40

_ZSt8_DestroyIPPKN7rocksdb16IngestedFileInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i40: ; preds = %bb.an
  store ptr %i.jm, ptr %i.p, align 8, !tbaa !829
  br label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i41

_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i41: ; preds = %_ZSt8_DestroyIPPKN7rocksdb16IngestedFileInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i40, %bb.an
  %.not.i.i.i1.i42 = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i1.i42, label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EED2Ev.exit43, label %bb.ao

bb.ao:                                            ; preds = %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i41
  %i.jo = load ptr, ptr %i.q, align 8, !tbaa !830
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = ptrtoint ptr %i.jm to i64
  %i.jr = sub i64 %i.jp, %i.jq
  call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef %i.jr) #29
  br label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EED2Ev.exit43

_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EED2Ev.exit43: ; preds = %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i41, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  resume { ptr, i32 } %.pn26

bb.ap:                                            ; preds = %bb.a, %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EED2Ev.exit
  %.2 = phi i1 [ %.not.lcssa.ph, %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.2
}

declare void @_ZN7rocksdb25MaybeAddTimestampsToRangeERKNS_8OptSliceES2_mPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b(ptr dead_on_unwind writable sret(%"class.std::tuple.257") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN7rocksdb13TableFileNameB5cxx11ERKSt6vectorINS_6DbPathESaIS1_EEmj(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7rocksdb10FileSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !437  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !460
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !461
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !456
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !5
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !456
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !5
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !439
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZSt22__move_median_to_firstIN7rocksdb10autovectorIPKNS0_16IngestedFileInfoELm8EE13iterator_implIS5_S4_EEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_24ExternalFileRangeCheckerEEEEvT_SD_SD_SD_T0_:bb.a
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = getelementptr [8 x i8], ptr %i.hj, i64 %.sroa.2.0.copyload
  %i.hl = getelementptr i8, ptr %i.hk, i64 -64
  %.0.i.i1.i26 = select i1 %i.he, ptr %i.hh, ptr %i.hl ; 2 uses
  %i.hm = load ptr, ptr %.0.i.i1.i26, align 8, !tbaa !530
  store ptr %i.hm, ptr %.0.i.i.i23, align 8, !tbaa !530
  store ptr %i.gu, ptr %.0.i.i1.i26, align 8, !tbaa !530
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__unguarded_partitionIN7rocksdb10autovectorIPKNS0_16IngestedFileInfoELm8EE13iterator_implIS5_S4_EEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_24ExternalFileRangeCheckerEEEET_SD_SD_SD_T0_(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl") align 8 %0, ptr noundef align 8 %1, ptr noundef align 8 %2, ptr noundef align 8 %3, ptr %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.217.0.copyload.pre.pre = load i64, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !411
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.217.0.copyload = phi i64 [ %.sroa.217.0.copyload.pre.pre, %bb.a ], [ %storemerge23, %.backedge ] ; 3 uses
  %.sroa.016.0.copyload = load ptr, ptr %1, align 8, !tbaa !532 ; 2 uses
  %.sroa.014.0.copyload = load ptr, ptr %3, align 8, !tbaa !532 ; 2 uses
  %.sroa.215.0.copyload = load i64, ptr %.sroa.215.0..sroa_idx, align 8, !tbaa !411 ; 3 uses
  %i.f = icmp ult i64 %.sroa.217.0.copyload, 8
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.217.0.copyload
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 80
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %.sroa.217.0.copyload
  %i.m = getelementptr i8, ptr %i.l, i64 -64
  %.0.i.i.i = select i1 %i.f, ptr %i.i, ptr %i.m
  %i.n = load ptr, ptr %.0.i.i.i, align 8, !tbaa !530 ; 2 uses
  %i.o = icmp ult i64 %.sroa.215.0.copyload, 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.sroa.215.0.copyload
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 80
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %.sroa.215.0.copyload
  %i.v = getelementptr i8, ptr %i.u, i64 -64
  %.0.i.i1.i = select i1 %i.o, ptr %i.r, ptr %i.v
  %i.w = load ptr, ptr %.0.i.i1.i, align 8, !tbaa !530 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !46
  store ptr %i.x, ptr %7, align 8
  store i64 %i.z, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !46
  store ptr %i.aa, ptr %8, align 8
  store i64 %i.ac, ptr %i.b, align 8
  %i.ad = call noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.af = load i64, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !756
  br label %.backedge

.backedge:                                        ; preds = %bb.c, %bb.f
  %storemerge23.in = phi i64 [ %i.bg, %bb.f ], [ %i.af, %bb.c ]
  %storemerge23 = add i64 %storemerge23.in, 1     ; 2 uses
  store i64 %storemerge23, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !756
  br label %bb.b, !llvm.loop !1200

.preheader:                                       ; preds = %bb.b, %.preheader
  %storemerge.in = load i64, ptr %i.c, align 8, !tbaa !756
  %storemerge = add i64 %storemerge.in, -1        ; 4 uses
  store i64 %storemerge, ptr %i.c, align 8, !tbaa !756
  %.sroa.012.0.copyload = load ptr, ptr %3, align 8, !tbaa !532 ; 2 uses
  %.sroa.213.0.copyload = load i64, ptr %.sroa.215.0..sroa_idx, align 8, !tbaa !411 ; 3 uses
  %.sroa.010.0.copyload = load ptr, ptr %2, align 8, !tbaa !532 ; 2 uses
  %i.ag = icmp ult i64 %.sroa.213.0.copyload, 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.sroa.213.0.copyload
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.0.copyload, i64 80
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %.sroa.213.0.copyload
  %i.an = getelementptr i8, ptr %i.am, i64 -64
  %.0.i.i.i3 = select i1 %i.ag, ptr %i.aj, ptr %i.an
  %i.ao = load ptr, ptr %.0.i.i.i3, align 8, !tbaa !530 ; 2 uses
  %i.ap = icmp ult i64 %storemerge, 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %storemerge
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 80
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %storemerge
  %i.aw = getelementptr i8, ptr %i.av, i64 -64
  %.0.i.i1.i4 = select i1 %i.ap, ptr %i.as, ptr %i.aw
  %i.ax = load ptr, ptr %.0.i.i1.i4, align 8, !tbaa !530 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !46
  store ptr %i.ay, ptr %5, align 8
  store i64 %i.ba, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !46
  store ptr %i.bb, ptr %6, align 8
  store i64 %i.bd, ptr %i.e, align 8
  %i.be = call noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %.preheader, label %bb.d, !llvm.loop !1201

bb.d:                                             ; preds = %.preheader
  %i.bg = load i64, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !756 ; 5 uses
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !756 ; 4 uses
  %i.bi = icmp ult i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !758
  ret void

bb.f:                                             ; preds = %bb.d
  %.sroa.08.0.copyload = load ptr, ptr %1, align 8, !tbaa !532 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !532 ; 2 uses
  %i.bj = icmp ult i64 %i.bg, 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.08.0.copyload, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bg
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.08.0.copyload, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bg
  %i.bq = getelementptr i8, ptr %i.bp, i64 -64
  %.0.i.i.i6 = select i1 %i.bj, ptr %i.bm, ptr %i.bq ; 2 uses
  %i.br = icmp ult i64 %i.bh, 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bh
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 80
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr [8 x i8], ptr %i.bw, i64 %i.bh
  %i.by = getelementptr i8, ptr %i.bx, i64 -64
  %.0.i.i1.i7 = select i1 %i.br, ptr %i.bu, ptr %i.by ; 2 uses
  %i.bz = load ptr, ptr %.0.i.i.i6, align 8, !tbaa !530
  %i.ca = load ptr, ptr %.0.i.i1.i7, align 8, !tbaa !530
  store ptr %i.ca, ptr %.0.i.i.i6, align 8, !tbaa !530
  store ptr %i.bz, ptr %.0.i.i1.i7, align 8, !tbaa !530
  br label %.backedge
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN7rocksdb10autovectorIPKNS0_16IngestedFileInfoELm8EE13iterator_implIS5_S4_EEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_24ExternalFileRangeCheckerEEEEvT_SD_T0_(ptr noundef align 8 %0, ptr noundef align 8 %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !756  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !756  ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %.loopexit36, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.9.037 = add i64 %i.b, 1                  ; 2 uses
  %.not38 = icmp eq i64 %.sroa.9.037, %i.d
  br i1 %.not38, label %.loopexit36, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !757, !noalias !1217 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.9.040.a = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.h ] ; 2 uses
  %.sroa.9.0.in39 = phi i64 [ %.sroa.9.037, %.lr.ph ], [ %.sroa.9.0, %bb.h ] ; 11 uses
  %7 = add i64 %i.b, %.sroa.9.040.a
  %.sroa.023.0.copyload = load ptr, ptr %0, align 8, !tbaa !532 ; 2 uses
  %.sroa.224.0.copyload = load i64, ptr %i.a, align 8, !tbaa !411 ; 3 uses
  %i.m = icmp ult i64 %.sroa.9.0.in39, 8          ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.sroa.9.0.in39
  %i.p = load ptr, ptr %i.h, align 8
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %.sroa.9.0.in39
  %i.r = getelementptr i8, ptr %i.q, i64 -64
  %.0.i.i.i = select i1 %i.m, ptr %i.o, ptr %i.r
  %i.s = load ptr, ptr %.0.i.i.i, align 8, !tbaa !530 ; 2 uses
  %i.t = icmp ult i64 %.sroa.224.0.copyload, 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.023.0.copyload, i64 72
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.224.0.copyload
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.023.0.copyload, i64 80
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %.sroa.224.0.copyload
  %i.aa = getelementptr i8, ptr %i.z, i64 -64
  %.0.i.i1.i = select i1 %i.t, ptr %i.w, ptr %i.aa
  %i.ab = load ptr, ptr %.0.i.i1.i, align 8, !tbaa !530 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !46
  store ptr %i.ac, ptr %5, align 8
  store i64 %i.ae, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !46
  store ptr %i.af, ptr %6, align 8
  store i64 %i.ah, ptr %i.j, align 8
  %i.ai = call noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.aj = icmp slt i32 %i.ai, 0
  %i.ak = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.sroa.9.0.in39
  %i.am = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %.sroa.9.0.in39
  %i.ao = getelementptr i8, ptr %i.an, i64 -64
  %.0.i.i = select i1 %i.m, ptr %i.al, ptr %i.ao
  %i.ap = load ptr, ptr %.0.i.i, align 8, !tbaa !530 ; 3 uses
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.1.0.copyload = load i64, ptr %i.a, align 8, !tbaa !411 ; 5 uses
  %i.aq = sub i64 %.sroa.9.0.in39, %.sroa.1.0.copyload ; 4 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  %i.as = add i64 %.sroa.9.0.in39, 1              ; 2 uses
  %i.at = sub i64 %7, %.sroa.1.0.copyload
  %xtraiter = and i64 %i.aq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.3.0.i.i.i.i.prol = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.prol ], [ %i.as, %.lr.ph.i.i.i.i.i.preheader ]
  %.sroa.2.0.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.9.0.in39, %.lr.ph.i.i.i.i.i.preheader ]
  %.03.i.i.i.i.i.prol = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i.prol ], [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.au = add i64 %.sroa.2.0.i.i.i.i.prol, -1     ; 5 uses
  %i.av = icmp ult i64 %i.au, 8
  %i.aw = load ptr, ptr %i.g, align 8, !noalias !1218 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  %i.ay = load ptr, ptr %i.h, align 8, !noalias !1218 ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %i.au
  %i.ba = getelementptr i8, ptr %i.az, i64 -64
  %.0.i.i.i.i.i.i.i.prol = select i1 %i.av, ptr %i.ax, ptr %i.ba
  %i.bb = load ptr, ptr %.0.i.i.i.i.i.i.i.prol, align 8, !tbaa !530, !noalias !1218
  %i.bc = add i64 %.sroa.3.0.i.i.i.i.prol, -1     ; 5 uses
  %i.bd = icmp ult i64 %i.bc, 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bc
  %i.bf = getelementptr [8 x i8], ptr %i.ay, i64 %i.bc
  %i.bg = getelementptr i8, ptr %i.bf, i64 -64
  %.0.i.i2.i.i.i.i.i.prol = select i1 %i.bd, ptr %i.be, ptr %i.bg
  store ptr %i.bb, ptr %.0.i.i2.i.i.i.i.i.prol, align 8, !tbaa !530, !noalias !1218
  %i.bh = add nsw i64 %.03.i.i.i.i.i.prol, -1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1214

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.3.0.i.i.i.i.unr = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.2.0.i.i.i.i.unr = phi i64 [ %.sroa.9.0.in39, %.lr.ph.i.i.i.i.i.preheader ], [ %i.au, %.lr.ph.i.i.i.i.i.prol ]
  %.03.i.i.i.i.i.unr = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.i.i.i.prol ]
  %i.bi = icmp ult i64 %i.at, 3
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.2.0.i.i.i.i = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i ], [ %.sroa.2.0.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.03.i.i.i.i.i = phi i64 [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %.03.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bj = add i64 %.sroa.2.0.i.i.i.i, -1          ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 8
  %i.bl = load ptr, ptr %i.g, align 8, !noalias !1218 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  %i.bn = load ptr, ptr %i.h, align 8, !noalias !1218 ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %i.bj
  %i.bp = getelementptr i8, ptr %i.bo, i64 -64
  %.0.i.i.i.i.i.i.i = select i1 %i.bk, ptr %i.bm, ptr %i.bp
  %i.bq = load ptr, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !530, !noalias !1218
  %i.br = add i64 %.sroa.3.0.i.i.i.i, -1          ; 3 uses
  %i.bs = icmp ult i64 %i.br, 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.br
  %i.bu = getelementptr [8 x i8], ptr %i.bn, i64 %i.br
  %i.bv = getelementptr i8, ptr %i.bu, i64 -64
  %.0.i.i2.i.i.i.i.i = select i1 %i.bs, ptr %i.bt, ptr %i.bv
  store ptr %i.bq, ptr %.0.i.i2.i.i.i.i.i, align 8, !tbaa !530, !noalias !1218
  %i.bw = add i64 %.sroa.2.0.i.i.i.i, -2          ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 8
  %i.by = load ptr, ptr %i.g, align 8, !noalias !1218 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw
  %i.ca = load ptr, ptr %i.h, align 8, !noalias !1218 ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.ca, i64 %i.bw
  %i.cc = getelementptr i8, ptr %i.cb, i64 -64
  %.0.i.i.i.i.i.i.i.1 = select i1 %i.bx, ptr %i.bz, ptr %i.cc
  %i.cd = load ptr, ptr %.0.i.i.i.i.i.i.i.1, align 8, !tbaa !530, !noalias !1218
  %i.ce = add i64 %.sroa.3.0.i.i.i.i, -2          ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ce
  %i.ch = getelementptr [8 x i8], ptr %i.ca, i64 %i.ce
  %i.ci = getelementptr i8, ptr %i.ch, i64 -64
  %.0.i.i2.i.i.i.i.i.1 = select i1 %i.cf, ptr %i.cg, ptr %i.ci
  store ptr %i.cd, ptr %.0.i.i2.i.i.i.i.i.1, align 8, !tbaa !530, !noalias !1218
  %i.cj = add i64 %.sroa.2.0.i.i.i.i, -3          ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 8
  %i.cl = load ptr, ptr %i.g, align 8, !noalias !1218 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj
  %i.cn = load ptr, ptr %i.h, align 8, !noalias !1218 ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.cn, i64 %i.cj
  %i.cp = getelementptr i8, ptr %i.co, i64 -64
  %.0.i.i.i.i.i.i.i.2 = select i1 %i.ck, ptr %i.cm, ptr %i.cp
  %i.cq = load ptr, ptr %.0.i.i.i.i.i.i.i.2, align 8, !tbaa !530, !noalias !1218
  %i.cr = add i64 %.sroa.3.0.i.i.i.i, -3          ; 3 uses
  %i.cs = icmp ult i64 %i.cr, 8
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cr
  %i.cu = getelementptr [8 x i8], ptr %i.cn, i64 %i.cr
  %i.cv = getelementptr i8, ptr %i.cu, i64 -64
  %.0.i.i2.i.i.i.i.i.2 = select i1 %i.cs, ptr %i.ct, ptr %i.cv
  store ptr %i.cq, ptr %.0.i.i2.i.i.i.i.i.2, align 8, !tbaa !530, !noalias !1218
  %i.cw = add i64 %.sroa.2.0.i.i.i.i, -4          ; 4 uses
  %i.cx = icmp ult i64 %i.cw, 8
  %i.cy = load ptr, ptr %i.g, align 8, !noalias !1218 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw
  %i.da = load ptr, ptr %i.h, align 8, !noalias !1218 ; 2 uses
  %i.db = getelementptr [8 x i8], ptr %i.da, i64 %i.cw
  %i.dc = getelementptr i8, ptr %i.db, i64 -64
  %.0.i.i.i.i.i.i.i.3 = select i1 %i.cx, ptr %i.cz, ptr %i.dc
  %i.dd = load ptr, ptr %.0.i.i.i.i.i.i.i.3, align 8, !tbaa !530, !noalias !1218
  %i.de = add i64 %.sroa.3.0.i.i.i.i, -4          ; 4 uses
  %i.df = icmp ult i64 %i.de, 8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.de
  %i.dh = getelementptr [8 x i8], ptr %i.da, i64 %i.de
  %i.di = getelementptr i8, ptr %i.dh, i64 -64
  %.0.i.i2.i.i.i.i.i.3 = select i1 %i.df, ptr %i.dg, ptr %i.di
  store ptr %i.dd, ptr %.0.i.i2.i.i.i.i.i.3, align 8, !tbaa !530, !noalias !1218
  %i.dj = add nsw i64 %.03.i.i.i.i.i, -4
  %i.dk = icmp sgt i64 %.03.i.i.i.i.i, 4
  br i1 %i.dk, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !1215

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.d
  %i.dl = load ptr, ptr %0, align 8, !tbaa !757   ; 2 uses
  %i.dm = icmp ult i64 %.sroa.1.0.copyload, 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.sroa.1.0.copyload
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 80
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.sroa.1.0.copyload
  %i.dt = getelementptr i8, ptr %i.ds, i64 -64
  %.0.i.i10 = select i1 %i.dm, ptr %i.dp, ptr %i.dt
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.du = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  br label %.noexc

.noexc:                                           ; preds = %bb.f, %bb.e
  %.sroa.5.0 = phi i64 [ %.sroa.9.0.in39, %bb.e ], [ %.sroa.7.0.i, %bb.f ] ; 7 uses
  %i.dv = phi ptr [ %i.am, %bb.e ], [ %.pre15.i, %bb.f ]
  %i.dw = phi ptr [ %i.ak, %bb.e ], [ %.pre.i, %bb.f ]
  %.sroa.7.0.i = add i64 %.sroa.5.0, -1           ; 6 uses
  %i.dx = icmp ult i64 %.sroa.7.0.i, 8            ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.sroa.7.0.i
  %i.dz = getelementptr [8 x i8], ptr %i.dv, i64 %.sroa.7.0.i
  %i.ea = getelementptr i8, ptr %i.dz, i64 -64
  %.0.i.i.i.i = select i1 %i.dx, ptr %i.dy, ptr %i.ea
  %i.eb = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !530 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ec = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ed = load i64, ptr %i.du, align 8, !tbaa !46
  store ptr %i.ec, ptr %3, align 8
  store i64 %i.ed, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ee = load ptr, ptr %i.eb, align 8, !tbaa !44
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !46
  store ptr %i.ee, ptr %4, align 8
  store i64 %i.eg, ptr %i.l, align 8
  %i.eh = call noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc
  %i.ej = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.sroa.7.0.i
  %i.el = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.em = getelementptr [8 x i8], ptr %i.el, i64 %.sroa.7.0.i
  %i.en = getelementptr i8, ptr %i.em, i64 -64
  %.0.i.i3.i = select i1 %i.dx, ptr %i.ek, ptr %i.en
  %i.eo = load ptr, ptr %.0.i.i3.i, align 8, !tbaa !530
  %i.ep = icmp ult i64 %.sroa.5.0, 8
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.sroa.5.0
  %i.er = getelementptr [8 x i8], ptr %i.el, i64 %.sroa.5.0
  %i.es = getelementptr i8, ptr %i.er, i64 -64
  %.0.i.i4.i = select i1 %i.ep, ptr %i.eq, ptr %i.es
  store ptr %i.eo, ptr %.0.i.i4.i, align 8, !tbaa !530
  %.pre.i = load ptr, ptr %i.g, align 8
  %.pre15.i = load ptr, ptr %i.h, align 8
  br label %.noexc, !llvm.loop !20

bb.g:                                             ; preds = %.noexc
  %i.et = icmp ult i64 %.sroa.5.0, 8
  %i.eu = load ptr, ptr %i.g, align 8
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.sroa.5.0
  %i.ew = load ptr, ptr %i.h, align 8
  %i.ex = getelementptr [8 x i8], ptr %i.ew, i64 %.sroa.5.0
  %i.ey = getelementptr i8, ptr %i.ex, i64 -64
  %.0.i.i5.i = select i1 %i.et, ptr %i.ev, ptr %i.ey
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.g
  %.0.i.i10.sink = phi ptr [ %.0.i.i10, %.loopexit ], [ %.0.i.i5.i, %bb.g ]
  store ptr %i.ap, ptr %.0.i.i10.sink, align 8, !tbaa !530
  %.sroa.9.0 = add i64 %.sroa.9.0.in39, 1         ; 2 uses
  %i.ez = load i64, ptr %i.c, align 8, !tbaa !756
  %.not = icmp eq i64 %.sroa.9.0, %i.ez
  %indvar.next = add i64 %.sroa.9.040.a, 1
  br i1 %.not, label %.loopexit36, label %bb.c, !llvm.loop !1216

.loopexit36:                                      ; preds = %bb.h, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_emplace_uniqueIJRiRmEEES0_ISt17_Rb_tree_iteratorIS1_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i32, ptr %1, align 4, !tbaa !439    ; 7 uses
  store i32 %i.c, ptr %i.b, align 8, !tbaa !637
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load i64, ptr %2, align 8, !tbaa !411    ; 4 uses
  store i64 %i.e, ptr %i.d, align 8, !tbaa !638
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02123.i = load ptr, ptr %i.f, align 8, !tbaa !639 ; 2 uses
  %.not24.i = icmp eq ptr %.02123.i, null
  br i1 %.not24.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02125.i = phi ptr [ %.021.i, %.lr.ph.i ], [ %.02123.i, %bb.a ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02125.i, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !439  ; 3 uses
  %i.j = icmp eq i32 %i.c, %i.i
  %i.k = icmp slt i32 %i.c, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.02125.i, i64 40
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp ult i64 %i.e, %i.m
  %.sroa.05.0.i.i.i = select i1 %i.j, i1 %i.n, i1 %i.k ; 2 uses
  %.in.v.i = select i1 %.sroa.05.0.i.i.i, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02125.i, i64 %.in.v.i
  %.021.i = load ptr, ptr %.in.i, align 8, !tbaa !639 ; 2 uses
  %.not.i = icmp eq ptr %.021.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %.sroa.05.0.i.i.i, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.020.lcssa30.i = phi ptr [ %.02125.i, %._crit_edge.i ], [ %i.g, %bb.a ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !513
  %i.q = icmp eq ptr %.020.lcssa30.i, %i.p
  br i1 %i.q, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i) #31 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !439
  %.phi.trans.insert32 = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.pre33 = load i64, ptr %.phi.trans.insert32, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.s = phi i64 [ %.pre33, %bb.b ], [ %i.m, %._crit_edge.i ]
  %i.t = phi i32 [ %.pre, %bb.b ], [ %i.i, %._crit_edge.i ] ; 2 uses
  %.020.lcssa29.i = phi ptr [ %.020.lcssa30.i, %bb.b ], [ %.02125.i, %._crit_edge.i ]
  %.sroa.06.0.i = phi ptr [ %i.r, %bb.b ], [ %.02125.i, %._crit_edge.i ]
  %i.u = icmp eq i32 %i.t, %i.c
  %i.v = icmp slt i32 %i.t, %i.c
  %i.w = icmp ult i64 %i.s, %i.e
  %.sroa.05.0.i.i5.i = select i1 %i.u, i1 %i.w, i1 %i.v
  br i1 %.sroa.05.0.i.i5.i, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.020.lcssa30.i, %._crit_edge.thread.i ], [ %.020.lcssa29.i, %bb.c ] ; 4 uses
  %i.x = icmp eq ptr %.sroa.4.0.i.ph, %i.g
  br i1 %i.x, label %.thread25, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.z = load i32, ptr %i.y, align 4, !tbaa !439  ; 2 uses
  %i.aa = icmp eq i32 %i.c, %i.z
  %i.ab = icmp slt i32 %i.c, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp ult i64 %i.e, %i.ad
  %.sroa.05.0.i.i.i.i = select i1 %i.aa, i1 %i.ae, i1 %i.ab
  br label %.thread25

.thread25:                                        ; preds = %select.unfold, %bb.d
  %i.af = phi i1 [ %.sroa.05.0.i.i.i.i, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.af, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !515
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !515
  br label %_ZNSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #29
  br label %_ZNSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread25, %bb.e
  %.sroa.3.031 = phi i8 [ 1, %.thread25 ], [ 0, %bb.e ]
  %.sroa.017.030 = phi ptr [ %i.a, %.thread25 ], [ %.sroa.06.0.i, %bb.e ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.017.030, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.031, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

declare void @_ZNK7rocksdb17ParsedInternalKey11DebugStringB5cxx11EbbPKNS_10ComparatorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(25), i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb10autovectorImLm8EE9push_backEOm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !1219   ; 2 uses
  %i.b = icmp ult i64 %i.a, 8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1220 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  store i64 0, ptr %i.e, align 8, !tbaa !411
  %i.f = load i64, ptr %1, align 8, !tbaa !411
  %i.g = load i64, ptr %0, align 8, !tbaa !1219   ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %0, align 8, !tbaa !1219
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.g
  store i64 %i.f, ptr %i.i, align 8, !tbaa !411
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1221 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1222
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %1, align 8, !tbaa !411
  store i64 %i.o, ptr %i.l, align 8, !tbaa !411
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.p, ptr %i.k, align 8, !tbaa !1221
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !1223 ; 4 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 5 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #26
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.z, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #28 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.t ; 2 uses
  %i.ad = load i64, ptr %1, align 8, !tbaa !411
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !411
  %i.ae = icmp sgt i64 %i.t, 0
  br i1 %i.ae, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %i.q, i64 %i.t, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !1222
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ai) #29
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ab, ptr %i.j, align 8, !tbaa !1223
  store ptr %i.af, ptr %i.k, align 8, !tbaa !1221
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.aj, ptr %i.m, align 8, !tbaa !1222
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

end_hunk_1
