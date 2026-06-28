inline.NumInlined: 660
inline.NumDeleted: 220
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK6google8protobuf3Api18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
bb.q:                                             ; preds = %.lr.ph122, %bb.q
  %.7121 = phi ptr [ %.6, %.lr.ph122 ], [ %i.dg, %bb.q ]
  %.080120 = phi i32 [ 0, %.lr.ph122 ], [ %i.dh, %bb.q ] ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !18
  %i.cv = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cw = and i64 %i.cv, 1
  %i.cx = icmp eq i64 %i.cw, 0
  %i.cy = add i64 %i.cv, -1
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = sext i32 %.080120 to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.db
  %.0.i.i.i.i89 = select i1 %i.cx, ptr %i.ct, ptr %i.dc
  %i.dd = load ptr, ptr %.0.i.i.i.i89, align 8, !tbaa !43 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %i.df = load atomic i32, ptr %i.de monotonic, align 4
  %i.dg = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i32 noundef %i.df, ptr noundef %.7121, ptr noundef %2) ; 2 uses
  %i.dh = add nuw i32 %.080120, 1                 ; 2 uses
  %exitcond134.not = icmp eq i32 %i.dh, %i.cs
  br i1 %exitcond134.not, label %.loopexit, label %bb.q, !llvm.loop !47

.loopexit:                                        ; preds = %bb.q, %bb.p, %bb.o
  %.8 = phi ptr [ %.6, %bb.o ], [ %.6, %bb.p ], [ %i.dg, %bb.q ] ; 5 uses
  %i.di = and i32 %i.b, 128
  %.not107 = icmp eq i32 %i.di, 0
  br i1 %.not107, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq i32 %i.dk, 0
  br i1 %.not, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dl = load ptr, ptr %2, align 8, !tbaa !40
  %.not.i = icmp ult ptr %.8, %i.dl
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.t, !prof !48

bb.t:                                             ; preds = %bb.s
  %i.dm = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %.8)
  %.pr = load i32, ptr %i.dj, align 8, !tbaa !11
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.s, %bb.t
  %i.dn = phi i32 [ %i.dk, %bb.s ], [ %.pr, %bb.t ] ; 2 uses
  %.0.i90 = phi ptr [ %.8, %bb.s ], [ %i.dm, %bb.t ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i90, i64 1 ; 2 uses
  store i8 56, ptr %.0.i90, align 1, !tbaa !11
  %i.dp = sext i32 %i.dn to i64                   ; 2 uses
  %i.dq = icmp ugt i32 %i.dn, 127
  br i1 %i.dq, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !49

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.du, %.lr.ph.i.i ], [ %i.do, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.dt, %.lr.ph.i.i ], [ %i.dp, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.dr = trunc i64 %.07.i1.i.i to i8
  %i.ds = or i8 %i.dr, -128
  store i8 %i.ds, ptr %.0.i2.i.i, align 1, !tbaa !11
  %i.dt = lshr i64 %.07.i1.i.i, 7                 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.dv = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.dv, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !50, !llvm.loop !51

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i.i = phi i64 [ %i.dp, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.dt, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.do, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.du, %.lr.ph.i.i ] ; 2 uses
  %i.dw = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.dw, ptr %.0.i.lcssa.i.i, align 1, !tbaa !11
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, %.loopexit
  %.9 = phi ptr [ %i.dx, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit ], [ %.8, %bb.r ], [ %.8, %.loopexit ] ; 7 uses
  %i.dy = and i32 %i.b, 32
  %.not108 = icmp eq i32 %i.dy, 0
  br i1 %.not108, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit96, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !19
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = and i64 %i.eb, -4
  %i.ed = inttoptr i64 %i.ec to ptr               ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !27 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit96, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !32
  %i.ei = trunc i64 %i.ef to i32
  %i.ej = tail call noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %i.eh, i32 noundef %i.ei, i32 noundef 1, i64 27, ptr nonnull @.str.4) ; 0 uses
  %i.ek = load ptr, ptr %i.ed, align 8, !tbaa !32 ; 2 uses
  %i.el = load i64, ptr %i.ee, align 8, !tbaa !27 ; 6 uses
  %i.em = icmp sgt i64 %i.el, 127
  br i1 %i.em, label %.critedge.i95, label %bb.x, !prof !21

bb.x:                                             ; preds = %bb.w
  %i.en = load ptr, ptr %2, align 8, !tbaa !40
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %.9 to i64
  %reass.sub128 = sub i64 %i.eo, %i.ep
  %i.eq = add i64 %reass.sub128, 14
  %i.er = icmp slt i64 %i.eq, %i.el
  br i1 %i.er, label %.critedge.i95, label %bb.y, !prof !21

.critedge.i95:                                    ; preds = %bb.x, %bb.w
  %i.es = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 8, i64 %i.el, ptr %i.ek, ptr noundef %.9)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit96

bb.y:                                             ; preds = %bb.x
  %i.et = getelementptr inbounds nuw i8, ptr %.9, i64 1
  store i8 66, ptr %.9, align 1, !tbaa !11
  %i.eu = trunc i64 %i.el to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %.9, i64 2 ; 2 uses
  store i8 %i.eu, ptr %i.et, align 1, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ev, ptr align 1 %i.ek, i64 %i.el, i1 false)
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %i.el
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit96

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit96: ; preds = %bb.y, %.critedge.i95, %bb.v, %bb.u
  %.10 = phi ptr [ %.9, %bb.v ], [ %.9, %bb.u ], [ %i.es, %.critedge.i95 ], [ %i.ew, %bb.y ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !12 ; 2 uses
  %i.ez = trunc i64 %i.ey to i1
  br i1 %i.ez, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.z, !prof !21

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit96
  %i.fa = add nsw i64 %i.ey, -1
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, ptr noundef %.10, ptr noundef %2)
  br label %bb.z

