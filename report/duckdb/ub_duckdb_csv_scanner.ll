Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_csv_scanner?download=true
inline.NumInlined: 6115
inline.NumDeleted: 2467
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN6duckdb18StringValueScanner22ProcessOverBufferValueEv:bb.a
.thread300:                                       ; preds = %bb.bf, %bb.bg
  %i.gp = load i8, ptr %i.aa, align 1, !tbaa !215, !range !171, !noundef !172
  %i.gq = trunc nuw i8 %i.gp to i1
  %i.gr = icmp eq i8 %i.gi, 14
  %or.cond = or i1 %i.gr, %i.gq
  br i1 %or.cond, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %.thread300
  %i.gs = load i8, ptr %i.ga, align 1, !tbaa !144
  %i.gt = load i64, ptr %i.q, align 8, !tbaa !159 ; 4 uses
  %i.gu = add i64 %i.gt, 1                        ; 3 uses
  %i.gv = load ptr, ptr %1, align 8, !tbaa !157   ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.p
  br i1 %i.gw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i147: ; preds = %bb.bh
  %i.gx = icmp ult i64 %i.gt, 16
  call void @llvm.assume(i1 %i.gx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144: ; preds = %bb.bh
  %i.gy = load i64, ptr %i.p, align 8, !tbaa !144
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i145: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i147
  %i.gz = phi i64 [ %i.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i147 ]
  %i.ha = icmp ugt i64 %i.gu, %i.gz
  br i1 %i.ha, label %bb.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit149

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i145
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.gt, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc148 unwind label %.loopexit

.noexc148:                                        ; preds = %bb.bi
  %.pre.i.i146 = load ptr, ptr %1, align 8, !tbaa !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit149: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i145, %.noexc148
  %i.hb = phi ptr [ %.pre.i.i146, %.noexc148 ], [ %i.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i145 ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gt
  store i8 %i.gs, ptr %i.hc, align 1, !tbaa !144
  store i64 %i.gu, ptr %i.q, align 8, !tbaa !159
  %i.hd = load ptr, ptr %1, align 8, !tbaa !157
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gu
  store i8 0, ptr %i.he, align 1, !tbaa !144
  %.pre351 = load i8, ptr %i.y, align 8, !tbaa !214
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit149, %.thread300
  %i.hf = phi i8 [ %.pre351, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit149 ], [ %i.gc, %.thread300 ] ; 3 uses
  %i.hg = icmp eq i8 %i.hf, 7
  br i1 %i.hg, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.hh = load i8, ptr %i.g, align 8, !tbaa !270, !range !171, !noundef !172
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %_ZN6duckdb13ScannerResult9SetQuotedERS0_m.exit150, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store i64 %.257, ptr %i.ae, align 8, !tbaa !271
  br label %_ZN6duckdb13ScannerResult9SetQuotedERS0_m.exit150

_ZN6duckdb13ScannerResult9SetQuotedERS0_m.exit150: ; preds = %bb.bk, %bb.bl
  store i8 1, ptr %i.g, align 8, !tbaa !270
  store i8 1, ptr %i.af, align 1, !tbaa !272
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN6duckdb13ScannerResult9SetQuotedERS0_m.exit150, %bb.bj
  %i.hj = load i8, ptr %i.z, align 1, !tbaa !214  ; 2 uses
  switch i8 %i.hj, label %.critedge14.thread [
    i8 14, label %bb.bn
    i8 9, label %_ZNK6duckdb9CSVStates9IsEscapedEv.exit154.thread
    i8 16, label %_ZNK6duckdb9CSVStates9IsEscapedEv.exit154.thread
    i8 17, label %_ZNK6duckdb9CSVStates9IsEscapedEv.exit154.thread
    i8 7, label %.split304
    i8 8, label %_ZNK6duckdb9CSVStates9IsEscapedEv.exit154
    i8 10, label %bb.bq
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.hk = load i8, ptr %i.aa, align 1, !tbaa !215, !range !171, !noundef !172
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %.critedge14.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i64 %.257, ptr %i.ag, align 8, !tbaa !750
  store i8 1, ptr %i.aa, align 1, !tbaa !215
  br label %.critedge14.thread

.split304:                                        ; preds = %bb.bm
  switch i8 %i.hf, label %.critedge14.thread [
    i8 18, label %_ZNK6duckdb9CSVStates9IsEscapedEv.exit154.thread
    i8 8, label %_ZNK6duckdb9CSVStates9IsEscapedEv.exit154.thread
  ]

_ZNK6duckdb9CSVStates9IsEscapedEv.exit154:        ; preds = %bb.bm
  %i.hm = icmp eq i8 %i.hf, 18
  br i1 %i.hm, label %_ZNK6duckdb9CSVStates9IsEscapedEv.exit154.thread, label %.critedge14.thread

_ZNK6duckdb9CSVStates9IsEscapedEv.exit154.thread: ; preds = %bb.bm, %bb.bm, %bb.bm, %.split304, %.split304, %_ZNK6duckdb9CSVStates9IsEscapedEv.exit154
  %i.hn = load ptr, ptr %i.ac, align 8, !tbaa !219, !nonnull !172, !align !220
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 115
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !257
  %.not317 = icmp eq i8 %i.hp, 0
  br i1 %.not317, label %.critedge14, label %bb.bp

bb.bp:                                            ; preds = %_ZNK6duckdb9CSVStates9IsEscapedEv.exit154.thread
  store i8 1, ptr %i.ad, align 2, !tbaa !267
  br label %.critedge14

.critedge14:                                      ; preds = %bb.bp, %_ZNK6duckdb9CSVStates9IsEscapedEv.exit154.thread
  %i.hq = icmp eq i8 %i.hj, 10
  br i1 %i.hq, label %bb.bq, label %.critedge14.thread

bb.bq:                                            ; preds = %bb.bm, %.critedge14
  invoke void @_ZN6duckdb17StringValueResult12InvalidStateERS0_(ptr noundef nonnull align 8 dereferenceable(930) %i.g)
          to label %.critedge14.thread unwind label %.loopexit

.critedge14.thread:                               ; preds = %bb.bm, %.split304, %bb.bo, %bb.bn, %_ZNK6duckdb9CSVStates9IsEscapedEv.exit154, %bb.bq, %.critedge14
  %i.hr = add i64 %.257, 1
  br label %bb.br

bb.br:                                            ; preds = %bb.be, %.critedge14.thread
  %.3 = phi i64 [ %.257, %bb.be ], [ %i.hr, %.critedge14.thread ]
  %i.hs = load i64, ptr %i.fp, align 8, !tbaa !162
  %i.ht = add i64 %i.hs, 1                        ; 2 uses
  store i64 %i.ht, ptr %i.fp, align 8, !tbaa !162
  br label %bb.az, !llvm.loop !1147

bb.bs:                                            ; preds = %bb.bf, %bb.bg, %bb.be, %bb.ba
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.hw = load i8, ptr %i.hv, align 8, !tbaa !1153, !range !171, !noundef !172
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %bb.bt, label %.critedge129

bb.bt:                                            ; preds = %bb.bs
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !754 ; 3 uses
  %i.ib = load ptr, ptr %i.hy, align 8, !tbaa !485
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ia
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !138, !range !171, !noundef !172
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %.critedge129, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !755
  %i.ih = zext i32 %i.ig to i64
  %.not91 = icmp eq i64 %i.ia, %i.ih
  br i1 %.not91, label %.critedge129, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ii = add i64 %i.ia, 1
  store i64 %i.ii, ptr %i.hz, align 8, !tbaa !754
  %i.ij = load i8, ptr %i.z, align 1, !tbaa !214
  %.off.i155 = add i8 %i.ij, -5
  %switch.i156 = icmp ult i8 %.off.i155, 2
  br i1 %switch.i156, label %_ZNK6duckdb9CSVStates9EmptyLineEv.exit158, label %_ZNK6duckdb9CSVStates9EmptyLineEv.exit158.thread

_ZNK6duckdb9CSVStates9EmptyLineEv.exit158:        ; preds = %bb.bv
  %i.ik = load i8, ptr %i.y, align 8, !tbaa !214
  switch i8 %i.ik, label %_ZNK6duckdb9CSVStates9EmptyLineEv.exit158.thread [
    i8 11, label %bb.gu
    i8 5, label %bb.gu
  ]

bb.bw:                                            ; preds = %.critedge.sink.split.i, %bb.hl, %bb.hh, %bb.hf, %bb.hd, %bb.gw, %bb.gu
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.critedge129:                                     ; preds = %bb.bs, %bb.bu, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.im = load i8, ptr %i.g, align 8, !tbaa !270, !range !171, !noundef !172
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.bx, label %bb.dv

bb.bx:                                            ; preds = %.critedge129
  %i.io = load i8, ptr %i.aa, align 1, !tbaa !215, !range !171, !noundef !172
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %bb.dv, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iq = load i64, ptr %i.q, align 8, !tbaa !159 ; 3 uses
  %i.ir = load i64, ptr %i.ae, align 8, !tbaa !271 ; 3 uses
  %i.is = xor i64 %i.ir, -1
  %i.it = add i64 %i.iq, %i.is                    ; 3 uses
  %.not92341 = icmp eq i64 %i.it, 0
  %.pre352 = load ptr, ptr %1, align 8            ; 3 uses
  br i1 %.not92341, label %.thread305, label %.lr.ph

.lr.ph:                                           ; preds = %bb.by
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1161
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !1154, !range !171, !noundef !172
  %i.iw = trunc nuw i8 %i.iv to i1
  %i.ix = getelementptr i8, ptr %.pre352, i64 %i.ir ; 4 uses
  br i1 %i.iw, label %.lr.ph.split.us, label %.critedge16

.thread305:                                       ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5290)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5290, i8 0, i64 12, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.bz
  %.050342.us = phi i64 [ %i.jb, %bb.bz ], [ %i.it, %.lr.ph ] ; 3 uses
  %i.iy = getelementptr i8, ptr %i.ix, i64 %.050342.us
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !144
  %i.ja = icmp eq i8 %i.iz, 32
  br i1 %i.ja, label %bb.bz, label %.critedge16

bb.bz:                                            ; preds = %.lr.ph.split.us
  %i.jb = add i64 %.050342.us, -1                 ; 2 uses
  %.not92.us = icmp eq i64 %i.jb, 0
  br i1 %.not92.us, label %.thread305, label %.lr.ph.split.us, !llvm.loop !1148

.critedge16:                                      ; preds = %.lr.ph.split.us, %.lr.ph
  %.us-phi = phi i64 [ %i.it, %.lr.ph ], [ %.050342.us, %.lr.ph.split.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5290)
  %i.jc = trunc i64 %.us-phi to i32               ; 4 uses
  %i.jd = icmp ult i32 %i.jc, 13
  br i1 %i.jd, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %.critedge16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5290, i8 0, i64 12, i1 false)
  %i.je = icmp eq i32 %i.jc, 0
  br i1 %i.je, label %_ZN6duckdb8string_tC2EPKcj.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jf = and i64 %.us-phi, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.5290, ptr align 1 %i.ix, i64 %i.jf, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.cc:                                            ; preds = %.critedge16
  %i.jg = load i32, ptr %i.ix, align 1
  store i32 %i.jg, ptr %.sroa.5290, align 4
  %.sroa.5290.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5290, i64 4
  store ptr %i.ix, ptr %.sroa.5290.4..sroa_idx, align 4, !tbaa !144
  br label %_ZN6duckdb8string_tC2EPKcj.exit

_ZN6duckdb8string_tC2EPKcj.exit:                  ; preds = %bb.cc, %bb.cb, %bb.ca, %.thread305
  %i.jh = phi i32 [ 0, %bb.ca ], [ %i.jc, %bb.cb ], [ %i.jc, %bb.cc ], [ 0, %.thread305 ]
  store i32 %i.jh, ptr %2, align 8
  %.sroa.5290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5290.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5290, i64 12, i1 false), !tbaa.struct !756
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5290)
  %i.ji = load i8, ptr %i.ad, align 2, !tbaa !267, !range !171, !noundef !172
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %bb.cd, label %.critedge131

