inline.NumInlined: 1760
inline.NumDeleted: 533
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_116HandleOptionsBagEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE:bb.a
.critedge:                                        ; preds = %bb.b, %_ZNSt6vectorISt5tupleIJPKcmN7simdutf14base64_optionsEEESaIS5_EED2Ev.exit
  %.0 = phi i64 [ %i.aa, %_ZNSt6vectorISt5tupleIJPKcmN7simdutf14base64_optionsEEESaIS5_EED2Ev.exit ], [ 0, %bb.b ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 6552
  %i.ad = tail call ptr @_ZN2v88internal8JSObject18ReadFromOptionsBagENS0_12DirectHandleINS0_6ObjectEEENS2_INS0_6StringEEEPNS0_7IsolateE(ptr %2, ptr nonnull %i.ac, ptr noundef nonnull %1) #15 ; 5 uses
  %.not125 = icmp eq ptr %i.ad, null
  br i1 %.not125, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.e

end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_116HandleOptionsBagEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE:bb.a
  br label %bb.ai

bb.e:                                             ; preds = %.critedge
  %i.ae = load i64, ptr %i.ad, align 8            ; 4 uses
  %i.af = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 10624
  %i.ah = load ptr, ptr %i.ag, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal12_GLOBAL__N_116HandleOptionsBagEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE:bb.a

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.f
  %i.am = add nsw i64 %i.ae, -1
  %i.an = inttoptr i64 %i.am to ptr               ; 4 uses
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = add i64 %i.ao, 11
  %i.aq = inttoptr i64 %i.ap to ptr
end_hunk_2
begin_hunk_3_@_ZN2v88internal12_GLOBAL__N_116HandleOptionsBagEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE:bb.a
  br label %bb.ai

bb.g:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.aw = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #16, !noalias !137 ; 21 uses
  store i64 0, ptr %i.aw, align 8, !noalias !137
  %.sroa.4.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  store i64 5, ptr %.sroa.4.0..sroa_idx.i41, align 8, !noalias !137
  %.sroa.5.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 3 uses
  store ptr @.str.13, ptr %.sroa.5.0..sroa_idx.i42, align 8, !noalias !137
  %.sroa.6.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i43, align 8, !noalias !137
  %.sroa.7.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i64 6, ptr %.sroa.7.0..sroa_idx.i44, align 8, !noalias !137
  %.sroa.8.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr @.str.14, ptr %.sroa.8.0..sroa_idx.i45, align 8, !noalias !137
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 3 uses
  store i64 2, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !137
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  store i64 19, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !137
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store ptr @.str.15, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !137
  %i.ax = load atomic volatile i64, ptr %i.an acquire, align 8
  %i.ay = add i64 %i.ax, 11
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i16, ptr %i.az monotonic, align 2 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal12_GLOBAL__N_116HandleOptionsBagEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE:bb.a
  br i1 %i.bd, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = add i64 %i.bf, -1
  %i.bh = inttoptr i64 %i.bg to ptr
end_hunk_4
begin_hunk_5_@_ZN2v88internal12_GLOBAL__N_116HandleOptionsBagEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE:bb.a
  br i1 %i.bk, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bn = add i64 %i.bm, -1
  %i.bo = inttoptr i64 %i.bn to ptr
end_hunk_5
begin_hunk_6_@_ZN2v88internal12_GLOBAL__N_116HandleOptionsBagEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE:bb.a

bb.k:                                             ; preds = %.thread.i, %bb.h
  %.sroa.082.0.i = phi i16 [ %i.bs, %.thread.i ], [ %i.ba, %bb.h ]
  %.sroa.012.1.i.i = phi i64 [ %i.bm, %.thread.i ], [ %i.ae, %bb.h ] ; 2 uses
  %i.bu = and i16 %.sroa.082.0.i, -121
  %i.bv = icmp eq i16 %i.bu, 5
  br i1 %i.bv, label %bb.l, label %bb.m
end_hunk_6
begin_hunk_7_@_ZN2v88internal12_GLOBAL__N_116HandleOptionsBagEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE:bb.a
  %i.em = load ptr, ptr %6, align 8               ; 7 uses
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = zext i32 %i.eo to i64                   ; 10 uses
  br i1 %i.el, label %.lr.ph267.i.preheader, label %.lr.ph.preheader.i

.lr.ph267.i.preheader:                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i
end_hunk_7
begin_hunk_8_@_ZN2v88internal12_GLOBAL__N_116HandleOptionsBagEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE:bb.a
.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i
  %.idx.i.i.i = shl nuw nsw i64 %i.ep, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx.i.i.i ; 3 uses
  %i.fh = load i64, ptr %.sroa.4.0..sroa_idx.i41, align 8
  %i.fi = icmp eq i64 %i.fh, %i.ep
  br i1 %i.fi, label %.lr.ph.i.i.preheader.i, label %.loopexit.i

.lr.ph.i.i.preheader.i:                           ; preds = %.lr.ph.preheader.i
  %i.fj = load ptr, ptr %.sroa.5.0..sroa_idx.i42, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.01013.i.i.i = phi ptr [ %10, %.lr.ph.i.i.i ], [ %i.em, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.01112.i.i.i = phi ptr [ %11, %.lr.ph.i.i.i ], [ %i.fj, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.fk = load i16, ptr %.01013.i.i.i, align 2
  %i.fl = load i8, ptr %.01112.i.i.i, align 1
  %i.fm = zext i8 %i.fl to i16
  %.not.i.i.i46 = icmp eq i16 %i.fk, %i.fm        ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.01013.i.i.i, i64 2 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.01112.i.i.i, i64 1
  %.not16.i.i.i = icmp ult ptr %10, %i.fg
  %or.cond.i.i.i = select i1 %.not.i.i.i46, i1 %.not16.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %bb.af, !llvm.loop !161

bb.af:                                            ; preds = %.lr.ph.i.i.i
  br i1 %.not.i.i.i46, label %_ZNSt6vectorISt5tupleIJPKcmN7simdutf27last_chunk_handling_optionsEEESaIS5_EED2Ev.exit.thread, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.af, %.lr.ph.preheader.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = icmp eq i64 %i.fo, %i.ep
  br i1 %i.fp, label %.lr.ph.i.i.preheader.i.1, label %bb.ag

.lr.ph.i.i.preheader.i.1:                         ; preds = %.loopexit.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.fr = load ptr, ptr %i.fq, align 8
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i.1, %.lr.ph.i.i.preheader.i.1
  %.01013.i.i.i.1 = phi ptr [ %12, %.lr.ph.i.i.i.1 ], [ %i.em, %.lr.ph.i.i.preheader.i.1 ] ; 2 uses
  %.01112.i.i.i.1 = phi ptr [ %13, %.lr.ph.i.i.i.1 ], [ %i.fr, %.lr.ph.i.i.preheader.i.1 ] ; 2 uses
  %i.fs = load i16, ptr %.01013.i.i.i.1, align 2
  %i.ft = load i8, ptr %.01112.i.i.i.1, align 1
  %i.fu = zext i8 %i.ft to i16
  %.not.i.i.i46.1 = icmp eq i16 %i.fs, %i.fu      ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %.01013.i.i.i.1, i64 2 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %.01112.i.i.i.1, i64 1
  %.not16.i.i.i.1 = icmp ult ptr %12, %i.fg
  %or.cond.i.i.i.1 = select i1 %.not.i.i.i46.1, i1 %.not16.i.i.i.1, i1 false
  br i1 %or.cond.i.i.i.1, label %.lr.ph.i.i.i.1, label %.loopexit.i.1, !llvm.loop !161

.loopexit.i.1:                                    ; preds = %.lr.ph.i.i.i.1
  br i1 %.not.i.i.i46.1, label %_ZNSt6vectorISt5tupleIJPKcmN7simdutf27last_chunk_handling_optionsEEESaIS5_EED2Ev.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %.loopexit.i.1, %.loopexit.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %14 = load i64, ptr %i.fv, align 8
  %15 = icmp eq i64 %14, %i.ep
  br i1 %15, label %.lr.ph.i.i.preheader.i.2, label %.loopexit

.lr.ph.i.i.preheader.i.2:                         ; preds = %bb.ag
  %i.fw = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.fx = load ptr, ptr %i.fw, align 8
  br label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.2, %.lr.ph.i.i.preheader.i.2
  %.01013.i.i.i.2 = phi ptr [ %16, %.lr.ph.i.i.i.2 ], [ %i.em, %.lr.ph.i.i.preheader.i.2 ] ; 2 uses
  %.01112.i.i.i.2 = phi ptr [ %17, %.lr.ph.i.i.i.2 ], [ %i.fx, %.lr.ph.i.i.preheader.i.2 ] ; 2 uses
  %i.fy = load i16, ptr %.01013.i.i.i.2, align 2
  %i.fz = load i8, ptr %.01112.i.i.i.2, align 1
  %i.ga = zext i8 %i.fz to i16
  %.not.i.i.i46.2 = icmp eq i16 %i.fy, %i.ga      ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %.01013.i.i.i.2, i64 2 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %.01112.i.i.i.2, i64 1
  %.not16.i.i.i.2 = icmp ult ptr %16, %i.fg
  %or.cond.i.i.i.2 = select i1 %.not.i.i.i46.2, i1 %.not16.i.i.i.2, i1 false
  br i1 %or.cond.i.i.i.2, label %.lr.ph.i.i.i.2, label %bb.ah, !llvm.loop !161

bb.ah:                                            ; preds = %.lr.ph.i.i.i.2
  br i1 %.not.i.i.i46.2, label %_ZNSt6vectorISt5tupleIJPKcmN7simdutf27last_chunk_handling_optionsEEESaIS5_EED2Ev.exit.thread, label %.loopexit

_ZNSt6vectorISt5tupleIJPKcmN7simdutf27last_chunk_handling_optionsEEESaIS5_EED2Ev.exit.thread: ; preds = %bb.af, %.loopexit.i.1, %bb.ah, %bb.ac, %bb.ad, %bb.ae
  %.sroa.4.7.in.i = phi ptr [ %.sroa.9.0..sroa_idx.i, %bb.ae ], [ %i.aw, %bb.ac ], [ %.sroa.6.0..sroa_idx.i43, %bb.ad ], [ %i.aw, %bb.af ], [ %.sroa.6.0..sroa_idx.i43, %.loopexit.i.1 ], [ %.sroa.9.0..sroa_idx.i, %bb.ah ]
  %.sroa.4.7.i = load i64, ptr %.sroa.4.7.in.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 72) #18
  br label %.critedge37

.loopexit:                                        ; preds = %bb.ag, %bb.ah, %.lr.ph267.i.2, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
end_hunk_8
begin_hunk_9_@_ZN2v88internal12_GLOBAL__N_115MapOptionToEnumIN7simdutf14base64_optionsEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEERKSt6vectorISt5tupleIJPKcmS6_EESaISH_EE:bb.a
  %i.cr = icmp eq i32 %i.cq, 1
  %i.cs = load ptr, ptr %6, align 8               ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = zext i32 %i.cu to i64                   ; 4 uses
  %i.cw = load ptr, ptr %2, align 8               ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_9
begin_hunk_10_@_ZN2v88internal12_GLOBAL__N_115MapOptionToEnumIN7simdutf14base64_optionsEEENS_5MaybeIT_EEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEERKSt6vectorISt5tupleIJPKcmS6_EESaISH_EE:bb.a
.lr.ph.preheader:                                 ; preds = %bb.z
  %.idx.i.i = shl nuw nsw i64 %i.cv, 1
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx.i.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit.a
  %.sroa.059.0265 = phi ptr [ %i.dr, %.loopexit.a ], [ %i.cw, %.lr.ph.preheader ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.059.0265, i64 8
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = icmp eq i64 %i.dk, %i.cv
  br i1 %i.dl, label %.lr.ph.i.i.preheader, label %.loopexit.a

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.059.0265, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader
  %.01013.i.i = phi ptr [ %7, %.lr.ph.i.i ], [ %i.cs, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01112.i.i = phi ptr [ %8, %.lr.ph.i.i ], [ %i.dn, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.do = load i16, ptr %.01013.i.i, align 2
  %i.dp = load i8, ptr %.01112.i.i, align 1
  %i.dq = zext i8 %i.dp to i16
  %.not.i.i = icmp eq i16 %i.do, %i.dq            ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 2 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 1
  %.not16.i.i = icmp ult ptr %7, %i.di
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not16.i.i, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %bb.aa, !llvm.loop !161

bb.aa:                                            ; preds = %.lr.ph.i.i
  br i1 %.not.i.i, label %.thread252, label %.loopexit.a

.loopexit.a:                                      ; preds = %bb.aa, %.lr.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.059.0265, i64 24 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.cy
  br i1 %i.ds, label %.thread236, label %.lr.ph

.thread252:                                       ; preds = %bb.aa, %bb.x
  %.sroa.4.7.in = phi ptr [ %.sroa.065.0266, %bb.x ], [ %.sroa.059.0265, %bb.aa ]
  %.sroa.4.7 = load i64, ptr %.sroa.4.7.in, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
end_hunk_10