bb.z:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit96
  %.11 = phi ptr [ %i.fd, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.10, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit96 ]
  ret ptr %.11
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef, i32 noundef, i32 noundef, i64, ptr) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf3Api12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.b = add i64 %i.a, 448
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 512
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.a, 576
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.a, 640
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.a, 704
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3    ; 9 uses
  %i.n = and i32 %i.m, 255
  %.not60 = icmp eq i32 %i.n, 0
  br i1 %.not60, label %bb.x, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = and i32 %i.m, 1
  %.not61 = icmp eq i32 %i.o, 0
  br i1 %.not61, label %.loopexit73, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !7    ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = and i64 %i.u, 1
  %i.w = icmp eq i64 %i.v, 0
  %i.x = add i64 %i.u, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = select i1 %i.w, ptr %i.s, ptr %i.z      ; 2 uses
  %.idx = shl nsw i64 %i.r, 3
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.idx
  %.not6275 = icmp eq i32 %i.q, 0
  br i1 %.not6275, label %.loopexit73, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.077 = phi i64 [ %i.an, %.lr.ph ], [ %i.r, %bb.b ]
  %.sroa.057.076 = phi ptr [ %i.ao, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %i.ac = load ptr, ptr %.sroa.057.076, align 8, !tbaa !43
  %i.ad = tail call noundef i64 @_ZNK6google8protobuf6Method12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(80) %i.ac) ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = or i32 %i.ae, 1
  %i.ag = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.af, i1 true)
  %i.ah = xor i32 %i.ag, 31
  %i.ai = mul nuw nsw i32 %i.ah, 9
  %i.aj = add nuw nsw i32 %i.ai, 73
  %i.ak = lshr i32 %i.aj, 6
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add i64 %i.ad, %.077
  %i.an = add i64 %i.am, %i.al                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.057.076, i64 8 ; 2 uses
  %.not62 = icmp eq ptr %i.ao, %i.ab
  br i1 %.not62, label %.loopexit73, label %.lr.ph

.loopexit73:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.an, %.lr.ph ] ; 2 uses
  %i.ap = and i32 %i.m, 2
  %.not63 = icmp eq i32 %i.ap, 0
  br i1 %.not63, label %.loopexit72, label %bb.c

bb.c:                                             ; preds = %.loopexit73
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !7  ; 2 uses
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = add i64 %.1, %i.as                      ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.aw = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ax = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = add i64 %i.aw, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = select i1 %i.ay, ptr %i.au, ptr %i.bb   ; 2 uses
  %.idx88 = shl nsw i64 %i.as, 3
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %.idx88
  %.not6478 = icmp eq i32 %i.ar, 0
  br i1 %.not6478, label %.loopexit72, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.c, %.lr.ph81
  %.280 = phi i64 [ %i.bp, %.lr.ph81 ], [ %i.at, %bb.c ]
  %.sroa.053.079 = phi ptr [ %i.bq, %.lr.ph81 ], [ %i.bc, %bb.c ] ; 2 uses
  %i.be = load ptr, ptr %.sroa.053.079, align 8, !tbaa !43
  %i.bf = tail call noundef i64 @_ZNK6google8protobuf6Option12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %i.be) ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = or i32 %i.bg, 1
  %i.bi = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bh, i1 true)
  %i.bj = xor i32 %i.bi, 31
  %i.bk = mul nuw nsw i32 %i.bj, 9
  %i.bl = add nuw nsw i32 %i.bk, 73
  %i.bm = lshr i32 %i.bl, 6
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = add i64 %i.bf, %.280
  %i.bp = add i64 %i.bo, %i.bn                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.053.079, i64 8 ; 2 uses
  %.not64 = icmp eq ptr %i.bq, %i.bd
  br i1 %.not64, label %.loopexit72, label %.lr.ph81

.loopexit72:                                      ; preds = %.lr.ph81, %bb.c, %.loopexit73
  %.3 = phi i64 [ %.1, %.loopexit73 ], [ %i.at, %bb.c ], [ %i.bp, %.lr.ph81 ] ; 2 uses
  %i.br = and i32 %i.m, 4
  %.not65 = icmp eq i32 %i.br, 0
  br i1 %.not65, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit72
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !7  ; 2 uses
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = add i64 %.3, %i.bu                      ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !18
  %i.by = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.bz = and i64 %i.by, 1
  %i.ca = icmp eq i64 %i.bz, 0
  %i.cb = add i64 %i.by, -1
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = select i1 %i.ca, ptr %i.bw, ptr %i.cd   ; 2 uses
  %.idx89 = shl nsw i64 %i.bu, 3
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %.idx89
  %.not6683 = icmp eq i32 %i.bt, 0
  br i1 %.not6683, label %.loopexit, label %.lr.ph86

