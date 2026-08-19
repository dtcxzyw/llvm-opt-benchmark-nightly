inline.NumInlined: 3033
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 64
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 78
begin_hunk_0_@"_ZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEv":bb.a
  %i.ap = zext i16 %i.ao to i64
  %i.aq = add nuw nsw i64 %i.j, %i.ap
  %.lhs.trunc.i = trunc nuw nsw i64 %i.aq to i32
  %.rhs.trunc.i = zext i16 %i.aj to i32
  %i.ar = urem i32 %.lhs.trunc.i, %.rhs.trunc.i
  %i.as = trunc nuw i32 %i.ar to i16
  store i16 %i.as, ptr %i.y, align 8, !tbaa !1104
  br label %_ZN5boost5beast4zlib6detail6window5writeEPKhm.exit

bb.i:                                             ; preds = %bb.g
  %i.at = sub nsw i64 %i.v, %i.ad                 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr align 1 %i.g, i64 %i.at, i1 false)
  %i.av = getelementptr inbounds i8, ptr %i.g, i64 %i.at
  %i.aw = sub nsw i64 %i.j, %i.at                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i16
  store i16 %i.ax, ptr %i.y, align 8, !tbaa !1104
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !187
  %i.az = and i64 %i.aw, 65535
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %i.av, i64 %i.az, i1 false)
  %i.ba = load i16, ptr %i.t, align 4, !tbaa !1103
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !1105
  br label %_ZN5boost5beast4zlib6detail6window5writeEPKhm.exit

_ZN5boost5beast4zlib6detail6window5writeEPKhm.exit: ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b, %bb.a
  %i.bc = load ptr, ptr %0, align 8, !tbaa !1198, !nonnull !137, !align !138 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1120 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1204, !nonnull !137, !align !138 ; 7 uses
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !983
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1147
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !984
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1123 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !985
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1149
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !991
  %i.bx = load ptr, ptr %i.bc, align 8, !tbaa !1205 ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.bk, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !976
  %i.cc = add i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !976
  %i.cd = load ptr, ptr %i.bq, align 8, !tbaa !1188 ; 2 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.bu, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 40 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !1001
  %i.ci = add i64 %i.cf, %i.ch
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !1001
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !1135
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !1134
  %.not3 = icmp eq i32 %i.cm, 0
  %i.cn = select i1 %.not3, i32 0, i32 64
  %i.co = add i32 %i.cn, %i.ck
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !1131 ; 3 uses
  %i.cr = icmp eq i32 %i.cq, 9
  %i.cs = select i1 %i.cr, i32 128, i32 0
  %i.ct = add i32 %i.co, %i.cs
  %i.cu = icmp eq i32 %i.cq, 17
  %i.cv = icmp eq i32 %i.cq, 12
  %i.cw = or i1 %i.cu, %i.cv
  %i.cx = select i1 %i.cw, i32 256, i32 0
  %i.cy = add i32 %i.ct, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store i32 %i.cy, ptr %i.cz, align 8, !tbaa !1022
  %.not4 = icmp eq ptr %i.be, %i.bx
  %.not5 = icmp eq ptr %i.bo, %i.cd
  %or.cond = select i1 %.not4, i1 %.not5, i1 false
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5boost5beast4zlib6detail6window5writeEPKhm.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1199, !nonnull !137, !align !1200
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !995
  %i.dd = icmp eq i32 %i.dc, 5
  br i1 %i.dd, label %bb.k, label %_ZNK5boost6system10error_codecvbEv.exit.thread

