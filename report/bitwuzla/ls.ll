Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/ls?download=true
inline.NumInlined: 2323
inline.NumDeleted: 1116
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4bzla2ls11LocalSearchINS_9BitVectorEE4moveEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.fn

bb.bb:                                            ; preds = %bb.av
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ax, %bb.aw
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #22
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %.pn190 = phi { ptr, i32 } [ %i.cc, %bb.bc ], [ %i.cb, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.fn

bb.be:                                            ; preds = %.lr.ph367, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit
  %.sroa.0332.0366 = phi ptr [ %i.bt, %.lr.ph367 ], [ %i.df, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit ] ; 2 uses
  %i.cd = load i64, ptr %.sroa.0332.0366, align 8, !tbaa !136 ; 5 uses
  %i.ce = load i64, ptr %i.bw, align 8, !tbaa !160
  %.not.not.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not.not.i.i, label %.preheader349, label %bb.bg

.preheader349:                                    ; preds = %bb.be, %bb.bf
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.bf ], [ %i.ak, %bb.be ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !117 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit350, label %bb.bf

bb.bf:                                            ; preds = %.preheader349
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !136
  %i.ch = icmp eq i64 %i.cd, %i.cg
  br i1 %i.ch, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.preheader349, !llvm.loop !5

bb.bg:                                            ; preds = %bb.be
  %i.ci = load i64, ptr %i.bx, align 8, !tbaa !50 ; 2 uses
  %i.cj = urem i64 %i.cd, %i.ci                   ; 2 uses
  %i.ck = load ptr, ptr %i.aj, align 8, !tbaa !49
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !141 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i, label %.loopexit350, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !117 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !136
  %i.cq = icmp eq i64 %i.cd, %i.cp
  br i1 %i.cq, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.lr.ph.i.i.i.i

bb.bi:                                            ; preds = %bb.bj
  %i.cr = icmp eq i64 %i.cd, %i.cu
  br i1 %i.cr, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.bh, %bb.bi
  %.020.i.i.i.i = phi ptr [ %i.cs, %bb.bi ], [ %i.cn, %bb.bh ]
  %i.cs = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !117 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not18.i.i.i.i, label %.loopexit350, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !136 ; 2 uses
  %i.cv = urem i64 %i.cu, %i.ci
  %.not19.i.i.i.i = icmp eq i64 %i.cv, %i.cj
  br i1 %.not19.i.i.i.i, label %bb.bi, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.bj
  br label %.loopexit350, !llvm.loop !6

.loopexit350:                                     ; preds = %.lr.ph.i.i.i.i, %.preheader349, %..loopexit_crit_edge21.i.i.i.i, %bb.bg
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !138, !nonnull !126, !align !135
  %i.cx = invoke noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.cw, i64 noundef 1)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %.loopexit350
  br i1 %i.cx, label %bb.bl, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !138, !nonnull !126, !align !135
  invoke void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %10, ptr noundef nonnull align 8 dereferenceable(56) %i.cy, i64 noundef 1)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.bn unwind label %bb.bq     ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull @.str.7, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit293 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit293: ; preds = %bb.bn
  %i.db = load ptr, ptr %i.by, align 8, !tbaa !121
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cd
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !123
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla2lslsERSoRKNS0_4NodeINS_9BitVectorEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef nonnull align 8 dereferenceable(136) %i.dd)
          to label %.critedge250 unwind label %bb.bq ; 0 uses

.critedge250:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit293
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit: ; preds = %bb.bi, %bb.bf, %.critedge250, %bb.bk, %bb.bh
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0332.0366, i64 8 ; 2 uses
  %.not348 = icmp eq ptr %i.df, %i.bv
  br i1 %.not348, label %.loopexit353, label %bb.be

bb.bo:                                            ; preds = %.loopexit350
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.bp:                                            ; preds = %bb.bl
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit293, %bb.bm
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #22
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %.pn223 = phi { ptr, i32 } [ %i.di, %bb.bq ], [ %i.dh, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.fn

.loopexit353:                                     ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, %.critedge248, %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !160
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.fm, label %bb.bs

bb.bs:                                            ; preds = %.loopexit353
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_ZN4bzla2ls15LocalSearchMoveINS_9BitVectorEEC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %11)
          to label %.preheader unwind label %bb.bv

.preheader:                                       ; preds = %bb.bs
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  br label %bb.bt

bb.bt:                                            ; preds = %.preheader, %bb.cj
  %i.dz = load i64, ptr %i.dm, align 8, !tbaa !95 ; 2 uses
  %.not = icmp eq i64 %i.dz, 0
  br i1 %.not, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ea = load ptr, ptr %i.dn, align 8, !tbaa !243, !nonnull !126, !align !135
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !136
  %.not192 = icmp ult i64 %i.eb, %i.dz
  br i1 %.not192, label %bb.bw, label %.critedge287