.lr.ph86:                                         ; preds = %bb.d, %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeINS0_5MixinEEEmRKT_.exit
  %.485 = phi i64 [ %i.et, %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeINS0_5MixinEEEmRKT_.exit ], [ %i.bv, %bb.d ]
  %.sroa.049.084 = phi ptr [ %i.eu, %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeINS0_5MixinEEEmRKT_.exit ], [ %i.ce, %bb.d ] ; 2 uses
  %i.cg = load ptr, ptr %.sroa.049.084, align 8, !tbaa !43 ; 6 uses
  %i.ch = ptrtoint ptr %i.cg to i64               ; 5 uses
  %i.ci = add i64 %i.ch, 448
  %i.cj = inttoptr i64 %i.ci to ptr
  tail call void @llvm.prefetch.p0(ptr %i.cj, i32 0, i32 3, i32 1)
  %i.ck = add i64 %i.ch, 512
  %i.cl = inttoptr i64 %i.ck to ptr
  tail call void @llvm.prefetch.p0(ptr %i.cl, i32 0, i32 3, i32 1)
  %i.cm = add i64 %i.ch, 576
  %i.cn = inttoptr i64 %i.cm to ptr
  tail call void @llvm.prefetch.p0(ptr %i.cn, i32 0, i32 3, i32 1)
  %i.co = add i64 %i.ch, 640
  %i.cp = inttoptr i64 %i.co to ptr
  tail call void @llvm.prefetch.p0(ptr %i.cp, i32 0, i32 3, i32 1)
  %i.cq = add i64 %i.ch, 704
  %i.cr = inttoptr i64 %i.cq to ptr
  tail call void @llvm.prefetch.p0(ptr %i.cr, i32 0, i32 3, i32 1)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3  ; 3 uses
  %i.cu = and i32 %i.ct, 3
  %.not.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeINS0_5MixinEEEmRKT_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph86
  %i.cv = and i32 %i.ct, 1
  %.not14.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not14.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !19
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = and i64 %i.cy, -4
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !27 ; 3 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.de = trunc i64 %i.dc to i32
  %i.df = or i32 %i.de, 1
  %i.dg = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.df, i1 true)
  %i.dh = xor i32 %i.dg, 31
  %i.di = mul nuw nsw i32 %i.dh, 9
  %i.dj = add nuw nsw i32 %i.di, 73
  %i.dk = lshr i32 %i.dj, 6
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = add i64 %i.dc, 1
  %i.dn = add i64 %i.dm, %i.dl
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i = phi i64 [ 0, %bb.f ], [ %i.dn, %bb.g ], [ 0, %bb.e ] ; 3 uses
  %i.do = and i32 %i.ct, 2
  %.not15.i.i = icmp eq i32 %i.do, 0
  br i1 %.not15.i.i, label %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeINS0_5MixinEEEmRKT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !19
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = and i64 %i.dr, -4
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !27 ; 3 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeINS0_5MixinEEEmRKT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dx = trunc i64 %i.dv to i32
  %i.dy = or i32 %i.dx, 1
  %i.dz = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dy, i1 true)
  %i.ea = xor i32 %i.dz, 31
  %i.eb = mul nuw nsw i32 %i.ea, 9
  %i.ec = add nuw nsw i32 %i.eb, 73
  %i.ed = lshr i32 %i.ec, 6
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = add i64 %.0.i.i, 1
  %i.eg = add i64 %i.ef, %i.dv
  %i.eh = add i64 %i.eg, %i.ee
  br label %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeINS0_5MixinEEEmRKT_.exit

_ZN6google8protobuf8internal14WireFormatLite11MessageSizeINS0_5MixinEEEmRKT_.exit: ; preds = %.lr.ph86, %bb.h, %bb.i, %bb.j
  %.1.i.i = phi i64 [ %.0.i.i, %bb.i ], [ %i.eh, %bb.j ], [ %.0.i.i, %bb.h ], [ 0, %.lr.ph86 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.ej = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, i64 noundef %.1.i.i, ptr noundef nonnull %i.ei) ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  %i.el = or i32 %i.ek, 1
  %i.em = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.el, i1 true)
  %i.en = xor i32 %i.em, 31
  %i.eo = mul nuw nsw i32 %i.en, 9
  %i.ep = add nuw nsw i32 %i.eo, 73
  %i.eq = lshr i32 %i.ep, 6
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = add i64 %i.ej, %.485
  %i.et = add i64 %i.es, %i.er                    ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.049.084, i64 8 ; 2 uses
  %.not66 = icmp eq ptr %i.eu, %i.cf
  br i1 %.not66, label %.loopexit, label %.lr.ph86

.loopexit:                                        ; preds = %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeINS0_5MixinEEEmRKT_.exit, %bb.d, %.loopexit72
  %.5 = phi i64 [ %.3, %.loopexit72 ], [ %i.bv, %bb.d ], [ %i.et, %_ZN6google8protobuf8internal14WireFormatLite11MessageSizeINS0_5MixinEEEmRKT_.exit ] ; 3 uses
  %i.ev = and i32 %i.m, 8
  %.not67 = icmp eq i32 %i.ev, 0
  br i1 %.not67, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !19
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = and i64 %i.ey, -4
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !27 ; 3 uses
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fe = trunc i64 %i.fc to i32
  %i.ff = or i32 %i.fe, 1
  %i.fg = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ff, i1 true)
  %i.fh = xor i32 %i.fg, 31
  %i.fi = mul nuw nsw i32 %i.fh, 9
  %i.fj = add nuw nsw i32 %i.fi, 73
  %i.fk = lshr i32 %i.fj, 6
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = add i64 %.5, 1
  %i.fn = add i64 %i.fm, %i.fc
  %i.fo = add i64 %i.fn, %i.fl
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %.loopexit
  %.6 = phi i64 [ %.5, %bb.k ], [ %i.fo, %bb.l ], [ %.5, %.loopexit ] ; 3 uses
  %i.fp = and i32 %i.m, 16
  %.not68 = icmp eq i32 %i.fp, 0
  br i1 %.not68, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !19
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, -4
  %i.fu = inttoptr i64 %i.ft to ptr
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !27 ; 3 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fy = trunc i64 %i.fw to i32
  %i.fz = or i32 %i.fy, 1
  %i.ga = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fz, i1 true)
  %i.gb = xor i32 %i.ga, 31
  %i.gc = mul nuw nsw i32 %i.gb, 9
  %i.gd = add nuw nsw i32 %i.gc, 73
  %i.ge = lshr i32 %i.gd, 6
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = add i64 %.6, 1
  %i.gh = add i64 %i.gg, %i.fw
  %i.gi = add i64 %i.gh, %i.gf
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.7 = phi i64 [ %.6, %bb.n ], [ %i.gi, %bb.o ], [ %.6, %bb.m ] ; 3 uses
  %i.gj = and i32 %i.m, 32
  %.not69 = icmp eq i32 %i.gj, 0
  br i1 %.not69, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !19
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = and i64 %i.gm, -4
  %i.go = inttoptr i64 %i.gn to ptr
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !27 ; 3 uses
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gs = trunc i64 %i.gq to i32
  %i.gt = or i32 %i.gs, 1
  %i.gu = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gt, i1 true)
  %i.gv = xor i32 %i.gu, 31
  %i.gw = mul nuw nsw i32 %i.gv, 9
  %i.gx = add nuw nsw i32 %i.gw, 73
  %i.gy = lshr i32 %i.gx, 6
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = add i64 %.7, 1
  %i.hb = add i64 %i.ha, %i.gq
  %i.hc = add i64 %i.hb, %i.gz
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %.8 = phi i64 [ %.7, %bb.q ], [ %i.hc, %bb.r ], [ %.7, %bb.p ] ; 2 uses
  %i.hd = and i32 %i.m, 64
  %.not70 = icmp eq i32 %i.hd, 0
  br i1 %.not70, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !11
  %i.hg = tail call noundef i64 @_ZNK6google8protobuf13SourceContext12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %i.hf) ; 2 uses
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = or i32 %i.hh, 1
  %i.hj = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.hi, i1 true)
  %i.hk = xor i32 %i.hj, 31
  %i.hl = mul nuw nsw i32 %i.hk, 9
  %i.hm = add nuw nsw i32 %i.hl, 73
  %i.hn = lshr i32 %i.hm, 6
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = add i64 %.8, 1
  %i.hq = add i64 %i.hp, %i.hg
  %i.hr = add i64 %i.hq, %i.ho
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.9 = phi i64 [ %i.hr, %bb.t ], [ %.8, %bb.s ]  ; 3 uses
  %i.hs = and i32 %i.m, 128
  %.not71 = icmp eq i32 %i.hs, 0
  br i1 %.not71, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq i32 %i.hu, 0
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hv = or i32 %i.hu, 1
  %i.hw = sext i32 %i.hv to i64
  %i.hx = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.hw, i1 true)
  %i.hy = xor i64 %i.hx, 63
  %i.hz = mul nuw nsw i64 %i.hy, 9
  %i.ia = add nuw nsw i64 %i.hz, 73
  %i.ib = lshr i64 %i.ia, 6
  %i.ic = add i64 %.9, 1
  %i.id = add i64 %i.ic, %i.ib
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w, %bb.v, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.10 = phi i64 [ %i.id, %bb.w ], [ %.9, %bb.v ], [ %.9, %bb.u ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.if = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.10, ptr noundef nonnull %i.ie)
  ret i64 %i.if
}