bb.cd:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 5 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !576 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !452
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %.not.i159 = icmp ult i64 %i.jl, %i.jo
  br i1 %.not.i159, label %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jp = load ptr, ptr %i.ac, align 8, !tbaa !219, !nonnull !172, !align !220 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 57
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !138, !range !171, !noundef !172
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.jt = icmp eq i64 %i.jl, %i.jo
  br i1 %i.jt, label %bb.cg, label %.critedge.i

bb.cg:                                            ; preds = %bb.cf
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 64
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !237, !nonnull !172, !align !220
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 273
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !577, !range !171, !noundef !172
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.ch, label %.critedge.i

bb.ch:                                            ; preds = %bb.cg
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !544 ; 3 uses
  %.not15.i = icmp eq i64 %i.ka, 0
  br i1 %.not15.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ch
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.kc = icmp eq i64 %i.iq, 0
  br i1 %i.kc, label %.critedge131, label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i
  br i1 %.not.i.i, label %.critedge131, label %.critedge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i.backedge
  %.013.i = phi i64 [ %.013.i.be, %.lr.ph.split.i.backedge ], [ 0, %.lr.ph.i ] ; 3 uses
  %.0912.i = phi i1 [ %.0912.i.be, %.lr.ph.split.i.backedge ], [ false, %.lr.ph.i ]
  br i1 %.0912.i, label %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.split.i
  %i.kd = load ptr, ptr %i.kb, align 8, !tbaa !561
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.013.i
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !562
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.0810.i.i = phi i64 [ %i.kk, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %.0810.i.i
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !144
  %i.ki = getelementptr inbounds nuw i8, ptr %.pre352, i64 %.0810.i.i
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !144
  %.not.i.i = icmp eq i8 %i.kh, %i.kj             ; 3 uses
  %i.kk = add nuw i64 %.0810.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp ne i64 %i.kk, %i.iq
  %or.cond.not.i = select i1 %.not.i.i, i1 %exitcond.not.i.i, i1 false
  br i1 %or.cond.not.i, label %.lr.ph.i.i, label %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i, !llvm.loop !19

_ZN6duckdb11IsValueNullEPKcS1_m.exit.i:           ; preds = %.lr.ph.i.i
  %i.kl = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.kl, %i.ka
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i.backedge

_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i:    ; preds = %.lr.ph.split.i
  %i.km = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not21.i = icmp eq i64 %i.km, %i.ka
  br i1 %exitcond.not21.i, label %.critedge131, label %.lr.ph.split.i.backedge

.lr.ph.split.i.backedge:                          ; preds = %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i
  %.013.i.be = phi i64 [ %i.km, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i ], [ %i.kl, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i ]
  %.0912.i.be = phi i1 [ true, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread.i ], [ %.not.i.i, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.i ]
  br label %.lr.ph.split.i, !llvm.loop !20

.critedge.i:                                      ; preds = %._crit_edge.i, %bb.ch, %bb.cg, %bb.cf
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i8 3, ptr %i.d, align 1, !tbaa !579
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 720
  invoke void @_ZN6duckdb9LineError6InsertERKNS_12CSVErrorTypeERKmS5_RKNS_12LinePositionEm(ptr noundef nonnull align 8 dereferenceable(40) %i.kn, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.jk, ptr noundef nonnull align 8 dereferenceable(8) %i.ko, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 0)
          to label %.noexc160 unwind label %bb.cx

.noexc160:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.kp = load i64, ptr %i.jk, align 8, !tbaa !576
  %i.kq = add i64 %i.kp, 1
  store i64 %i.kq, ptr %i.jk, align 8, !tbaa !576
  br label %.critedge131

bb.ci:                                            ; preds = %bb.ce
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !580, !nonnull !172
  store i8 1, ptr %i.ks, align 1, !tbaa !138
  br label %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit

_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit: ; preds = %bb.cd, %bb.ci
  %i.kt = getelementptr inbounds nuw i8, ptr %.pre352, i64 %i.ir
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 4 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !757
  %i.kx = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ku, i64 noundef %i.kw)
          to label %bb.cj unwind label %bb.cy

