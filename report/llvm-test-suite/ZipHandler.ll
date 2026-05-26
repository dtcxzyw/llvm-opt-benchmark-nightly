inline.NumInlined: 415
inline.NumDeleted: 173
begin_hunk_0_@_ZN8NArchive4NZip11CZipDecoder6DecodeERNS0_10CInArchiveERKNS0_7CItemExEP20ISequentialOutStreamP23IArchiveExtractCallbackP21ICompressProgressInfojRi:bb.a
  %i.ph = load ptr, ptr %i.pg, align 8
  %i.pi = invoke noundef i32 %i.ph(ptr noundef nonnull align 8 dereferenceable(8) %i.pe, i32 noundef %6)
          to label %bb.ff unwind label %bb.fe     ; 2 uses

bb.fa:                                            ; preds = %bb.et, %bb.es
  %.pn262 = phi { ptr, i32 } [ %i.ou, %bb.et ], [ %i.ot, %bb.es ]
  %i.pj = load ptr, ptr %16, align 8, !tbaa !188  ; 3 uses
  %.not.i384 = icmp eq ptr %i.pj, null
  br i1 %.not.i384, label %_ZN9CMyComPtrI30ICompressSetDecoderProperties2ED2Ev.exit385, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !10
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %i.pm = load ptr, ptr %i.pl, align 8
  %i.pn = invoke noundef i32 %i.pm(ptr noundef nonnull align 8 dereferenceable(8) %i.pj)
          to label %_ZN9CMyComPtrI30ICompressSetDecoderProperties2ED2Ev.exit385 unwind label %bb.fc ; 0 uses

bb.fc:                                            ; preds = %bb.fb
  %i.po = landingpad { ptr, i32 }
          catch ptr null
  %i.pp = extractvalue { ptr, i32 } %i.po, 0
  call void @__clang_call_terminate(ptr %i.pp) #21
  unreachable

_ZN9CMyComPtrI30ICompressSetDecoderProperties2ED2Ev.exit385: ; preds = %bb.fa, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit409

bb.fd:                                            ; preds = %bb.ex
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fe:                                            ; preds = %bb.ez
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.ff:                                            ; preds = %bb.ez
  %.not268 = icmp eq i32 %i.pi, 0
  %.pr505 = load ptr, ptr %17, align 8, !tbaa !191 ; 3 uses
  %.not.i386 = icmp eq ptr %.pr505, null
  br i1 %.not.i386, label %_ZN9CMyComPtrI19ICompressSetCoderMtED2Ev.exit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ps = load ptr, ptr %.pr505, align 8, !tbaa !10
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pu = load ptr, ptr %i.pt, align 8
  %i.pv = invoke noundef i32 %i.pu(ptr noundef nonnull align 8 dereferenceable(8) %.pr505)
          to label %_ZN9CMyComPtrI19ICompressSetCoderMtED2Ev.exit unwind label %bb.fh ; 0 uses

bb.fh:                                            ; preds = %bb.fg
  %i.pw = landingpad { ptr, i32 }
          catch ptr null
  %i.px = extractvalue { ptr, i32 } %i.pw, 0
  call void @__clang_call_terminate(ptr %i.px) #21
  unreachable

_ZN9CMyComPtrI19ICompressSetCoderMtED2Ev.exit:    ; preds = %bb.ff, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br i1 %.not268, label %bb.fi, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.thread

bb.fi:                                            ; preds = %_ZN9CMyComPtrI19ICompressSetCoderMtED2Ev.exit.thread, %_ZN9CMyComPtrI19ICompressSetCoderMtED2Ev.exit
  %i.py = load i16, ptr %i.g, align 2, !tbaa !87
  %i.pz = trunc i16 %i.py to i1
  br i1 %i.pz, label %bb.fj, label %bb.gl

bb.fj:                                            ; preds = %bb.fi
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !42
  %i.qc = icmp eq ptr %i.qb, null
  br i1 %i.qc, label %bb.fk, label %bb.fs

bb.fk:                                            ; preds = %bb.fj
  %i.qd = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #24
          to label %bb.fl unwind label %.thread561 ; 4 uses

bb.fl:                                            ; preds = %bb.fk
  invoke void @_ZN12CFilterCoderC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.qd)
          to label %bb.fm unwind label %bb.fr