declare noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf3Api8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf3Api5ClearEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  tail call void @_ZN6google8protobuf3Api9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6google8protobuf3Api12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 dereferenceable(112) %0, ptr noalias nofree noundef %1) local_unnamed_addr #10 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !52
  store i64 %i.d, ptr %i.a, align 8, !tbaa !52
  store i64 %i.b, ptr %i.c, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !53)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.k = load <8 x i8>, ptr %i.j, align 8, !tbaa !11, !alias.scope !64, !noalias !59
  %i.l = load <8 x i8>, ptr %i.i, align 8, !tbaa !11, !alias.scope !59, !noalias !64
  store <8 x i8> %i.k, ptr %i.i, align 8, !tbaa !11, !alias.scope !59, !noalias !64
  store <8 x i8> %i.l, ptr %i.j, align 8, !tbaa !11, !alias.scope !64, !noalias !59
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 8, !tbaa !11, !alias.scope !64, !noalias !59
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !11, !alias.scope !59, !noalias !64
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !11, !alias.scope !59, !noalias !64
  store <4 x i8> %i.o, ptr %i.m, align 8, !tbaa !11, !alias.scope !64, !noalias !59
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.r = load <8 x i8>, ptr %i.q, align 8, !tbaa !11, !alias.scope !76, !noalias !71
  %i.s = load <8 x i8>, ptr %i.p, align 8, !tbaa !11, !alias.scope !71, !noalias !76
  store <8 x i8> %i.r, ptr %i.p, align 8, !tbaa !11, !alias.scope !71, !noalias !76
  store <8 x i8> %i.s, ptr %i.q, align 8, !tbaa !11, !alias.scope !76, !noalias !71
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.079.i.ptr.8.i.i.i20 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load <4 x i8>, ptr %i.t, align 8, !tbaa !11, !alias.scope !76, !noalias !71
  %i.v = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i20, align 8, !tbaa !11, !alias.scope !71, !noalias !76
  store <4 x i8> %i.u, ptr %.079.i.ptr.8.i.i.i20, align 8, !tbaa !11, !alias.scope !71, !noalias !76
  store <4 x i8> %i.v, ptr %i.t, align 8, !tbaa !11, !alias.scope !76, !noalias !71
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.y = load <8 x i8>, ptr %i.x, align 8, !tbaa !11, !alias.scope !88, !noalias !83
  %i.z = load <8 x i8>, ptr %i.w, align 8, !tbaa !11, !alias.scope !83, !noalias !88
  store <8 x i8> %i.y, ptr %i.w, align 8, !tbaa !11, !alias.scope !83, !noalias !88
  store <8 x i8> %i.z, ptr %i.x, align 8, !tbaa !11, !alias.scope !88, !noalias !83
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.079.i.ptr.8.i.i.i31 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = load <4 x i8>, ptr %i.aa, align 8, !tbaa !11, !alias.scope !88, !noalias !83
  %i.ac = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i31, align 8, !tbaa !11, !alias.scope !83, !noalias !88
  store <4 x i8> %i.ab, ptr %.079.i.ptr.8.i.i.i31, align 8, !tbaa !11, !alias.scope !83, !noalias !88
  store <4 x i8> %i.ac, ptr %i.aa, align 8, !tbaa !11, !alias.scope !88, !noalias !83
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !43
  %i.ag = load <2 x i64>, ptr %i.ad, align 8, !tbaa !43
  store <2 x i64> %i.ag, ptr %i.ae, align 8, !tbaa !43
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.sroa.0.0.copyload.i36 = load ptr, ptr %i.ai, align 8, !tbaa !43
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !43
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !43
  store ptr %.sroa.0.0.copyload.i36, ptr %i.ah, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.am = load <8 x i8>, ptr %i.al, align 8, !tbaa !11, !alias.scope !92, !noalias !89
  %i.an = load <8 x i8>, ptr %i.ak, align 8, !tbaa !11, !alias.scope !89, !noalias !92
  store <8 x i8> %i.am, ptr %i.ak, align 8, !tbaa !11, !alias.scope !89, !noalias !92
  store <8 x i8> %i.an, ptr %i.al, align 8, !tbaa !11, !alias.scope !92, !noalias !89
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.079.i.ptr.8.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ap = load <4 x i8>, ptr %i.ao, align 8, !tbaa !11, !alias.scope !92, !noalias !89
  %i.aq = load <4 x i8>, ptr %.079.i.ptr.8.i, align 8, !tbaa !11, !alias.scope !89, !noalias !92
  store <4 x i8> %i.ap, ptr %.079.i.ptr.8.i, align 8, !tbaa !11, !alias.scope !89, !noalias !92
  store <4 x i8> %i.aq, ptr %i.ao, align 8, !tbaa !11, !alias.scope !92, !noalias !89
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf3Api11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf3Api12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6Method13clear_optionsEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE5ClearEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE5ClearEv.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE5ClearEv.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3
  %i.g = and i32 %i.f, -2
  store i32 %i.g, ptr %i.e, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf6MethodC2EPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(80) initializes((0, 80)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf6MethodE, i64 16), ptr %0, align 8, !tbaa !15
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.i, i8 0, i64 20, i1 false)
  store i32 -16, ptr %i.c, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <4 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE>, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6MethodC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf6MethodE, i64 16), ptr %0, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %.noexc8, label %.noexc14

