inline.NumInlined: 217
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7Archive12ReadHeader15Ev:bb.a
  %i.fz = invoke noundef zeroext i8 @_ZN7RawRead4Get1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  %i.ga = zext i8 %i.fz to i32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.eg, i64 28 ; 2 uses
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !147
  %i.gc = invoke noundef zeroext i8 @_ZN7RawRead4Get1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.as unwind label %bb.ay

bb.as:                                            ; preds = %bb.ar
  %i.gd = add i8 %i.gc, -48
  %i.ge = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  store i8 %i.gd, ptr %i.ge, align 8, !tbaa !148
  %i.gf = invoke noundef zeroext i16 @_ZN7RawRead4Get2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.at unwind label %bb.az     ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.gg = invoke noundef i32 @_ZN7RawRead4Get4Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.au unwind label %bb.az     ; 4 uses

bb.au:                                            ; preds = %bb.at
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eg, i64 36 ; 2 uses
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !82
  %i.gi = load i32, ptr %i.gb, align 4, !tbaa !147 ; 2 uses
  %i.gj = icmp ugt i32 %i.gi, 19
  %i.gk = and i32 %i.gg, 16
  %.not191 = icmp eq i32 %i.gk, 0
  %or.cond235 = or i1 %.not191, %i.gj
  br i1 %or.cond235, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i8 1, ptr %i.fc, align 1, !tbaa !111
  br label %bb.ba

bb.aw:                                            ; preds = %bb.al, %bb.ak
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.ax:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.ay:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.az:                                            ; preds = %bb.at, %bb.as
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.ba:                                            ; preds = %bb.av, %bb.au
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eg, i64 8356 ; 2 uses
  store i32 0, ptr %i.gp, align 4, !tbaa !149
  %i.gq = load i8, ptr %i.ep, align 1, !tbaa !138, !range !58, !noundef !59
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %switch.tableidx = add i32 %i.gi, -13           ; 2 uses
  %i.gs = icmp ult i32 %switch.tableidx, 14
  br i1 %i.gs, label %switch.lookup, label %.sink.split

switch.lookup:                                    ; preds = %bb.bb
  %i.gt = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN7Archive12ReadHeader15Ev, i64 %i.gt
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bb, %switch.lookup
  %.sink = phi i32 [ %switch.ext, %switch.lookup ], [ 4, %bb.bb ]
  store i32 %.sink, ptr %i.gp, align 4, !tbaa !149
  br label %bb.bc