bb.cj:                                            ; preds = %_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext 25)
          to label %bb.ck unwind label %bb.cz

bb.ck:                                            ; preds = %bb.cj
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ky, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.cl unwind label %bb.da

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %i.kz, label %bb.dp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store i8 0, ptr %i.e, align 1, !tbaa !579
  invoke void @_ZN6duckdb9LineError6InsertERKNS_12CSVErrorTypeERKmS5_RKNS_12LinePositionEm(ptr noundef nonnull align 8 dereferenceable(40) %i.la, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.jk, ptr noundef nonnull align 8 dereferenceable(8) %i.kv, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 0)
          to label %bb.cn unwind label %bb.dc

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  %i.lb = load ptr, ptr %i.ac, align 8, !tbaa !219, !nonnull !172, !align !220
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 64
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !237, !nonnull !172, !align !220
  %i.le = invoke noundef zeroext i1 @_ZNK6duckdb16CSVReaderOptions12IgnoreErrorsEv(ptr noundef nonnull align 8 dereferenceable(1033) %i.ld)
          to label %bb.co unwind label %bb.cy

bb.co:                                            ; preds = %bb.cn
  br i1 %i.le, label %.critedge133, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.cq unwind label %bb.dd

bb.cq:                                            ; preds = %bb.cp
  %i.lf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.29, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.de ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.lg = load ptr, ptr %1, align 8, !tbaa !157
  %i.lh = load i64, ptr %i.q, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.lg, i64 noundef %i.lh, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.cr unwind label %bb.df

bb.cr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.li = load ptr, ptr %5, align 8, !tbaa !157
  %i.lj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !159
  %i.ll = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.li, i64 noundef %i.lk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.dg ; 2 uses

end_hunk_0