.noexc8:                                          ; preds = %.noexc
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %.noexc14

.noexc14:                                         ; preds = %.noexc8, %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !11
  store i32 %i.k, ptr %i.i, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf6Method18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  br i1 %.not122, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %bb.w
  %.5119 = phi ptr [ %.4, %.lr.ph ], [ %i.dh, %bb.w ]
  %.073118 = phi i32 [ 0, %.lr.ph ], [ %i.di, %bb.w ] ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !18
  %i.cw = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cx = and i64 %i.cw, 1
  %i.cy = icmp eq i64 %i.cx, 0
  %i.cz = add i64 %i.cw, -1
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = sext i32 %.073118 to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.dc
  %.0.i.i.i.i = select i1 %i.cy, ptr %i.cu, ptr %i.dd
  %i.de = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !43 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %i.dg = load atomic i32, ptr %i.df monotonic, align 4
  %i.dh = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef %i.dg, ptr noundef %.5119, ptr noundef %2) ; 2 uses
  %i.di = add nuw i32 %.073118, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.di, %i.ct
  br i1 %exitcond.not, label %.loopexit, label %bb.w, !llvm.loop !96

.loopexit:                                        ; preds = %bb.w, %bb.v, %bb.u
  %.6 = phi ptr [ %.4, %bb.u ], [ %.4, %bb.v ], [ %i.dh, %bb.w ] ; 5 uses
  %i.dj = and i32 %i.b, 128
  %.not112 = icmp eq i32 %i.dj, 0
  br i1 %.not112, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !11 ; 2 uses
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = load ptr, ptr %2, align 8, !tbaa !40
  %.not.i91 = icmp ult ptr %.6, %i.dm
  br i1 %.not.i91, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit93, label %bb.z, !prof !48

bb.z:                                             ; preds = %bb.y
  %i.dn = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %.6)
  %.pr = load i32, ptr %i.dk, align 4, !tbaa !11
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit93

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit93: ; preds = %bb.y, %bb.z
  %i.do = phi i32 [ %i.dl, %bb.y ], [ %.pr, %bb.z ] ; 2 uses
  %.0.i92 = phi ptr [ %.6, %bb.y ], [ %i.dn, %bb.z ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i92, i64 1 ; 2 uses
  store i8 56, ptr %.0.i92, align 1, !tbaa !11
  %i.dq = sext i32 %i.do to i64                   ; 2 uses
  %i.dr = icmp ugt i32 %i.do, 127
  br i1 %i.dr, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !49

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit93, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %i.dp, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit93 ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.du, %.lr.ph.i.i ], [ %i.dq, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit93 ] ; 3 uses
  %i.ds = trunc i64 %.07.i1.i.i to i8
  %i.dt = or i8 %i.ds, -128
  store i8 %i.dt, ptr %.0.i2.i.i, align 1, !tbaa !11
  %i.du = lshr i64 %.07.i1.i.i, 7                 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.dw = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.dw, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !50, !llvm.loop !51

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit93
  %.07.i.lcssa.i.i = phi i64 [ %i.dq, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit93 ], [ %i.du, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.dp, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit93 ], [ %i.dv, %.lr.ph.i.i ] ; 2 uses
  %i.dx = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.dx, ptr %.0.i.lcssa.i.i, align 1, !tbaa !11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, %.loopexit
  %.7 = phi ptr [ %i.dy, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit ], [ %.6, %bb.x ], [ %.6, %.loopexit ] ; 7 uses
  %i.dz = and i32 %i.b, 16
  %.not113 = icmp eq i32 %i.dz, 0
  br i1 %.not113, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit99, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !19
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = and i64 %i.ec, -4
  %i.ee = inttoptr i64 %i.ed to ptr               ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !27 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit99, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ei = load ptr, ptr %i.ee, align 8, !tbaa !32
  %i.ej = trunc i64 %i.eg to i32
  %i.ek = tail call noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %i.ei, i32 noundef %i.ej, i32 noundef 1, i64 30, ptr nonnull @.str.10) ; 0 uses
  %i.el = load ptr, ptr %i.ee, align 8, !tbaa !32 ; 2 uses
  %i.em = load i64, ptr %i.ef, align 8, !tbaa !27 ; 6 uses
  %i.en = icmp sgt i64 %i.em, 127
  br i1 %i.en, label %.critedge.i98, label %bb.ad, !prof !21

bb.ad:                                            ; preds = %bb.ac
  %i.eo = load ptr, ptr %2, align 8, !tbaa !40
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %.7 to i64
  %reass.sub123 = sub i64 %i.ep, %i.eq
  %i.er = add i64 %reass.sub123, 14
  %i.es = icmp slt i64 %i.er, %i.em
  br i1 %i.es, label %.critedge.i98, label %bb.ae, !prof !21

.critedge.i98:                                    ; preds = %bb.ad, %bb.ac
  %i.et = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 8, i64 %i.em, ptr %i.el, ptr noundef %.7)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit99