bb.k:                                             ; preds = %_ZN5boost5beast4zlib6detail6window5writeEPKhm.exit, %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1206, !nonnull !137, !align !138 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !30 ; 2 uses
  %i.di = and i64 %i.dh, 1
  %.not.i.i = icmp eq i64 %i.di, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread8, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dj = icmp eq i64 %i.dh, 1
  br i1 %i.dj, label %_ZNK5boost6system10error_codecvbEv.exit, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.l
  %i.dk = load i32, ptr %i.df, align 8, !tbaa !332
  %.not11 = icmp eq i32 %i.dk, 0
  br i1 %.not11, label %_ZNK5boost6system10error_codecvbEv.exit.thread8, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit.thread8:  ; preds = %bb.k, %_ZNK5boost6system10error_codecvbEv.exit
  %i.dl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !24, !noalias !1207
  %i.dm = and i64 %i.dl, -2
  %switch.i.i.i.i = icmp eq i64 %i.dm, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread8
  %i.dn = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !22, !noalias !1207
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !1207
  %i.dq = tail call noundef zeroext i1 %i.dp(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 1) #48, !noalias !1207, !inline_history !975
  br i1 %i.dq, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.m

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread8, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.dr = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.ds = or disjoint i64 %i.dr, ptrtoint (ptr @"_ZZZN5boost5beast4zlib6detail14inflate_stream7doWriteERNS1_8z_paramsENS1_5FlushERNS_6system10error_codeEENK3$_0clEvE7loc_bb_" to i64)
  store i64 1, ptr %i.df, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %i.ds, ptr %i.dg, align 8, !tbaa !16
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.l, %bb.m, %_ZNK5boost6system10error_codecvbEv.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost5beast4zlib6detail14inflate_stream11fixedTablesEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(7104) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEvE2fc acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEv.exit, !prof !188

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEvE2fc) #48
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_ZZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEvEN11fixed_codesC2Ev()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 2200, ptr nonnull @_ZZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEvE2fc) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEvE2fc) #48
  br label %_ZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEvE2fc) #48
  resume { ptr, i32 } %i.e

_ZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7080
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7096
  %i.h = load <2 x ptr>, ptr @_ZZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEvE2fc, align 16, !tbaa !1138
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !1138
  %i.i = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib6detail14inflate_stream16get_fixed_tablesEvE2fc, i64 16), align 16, !tbaa !178
  store <2 x i32> %i.i, ptr %i.g, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %6) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
.preheader255:
  %7 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %8 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %9 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %10 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = alloca [16 x i16], align 16              ; 36 uses
  %i.b = alloca [16 x i16], align 16              ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !tbaa !321
  %.not285 = icmp eq i64 %2, 0                    ; 2 uses
  br i1 %.not285, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader255
  %i.c = load i32, ptr %4, align 4, !tbaa !178
  br label %bb.a

.lr.ph:                                           ; preds = %.preheader255, %.lr.ph
  %indvars.iv.a = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader255 ] ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.a
  %i.e = load i16, ptr %i.d, align 2, !tbaa !321
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.f ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !321
  %i.i = add i16 %i.h, 1
  store i16 %i.i, ptr %i.g, align 2, !tbaa !321
  %indvars.iv.next = add i64 %indvars.iv.a, 1     ; 2 uses
  %11 = and i64 %indvars.iv.next, 4294967295
  %i.j = icmp ugt i64 %2, %11
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1210

._crit_edge:                                      ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !321 ; 2 uses
  %i.k = load i32, ptr %4, align 4, !tbaa !178    ; 2 uses
  %.not215 = icmp eq i16 %.pre, 0
  br i1 %.not215, label %bb.a, label %.lr.ph267.preheader

