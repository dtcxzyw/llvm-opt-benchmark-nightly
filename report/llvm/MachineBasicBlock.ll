Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineBasicBlock?download=true
inline.NumInlined: 4150
inline.NumDeleted: 1970
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK4llvm17MachineBasicBlock9printNameERNS_11raw_ostreamEjPNS_17ModuleSlotTrackerE:bb.a

bb.aq:                                            ; preds = %bb.ap
  %.str.15..str.265 = select i1 %i.fm, ptr @.str.15, ptr @.str.26
  %i.ft = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %.str.15..str.265, i64 noundef 2) #32 ; 0 uses
  %.pre204 = load ptr, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit121

bb.ar:                                            ; preds = %bb.ap
  %i.fu = select i1 %i.fm, i16 8236, i16 10272
  store i16 %i.fu, ptr %i.fo, align 1
  %i.fv = load ptr, ptr %i.d, align 8, !tbaa !261
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 2 ; 2 uses
  store ptr %i.fw, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit121

_ZN4llvm11raw_ostreamlsEPKc.exit121:              ; preds = %bb.aq, %bb.ar
  %i.fx = phi ptr [ %.pre204, %bb.aq ], [ %i.fw, %bb.ar ] ; 2 uses
  %i.fy = load ptr, ptr %i.b, align 8, !tbaa !260
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fx to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = icmp ult i64 %i.gb, 13
  br i1 %i.gc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit121
  %i.gd = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.32, i64 noundef 13) #32 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit124

bb.at:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit121
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.fx, ptr noundef nonnull align 1 dereferenceable(13) @.str.32, i64 13, i1 false)
  %i.ge = load ptr, ptr %i.d, align 8, !tbaa !261
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 13
  store ptr %i.gf, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit124

_ZN4llvm11raw_ostreamlsEPKc.exit124:              ; preds = %bb.at, %bb.as, %_ZN4llvm11raw_ostreamlsEPKc.exit118
  %.7 = phi i8 [ %.6, %_ZN4llvm11raw_ostreamlsEPKc.exit118 ], [ 1, %bb.as ], [ 1, %bb.at ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.gg, align 8, !tbaa !247
  %.not199 = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %.not199, label %bb.az, label %bb.au

bb.au:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit124
  %i.gh = trunc nuw i8 %.7 to i1                  ; 2 uses
  %i.gi = load ptr, ptr %i.b, align 8, !tbaa !260
  %i.gj = load ptr, ptr %i.d, align 8, !tbaa !261 ; 2 uses
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = icmp ult i64 %i.gm, 2
  br i1 %i.gn, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.str.15..str.266 = select i1 %i.gh, ptr @.str.15, ptr @.str.26
  %i.go = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %.str.15..str.266, i64 noundef 2) #32 ; 0 uses
  %.pre205 = load ptr, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit127

bb.aw:                                            ; preds = %bb.au
  %i.gp = select i1 %i.gh, i16 8236, i16 10272
  store i16 %i.gp, ptr %i.gj, align 1
  %i.gq = load ptr, ptr %i.d, align 8, !tbaa !261
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 2 ; 2 uses
  store ptr %i.gr, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit127

_ZN4llvm11raw_ostreamlsEPKc.exit127:              ; preds = %bb.av, %bb.aw
  %i.gs = phi ptr [ %.pre205, %bb.av ], [ %i.gr, %bb.aw ] ; 2 uses
  %i.gt = load ptr, ptr %i.b, align 8, !tbaa !260
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = sub i64 %i.gu, %i.gv
  %i.gx = icmp ult i64 %i.gw, 6
  br i1 %i.gx, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit127
  %i.gy = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.33, i64 noundef 6) #32
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit130

bb.ay:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit127
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.gs, ptr noundef nonnull align 1 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.gz = load ptr, ptr %i.d, align 8, !tbaa !261
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 6
  store ptr %i.ha, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit130