bb.ae:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %.7, i64 1
  store i8 66, ptr %.7, align 1, !tbaa !11
  %i.ev = trunc i64 %i.em to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %.7, i64 2 ; 2 uses
  store i8 %i.ev, ptr %i.eu, align 1, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ew, ptr align 1 %i.el, i64 %i.em, i1 false)
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 %i.em
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit99

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit99: ; preds = %bb.ae, %.critedge.i98, %bb.ab, %bb.aa
  %.8 = phi ptr [ %.7, %bb.ab ], [ %.7, %bb.aa ], [ %i.et, %.critedge.i98 ], [ %i.ex, %bb.ae ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !12 ; 2 uses
  %i.fa = trunc i64 %i.ez to i1
  br i1 %i.fa, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.af, !prof !21

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit99
  %i.fb = add nsw i64 %i.ez, -1
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.fd, ptr noundef %.8, ptr noundef %2)
  br label %bb.af

bb.af:                                            ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit99
  %.9 = phi ptr [ %i.fe, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.8, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit99 ]
  ret ptr %.9
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf6Method12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.b = add i64 %i.a, 448
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 512
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.a, 576
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.a, 640
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.a, 704
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3    ; 9 uses
  %i.n = and i32 %i.m, 255
  %.not44 = icmp eq i32 %i.n, 0
  br i1 %.not44, label %bb.q, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = and i32 %i.m, 1
  %.not45 = icmp eq i32 %i.o, 0
  br i1 %.not45, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !7    ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = and i64 %i.u, 1
  %i.w = icmp eq i64 %i.v, 0
  %i.x = add i64 %i.u, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = select i1 %i.w, ptr %i.s, ptr %i.z      ; 2 uses
  %.idx = shl nsw i64 %i.r, 3
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.idx
  %.not4655 = icmp eq i32 %i.q, 0
  br i1 %.not4655, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.057 = phi i64 [ %i.an, %.lr.ph ], [ %i.r, %bb.b ]
  %.sroa.041.056 = phi ptr [ %i.ao, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %i.ac = load ptr, ptr %.sroa.041.056, align 8, !tbaa !43
  %i.ad = tail call noundef i64 @_ZNK6google8protobuf6Option12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = or i32 %i.ae, 1
  %i.ag = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.af, i1 true)
  %i.ah = xor i32 %i.ag, 31
  %i.ai = mul nuw nsw i32 %i.ah, 9
  %i.aj = add nuw nsw i32 %i.ai, 73
  %i.ak = lshr i32 %i.aj, 6
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add i64 %i.ad, %.057
  %i.an = add i64 %i.am, %i.al                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.041.056, i64 8 ; 2 uses
  %.not46 = icmp eq ptr %i.ao, %i.ab
  br i1 %.not46, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ap = and i32 %i.m, 2
  %.not47 = icmp eq i32 %i.ap, 0
  br i1 %.not47, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !19
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, -4
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !27 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = trunc i64 %i.aw to i32
  %i.az = or i32 %i.ay, 1
  %i.ba = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.az, i1 true)
  %i.bb = xor i32 %i.ba, 31
  %i.bc = mul nuw nsw i32 %i.bb, 9
  %i.bd = add nuw nsw i32 %i.bc, 73
  %i.be = lshr i32 %i.bd, 6
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = add i64 %.1, 1
  %i.bh = add i64 %i.bg, %i.aw
  %i.bi = add i64 %i.bh, %i.bf
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %.loopexit
  %.2 = phi i64 [ %.1, %bb.c ], [ %i.bi, %bb.d ], [ %.1, %.loopexit ] ; 3 uses
  %i.bj = and i32 %i.m, 4
  %.not48 = icmp eq i32 %i.bj, 0
  br i1 %.not48, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = and i64 %i.bm, -4
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !27 ; 3 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = trunc i64 %i.bq to i32
  %i.bt = or i32 %i.bs, 1
  %i.bu = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bt, i1 true)
  %i.bv = xor i32 %i.bu, 31
  %i.bw = mul nuw nsw i32 %i.bv, 9
  %i.bx = add nuw nsw i32 %i.bw, 73
  %i.by = lshr i32 %i.bx, 6
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = add i64 %.2, 1
  %i.cb = add i64 %i.ca, %i.bq
  %i.cc = add i64 %i.cb, %i.bz
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.3 = phi i64 [ %.2, %bb.f ], [ %i.cc, %bb.g ], [ %.2, %bb.e ] ; 3 uses
  %i.cd = and i32 %i.m, 8
  %.not49 = icmp eq i32 %i.cd, 0
  br i1 %.not49, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !19
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = and i64 %i.cg, -4
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !27 ; 3 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cm = trunc i64 %i.ck to i32
  %i.cn = or i32 %i.cm, 1
  %i.co = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cn, i1 true)
  %i.cp = xor i32 %i.co, 31
  %i.cq = mul nuw nsw i32 %i.cp, 9
  %i.cr = add nuw nsw i32 %i.cq, 73
  %i.cs = lshr i32 %i.cr, 6
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = add i64 %.3, 1
  %i.cv = add i64 %i.cu, %i.ck
  %i.cw = add i64 %i.cv, %i.ct
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.4 = phi i64 [ %.3, %bb.i ], [ %i.cw, %bb.j ], [ %.3, %bb.h ] ; 3 uses
  %i.cx = and i32 %i.m, 16
  %.not50 = icmp eq i32 %i.cx, 0
  br i1 %.not50, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !19
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = and i64 %i.da, -4
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !27 ; 3 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = trunc i64 %i.de to i32
  %i.dh = or i32 %i.dg, 1
  %i.di = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dh, i1 true)
  %i.dj = xor i32 %i.di, 31
  %i.dk = mul nuw nsw i32 %i.dj, 9
  %i.dl = add nuw nsw i32 %i.dk, 73
  %i.dm = lshr i32 %i.dl, 6
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = add i64 %.4, 1
  %i.dp = add i64 %i.do, %i.de
  %i.dq = add i64 %i.dp, %i.dn
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.5 = phi i64 [ %.4, %bb.l ], [ %i.dq, %bb.m ], [ %.4, %bb.k ]
  %i.dr = and i32 %i.m, 32
  %.not51 = icmp eq i32 %i.dr, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dt = load i8, ptr %i.ds, align 8, !range !94
  %i.du = shl nuw nsw i8 %i.dt, 1
  %i.dv = zext nneg i8 %i.du to i64
  %spec.select = select i1 %.not51, i64 0, i64 %i.dv
  %.6 = add i64 %spec.select, %.5
  %i.dw = and i32 %i.m, 64
  %.not52 = icmp eq i32 %i.dw, 0
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.dy = load i8, ptr %i.dx, align 1, !range !94
  %i.dz = shl nuw nsw i8 %i.dy, 1
  %i.ea = zext nneg i8 %i.dz to i64
  %spec.select40 = select i1 %.not52, i64 0, i64 %i.ea
  %.7 = add i64 %.6, %spec.select40               ; 3 uses
  %i.eb = and i32 %i.m, 128
  %.not53 = icmp eq i32 %i.eb, 0
  br i1 %.not53, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !11 ; 2 uses
  %.not = icmp eq i32 %i.ed, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ee = or i32 %i.ed, 1
  %i.ef = sext i32 %i.ee to i64
  %i.eg = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ef, i1 true)
  %i.eh = xor i64 %i.eg, 63
  %i.ei = mul nuw nsw i64 %i.eh, 9
  %i.ej = add nuw nsw i64 %i.ei, 73
  %i.ek = lshr i64 %i.ej, 6
  %i.el = add i64 %.7, 1
  %i.em = add i64 %i.el, %i.ek
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.8 = phi i64 [ %i.em, %bb.p ], [ %.7, %bb.o ], [ %.7, %bb.n ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eo = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.8, ptr noundef nonnull %i.en)
  ret i64 %i.eo
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6Method8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf6Method5ClearEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  tail call void @_ZN6google8protobuf6Method9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6google8protobuf6Method12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #10 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !52
  store i64 %i.d, ptr %i.a, align 8, !tbaa !52
  store i64 %i.b, ptr %i.c, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.k = load <8 x i8>, ptr %i.j, align 8, !tbaa !11, !alias.scope !108, !noalias !103
  %i.l = load <8 x i8>, ptr %i.i, align 8, !tbaa !11, !alias.scope !103, !noalias !108
  store <8 x i8> %i.k, ptr %i.i, align 8, !tbaa !11, !alias.scope !103, !noalias !108
  store <8 x i8> %i.l, ptr %i.j, align 8, !tbaa !11, !alias.scope !108, !noalias !103
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 8, !tbaa !11, !alias.scope !108, !noalias !103
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !11, !alias.scope !103, !noalias !108
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !11, !alias.scope !103, !noalias !108
  store <4 x i8> %i.o, ptr %i.m, align 8, !tbaa !11, !alias.scope !108, !noalias !103
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !tbaa !43
  %i.s = load <2 x i64>, ptr %i.p, align 8, !tbaa !43
  store <2 x i64> %i.s, ptr %i.q, align 8, !tbaa !43
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !43
  %i.w = load <2 x i64>, ptr %i.t, align 8, !tbaa !43
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !43
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.z = load <8 x i8>, ptr %i.y, align 8, !tbaa !11, !alias.scope !112, !noalias !109
  %i.aa = load <8 x i8>, ptr %i.x, align 8, !tbaa !11, !alias.scope !109, !noalias !112
  store <8 x i8> %i.z, ptr %i.x, align 8, !tbaa !11, !alias.scope !109, !noalias !112
  store <8 x i8> %i.aa, ptr %i.y, align 8, !tbaa !11, !alias.scope !112, !noalias !109
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf6Method11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf6Method12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf5MixinC2EPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf5MixinE, i64 16), ptr %0, align 8, !tbaa !15
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr.i, align 8, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.c, align 4, !tbaa !114
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.e, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf5MixinC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf5MixinE, i64 16), ptr %0, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %.noexc7, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