bb.a:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.l = phi i32 [ %i.c, %._crit_edge.thread ], [ %i.k, %._crit_edge ] ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.n = load i16, ptr %i.m, align 4, !tbaa !321
  %.not215.1 = icmp eq i16 %i.n, 0
  br i1 %.not215.1, label %bb.b, label %.lr.ph267.preheader

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.p = load i16, ptr %i.o, align 2, !tbaa !321
  %.not215.2 = icmp eq i16 %i.p, 0
  br i1 %.not215.2, label %bb.c, label %.lr.ph267.preheader

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.r = load i16, ptr %i.q, align 8, !tbaa !321
  %.not215.3 = icmp eq i16 %i.r, 0
  br i1 %.not215.3, label %bb.d, label %.lr.ph267.preheader

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.t = load i16, ptr %i.s, align 2, !tbaa !321
  %.not215.4 = icmp eq i16 %i.t, 0
  br i1 %.not215.4, label %bb.e, label %.lr.ph267.preheader

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.v = load i16, ptr %i.u, align 4, !tbaa !321
  %.not215.5 = icmp eq i16 %i.v, 0
  br i1 %.not215.5, label %bb.f, label %.lr.ph267.preheader

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.x = load i16, ptr %i.w, align 2, !tbaa !321
  %.not215.6 = icmp eq i16 %i.x, 0
  br i1 %.not215.6, label %bb.g, label %.lr.ph267.preheader

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.z = load i16, ptr %i.y, align 16, !tbaa !321
  %.not215.7 = icmp eq i16 %i.z, 0
  br i1 %.not215.7, label %bb.h, label %.lr.ph267.preheader

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !321
  %.not215.8 = icmp eq i16 %i.ab, 0
  br i1 %.not215.8, label %bb.i, label %.lr.ph267.preheader

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !321
  %.not215.9 = icmp eq i16 %i.ad, 0
  br i1 %.not215.9, label %bb.j, label %.lr.ph267.preheader

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !321
  %.not215.10 = icmp eq i16 %i.af, 0
  br i1 %.not215.10, label %bb.k, label %.lr.ph267.preheader

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !321
  %.not215.11 = icmp eq i16 %i.ah, 0
  br i1 %.not215.11, label %bb.l, label %.lr.ph267.preheader

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !321
  %.not215.12 = icmp eq i16 %i.aj, 0
  br i1 %.not215.12, label %bb.m, label %.lr.ph267.preheader

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !321
  %.not215.13 = icmp eq i16 %i.al, 0
  br i1 %.not215.13, label %bb.n, label %.lr.ph267.preheader

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !321
  %.not215.14 = icmp eq i16 %i.an, 0
  br i1 %.not215.14, label %bb.o, label %._crit_edge268

bb.o:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr %3, align 8, !tbaa !1138  ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store ptr %i.ap, ptr %3, align 8, !tbaa !1138
  store i8 64, ptr %i.ao, align 2, !tbaa !20
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 1, ptr %.sroa.11.0..sroa_idx, align 1, !tbaa !20
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i16 0, ptr %.sroa.14.0..sroa_idx, align 2, !tbaa !321
  %i.aq = load ptr, ptr %3, align 8, !tbaa !1138  ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store ptr %i.ar, ptr %3, align 8, !tbaa !1138
  store i8 64, ptr %i.aq, align 2, !tbaa !20
  %.sroa.11.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store i8 1, ptr %.sroa.11.0..sroa_idx21, align 1, !tbaa !20
  %.sroa.14.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  store i16 0, ptr %.sroa.14.0..sroa_idx27, align 2, !tbaa !321
  store i32 1, ptr %4, align 4, !tbaa !178
  br label %bb.bl

.lr.ph267.preheader:                              ; preds = %._crit_edge, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.ph = phi i32 [ %i.l, %bb.m ], [ %i.l, %bb.l ], [ %i.l, %bb.k ], [ %i.l, %bb.j ], [ %i.l, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ], [ %i.l, %bb.d ], [ %i.l, %bb.c ], [ %i.l, %bb.b ], [ %i.l, %bb.a ], [ %i.k, %._crit_edge ]
  %.ph338 = phi i16 [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %.pre, %._crit_edge ] ; 2 uses
  %.0198264.lcssa.ph = phi i32 [ 2, %bb.m ], [ 3, %bb.l ], [ 4, %bb.k ], [ 5, %bb.j ], [ 6, %bb.i ], [ 7, %bb.h ], [ 8, %bb.g ], [ 9, %bb.f ], [ 10, %bb.e ], [ 11, %bb.d ], [ 12, %bb.c ], [ 13, %bb.b ], [ 14, %bb.a ], [ 15, %._crit_edge ] ; 6 uses
  %spec.select340 = tail call i32 @llvm.umin.i32(i32 %.ph, i32 %.0198264.lcssa.ph)
  %wide.trip.count = zext nneg i32 %.0198264.lcssa.ph to i64
  br label %.lr.ph267

.lr.ph267:                                        ; preds = %.lr.ph267.preheader, %bb.p
  %indvars.iv297 = phi i64 [ 1, %.lr.ph267.preheader ], [ %indvars.iv.next298, %bb.p ] ; 3 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv297
  %i.at = load i16, ptr %i.as, align 2, !tbaa !321
  %.not216 = icmp eq i16 %i.at, 0
  br i1 %.not216, label %bb.p, label %._crit_edge268.loopexit.split.loop.exit