_ZN4llvm11raw_ostreamlsEPKc.exit130:              ; preds = %bb.ax, %bb.ay
  %.0.i.i129 = phi ptr [ %i.gy, %bb.ax ], [ %1, %bb.ay ]
  %.sroa.0.0.copyload.i131 = load i8, ptr %i.gg, align 8, !tbaa !247
  %i.hb = zext nneg i8 %.sroa.0.0.copyload.i131 to i64
  %i.hc = shl nuw i64 1, %i.hb
  %i.hd = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i129, i64 noundef %i.hc) #32 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit130, %_ZN4llvm11raw_ostreamlsEPKc.exit124
  %.8 = phi i8 [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit130 ], [ %.7, %_ZN4llvm11raw_ostreamlsEPKc.exit124 ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.sroa.0.0.copyload.i132 = load i64, ptr %i.he, align 8
  %.not3.i.not = icmp eq i64 %.sroa.0.0.copyload.i132, 0
  br i1 %.not3.i.not, label %_ZN4llvm11raw_ostreamlsEPKc.exit142, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hf = trunc nuw i8 %.8 to i1                  ; 2 uses
  %i.hg = load ptr, ptr %i.b, align 8, !tbaa !260
  %i.hh = load ptr, ptr %i.d, align 8, !tbaa !261 ; 2 uses
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = icmp ult i64 %i.hk, 2
  br i1 %i.hl, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %.str.15..str.267 = select i1 %i.hf, ptr @.str.15, ptr @.str.26
  %i.hm = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %.str.15..str.267, i64 noundef 2) #32 ; 0 uses
  %.pre206 = load ptr, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit135

bb.bc:                                            ; preds = %bb.ba
  %i.hn = select i1 %i.hf, i16 8236, i16 10272
  store i16 %i.hn, ptr %i.hh, align 1
  %i.ho = load ptr, ptr %i.d, align 8, !tbaa !261
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2 ; 2 uses
  store ptr %i.hp, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit135

_ZN4llvm11raw_ostreamlsEPKc.exit135:              ; preds = %bb.bb, %bb.bc
  %i.hq = phi ptr [ %.pre206, %bb.bb ], [ %i.hp, %bb.bc ] ; 2 uses
  %i.hr = load ptr, ptr %i.b, align 8, !tbaa !260
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hq to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = icmp ult i64 %i.hu, 11
  br i1 %i.hv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit135
  %i.hw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.34, i64 noundef 11) #32 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit138

bb.be:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit135
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.hq, ptr noundef nonnull align 1 dereferenceable(11) @.str.34, i64 11, i1 false)
  %i.hx = load ptr, ptr %i.d, align 8, !tbaa !261
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 11
  store ptr %i.hy, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit138

_ZN4llvm11raw_ostreamlsEPKc.exit138:              ; preds = %bb.bd, %bb.be
  %.sroa.0.0.copyload.i139 = load i64, ptr %i.he, align 8 ; 2 uses
  %.sroa.027.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i139 to i32
  switch i32 %.sroa.027.0.extract.trunc, label %bb.bl [
    i32 1, label %bb.bf
    i32 2, label %bb.bi
  ]

bb.bf:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit138
  %i.hz = load ptr, ptr %i.b, align 8, !tbaa !260
  %i.ia = load ptr, ptr %i.d, align 8, !tbaa !261 ; 2 uses
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = icmp ult i64 %i.id, 9
  br i1 %i.ie, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.if = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.35, i64 noundef 9) #32 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit142

bb.bh:                                            ; preds = %bb.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ia, ptr noundef nonnull align 1 dereferenceable(9) @.str.35, i64 9, i1 false)
  %i.ig = load ptr, ptr %i.d, align 8, !tbaa !261
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 9
  store ptr %i.ih, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit142

bb.bi:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit138
  %i.ii = load ptr, ptr %i.b, align 8, !tbaa !260
  %i.ij = load ptr, ptr %i.d, align 8, !tbaa !261 ; 2 uses
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = icmp ult i64 %i.im, 4
  br i1 %i.in, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.io = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.36, i64 noundef 4) #32 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit142