.noexc7:                                          ; preds = %.noexc
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %.noexc7, %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !11
  store i32 %i.k, ptr %i.i, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19   ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 3
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.noexc10, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit
  %i.s = tail call ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %1)
  br label %.noexc10

.noexc10:                                         ; preds = %bb.a, %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit
  %.sroa.0.0.i.i = phi ptr [ %i.o, %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit ], [ %i.s, %bb.a ]
  store ptr %.sroa.0.0.i.i, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, 3
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.noexc10
  %i.y = tail call ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc10
  %.sroa.0.0.i.i13 = phi ptr [ %i.u, %.noexc10 ], [ %i.y, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.0.0.i.i13, ptr %i.z, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf5MixinD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i unwind label %bb.c

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc1 unwind label %bb.c

.noexc1:                                          ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN6google8protobuf5Mixin10SharedDtorERNS0_11MessageLiteE.exit unwind label %bb.c

_ZN6google8protobuf5Mixin10SharedDtorERNS0_11MessageLiteE.exit: ; preds = %.noexc1
  ret void

bb.c:                                             ; preds = %.noexc1, %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21
  unreachable
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf5Mixin5ClearEv:bb.a
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !32
  store i8 0, ptr %i.k, align 1, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = and i32 %i.b, 2
  %.not4 = icmp eq i32 %i.l, 0
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, -4
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !32
  store i8 0, ptr %i.s, align 1, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  store i32 0, ptr %i.a, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !12
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %bb.g, label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit: ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf5Mixin18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3    ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.m = trunc i64 %i.j to i32
  %i.n = tail call noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %i.l, i32 noundef %i.m, i32 noundef 1, i64 26, ptr nonnull @.str.12) ; 0 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %i.p = load i64, ptr %i.i, align 8, !tbaa !27   ; 6 uses
  %i.q = icmp sgt i64 %i.p, 127
  br i1 %i.q, label %.critedge.i, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %2, align 8, !tbaa !40
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %1 to i64
  %reass.sub = sub i64 %i.s, %i.t
  %i.u = add i64 %reass.sub, 14
  %i.v = icmp slt i64 %i.u, %i.p
  br i1 %i.v, label %.critedge.i, label %bb.e, !prof !21

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %i.w = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 1, i64 %i.p, ptr %i.o, ptr noundef %1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 10, ptr %1, align 1, !tbaa !11
  %i.y = trunc i64 %i.p to i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 %i.y, ptr %i.x, align 1, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.o, i64 %i.p, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.p
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit: ; preds = %bb.e, %.critedge.i, %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.b ], [ %1, %bb.a ], [ %i.w, %.critedge.i ], [ %i.aa, %bb.e ] ; 7 uses
  %i.ab = and i32 %i.b, 2
  %.not33 = icmp eq i32 %i.ab, 0
  br i1 %.not33, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit30, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, -4
  %i.ag = inttoptr i64 %i.af to ptr               ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !27 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit30, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !32
  %i.al = trunc i64 %i.ai to i32
  %i.am = tail call noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %i.ak, i32 noundef %i.al, i32 noundef 1, i64 26, ptr nonnull @.str.13) ; 0 uses
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !32 ; 2 uses
  %i.ao = load i64, ptr %i.ah, align 8, !tbaa !27 ; 6 uses
  %i.ap = icmp sgt i64 %i.ao, 127
  br i1 %i.ap, label %.critedge.i29, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %2, align 8, !tbaa !40
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %.0 to i64
  %reass.sub35 = sub i64 %i.ar, %i.as
  %i.at = add i64 %reass.sub35, 14
  %i.au = icmp slt i64 %i.at, %i.ao
  br i1 %i.au, label %.critedge.i29, label %bb.i, !prof !21