bb.p:                                             ; preds = %.lr.ph267
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next298, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge268, label %.lr.ph267, !llvm.loop !1211

._crit_edge268.loopexit.split.loop.exit:          ; preds = %.lr.ph267
  %i.au = trunc nuw nsw i64 %indvars.iv297 to i32 ; 2 uses
  %i.av = tail call i32 @llvm.umax.i32(i32 %spec.select340, i32 %i.au)
  br label %._crit_edge268

._crit_edge268:                                   ; preds = %bb.p, %bb.n, %._crit_edge268.loopexit.split.loop.exit
  %spec.select343 = phi i32 [ 1, %bb.n ], [ %i.av, %._crit_edge268.loopexit.split.loop.exit ], [ %.0198264.lcssa.ph, %bb.p ] ; 8 uses
  %.0198264.lcssa341 = phi i32 [ 1, %bb.n ], [ %.0198264.lcssa.ph, %._crit_edge268.loopexit.split.loop.exit ], [ %.0198264.lcssa.ph, %bb.p ] ; 4 uses
  %i.aw = phi i1 [ false, %bb.n ], [ true, %._crit_edge268.loopexit.split.loop.exit ], [ true, %bb.p ]
  %i.ax = phi i16 [ 0, %bb.n ], [ %.ph338, %._crit_edge268.loopexit.split.loop.exit ], [ %.ph338, %bb.p ]
  %.0199.lcssa = phi i32 [ 1, %bb.n ], [ %i.au, %._crit_edge268.loopexit.split.loop.exit ], [ %.0198264.lcssa.ph, %bb.p ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !321 ; 4 uses
  %i.ba = icmp ugt i16 %i.az, 2
  br i1 %i.ba, label %bb.af, label %bb.q

bb.q:                                             ; preds = %._crit_edge268
  %i.bb = shl nuw nsw i16 %i.az, 1
  %i.bc = sub nuw nsw i16 4, %i.bb
  %i.bd = zext nneg i16 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bf = load i16, ptr %i.be, align 4, !tbaa !321 ; 2 uses
  %i.bg = zext i16 %i.bf to i32
  %i.bh = sub nsw i32 %i.bd, %i.bg                ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.af, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = shl nuw nsw i32 %i.bh, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !321 ; 2 uses
  %i.bm = zext i16 %i.bl to i32
  %i.bn = sub nsw i32 %i.bj, %i.bm                ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %bb.af, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = shl nuw nsw i32 %i.bn, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !321 ; 2 uses
  %i.bs = zext i16 %i.br to i32
  %i.bt = sub nsw i32 %i.bp, %i.bs                ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.af, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = shl nuw nsw i32 %i.bt, 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !321 ; 2 uses
  %i.by = zext i16 %i.bx to i32
  %i.bz = sub nsw i32 %i.bv, %i.by                ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %bb.af, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = shl nuw nsw i32 %i.bz, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !321 ; 2 uses
  %i.ce = zext i16 %i.cd to i32
  %i.cf = sub nsw i32 %i.cb, %i.ce                ; 2 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.af, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = shl nuw nsw i32 %i.cf, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !321 ; 2 uses
  %i.ck = zext i16 %i.cj to i32
  %i.cl = sub nsw i32 %i.ch, %i.ck                ; 2 uses
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = shl nuw nsw i32 %i.cl, 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cp = load i16, ptr %i.co, align 16, !tbaa !321 ; 2 uses
  %i.cq = zext i16 %i.cp to i32
  %i.cr = sub nsw i32 %i.cn, %i.cq                ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %bb.af, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ct = shl nuw nsw i32 %i.cr, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !321 ; 2 uses
  %i.cw = zext i16 %i.cv to i32
  %i.cx = sub nsw i32 %i.ct, %i.cw                ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = shl nuw nsw i32 %i.cx, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.db = load i16, ptr %i.da, align 4, !tbaa !321 ; 2 uses
  %i.dc = zext i16 %i.db to i32
  %i.dd = sub nsw i32 %i.cz, %i.dc                ; 2 uses
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = shl nuw nsw i32 %i.dd, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !321 ; 2 uses
  %i.di = zext i16 %i.dh to i32
  %i.dj = sub nsw i32 %i.df, %i.di                ; 2 uses
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = shl nuw nsw i32 %i.dj, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dn = load i16, ptr %i.dm, align 8, !tbaa !321 ; 2 uses
  %i.do = zext i16 %i.dn to i32
  %i.dp = sub nsw i32 %i.dl, %i.do                ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = shl nuw nsw i32 %i.dp, 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !321 ; 2 uses
  %i.du = zext i16 %i.dt to i32
  %i.dv = sub nsw i32 %i.dr, %i.du                ; 2 uses
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = shl nuw nsw i32 %i.dv, 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.dz = load i16, ptr %i.dy, align 4, !tbaa !321 ; 2 uses
  %i.ea = zext i16 %i.dz to i32
  %i.eb = sub nsw i32 %i.dx, %i.ea                ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ed = shl nuw nsw i32 %i.eb, 1                ; 2 uses
  %i.ee = zext i16 %i.ax to i32                   ; 2 uses
  %i.ef = icmp samesign ult i32 %i.ed, %i.ee
  br i1 %i.ef, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not253 = icmp ne i32 %i.ed, %i.ee
  %i.eg = icmp eq i32 %0, 0
  %or.cond = or i1 %i.eg, %i.aw
  %or.cond364 = and i1 %.not253, %or.cond
  br i1 %or.cond364, label %bb.ah, label %.preheader254

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %._crit_edge268
  %i.eh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !24, !noalias !1212
  %i.ei = and i64 %i.eh, -2
  %switch.i.i.i.i = icmp eq i64 %i.ei, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %bb.af
  %i.ej = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !22, !noalias !1212
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !1212
  %i.em = tail call noundef zeroext i1 %i.el(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 14) #48, !noalias !1212, !inline_history !975
  br i1 %i.em, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %bb.ag

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %bb.af, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.en = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ]
  %i.eo = or disjoint i64 %i.en, ptrtoint (ptr @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE7loc_bb_ to i64)
  store i64 14, ptr %6, align 8
  %.sroa.5240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5240.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.eo, ptr %.sroa.5.0..sroa_idx.i227, align 8, !tbaa !16
  br label %bb.bl