bb.fm:                                            ; preds = %bb.fl
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.qd, ptr %i.qe, align 8, !tbaa !194
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 16 ; 3 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !10
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8
  %i.qj = invoke noundef i32 %i.qi(ptr noundef nonnull align 8 dereferenceable(8) %i.qf)
          to label %.noexc389 unwind label %.thread561, !inline_history !195 ; 0 uses

.noexc389:                                        ; preds = %bb.fm
  %i.qk = load ptr, ptr %i.qa, align 8, !tbaa !42 ; 3 uses
  %.not6.i388 = icmp eq ptr %i.qk, null
  br i1 %.not6.i388, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit, label %bb.fn

bb.fn:                                            ; preds = %.noexc389
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !10
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %i.qn = load ptr, ptr %i.qm, align 8
  %i.qo = invoke noundef i32 %i.qn(ptr noundef nonnull align 8 dereferenceable(8) %i.qk)
          to label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit unwind label %.thread561, !inline_history !195 ; 0 uses

_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit: ; preds = %bb.fn, %.noexc389
  store ptr %i.qf, ptr %i.qa, align 8, !tbaa !42
  br label %bb.fs

bb.fo:                                            ; preds = %bb.fe, %bb.fd
  %.pn266 = phi { ptr, i32 } [ %i.pr, %bb.fe ], [ %i.pq, %bb.fd ]
  %i.qp = load ptr, ptr %17, align 8, !tbaa !191  ; 3 uses
  %.not.i391 = icmp eq ptr %i.qp, null
  br i1 %.not.i391, label %_ZN9CMyComPtrI19ICompressSetCoderMtED2Ev.exit392, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !10
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.qs = load ptr, ptr %i.qr, align 8
  %i.qt = invoke noundef i32 %i.qs(ptr noundef nonnull align 8 dereferenceable(8) %i.qp)
          to label %_ZN9CMyComPtrI19ICompressSetCoderMtED2Ev.exit392 unwind label %bb.fq ; 0 uses

bb.fq:                                            ; preds = %bb.fp
  %i.qu = landingpad { ptr, i32 }
          catch ptr null
  %i.qv = extractvalue { ptr, i32 } %i.qu, 0
  call void @__clang_call_terminate(ptr %i.qv) #21
  unreachable

_ZN9CMyComPtrI19ICompressSetCoderMtED2Ev.exit392: ; preds = %bb.fo, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit409

bb.fr:                                            ; preds = %bb.fl
  %i.qw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.qd, i64 noundef 200) #23
  br label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit409

bb.fs:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit, %bb.fj
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !194
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 192 ; 2 uses
  %.not.i.i393 = icmp eq ptr %.sroa.0432.3, null
  br i1 %.not.i.i393, label %.noexc395, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ra = load ptr, ptr %.sroa.0432.3, align 8, !tbaa !10
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8
  %i.rd = invoke noundef i32 %i.rc(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0432.3)
          to label %.noexc395 unwind label %.thread561, !inline_history !174 ; 0 uses

.noexc395:                                        ; preds = %bb.ft, %bb.fs
  %i.re = load ptr, ptr %i.qz, align 8, !tbaa !158 ; 3 uses
  %.not6.i.i394 = icmp eq ptr %i.re, null
  br i1 %.not6.i.i394, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %.noexc395
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !10
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %i.rh = load ptr, ptr %i.rg, align 8
  %i.ri = invoke noundef i32 %i.rh(ptr noundef nonnull align 8 dereferenceable(8) %i.re)
          to label %bb.fv unwind label %.thread561, !inline_history !174 ; 0 uses

bb.fv:                                            ; preds = %.noexc395, %bb.fu
  store ptr %.sroa.0432.3, ptr %i.qz, align 8, !tbaa !158
  br i1 %.1152, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !164
  %i.rl = invoke noundef i32 @_ZN7NCrypto6NWzAes8CDecoder10ReadHeaderEP19ISequentialInStream(ptr noundef nonnull align 8 dereferenceable(600) %i.rk, ptr noundef %i.cb)
          to label %select.unfold unwind label %.thread561

bb.fx:                                            ; preds = %bb.fv
  %i.rm = trunc nuw i8 %.2155 to i1
  br i1 %i.rm, label %bb.fy, label %bb.gd