bb.bv:                                            ; preds = %bb.bs
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.bw:                                            ; preds = %bb.bu, %bb.bt
  %i.ed = load i64, ptr %i.do, align 8, !tbaa !96 ; 2 uses
  %.not193 = icmp eq i64 %i.ed, 0
  br i1 %.not193, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ee = load ptr, ptr %i.dp, align 8, !tbaa !244, !nonnull !126, !align !135
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !136
  %.not194 = icmp ult i64 %i.ef, %i.ed
  br i1 %.not194, label %bb.by, label %.critedge287

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.eg = load ptr, ptr %i.dq, align 8, !tbaa !107
  %i.eh = load ptr, ptr %i.dr, align 8, !tbaa !119 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store i32 0, ptr %1, align 4, !tbaa !163
  store i32 -1, ptr %i.ds, align 4, !tbaa !164
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ej = invoke noundef i32 @_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(5000) %i.ei, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %.noexc unwind label %bb.ca

.noexc:                                           ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.ek = zext i32 %i.ej to i64                   ; 2 uses
  %i.el = load i64, ptr %i.dj, align 8, !tbaa !160 ; 2 uses
  %i.em = urem i64 %i.ek, %i.el                   ; 4 uses
  %.not1.i.i = icmp eq i64 %i.em, 0
  br i1 %.not1.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.noexc
  %25 = urem i64 %i.ek, %i.el
  %26 = add nsw i64 %25, -1
  %xtraiter = and i64 %i.em, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.02.i.i.prol = phi i64 [ %i.eo, %.lr.ph.i.i.prol ], [ %i.em, %.lr.ph.i.i.preheader ]
  %i.en = phi ptr [ %i.ep, %.lr.ph.i.i.prol ], [ %i.eh, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.eo = add nsw i64 %.02.i.i.prol, -1           ; 2 uses
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !117 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !238

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.ep, %.lr.ph.i.i.prol ]
  %.02.i.i.unr = phi i64 [ %i.em, %.lr.ph.i.i.preheader ], [ %i.eo, %.lr.ph.i.i.prol ]
  %.unr = phi ptr [ %i.eh, %.lr.ph.i.i.preheader ], [ %i.ep, %.lr.ph.i.i.prol ]
  %i.eq = icmp ult i64 %26, 7
  br i1 %i.eq, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.02.i.i = phi i64 [ %i.ez, %.lr.ph.i.i ], [ %.02.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.er = phi ptr [ %i.fa, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !117
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !117
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !117
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !117
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !117
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !117
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !117
  %i.ez = add nsw i64 %.02.i.i, -8                ; 2 uses
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !117 ; 2 uses
  %.not.i.i294.7 = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i294.7, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !239

.loopexit:                                        ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.noexc
  %.sroa.0.0.i = phi ptr [ %i.eh, %.noexc ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.fa, %.lr.ph.i.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !136
  %i.fd = load ptr, ptr %i.dt, align 8, !tbaa !121
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fc
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !123 ; 5 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !35
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = invoke noundef zeroext i1 %i.fi(ptr noundef nonnull align 8 dereferenceable(136) %i.ff)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %.loopexit
  br i1 %i.fj, label %.thread, label %bb.cb

.thread:                                          ; preds = %bb.bz
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !159
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !161
  br label %.critedge287

bb.ca:                                            ; preds = %bb.by, %.critedge254, %bb.cb, %.loopexit
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.cb:                                            ; preds = %bb.bz
  %i.fo = load ptr, ptr %i.h, align 8, !tbaa !138, !nonnull !126, !align !135
  %i.fp = invoke noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.fo, i64 noundef 1)
          to label %bb.cc unwind label %bb.ca

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.fp, label %bb.cd, label %.critedge254

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.fq = load ptr, ptr %i.h, align 8, !tbaa !138, !nonnull !126, !align !135
  invoke void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %12, ptr noundef nonnull align 8 dereferenceable(56) %i.fq, i64 noundef 1)
          to label %bb.ce unwind label %bb.dy

bb.ce:                                            ; preds = %bb.cd
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.critedge253 unwind label %bb.dz ; 0 uses

.critedge253:                                     ; preds = %bb.ce
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.critedge254

.critedge254:                                     ; preds = %bb.cc, %.critedge253
  %i.fs = load ptr, ptr %i.h, align 8, !tbaa !138, !nonnull !126, !align !135
  %i.ft = invoke noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.fs, i64 noundef 1)
          to label %bb.cf unwind label %bb.ca

bb.cf:                                            ; preds = %.critedge254
  br i1 %i.ft, label %bb.cg, label %.critedge257

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.fu = load ptr, ptr %i.h, align 8, !tbaa !138, !nonnull !126, !align !135
  invoke void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %13, ptr noundef nonnull align 8 dereferenceable(56) %i.fu, i64 noundef 1)
          to label %bb.ch unwind label %bb.eb

bb.ch:                                            ; preds = %bb.cg
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.ci unwind label %bb.ec     ; 2 uses

bb.ci:                                            ; preds = %bb.ch
  %i.fw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull @.str.8, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296 unwind label %bb.ec ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296: ; preds = %bb.ci
  %i.fx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla2lslsERSoRKNS0_4NodeINS_9BitVectorEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull align 8 dereferenceable(136) %i.ff)
          to label %.critedge256 unwind label %bb.ec ; 0 uses