bb.bk:                                            ; preds = %bb.bi
  store i32 1684827971, ptr %i.ij, align 1
  %i.ip = load ptr, ptr %i.d, align 8, !tbaa !261
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  store ptr %i.iq, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit142

bb.bl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit138
  %.sroa.326.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i139, 32
  %i.ir = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %.sroa.326.0.extract.shift) #32 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit142

_ZN4llvm11raw_ostreamlsEPKc.exit142:              ; preds = %bb.bk, %bb.bj, %bb.bh, %bb.bg, %bb.bl, %bb.az
  %.9 = phi i8 [ %.8, %bb.az ], [ 1, %bb.bl ], [ 1, %bb.bh ], [ 1, %bb.bg ], [ 1, %bb.bk ], [ 1, %bb.bj ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.22.0.copyload.i = load i8, ptr %.sroa.22.0..sroa_idx.i, align 8
  %i.it = trunc nuw i8 %.sroa.22.0.copyload.i to i1
  br i1 %i.it, label %bb.bm, label %bb.bu

bb.bm:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit142
  %i.iu = trunc nuw i8 %.9 to i1                  ; 2 uses
  %i.iv = load ptr, ptr %i.b, align 8, !tbaa !260
  %i.iw = load ptr, ptr %i.d, align 8, !tbaa !261 ; 2 uses
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = icmp ult i64 %i.iz, 2
  br i1 %i.ja, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.str.15..str.268 = select i1 %i.iu, ptr @.str.15, ptr @.str.26
  %i.jb = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %.str.15..str.268, i64 noundef 2) #32 ; 0 uses
  %.pre207 = load ptr, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit149

bb.bo:                                            ; preds = %bb.bm
  %i.jc = select i1 %i.iu, i16 8236, i16 10272
  store i16 %i.jc, ptr %i.iw, align 1
  %i.jd = load ptr, ptr %i.d, align 8, !tbaa !261
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 2 ; 2 uses
  store ptr %i.je, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit149

_ZN4llvm11raw_ostreamlsEPKc.exit149:              ; preds = %bb.bn, %bb.bo
  %i.jf = phi ptr [ %.pre207, %bb.bn ], [ %i.je, %bb.bo ] ; 2 uses
  %i.jg = load ptr, ptr %i.b, align 8, !tbaa !260
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = ptrtoint ptr %i.jf to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = icmp ult i64 %i.jj, 6
  br i1 %i.jk, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit149
  %i.jl = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.37, i64 noundef 6) #32
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit152

bb.bq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit149
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.jf, ptr noundef nonnull align 1 dereferenceable(6) @.str.37, i64 6, i1 false)
  %i.jm = load ptr, ptr %i.d, align 8, !tbaa !261
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 6
  store ptr %i.jn, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit152

_ZN4llvm11raw_ostreamlsEPKc.exit152:              ; preds = %bb.bp, %bb.bq
  %.0.i.i151 = phi ptr [ %i.jl, %bb.bp ], [ %1, %bb.bq ]
  %.sroa.01.0.copyload.i153 = load i64, ptr %i.is, align 8
  %i.jo = and i64 %.sroa.01.0.copyload.i153, 4294967295
  %i.jp = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i151, i64 noundef %i.jo) #32 ; 0 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %.sroa.0180.4.extract.trunc = load i32, ptr %4, align 4
  %.not79 = icmp eq i32 %.sroa.0180.4.extract.trunc, 0
  br i1 %.not79, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit152
  %i.jq = load ptr, ptr %i.b, align 8, !tbaa !260
  %i.jr = load ptr, ptr %i.d, align 8, !tbaa !261 ; 2 uses
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.jt = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.38, i64 noundef 1) #32
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit165

bb.bt:                                            ; preds = %bb.br
  store i8 32, ptr %i.jr, align 1
  %i.ju = load ptr, ptr %i.d, align 8, !tbaa !261
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  store ptr %i.jv, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit165