bb.ah:                                            ; preds = %bb.ae
  %i.ep = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i64 8), align 8, !tbaa !24, !noalias !1215
  %i.eq = and i64 %i.ep, -2
  %switch.i.i.i.i228 = icmp eq i64 %i.eq, -5572340897628102704
  br i1 %switch.i.i.i.i228, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231.thread, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231: ; preds = %bb.ah
  %i.er = load ptr, ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, align 8, !tbaa !22, !noalias !1215
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.et = load ptr, ptr %i.es, align 8, !noalias !1215
  %i.eu = tail call noundef zeroext i1 %i.et(ptr noundef nonnull align 8 dereferenceable(52) @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, i32 noundef 15) #48, !noalias !1215, !inline_history !975
  br i1 %i.eu, label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231.thread, label %bb.ai

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231.thread: ; preds = %bb.ah, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231.thread
  %i.ev = phi i64 [ 1, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231.thread ], [ 0, %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit231 ]
  %i.ew = or disjoint i64 %i.ev, ptrtoint (ptr @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE7loc_bb__0 to i64)
  store i64 15, ptr %6, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @_ZZN5boost5beast4zlib15make_error_codeENS1_5errorEE3cat, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx.i236 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.ew, ptr %.sroa.5.0..sroa_idx.i236, align 8, !tbaa !16
  br label %bb.bl