.critedge256:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit296
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.critedge257

.critedge257:                                     ; preds = %bb.cf, %.critedge256
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.fy = load ptr, ptr %i.du, align 8, !tbaa !115
  invoke void @_ZN4bzla2ls11LocalSearchINS_9BitVectorEE11select_moveEPNS0_4NodeIS2_EERKS2_(ptr dead_on_unwind nonnull writable sret(%"struct.bzla::ls::LocalSearchMove") align 8 %14, ptr noundef nonnull align 8 dereferenceable(401) %0, ptr noundef nonnull %i.ff, ptr noundef nonnull align 8 dereferenceable(24) %i.fy)
          to label %bb.cj unwind label %bb.ee

bb.cj:                                            ; preds = %.critedge257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %14, i64 24, i1 false)
  %i.fz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4bzla9BitVectoraSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %i.dw) #22 ; 0 uses
  call void @_ZN4bzla9BitVectorD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.ga = load i64, ptr %11, align 8, !tbaa !31
  %i.gb = load ptr, ptr %i.dn, align 8, !tbaa !243, !nonnull !126, !align !135 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !136
  %i.gd = add i64 %i.gc, %i.ga
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !136
  %i.ge = load i64, ptr %i.dx, align 8, !tbaa !32
  %i.gf = load ptr, ptr %i.dp, align 8, !tbaa !244, !nonnull !126, !align !135 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !136
  %i.gh = add i64 %i.gg, %i.ge
  store i64 %i.gh, ptr %i.gf, align 8, !tbaa !136
  %i.gi = load ptr, ptr %i.dy, align 8, !tbaa !33
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.bt, label %bb.ck, !llvm.loop !240

bb.ck:                                            ; preds = %bb.cj
  %i.gk = load ptr, ptr %i.h, align 8, !tbaa !138, !nonnull !126, !align !135
  %i.gl = invoke noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.gk, i64 noundef 1)
          to label %bb.cl unwind label %bb.ef

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.gl, label %bb.cm, label %.critedge260

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.gm = load ptr, ptr %i.h, align 8, !tbaa !138, !nonnull !126, !align !135
  invoke void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %15, ptr noundef nonnull align 8 dereferenceable(56) %i.gm, i64 noundef 1)
          to label %bb.cn unwind label %bb.eg

bb.cn:                                            ; preds = %bb.cm
  %i.gn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %.critedge259 unwind label %bb.eh ; 0 uses

.critedge259:                                     ; preds = %bb.cn
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %.critedge260

.critedge260:                                     ; preds = %bb.cl, %.critedge259
  %i.go = load ptr, ptr %i.h, align 8, !tbaa !138, !nonnull !126, !align !135
  %i.gp = invoke noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.go, i64 noundef 1)
          to label %bb.co unwind label %bb.ef

bb.co:                                            ; preds = %.critedge260
  br i1 %i.gp, label %bb.cp, label %.critedge263

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.gq = load ptr, ptr %i.h, align 8, !tbaa !138, !nonnull !126, !align !135
  invoke void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %16, ptr noundef nonnull align 8 dereferenceable(56) %i.gq, i64 noundef 1)
          to label %bb.cq unwind label %bb.ej

bb.cq:                                            ; preds = %bb.cp
  %i.gr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.cr unwind label %bb.ek

bb.cr:                                            ; preds = %bb.cq
  %i.gs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, ptr noundef nonnull @.str.9, i64 noundef 8)
          to label %.critedge262 unwind label %bb.ek ; 0 uses

.critedge262:                                     ; preds = %bb.cr
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.critedge263

.critedge263:                                     ; preds = %bb.co, %.critedge262
  %i.gt = load ptr, ptr %i.h, align 8, !tbaa !138, !nonnull !126, !align !135
  %i.gu = invoke noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.gt, i64 noundef 1)
          to label %bb.cs unwind label %bb.ef

bb.cs:                                            ; preds = %.critedge263
  br i1 %i.gu, label %bb.ct, label %.critedge266

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.gv = load ptr, ptr %i.h, align 8, !tbaa !138, !nonnull !126, !align !135
  invoke void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %17, ptr noundef nonnull align 8 dereferenceable(56) %i.gv, i64 noundef 1)
          to label %bb.cu unwind label %bb.em

bb.cu:                                            ; preds = %bb.ct
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
          to label %bb.cv unwind label %bb.en     ; 2 uses

bb.cv:                                            ; preds = %bb.cu
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull @.str.10, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300 unwind label %bb.en ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit300: ; preds = %bb.cv
  %i.gy = load ptr, ptr %i.dy, align 8, !tbaa !33
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla2lslsERSoRKNS0_4NodeINS_9BitVectorEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull align 8 dereferenceable(136) %i.gy)
          to label %.critedge265 unwind label %bb.en ; 0 uses
end_hunk_0