_ZN4llvm11raw_ostreamlsEPKc.exit165:              ; preds = %bb.bs, %bb.bt
  %.0.i.i164 = phi ptr [ %i.jt, %bb.bs ], [ %1, %bb.bt ]
  %.sroa.0.4.extract.trunc = load i32, ptr %4, align 4
  %5 = zext i32 %.sroa.0.4.extract.trunc to i64
  %i.jw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i164, i64 noundef %5) #32 ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit152, %_ZN4llvm11raw_ostreamlsEPKc.exit165, %_ZN4llvm11raw_ostreamlsEPKc.exit142
  %.10 = phi i8 [ %.9, %_ZN4llvm11raw_ostreamlsEPKc.exit142 ], [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit165 ], [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit152 ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !104
  %.not80 = icmp eq i32 %i.jy, 0
  br i1 %.not80, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jz = trunc nuw i8 %.10 to i1                 ; 2 uses
  %i.ka = load ptr, ptr %i.b, align 8, !tbaa !260
  %i.kb = load ptr, ptr %i.d, align 8, !tbaa !261 ; 2 uses
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = sub i64 %i.kc, %i.kd
  %i.kf = icmp ult i64 %i.ke, 2
  br i1 %i.kf, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %.str.15..str.269 = select i1 %i.jz, ptr @.str.15, ptr @.str.26
  %i.kg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %.str.15..str.269, i64 noundef 2) #32 ; 0 uses
  %.pre208 = load ptr, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit173

bb.bx:                                            ; preds = %bb.bv
  %i.kh = select i1 %i.jz, i16 8236, i16 10272
  store i16 %i.kh, ptr %i.kb, align 1
  %i.ki = load ptr, ptr %i.d, align 8, !tbaa !261
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 2 ; 2 uses
  store ptr %i.kj, ptr %i.d, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit173

_ZN4llvm11raw_ostreamlsEPKc.exit173:              ; preds = %bb.bw, %bb.bx
  %i.kk = phi ptr [ %.pre208, %bb.bw ], [ %i.kj, %bb.bx ] ; 2 uses
  %i.kl = load ptr, ptr %i.b, align 8, !tbaa !260
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = ptrtoint ptr %i.kk to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = icmp ult i64 %i.ko, 16
  br i1 %i.kp, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit173
  %i.kq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.39, i64 noundef 16) #32
  br label %.thread

bb.bz:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit173
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.kk, ptr noundef nonnull align 1 dereferenceable(16) @.str.39, i64 16, i1 false)
  %i.kr = load ptr, ptr %i.d, align 8, !tbaa !261
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store ptr %i.ks, ptr %i.d, align 8, !tbaa !261
  br label %.thread

.thread:                                          ; preds = %bb.bz, %bb.by
  %.0.i.i175 = phi ptr [ %i.kq, %bb.by ], [ %1, %bb.bz ]
  %i.kt = load i32, ptr %i.jx, align 4, !tbaa !104
  %i.ku = zext i32 %i.kt to i64
  %i.kv = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i175, i64 noundef %i.ku) #32 ; 0 uses
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bu, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %.11 = phi i8 [ %.1, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit ], [ %.10, %bb.bu ]
  %i.kw = trunc nuw i8 %.11 to i1
  br i1 %i.kw, label %bb.cb, label %_ZN4llvm11raw_ostreamlsEc.exit179

bb.cb:                                            ; preds = %.thread, %bb.ca
  %i.kx = load ptr, ptr %i.d, align 8, !tbaa !261 ; 3 uses
  %i.ky = load ptr, ptr %i.b, align 8, !tbaa !260
  %.not.i177 = icmp ult ptr %i.kx, %i.ky
  br i1 %.not.i177, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kz = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 41) #32 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit179

bb.cd:                                            ; preds = %bb.cb
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 1
  store ptr %i.la, ptr %i.d, align 8, !tbaa !261
  store i8 41, ptr %i.kx, align 1, !tbaa !247
  br label %_ZN4llvm11raw_ostreamlsEc.exit179