.preheader254:                                    ; preds = %bb.ae
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 0, ptr %i.ex, align 2, !tbaa !321
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 %i.az, ptr %i.ey, align 4, !tbaa !321
  %i.ez = add i16 %i.bf, %i.az                    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !321
  %i.fb = add i16 %i.bl, %i.ez                    ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 %i.fb, ptr %i.fc, align 8, !tbaa !321
  %i.fd = add i16 %i.br, %i.fb                    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i16 %i.fd, ptr %i.fe, align 2, !tbaa !321
  %i.ff = add i16 %i.bx, %i.fd                    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i16 %i.ff, ptr %i.fg, align 4, !tbaa !321
  %i.fh = add i16 %i.cd, %i.ff                    ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !321
  %i.fj = add i16 %i.cj, %i.fh                    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 %i.fj, ptr %i.fk, align 16, !tbaa !321
  %i.fl = add i16 %i.cp, %i.fj                    ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 %i.fl, ptr %i.fm, align 2, !tbaa !321
  %i.fn = add i16 %i.cv, %i.fl                    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 %i.fn, ptr %i.fo, align 4, !tbaa !321
  %i.fp = add i16 %i.db, %i.fn                    ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 %i.fp, ptr %i.fq, align 2, !tbaa !321
  %i.fr = add i16 %i.dh, %i.fp                    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 %i.fr, ptr %i.fs, align 8, !tbaa !321
  %i.ft = add i16 %i.dn, %i.fr                    ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  store i16 %i.ft, ptr %i.fu, align 2, !tbaa !321
  %i.fv = add i16 %i.dt, %i.ft                    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i16 %i.fv, ptr %i.fw, align 4, !tbaa !321
  %i.fx = add i16 %i.dz, %i.fv
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  store i16 %i.fx, ptr %i.fy, align 2, !tbaa !321
  br i1 %.not285, label %._crit_edge276, label %.lr.ph275

.lr.ph275:                                        ; preds = %.preheader254, %bb.ak
  %indvars.iv311 = phi i64 [ %indvars.iv.next312, %bb.ak ], [ 0, %.preheader254 ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv311
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !321 ; 2 uses
  %.not223 = icmp eq i16 %i.ga, 0
  br i1 %.not223, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph275
  %i.gb = trunc i64 %indvars.iv311 to i16
  %i.gc = zext i16 %i.ga to i64
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.gc ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !321 ; 2 uses
  %i.gf = add i16 %i.ge, 1
  store i16 %i.gf, ptr %i.gd, align 2, !tbaa !321
  %i.gg = zext i16 %i.ge to i64
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.gg
  store i16 %i.gb, ptr %i.gh, align 2, !tbaa !321
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph275, %bb.aj
  %indvars.iv.next312 = add i64 %indvars.iv311, 1 ; 2 uses
  %12 = and i64 %indvars.iv.next312, 4294967295
  %i.gi = icmp ugt i64 %2, %12
  br i1 %i.gi, label %.lr.ph275, label %._crit_edge276, !llvm.loop !1218

._crit_edge276:                                   ; preds = %bb.ak, %.preheader254
  switch i32 %0, label %bb.am [
    i32 0, label %.preheader
    i32 1, label %bb.al
  ]

bb.al:                                            ; preds = %._crit_edge276
  %i.gj = icmp ugt i32 %spec.select343, 9
  br i1 %i.gj, label %bb.an, label %.preheader

bb.am:                                            ; preds = %._crit_edge276
  %i.gk = icmp ugt i32 %spec.select343, 9
  %i.gl = icmp eq i32 %0, 2                       ; 2 uses
  %or.cond5 = select i1 %i.gl, i1 %i.gk, i1 false
  br i1 %or.cond5, label %bb.an, label %.preheader

.preheader:                                       ; preds = %bb.al, %._crit_edge276, %bb.am
  %i.gm = phi i1 [ false, %._crit_edge276 ], [ %i.gl, %bb.am ], [ false, %bb.al ]
  %.0179250352 = phi ptr [ %5, %._crit_edge276 ], [ @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE5dbase, %bb.am ], [ @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE5lbase, %bb.al ]
  %.0178251351 = phi ptr [ %5, %._crit_edge276 ], [ @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE4dext, %bb.am ], [ @_ZZN5boost5beast4zlib6detail14inflate_stream13inflate_tableENS3_5buildEPtmPPNS3_4codeEPjS5_RNS_6system10error_codeEE4lext, %bb.al ]
  %.0252350 = phi i32 [ 20, %._crit_edge276 ], [ 0, %bb.am ], [ 257, %bb.al ] ; 3 uses
  %i.gn = phi i1 [ false, %._crit_edge276 ], [ false, %bb.am ], [ true, %bb.al ]
  %i.go = shl nuw i32 1, %spec.select343          ; 2 uses
  %i.gp = add i32 %i.go, -1
  %i.gq = load ptr, ptr %3, align 8, !tbaa !1138
  %i.gr = trunc i32 %spec.select343 to i8
  br label %.outer

.outer:                                           ; preds = %bb.bh, %.preheader
  %.3.ph = phi i32 [ %.4, %bb.bh ], [ %.0199.lcssa, %.preheader ]
  %.2202.ph = phi i32 [ %i.hy, %bb.bh ], [ 0, %.preheader ]
  %.0193.ph = phi i32 [ %.1194.lcssa, %bb.bh ], [ %spec.select343, %.preheader ]
  %.0191.ph = phi i32 [ %spec.select225, %bb.bh ], [ 0, %.preheader ] ; 4 uses
  %.0187.ph = phi i32 [ %i.jg, %bb.bh ], [ %i.go, %.preheader ] ; 2 uses
  %.0185.ph = phi i32 [ %.1186, %bb.bh ], [ 0, %.preheader ]
  %.0181.ph = phi i32 [ %i.in, %bb.bh ], [ -1, %.preheader ]
  %.0180.ph = phi ptr [ %i.iq, %bb.bh ], [ %i.gq, %.preheader ] ; 3 uses
  %i.gs = shl nuw i32 1, %.0193.ph                ; 2 uses
  br label %bb.aq

bb.an:                                            ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #48
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.423)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #48
  store ptr @.str.192, ptr %10, align 8, !tbaa !36
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.218, ptr %i.gt, align 8, !tbaa !38
  %i.gu = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 756, ptr %i.gu, align 8, !tbaa !39
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 62, ptr %i.gv, align 4, !tbaa !40
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(24) %10) #49
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  unreachable