bb.fy:                                            ; preds = %bb.fx
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !175
  %i.rp = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !93
  %i.rr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !196
  %i.rt = invoke noundef i32 @_ZN7NCrypto10NZipStrong8CDecoder10ReadHeaderEP19ISequentialInStreamjy(ptr noundef nonnull align 8 dereferenceable(432) %i.ro, ptr noundef %i.cb, i32 noundef %i.rq, i64 noundef %i.rs)
          to label %bb.fz unwind label %.thread561 ; 2 uses

bb.fz:                                            ; preds = %bb.fy
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %bb.ga, label %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.rv = load ptr, ptr %i.rn, align 8, !tbaa !175
  %i.rw = invoke noundef i32 @_ZN7NCrypto10NZipStrong8CDecoder13CheckPasswordERb(ptr noundef nonnull align 8 dereferenceable(432) %i.rv, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.gb unwind label %bb.gc     ; 2 uses

bb.gb:                                            ; preds = %bb.ga
  %i.rx = icmp ne i32 %i.rw, 0
  %i.ry = load i8, ptr %i.c, align 1, !range !54
  %i.rz = trunc nuw i8 %i.ry to i1
  %or.cond23 = select i1 %i.rx, i1 true, i1 %i.rz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br i1 %or.cond23, label %select.unfold, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.thread

bb.gc:                                            ; preds = %bb.ga
  %i.sa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit409

bb.gd:                                            ; preds = %bb.fx
  %i.sb = load ptr, ptr %0, align 8, !tbaa !176
  %i.sc = invoke noundef i32 @_ZN7NCrypto4NZip8CDecoder10ReadHeaderEP19ISequentialInStream(ptr noundef nonnull align 8 dereferenceable(44) %i.sb, ptr noundef %i.cb)
          to label %select.unfold unwind label %.thread561

select.unfold:                                    ; preds = %bb.gb, %bb.gd, %bb.fw
  %.0148 = phi i32 [ %i.rl, %bb.fw ], [ %i.sc, %bb.gd ], [ %i.rw, %bb.gb ] ; 2 uses
  %i.sd = icmp eq i32 %.0148, 0
  br i1 %i.sd, label %bb.ge, label %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406

bb.ge:                                            ; preds = %select.unfold
  %i.se = load ptr, ptr %i.qx, align 8, !tbaa !194 ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !10
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 56
  %i.sh = load ptr, ptr %i.sg, align 8
  %i.si = invoke noundef i32 %i.sh(ptr noundef nonnull align 8 dereferenceable(200) %i.se, ptr noundef %i.cb)
          to label %bb.gf unwind label %bb.gg     ; 2 uses

bb.gf:                                            ; preds = %bb.ge
  %.not269 = icmp eq i32 %i.si, 0
  br i1 %.not269, label %bb.gh, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.thread

bb.gg:                                            ; preds = %bb.ge
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit409

bb.gh:                                            ; preds = %bb.gf
  %i.sk = load ptr, ptr %i.qx, align 8, !tbaa !194 ; 5 uses
  %i.sl = load ptr, ptr %i.qa, align 8, !tbaa !42 ; 7 uses
  %.not.i.i398 = icmp eq ptr %i.sl, null
  br i1 %.not.i.i398, label %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !10
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.so = load ptr, ptr %i.sn, align 8
  %i.sp = invoke noundef i32 %i.so(ptr noundef nonnull align 8 dereferenceable(8) %i.sl)
          to label %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit unwind label %.thread561, !inline_history !197 ; 0 uses

_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit: ; preds = %bb.gi, %bb.gh
  br i1 %.1152, label %bb.gj, label %select.unfold518

bb.gj:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !164
  %i.ss = invoke noundef zeroext i1 @_ZN7NCrypto6NWzAes8CDecoder23CheckPasswordVerifyCodeEv(ptr noundef nonnull align 8 dereferenceable(600) %i.sr)
          to label %bb.gk unwind label %bb.gt

bb.gk:                                            ; preds = %bb.gj
  br i1 %i.ss, label %select.unfold518, label %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406.thread529

bb.gl:                                            ; preds = %bb.fi
  %.not.i.i402 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i402, label %select.unfold518, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.st = load ptr, ptr %i.cb, align 8, !tbaa !10
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = invoke noundef i32 %i.sv(ptr noundef nonnull align 8 dereferenceable(8) %i.cb)
          to label %select.unfold518 unwind label %.thread561, !inline_history !197 ; 0 uses

select.unfold518:                                 ; preds = %bb.gk, %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit, %bb.gl, %bb.gm
  %.sroa.0458.1.ph = phi ptr [ %i.sk, %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit ], [ null, %bb.gm ], [ null, %bb.gl ], [ %i.sk, %bb.gk ] ; 2 uses
  %.sroa.0.1.ph = phi ptr [ %i.sl, %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit ], [ %i.cb, %bb.gm ], [ null, %bb.gl ], [ %i.sl, %bb.gk ] ; 3 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.sy = load ptr, ptr %i.oi, align 8, !tbaa !10
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 40
  %i.ta = load ptr, ptr %i.sz, align 8
  %i.tb = invoke noundef i32 %i.ta(ptr noundef nonnull align 8 dereferenceable(8) %i.oi, ptr noundef %.sroa.0.1.ph, ptr noundef nonnull %i.au, ptr noundef null, ptr noundef nonnull %i.sx, ptr noundef %5)
          to label %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406 unwind label %bb.gt

_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406: ; preds = %bb.fz, %select.unfold, %select.unfold518
  %.sroa.0.1526 = phi ptr [ %.sroa.0.1.ph, %select.unfold518 ], [ null, %select.unfold ], [ null, %bb.fz ] ; 3 uses
  %.sroa.0458.1523 = phi ptr [ %.sroa.0458.1.ph, %select.unfold518 ], [ null, %select.unfold ], [ null, %bb.fz ] ; 3 uses
  %.2150 = phi i32 [ %i.tb, %select.unfold518 ], [ %.0148, %select.unfold ], [ %i.rt, %bb.fz ] ; 3 uses
  switch i32 %.2150, label %bb.go [
    i32 1, label %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406.thread529
    i32 -2147467263, label %bb.gn
  ]

bb.gn:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406
  store i32 1, ptr %7, align 4, !tbaa !4
  br label %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406.thread529

bb.go:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406
  %.not272 = icmp eq i32 %.2150, 0                ; 2 uses
  %.27..2150 = select i1 %.not272, i32 %.19, i32 %.2150
  br label %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406.thread529

_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406.thread529: ; preds = %bb.gk, %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406, %bb.go, %bb.gn
  %.sroa.0458.2 = phi ptr [ %.sroa.0458.1523, %bb.go ], [ %.sroa.0458.1523, %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406 ], [ %.sroa.0458.1523, %bb.gn ], [ %i.sk, %bb.gk ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.1526, %bb.go ], [ %.sroa.0.1526, %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406 ], [ %.sroa.0.1526, %bb.gn ], [ %i.sl, %bb.gk ] ; 3 uses
  %.19226 = phi i1 [ %.not272, %bb.go ], [ false, %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406 ], [ false, %bb.gn ], [ false, %bb.gk ]
  %.29 = phi i32 [ %.27..2150, %bb.go ], [ 0, %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406 ], [ 0, %bb.gn ], [ 0, %bb.gk ]
  %.not.i407 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i407, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit, label %bb.gp

bb.gp:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406.thread529
  %i.tc = load ptr, ptr %.sroa.0.2, align 8, !tbaa !10
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  %i.te = load ptr, ptr %i.td, align 8
  %i.tf = invoke noundef i32 %i.te(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.2)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit unwind label %bb.gq ; 0 uses

bb.gq:                                            ; preds = %bb.gp
  %i.tg = landingpad { ptr, i32 }
          catch ptr null
  %i.th = extractvalue { ptr, i32 } %i.tg, 0
  call void @__clang_call_terminate(ptr %i.th) #21
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit:    ; preds = %_ZN9CMyComPtrI19ISequentialInStreamEaSERKS1_.exit406.thread529, %bb.gp
  br i1 %.19226, label %bb.gr, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit.thread

bb.gr:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i8 1, ptr %i.d, align 1, !tbaa !198
  br i1 %.1147, label %bb.gs, label %bb.gx

bb.gs:                                            ; preds = %bb.gr
  %i.ti = load i32, ptr %i.bl, align 8, !tbaa !152
  %i.tj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !93
  %i.tl = xor i32 %i.tk, %i.ti
  %i.tm = icmp eq i32 %i.tl, -1
  br label %bb.gx

.thread561:                                       ; preds = %bb.gm, %bb.gi, %bb.fw, %bb.fy, %bb.gd, %bb.fu, %bb.ft, %bb.fn, %bb.fm, %bb.fk
  %.sroa.0458.0.ph = phi ptr [ null, %bb.fk ], [ null, %bb.fm ], [ null, %bb.fn ], [ null, %bb.ft ], [ null, %bb.fu ], [ null, %bb.gd ], [ null, %bb.fy ], [ null, %bb.fw ], [ %i.sk, %bb.gi ], [ null, %bb.gm ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit409

bb.gt:                                            ; preds = %bb.gj, %select.unfold518
  %.sroa.0458.0.ph560 = phi ptr [ %i.sk, %bb.gj ], [ %.sroa.0458.1.ph, %select.unfold518 ] ; 2 uses
  %.sroa.0.0.ph = phi ptr [ %i.sl, %bb.gj ], [ %.sroa.0.1.ph, %select.unfold518 ] ; 3 uses
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i408 = icmp eq ptr %.sroa.0.0.ph, null
  br i1 %.not.i408, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit409, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.tn = load ptr, ptr %.sroa.0.0.ph, align 8, !tbaa !10
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %i.tp = load ptr, ptr %i.to, align 8
  %i.tq = invoke noundef i32 %i.tp(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.ph)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit409 unwind label %bb.gv ; 0 uses

bb.gv:                                            ; preds = %bb.gu
  %i.tr = landingpad { ptr, i32 }
          catch ptr null
  %i.ts = extractvalue { ptr, i32 } %i.tr, 0
  call void @__clang_call_terminate(ptr %i.ts) #21
  unreachable

bb.gw:                                            ; preds = %bb.ha, %_ZN9CMyComPtrI19ISequentialInStreamE6AttachEPS0_.exit412, %bb.gy
  %.sroa.0439.1 = phi ptr [ %i.tu, %_ZN9CMyComPtrI19ISequentialInStreamE6AttachEPS0_.exit412 ], [ %i.cb, %bb.ha ], [ %i.cb, %bb.gy ]
  %i.tt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit409

bb.gx:                                            ; preds = %bb.gs, %bb.gr
  %.0 = phi i1 [ %i.tm, %bb.gs ], [ true, %bb.gr ]
  br i1 %.1152, label %bb.gy, label %bb.hc

bb.gy:                                            ; preds = %bb.gx
  %i.tu = invoke noundef ptr @_ZN8NArchive4NZip10CInArchive19CreateLimitedStreamEyy(ptr noundef nonnull align 8 dereferenceable(138) %1, i64 noundef %i.cc, i64 noundef 10)
          to label %bb.gz unwind label %bb.gw     ; 4 uses

bb.gz:                                            ; preds = %bb.gy
  %.not.i.i410 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i410, label %_ZN9CMyComPtrI19ISequentialInStreamE6AttachEPS0_.exit412, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.tv = load ptr, ptr %i.cb, align 8, !tbaa !10
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.tx = load ptr, ptr %i.tw, align 8
  %i.ty = invoke noundef i32 %i.tx(ptr noundef nonnull align 8 dereferenceable(8) %i.cb)
          to label %_ZN9CMyComPtrI19ISequentialInStreamE6AttachEPS0_.exit412 unwind label %bb.gw, !inline_history !199 ; 0 uses

_ZN9CMyComPtrI19ISequentialInStreamE6AttachEPS0_.exit412: ; preds = %bb.gz, %bb.ha
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !164
  %i.ub = invoke noundef i32 @_ZN7NCrypto6NWzAes8CDecoder8CheckMacEP19ISequentialInStreamRb(ptr noundef nonnull align 8 dereferenceable(600) %i.ua, ptr noundef %i.tu, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.hb unwind label %bb.gw

bb.hb:                                            ; preds = %_ZN9CMyComPtrI19ISequentialInStreamE6AttachEPS0_.exit412
  %.not282 = icmp eq i32 %i.ub, 0
end_hunk_0