bb.bc:                                            ; preds = %.sink.split, %bb.ba
  %i.gu = getelementptr inbounds nuw i8, ptr %i.eg, i64 8460 ; 3 uses
  store i32 2, ptr %i.gu, align 4, !tbaa !110
  %i.gv = load i8, ptr %i.fu, align 8, !tbaa !145 ; 3 uses
  switch i8 %i.gv, label %bb.bd [
    i8 3, label %bb.be
    i8 5, label %bb.be
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.gw = icmp ult i8 %i.gv, 6
  br i1 %i.gw, label %bb.be, label %.thread259

.thread259:                                       ; preds = %bb.bd
  %i.gx = getelementptr inbounds nuw i8, ptr %i.eg, i64 8464
  store i32 0, ptr %i.gx, align 8, !tbaa !150
  br label %bb.bg

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bc
  %storemerge = phi i32 [ 1, %bb.bc ], [ 1, %bb.bc ], [ 0, %bb.bd ]
  store i32 %storemerge, ptr %i.gu, align 4, !tbaa !110
  %i.gy = getelementptr inbounds nuw i8, ptr %i.eg, i64 8464 ; 2 uses
  store i32 0, ptr %i.gy, align 8, !tbaa !150
  %i.gz = icmp eq i8 %i.gv, 3
  %i.ha = and i32 %i.gg, 61440
  %i.hb = icmp eq i32 %i.ha, 40960
  %or.cond = and i1 %i.gz, %i.hb
  br i1 %or.cond, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 1, ptr %i.gy, align 8, !tbaa !150
  %i.hc = getelementptr inbounds nuw i8, ptr %i.eg, i64 8468
  store i32 0, ptr %i.hc, align 4, !tbaa !112
  br label %bb.bg

bb.bg:                                            ; preds = %.thread259, %bb.bf, %bb.be
  %.lobit = lshr i32 %i.gg, 31
  %i.hd = trunc nuw nsw i32 %.lobit to i8
  %i.he = select i1 %i.ef, i8 0, i8 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.eg, i64 8456
  store i8 %i.he, ptr %i.hf, align 8, !tbaa !151
  %i.hg = load i32, ptr %i.eh, align 8, !tbaa !84
  %i.hh = and i32 %i.hg, 256                      ; 2 uses
  %.not193 = icmp eq i32 %i.hh, 0
  %i.hi = getelementptr inbounds nuw i8, ptr %i.eg, i64 8457
  %.lobit192 = lshr exact i32 %i.hh, 8
  %i.hj = trunc nuw nsw i32 %.lobit192 to i8
  store i8 %i.hj, ptr %i.hi, align 1, !tbaa !152
  br i1 %.not193, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hk = invoke noundef i32 @_ZN7RawRead4Get4Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.hl = invoke noundef i32 @_ZN7RawRead4Get4Ev(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.bj unwind label %bb.bk     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.hm = and i32 %i.hl, %i.fs
  %i.hn = icmp eq i32 %i.hm, -1                   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.eg, i64 8354
  %i.hp = zext i1 %i.hn to i8
  store i8 %i.hp, ptr %i.ho, align 2, !tbaa !153
  %i.hq = zext i32 %i.hk to i64
  %i.hr = shl nuw i64 %i.hq, 32
  %i.hs = zext i32 %i.hl to i64
  %i.ht = shl nuw i64 %i.hs, 32
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.bl:                                            ; preds = %bb.bg
  %i.hv = icmp eq i32 %i.fs, -1                   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.eg, i64 8354
  %i.hx = zext i1 %i.hv to i8
  store i8 %i.hx, ptr %i.hw, align 2, !tbaa !153
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bj
  %i.hy = phi i1 [ %i.hn, %bb.bj ], [ %i.hv, %bb.bl ]
  %.0180 = phi i64 [ %i.ht, %bb.bj ], [ 0, %bb.bl ]
  %.0178 = phi i64 [ %i.hr, %bb.bj ], [ 0, %bb.bl ]
  %i.hz = load i32, ptr %i.fr, align 4, !tbaa !79
  %i.ia = zext i32 %i.hz to i64
  %i.ib = or disjoint i64 %.0178, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.eg, i64 8288 ; 2 uses
  store i64 %i.ib, ptr %i.ic, align 8, !tbaa !154
  %i.id = zext i32 %i.fs to i64
  %i.ie = or disjoint i64 %.0180, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.eg, i64 8296
  %spec.store.select = select i1 %i.hy, i64 9223372034707292159, i64 %i.ie
  store i64 %spec.store.select, ptr %i.if, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ig = call i16 @llvm.umin.i16(i16 %i.gf, i16 8191)
  %i.ih = zext nneg i16 %i.ig to i64              ; 5 uses
  %i.ii = invoke noundef i64 @_ZN7RawRead4GetBEPvm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %i.b, i64 noundef %i.ih)
          to label %bb.bn unwind label %bb.bs     ; 0 uses

bb.bn:                                            ; preds = %bb.bm
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ih
  store i8 0, ptr %i.ij, align 1, !tbaa !82
  %i.ik = getelementptr inbounds nuw i8, ptr %i.eg, i64 40 ; 11 uses
  br i1 %i.ef, label %bb.bo, label %bb.cf

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.ik, align 8, !tbaa !112
  %i.il = load i32, ptr %i.eh, align 8, !tbaa !84
  %i.im = and i32 %i.il, 512
  %.not195 = icmp eq i32 %i.im, 0
  br i1 %.not195, label %.thread260, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN14EncodeFileNameC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.in = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #21 ; 2 uses
  %i.io = add i64 %i.in, 1                        ; 2 uses
  %i.ip = icmp ult i64 %i.io, %i.ih
  br i1 %i.ip, label %bb.br, label %bb.bw

bb.br:                                            ; preds = %bb.bq
  %7 = getelementptr i8, ptr %i.b, i64 %i.in
  %i.iq = getelementptr i8, ptr %7, i64 1
  %i.ir = sub nuw nsw i64 %i.ih, %i.io
  invoke void @_ZN14EncodeFileName6DecodeEPcmPhmPwm(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %i.b, i64 noundef %i.ih, ptr noundef %i.iq, i64 noundef %i.ir, ptr noundef nonnull %i.ik, i64 noundef 2048)
          to label %bb.bw unwind label %bb.bu

bb.bs:                                            ; preds = %bb.ca, %bb.by, %bb.cn, %bb.cm, %bb.cf, %.thread260, %bb.bm
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.bt:                                            ; preds = %bb.bp
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.br
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn = phi { ptr, i32 } [ %i.iu, %bb.bu ], [ %i.it, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ed

bb.bw:                                            ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.pr = load i32, ptr %i.ik, align 8, !tbaa !112
  %i.iv = icmp eq i32 %.pr, 0
  br i1 %i.iv, label %.thread260, label %bb.bx

.thread260:                                       ; preds = %bb.bo, %bb.bw
  invoke void @_Z13ArcCharToWidePKcPwm13ACTW_ENCODING(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ik, i64 noundef 2048, i32 noundef 1)
          to label %bb.bx unwind label %bb.bs

bb.bx:                                            ; preds = %.thread260, %bb.bw
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 11056 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !96
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 57484
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !97 ; 2 uses
  %i.ja = icmp eq i32 %i.iz, 1
  br i1 %i.ja, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.jb = invoke noundef ptr @_Z8wcsupperPw(ptr noundef nonnull %i.ik)
          to label %.noexc252 unwind label %bb.bs ; 0 uses

.noexc252:                                        ; preds = %bb.by
  %.pre.i = load ptr, ptr %i.iw, align 8, !tbaa !96
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 57484
  %.pre3.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !97
  br label %bb.bz

bb.bz:                                            ; preds = %.noexc252, %bb.bx
  %i.jc = phi i32 [ %.pre3.i, %.noexc252 ], [ %i.iz, %bb.bx ]
  %i.jd = icmp eq i32 %i.jc, 2
  br i1 %i.jd, label %bb.ca, label %_ZN7Archive15ConvertNameCaseEPw.exit

bb.ca:                                            ; preds = %bb.bz
  %i.je = invoke noundef ptr @_Z8wcslowerPw(ptr noundef nonnull %i.ik)
          to label %_ZN7Archive15ConvertNameCaseEPw.exit unwind label %bb.bs ; 0 uses

_ZN7Archive15ConvertNameCaseEPw.exit:             ; preds = %bb.bz, %bb.ca
  %i.jf = load i32, ptr %i.gu, align 4, !tbaa !110
  %.fr20.i = freeze i32 %i.jf                     ; 2 uses
  %i.jg = icmp eq i32 %.fr20.i, 2
  br i1 %i.jg, label %.thread.i, label %bb.cb

.thread.i:                                        ; preds = %_ZN7Archive15ConvertNameCaseEPw.exit
  %i.jh = load i8, ptr %i.fc, align 1, !tbaa !111, !range !58, !noundef !59
  %i.ji = trunc nuw i8 %i.jh to i1
  %..i = select i1 %i.ji, i32 16, i32 32
  store i32 %..i, ptr %i.gh, align 4, !tbaa !82
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 48840
  br label %.split.preheader.i

bb.cb:                                            ; preds = %_ZN7Archive15ConvertNameCaseEPw.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 48840 ; 2 uses
  %i.jl = icmp eq i32 %.fr20.i, 0
  br i1 %i.jl, label %.split.us.preheader.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.cb, %.thread.i
  %i.jm = phi ptr [ %i.jj, %.thread.i ], [ %i.jk, %bb.cb ]
  br label %.split.i

.split.us.preheader.i:                            ; preds = %bb.cb
  %i.jn = load i32, ptr %i.jk, align 8
  %.fr268 = freeze i32 %i.jn
  %i.jo = icmp eq i32 %.fr268, 3
  br i1 %i.jo, label %.split.us.i.us, label %.split.us.i

.split.us.i.us:                                   ; preds = %.split.us.preheader.i, %bb.cc
  %.0.us.i.us = phi ptr [ %i.jq, %bb.cc ], [ %i.ik, %.split.us.preheader.i ] ; 3 uses
  %i.jp = load i32, ptr %.0.us.i.us, align 4, !tbaa !112
  switch i32 %i.jp, label %bb.cc [
    i32 0, label %_ZN7Archive17ConvertFileHeaderEP10FileHeader.exit
    i32 92, label %.sink.split.i.us
    i32 47, label %.thread17.us.i.us
  ]

.thread17.us.i.us:                                ; preds = %.split.us.i.us
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %.split.us.i.us, %.thread17.us.i.us
  %.sink27.i.us = phi i32 [ 47, %.thread17.us.i.us ], [ 95, %.split.us.i.us ]
  store i32 %.sink27.i.us, ptr %.0.us.i.us, align 4, !tbaa !112
  br label %bb.cc

bb.cc:                                            ; preds = %.sink.split.i.us, %.split.us.i.us
  %i.jq = getelementptr inbounds nuw i8, ptr %.0.us.i.us, i64 4
  br label %.split.us.i.us, !llvm.loop !113

.split.us.i:                                      ; preds = %.split.us.preheader.i, %bb.cd
  %.0.us.i = phi ptr [ %i.js, %bb.cd ], [ %i.ik, %.split.us.preheader.i ] ; 3 uses
  %i.jr = load i32, ptr %.0.us.i, align 4, !tbaa !112
  switch i32 %i.jr, label %bb.cd [
    i32 0, label %_ZN7Archive17ConvertFileHeaderEP10FileHeader.exit
    i32 92, label %.thread17.us.i
    i32 47, label %.thread17.us.i
  ]

.thread17.us.i:                                   ; preds = %.split.us.i, %.split.us.i
  store i32 47, ptr %.0.us.i, align 4, !tbaa !112
  br label %bb.cd

bb.cd:                                            ; preds = %.thread17.us.i, %.split.us.i
  %i.js = getelementptr inbounds nuw i8, ptr %.0.us.i, i64 4
  br label %.split.us.i, !llvm.loop !113

.split.i:                                         ; preds = %.thread17.thread24.i, %.split.preheader.i
  %.0.i = phi ptr [ %i.jw, %.thread17.thread24.i ], [ %i.ik, %.split.preheader.i ] ; 3 uses
  %i.jt = load i32, ptr %.0.i, align 4, !tbaa !112
  switch i32 %i.jt, label %.thread17.thread24.i [
    i32 0, label %_ZN7Archive17ConvertFileHeaderEP10FileHeader.exit
    i32 92, label %bb.ce
    i32 47, label %.thread17.thread.i
  ]

bb.ce:                                            ; preds = %.split.i
  %i.ju = load i32, ptr %i.jm, align 8, !tbaa !63
  %i.jv = icmp eq i32 %i.ju, 3
  br i1 %i.jv, label %.thread17.thread24.i, label %.thread17.thread.i

.thread17.thread.i:                               ; preds = %bb.ce, %.split.i
  store i32 47, ptr %.0.i, align 4, !tbaa !112
  br label %.thread17.thread24.i

.thread17.thread24.i:                             ; preds = %.thread17.thread.i, %bb.ce, %.split.i
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  br label %.split.i, !llvm.loop !113

bb.cf:                                            ; preds = %bb.bn
  %i.jx = invoke noundef zeroext i1 @_Z10CharToWidePKcPwm(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ik, i64 noundef 2048)
          to label %bb.cg unwind label %bb.bs     ; 0 uses

bb.cg:                                            ; preds = %bb.cf
  %i.jy = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !83
  %i.ka = zext i16 %i.gf to i32
  %i.kb = sub i32 %i.jz, %i.ka
  %i.kc = load i32, ptr %i.eh, align 8, !tbaa !84
  %i.kd = and i32 %i.kc, 1024
  %.not194 = icmp eq i32 %i.kd, 0
  %spec.select.v = select i1 %.not194, i32 -32, i32 -40
  %spec.select = add i32 %spec.select.v, %i.kb    ; 2 uses
  %i.ke = icmp sgt i32 %spec.select, 0
  br i1 %i.ke, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.kf = getelementptr inbounds nuw i8, ptr %i.eg, i64 8232 ; 2 uses
  %i.kg = zext nneg i32 %spec.select to i64       ; 2 uses
  invoke void @_ZN5ArrayIhE5AllocEm(ptr noundef nonnull align 8 dereferenceable(32) %i.kf, i64 noundef %i.kg)
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.kh = load ptr, ptr %i.kf, align 8, !tbaa !117
  %i.ki = invoke noundef i64 @_ZN7RawRead4GetBEPvm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %i.kh, i64 noundef %i.kg)
          to label %bb.ck unwind label %bb.cj     ; 0 uses

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.ck:                                            ; preds = %bb.ci, %bb.cg
  %i.kk = call i32 @wcscmp(ptr noundef nonnull %i.ik, ptr noundef nonnull @.str.1) #21
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %bb.cl, label %_ZN7Archive17ConvertFileHeaderEP10FileHeader.exit

bb.cl:                                            ; preds = %bb.ck
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 48846
  store i8 1, ptr %i.km, align 2, !tbaa !155
  br label %_ZN7Archive17ConvertFileHeaderEP10FileHeader.exit

_ZN7Archive17ConvertFileHeaderEP10FileHeader.exit: ; preds = %.split.us.i, %.split.us.i.us, %.split.i, %bb.ck, %bb.cl
  %i.kn = load i32, ptr %i.eh, align 8, !tbaa !84
  %i.ko = and i32 %i.kn, 1024
  %.not197 = icmp eq i32 %i.ko, 0
  br i1 %.not197, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_ZN7Archive17ConvertFileHeaderEP10FileHeader.exit
  %i.kp = getelementptr inbounds nuw i8, ptr %i.eg, i64 8361
  %i.kq = invoke noundef i64 @_ZN7RawRead4GetBEPvm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %i.kp, i64 noundef 8)
end_hunk_0