common.resume:                                    ; preds = %bb.bg, %bb.ap
  %common.resume.op = phi { ptr, i32 } [ %i.gw, %bb.ap ], [ %i.jm, %bb.bg ]
  resume { ptr, i32 } %common.resume.op

bb.ap:                                            ; preds = %bb.an
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #48
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #48
  br label %common.resume

bb.aq:                                            ; preds = %.backedge, %.outer
  %.3 = phi i32 [ %.3.ph, %.outer ], [ %.4, %.backedge ] ; 5 uses
  %.2202 = phi i32 [ %.2202.ph, %.outer ], [ %i.hy, %.backedge ] ; 2 uses
  %.0185 = phi i32 [ %.0185.ph, %.outer ], [ %.1186, %.backedge ] ; 3 uses
  %i.gx = sub i32 %.3, %.0191.ph                  ; 2 uses
  %i.gy = trunc i32 %i.gx to i8                   ; 2 uses
  %i.gz = zext i32 %.2202 to i64
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !321 ; 2 uses
  %i.hc = zext i16 %i.hb to i32                   ; 3 uses
  %i.hd = add nuw nsw i32 %i.hc, 1
  %i.he = icmp samesign ult i32 %i.hd, %.0252350
  br i1 %i.he, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not217 = icmp samesign ugt i32 %.0252350, %i.hc
  br i1 %.not217, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hf = sub nuw nsw i32 %i.hc, %.0252350
  %i.hg = zext nneg i32 %i.hf to i64              ; 2 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %.0178251351, i64 %i.hg
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !321
  %i.hj = trunc i16 %i.hi to i8
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %.0179250352, i64 %i.hg
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !321
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.as
  %.sroa.14.0 = phi i16 [ %i.hb, %bb.aq ], [ %i.hl, %bb.as ], [ 0, %bb.ar ]
  %.sroa.0.0 = phi i8 [ 0, %bb.aq ], [ %i.hj, %bb.as ], [ 96, %bb.ar ]
  %.neg = shl nsw i32 -1, %i.gx
  %i.hm = lshr i32 %.0185, %.0191.ph
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %.0183 = phi i32 [ %i.gs, %bb.at ], [ %i.hn, %bb.au ]
  %i.hn = add i32 %.0183, %.neg                   ; 3 uses
  %i.ho = add i32 %i.hn, %i.hm
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.0180.ph, i64 %i.hp ; 3 uses
  store i8 %.sroa.0.0, ptr %i.hq, align 2, !tbaa !20
  %.sroa.11.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  store i8 %i.gy, ptr %.sroa.11.0..sroa_idx23, align 1, !tbaa !20
  %.sroa.14.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  store i16 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx29, align 2, !tbaa !321
  %.not218 = icmp eq i32 %i.hn, 0
  br i1 %.not218, label %bb.av, label %bb.au, !llvm.loop !1219