.critedge.i29:                                    ; preds = %bb.h, %bb.g
  %i.av = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 2, i64 %i.ao, ptr %i.an, ptr noundef %.0)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit30

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 18, ptr %.0, align 1, !tbaa !11
  %i.ax = trunc i64 %i.ao to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 2 uses
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %i.an, i64 %i.ao, i1 false)
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.ao
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit30

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit30: ; preds = %bb.i, %.critedge.i29, %bb.f, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %.1 = phi ptr [ %.0, %bb.f ], [ %.0, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit ], [ %i.av, %.critedge.i29 ], [ %i.az, %bb.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !12 ; 2 uses
  %i.bc = trunc i64 %i.bb to i1
  br i1 %i.bc, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.j, !prof !21

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit30
  %i.bd = add nsw i64 %i.bb, -1
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef %.1, ptr noundef %2)
  br label %bb.j

bb.j:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit30
  %.2 = phi ptr [ %i.bg, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.1, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit30 ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf5Mixin12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.b = add i64 %i.a, 448
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 512
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.a, 576
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.a, 640
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.a, 704
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3    ; 3 uses
  %i.n = and i32 %i.m, 3
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.g, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = and i32 %i.m, 1
  %.not14 = icmp eq i32 %i.o, 0
  br i1 %.not14, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, -4
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27   ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = trunc i64 %i.v to i32
  %i.y = or i32 %i.x, 1
  %i.z = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.y, i1 true)
  %i.aa = xor i32 %i.z, 31
  %i.ab = mul nuw nsw i32 %i.aa, 9
  %i.ac = add nuw nsw i32 %i.ab, 73
  %i.ad = lshr i32 %i.ac, 6
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = add i64 %i.v, 1
  %i.ag = add i64 %i.af, %i.ae
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.ah = and i32 %i.m, 2
  %.not15 = icmp eq i32 %i.ah, 0
  br i1 %.not15, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !19
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, -4
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !27 ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = trunc i64 %i.ao to i32
  %i.ar = or i32 %i.aq, 1
  %i.as = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ar, i1 true)
  %i.at = xor i32 %i.as, 31
  %i.au = mul nuw nsw i32 %i.at, 9
  %i.av = add nuw nsw i32 %i.au, 73
  %i.aw = lshr i32 %i.av, 6
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = add i64 %.0, 1
  %i.az = add i64 %i.ay, %i.ao
  %i.ba = add i64 %i.az, %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.1 = phi i64 [ %.0, %bb.e ], [ %i.ba, %bb.f ], [ %.0, %bb.d ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bc = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.1, ptr noundef nonnull %i.bb)
  ret i64 %i.bc
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf5Mixin8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf5Mixin5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  tail call void @_ZN6google8protobuf5Mixin9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf5Mixin12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #12 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !52
  store i64 %i.d, ptr %i.a, align 8, !tbaa !52
  store i64 %i.b, ptr %i.c, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !43
  %i.l = load <2 x i64>, ptr %i.i, align 8, !tbaa !43
  store <2 x i64> %i.l, ptr %i.j, align 8, !tbaa !43
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf5Mixin11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf5Mixin12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare void @_ZN6google8protobuf8internal14AddDescriptorsEPKNS1_15DescriptorTableE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf16RepeatedPtrFieldINS0_5MixinEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf16RepeatedPtrFieldINS0_6MethodEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #21
  unreachable
}

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf5Arena13CopyConstructINS0_6MethodEEEPvPS1_PKv(ptr noundef %0, ptr noundef %1) #9 comdat align 2 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_6MethodEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = add i64 %i.a, 64
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_6MethodEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.d = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef 80)
  br label %bb.c

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_6MethodEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.e = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]  ; 2 uses
  tail call void @_ZN6google8protobuf6MethodC1EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %.0, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #13

declare noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf5Arena13CopyConstructINS0_6OptionEEEPvPS1_PKv(ptr noundef %0, ptr noundef %1) #9 comdat align 2 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_6OptionEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = add i64 %i.a, 64
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_6OptionEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.d = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef 40)
  br label %bb.c

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_6OptionEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.e = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]  ; 2 uses
  tail call void @_ZN6google8protobuf6OptionC1EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %.0, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret ptr %.0
}

declare void @_ZN6google8protobuf6OptionC1EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf5Arena13CopyConstructINS0_5MixinEEEPvPS1_PKv(ptr noundef %0, ptr noundef %1) #9 comdat align 2 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_5MixinEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = add i64 %i.a, 64
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %.not = icmp eq ptr %0, null
end_hunk_2