_ZN4llvm11raw_ostreamlsEc.exit179:                ; preds = %bb.cd, %bb.cc, %bb.ca
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream6indentEj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @_ZNK4llvm17MachineBasicBlock18getSuccProbabilityEPKPS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(360) %0, ptr noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !281  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !281  ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i32, ptr %i.f, align 8, !tbaa !107  ; 3 uses
  %.not.i = icmp eq i32 %i.g, -2147483648
  br i1 %.not.i, label %_ZN4llvm17BranchProbabilityC2Ejj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i32 %i.g, 1
  %i.i = or disjoint i32 %i.h, -2147483648
  %i.j = udiv i32 %i.i, %i.g
  br label %_ZN4llvm17BranchProbabilityC2Ejj.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.m = ptrtoint ptr %1 to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 1
  %i.q = getelementptr inbounds i8, ptr %i.b, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !283  ; 2 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %.lr.ph, label %_ZN4llvm17BranchProbabilityC2Ejj.exit

._crit_edge:                                      ; preds = %bb.f
  %i.t = sub i32 -2147483648, %.sroa.013.1
  %i.u = ptrtoint ptr %i.d to i64
  %i.v = ptrtoint ptr %i.b to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 2
  %i.y = trunc i64 %i.x to i32
  %i.z = sub i32 %i.y, %.1
  %i.aa = udiv i32 %i.t, %i.z
  br label %_ZN4llvm17BranchProbabilityC2Ejj.exit

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.020 = phi i32 [ %.1, %bb.f ], [ 0, %bb.d ]    ; 2 uses
  %.sroa.010.019 = phi ptr [ %i.aj, %bb.f ], [ %i.b, %bb.d ] ; 2 uses
  %.sroa.013.018 = phi i32 [ %.sroa.013.1, %bb.f ], [ 0, %bb.d ] ; 3 uses
  %i.ab = load i32, ptr %.sroa.010.019, align 4, !tbaa !283 ; 3 uses
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ad = zext i32 %.sroa.013.018 to i64
  %i.ae = zext i32 %i.ab to i64
  %i.af = add nuw nsw i64 %i.ae, %i.ad
  %i.ag = icmp samesign ugt i64 %i.af, 2147483648
  %i.ah = add i32 %i.ab, %.sroa.013.018
  %spec.select.i = select i1 %i.ag, i32 -2147483648, i32 %i.ah
  %i.ai = add i32 %.020, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.013.1 = phi i32 [ %.sroa.013.018, %.lr.ph ], [ %spec.select.i, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %.020, %.lr.ph ], [ %i.ai, %bb.e ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.010.019, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZN4llvm17BranchProbabilityC2Ejj.exit:            ; preds = %bb.d, %bb.c, %bb.b, %._crit_edge
  %.sroa.016.0 = phi i32 [ 1, %bb.b ], [ %i.aa, %._crit_edge ], [ %i.j, %bb.c ], [ %i.r, %bb.d ]
  ret i32 %.sroa.016.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #11

declare void @_ZN4llvm8printRegENS_8RegisterEPKNS_18TargetRegisterInfoEjPKNS_19MachineRegisterInfoE(ptr dead_on_unwind writable sret(%"class.llvm::Printable") align 8, i32, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZNK4llvm12MachineInstr5printERNS_11raw_ostreamERNS_17ModuleSlotTrackerEbbbbPKNS_15TargetInstrInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(112), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZNK4llvm17MachineBasicBlock9printNameERNS_11raw_ostreamEjPNS_17ModuleSlotTrackerEENK3$_0clEPKNS_10BasicBlockE"(ptr %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noundef %0) unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.llvm::ModuleSlotTracker", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !260
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !261  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 10
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.val, ptr noundef nonnull @.str.45, i64 noundef 10) #32 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.d, ptr noundef nonnull align 1 dereferenceable(10) @.str.45, i64 10, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !261
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  store ptr %i.k, ptr %i.c, align 8, !tbaa !261
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 536870912
end_hunk_0