bb.av:                                            ; preds = %bb.au
  %i.hr = add i32 %.3, -1
  %i.hs = shl nuw i32 1, %i.hr
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %bb.av
  %.0184 = phi i32 [ %i.hs, %bb.av ], [ %i.hu, %bb.aw ] ; 5 uses
  %i.ht = and i32 %.0184, %.0185
  %.not219 = icmp eq i32 %i.ht, 0
  %i.hu = lshr i32 %.0184, 1
  br i1 %.not219, label %bb.ax, label %bb.aw, !llvm.loop !1220

bb.ax:                                            ; preds = %bb.aw
  %.not220 = icmp eq i32 %.0184, 0
  %i.hv = add i32 %.0184, -1
  %i.hw = and i32 %i.hv, %.0185
  %i.hx = add i32 %i.hw, %.0184
  %.1186 = select i1 %.not220, i32 0, i32 %i.hx   ; 5 uses
  %i.hy = add i32 %.2202, 1                       ; 3 uses
  %i.hz = zext i32 %.3 to i64
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.hz ; 2 uses
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !321
  %i.ic = add i16 %i.ib, -1                       ; 2 uses
  store i16 %i.ic, ptr %i.ia, align 2, !tbaa !321
  %i.id = icmp eq i16 %i.ic, 0
  br i1 %i.id, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ie = icmp eq i32 %.3, %.0198264.lcssa341
  br i1 %i.ie, label %bb.bi, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.if = zext i32 %i.hy to i64
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !321
  %i.ii = zext i16 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ii
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !321
  %i.il = zext i16 %i.ik to i32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.4 = phi i32 [ %i.il, %bb.az ], [ %.3, %bb.ax ] ; 6 uses
  %i.im = icmp ugt i32 %.4, %spec.select343
  br i1 %i.im, label %bb.bb, label %.backedge

bb.bb:                                            ; preds = %bb.ba
  %i.in = and i32 %.1186, %i.gp                   ; 3 uses
  %.not221 = icmp eq i32 %i.in, %.0181.ph
  br i1 %.not221, label %.backedge, label %bb.bc

.backedge:                                        ; preds = %bb.bb, %bb.ba
  br label %bb.aq, !llvm.loop !1221

bb.bc:                                            ; preds = %bb.bb
  %i.io = icmp eq i32 %.0191.ph, 0
  %spec.select225 = select i1 %i.io, i32 %spec.select343, i32 %.0191.ph ; 4 uses
  %i.ip = zext i32 %i.gs to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.0180.ph, i64 %i.ip ; 2 uses
  %i.ir = sub i32 %.4, %spec.select225            ; 3 uses
  %i.is = shl nuw i32 1, %i.ir                    ; 2 uses
  %i.it = icmp ult i32 %.4, %.0198264.lcssa341
  br i1 %i.it, label %.lr.ph280.preheader, label %._crit_edge281

.lr.ph280.preheader:                              ; preds = %bb.bc
  %i.iu = sub i32 %.0198264.lcssa341, %spec.select225
  br label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %bb.bd
  %i.iv = phi i32 [ %i.je, %bb.bd ], [ %.4, %.lr.ph280.preheader ]
  %.1190278 = phi i32 [ %i.jd, %bb.bd ], [ %i.is, %.lr.ph280.preheader ]
  %.1194277 = phi i32 [ %i.jc, %bb.bd ], [ %i.ir, %.lr.ph280.preheader ] ; 2 uses
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.iw
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !321
  %i.iz = zext i16 %i.iy to i32
  %i.ja = sub nsw i32 %.1190278, %i.iz            ; 2 uses
  %i.jb = icmp slt i32 %i.ja, 1
  br i1 %i.jb, label %._crit_edge281.loopexit, label %bb.bd

end_hunk_0
