inline.NumInlined: 915
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK6google8protobuf4Type18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.cp = load atomic i32, ptr %i.co monotonic, align 4
  %i.cq = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i32 noundef %i.cp, ptr noundef %.5110, ptr noundef %2) ; 2 uses
  %i.cr = add nuw i32 %.071109, 1                 ; 2 uses
  %exitcond122.not = icmp eq i32 %i.cr, %i.cc
  br i1 %exitcond122.not, label %.loopexit, label %bb.l, !llvm.loop !50

.loopexit:                                        ; preds = %bb.l, %bb.k, %.loopexit100
  %.6 = phi ptr [ %.4, %.loopexit100 ], [ %.4, %bb.k ], [ %i.cq, %bb.l ] ; 2 uses
  %i.cs = and i32 %i.b, 32
  %.not95 = icmp eq i32 %i.cs, 0
  br i1 %.not95, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !10 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 20
  %i.cw = load atomic i32, ptr %i.cv monotonic, align 4
  %i.cx = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i32 noundef %i.cw, ptr noundef %.6, ptr noundef %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit
  %.7 = phi ptr [ %i.cx, %bb.m ], [ %.6, %.loopexit ] ; 5 uses
  %i.cy = and i32 %i.b, 64
  %.not96 = icmp eq i32 %i.cy, 0
  br i1 %.not96, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i32 %i.da, 0
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = load ptr, ptr %2, align 8, !tbaa !43
  %.not.i = icmp ult ptr %.7, %i.db
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.q, !prof !51

bb.q:                                             ; preds = %bb.p
  %i.dc = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %.7)
  %.pr = load i32, ptr %i.cz, align 8, !tbaa !10
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.p, %bb.q
  %i.dd = phi i32 [ %i.da, %bb.p ], [ %.pr, %bb.q ] ; 2 uses
  %.0.i80 = phi ptr [ %.7, %bb.p ], [ %i.dc, %bb.q ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i80, i64 1 ; 2 uses
  store i8 48, ptr %.0.i80, align 1, !tbaa !10
  %i.df = sext i32 %i.dd to i64                   ; 2 uses
  %i.dg = icmp ugt i32 %i.dd, 127
  br i1 %i.dg, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !52

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %i.de, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.dj, %.lr.ph.i.i ], [ %i.df, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.dh = trunc i64 %.07.i1.i.i to i8
  %i.di = or i8 %i.dh, -128
  store i8 %i.di, ptr %.0.i2.i.i, align 1, !tbaa !10
  %i.dj = lshr i64 %.07.i1.i.i, 7                 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.dl = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.dl, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !53, !llvm.loop !54

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i.i = phi i64 [ %i.df, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.dj, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.de, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.dk, %.lr.ph.i.i ] ; 2 uses
  %i.dm = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.dm, ptr %.0.i.lcssa.i.i, align 1, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, %bb.n
  %.8 = phi ptr [ %i.dn, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit ], [ %.7, %bb.o ], [ %.7, %bb.n ] ; 7 uses
  %i.do = and i32 %i.b, 16
  %.not97 = icmp eq i32 %i.do, 0
  br i1 %.not97, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit86, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !21
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = and i64 %i.dr, -4
  %i.dt = inttoptr i64 %i.ds to ptr               ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !30 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit86, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !35
  %i.dy = trunc i64 %i.dv to i32
  %i.dz = tail call noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %i.dx, i32 noundef %i.dy, i32 noundef 1, i64 28, ptr nonnull @.str.4) ; 0 uses
  %i.ea = load ptr, ptr %i.dt, align 8, !tbaa !35 ; 2 uses
  %i.eb = load i64, ptr %i.du, align 8, !tbaa !30 ; 6 uses
  %i.ec = icmp sgt i64 %i.eb, 127
  br i1 %i.ec, label %.critedge.i85, label %bb.u, !prof !23

bb.u:                                             ; preds = %bb.t
  %i.ed = load ptr, ptr %2, align 8, !tbaa !43
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %.8 to i64
  %reass.sub116 = sub i64 %i.ee, %i.ef
  %i.eg = add i64 %reass.sub116, 14
  %i.eh = icmp slt i64 %i.eg, %i.eb
  br i1 %i.eh, label %.critedge.i85, label %bb.v, !prof !23

.critedge.i85:                                    ; preds = %bb.u, %bb.t
  %i.ei = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 7, i64 %i.eb, ptr %i.ea, ptr noundef %.8)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit86

bb.v:                                             ; preds = %bb.u
  %i.ej = getelementptr inbounds nuw i8, ptr %.8, i64 1
  store i8 58, ptr %.8, align 1, !tbaa !10
  %i.ek = trunc i64 %i.eb to i8
  %i.el = getelementptr inbounds nuw i8, ptr %.8, i64 2 ; 2 uses
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.el, ptr align 1 %i.ea, i64 %i.eb, i1 false)
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 %i.eb
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit86

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit86: ; preds = %bb.v, %.critedge.i85, %bb.s, %bb.r
  %.9 = phi ptr [ %.8, %bb.s ], [ %.8, %bb.r ], [ %i.ei, %.critedge.i85 ], [ %i.em, %bb.v ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !11 ; 2 uses
  %i.ep = trunc i64 %i.eo to i1
  br i1 %i.ep, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.w, !prof !23

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit86
  %i.eq = add nsw i64 %i.eo, -1
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.es, ptr noundef %.9, ptr noundef %2)
  br label %bb.w

bb.w:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit86
  %.10 = phi ptr [ %i.et, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.9, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit86 ]
  ret ptr %.10
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef, i32 noundef, i32 noundef, i64, ptr) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf4Type12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3    ; 8 uses
  %i.n = and i32 %i.m, 127
  %.not55 = icmp eq i32 %i.n, 0
  br i1 %.not55, label %bb.o, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = and i32 %i.m, 1
  %.not56 = icmp eq i32 %i.o, 0
  br i1 %.not56, label %.loopexit66, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20   ; 2 uses
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
  %.not5768 = icmp eq i32 %i.q, 0
  br i1 %.not5768, label %.loopexit66, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.070 = phi i64 [ %i.an, %.lr.ph ], [ %i.r, %bb.b ]
  %.sroa.052.069 = phi ptr [ %i.ao, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %i.ac = load ptr, ptr %.sroa.052.069, align 8, !tbaa !46
  %i.ad = tail call noundef i64 @_ZNK6google8protobuf5Field12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(96) %i.ac) ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = or i32 %i.ae, 1
  %i.ag = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.af, i1 true)
  %i.ah = xor i32 %i.ag, 31
  %i.ai = mul nuw nsw i32 %i.ah, 9
  %i.aj = add nuw nsw i32 %i.ai, 73
  %i.ak = lshr i32 %i.aj, 6
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add i64 %i.ad, %.070
  %i.an = add i64 %i.am, %i.al                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.052.069, i64 8 ; 2 uses
  %.not57 = icmp eq ptr %i.ao, %i.ab
  br i1 %.not57, label %.loopexit66, label %.lr.ph

.loopexit66:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ap = and i32 %i.m, 2
  %.not58 = icmp eq i32 %i.ap, 0
  br i1 %.not58, label %.loopexit65, label %bb.c

bb.c:                                             ; preds = %.loopexit66
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !20 ; 5 uses
  %i.as = zext i32 %i.ar to i64                   ; 4 uses
  %i.at = add i64 %.1, %i.as                      ; 3 uses
  %i.au = icmp sgt i32 %i.ar, 0
  br i1 %i.au, label %.lr.ph73, label %.loopexit65

.lr.ph73:                                         ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !18
  %.fr81 = freeze ptr %i.aw                       ; 2 uses
  %i.ax = ptrtoint ptr %.fr81 to i64              ; 2 uses
  %i.ay = and i64 %i.ax, 1
  %i.az = icmp eq i64 %i.ay, 0
  %i.ba = add i64 %i.ax, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  br i1 %i.az, label %.lr.ph73.split.us, label %.lr.ph73.split.preheader

.lr.ph73.split.preheader:                         ; preds = %.lr.ph73
  %xtraiter = and i64 %i.as, 1
  %i.bd = icmp eq i32 %i.ar, 1
  br i1 %i.bd, label %.lr.ph73.split.epil.preheader, label %.lr.ph73.split.preheader.new

.lr.ph73.split.preheader.new:                     ; preds = %.lr.ph73.split.preheader
  %unroll_iter = and i64 %i.as, 2147483646
  br label %.lr.ph73.split

.lr.ph73.split.us:                                ; preds = %.lr.ph73
  %i.be = getelementptr inbounds nuw i8, ptr %.fr81, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !30 ; 3 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = or i32 %i.bg, 1
  %i.bi = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bh, i1 true)
  %i.bj = xor i32 %i.bi, 31
  %i.bk = mul nuw nsw i32 %i.bj, 9
  %i.bl = add nuw nsw i32 %i.bk, 73
  %i.bm = lshr i32 %i.bl, 6
  %i.bn = zext nneg i32 %i.bm to i64              ; 2 uses
  %invariant.op = add i64 %i.bf, %i.bn
  %i.bo = add i64 %.1, %i.bf
  %i.bp = add i64 %i.bo, %i.bn
  %i.bq = add nsw i32 %i.ar, -1
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = mul i64 %invariant.op, %i.br
  %i.bt = add i64 %i.bp, %i.bs
  %i.bu = add i64 %i.bt, %i.as
  br label %.loopexit65

.lr.ph73.split:                                   ; preds = %.lr.ph73.split, %.lr.ph73.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph73.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph73.split ] ; 3 uses
  %.272 = phi i64 [ %i.at, %.lr.ph73.split.preheader.new ], [ %i.cx, %.lr.ph73.split ]
  %niter = phi i64 [ 0, %.lr.ph73.split.preheader.new ], [ %niter.next.1, %.lr.ph73.split ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !46
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !30 ; 2 uses
  %i.bz = trunc i64 %i.by to i32
  %i.ca = or i32 %i.bz, 1
  %i.cb = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ca, i1 true)
  %i.cc = xor i32 %i.cb, 31
  %i.cd = mul nuw nsw i32 %i.cc, 9
  %i.ce = add nuw nsw i32 %i.cd, 73
  %i.cf = lshr i32 %i.ce, 6
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = add i64 %i.by, %.272
  %i.ci = add i64 %i.ch, %i.cg
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !46
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !30 ; 2 uses
  %i.co = trunc i64 %i.cn to i32
  %i.cp = or i32 %i.co, 1
  %i.cq = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cp, i1 true)
  %i.cr = xor i32 %i.cq, 31
  %i.cs = mul nuw nsw i32 %i.cr, 9
  %i.ct = add nuw nsw i32 %i.cs, 73
  %i.cu = lshr i32 %i.ct, 6
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = add i64 %i.cn, %i.ci
  %i.cx = add i64 %i.cw, %i.cv                    ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit65.loopexit.unr-lcssa, label %.lr.ph73.split, !llvm.loop !55

.loopexit65.loopexit.unr-lcssa:                   ; preds = %.lr.ph73.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit65, label %.lr.ph73.split.epil.preheader

.lr.ph73.split.epil.preheader:                    ; preds = %.loopexit65.loopexit.unr-lcssa, %.lr.ph73.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph73.split.preheader ], [ %indvars.iv.next.1, %.loopexit65.loopexit.unr-lcssa ]
  %.272.epil.init = phi i64 [ %i.at, %.lr.ph73.split.preheader ], [ %i.cx, %.loopexit65.loopexit.unr-lcssa ]
  %lcmp.mod97 = trunc i32 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.epil.init
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !46
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !30 ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  %i.dd = or i32 %i.dc, 1
  %i.de = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dd, i1 true)
  %i.df = xor i32 %i.de, 31
  %i.dg = mul nuw nsw i32 %i.df, 9
  %i.dh = add nuw nsw i32 %i.dg, 73
  %i.di = lshr i32 %i.dh, 6
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = add i64 %i.db, %.272.epil.init
  %i.dl = add i64 %i.dk, %i.dj
  br label %.loopexit65

.loopexit65:                                      ; preds = %.lr.ph73.split.epil.preheader, %.loopexit65.loopexit.unr-lcssa, %.lr.ph73.split.us, %bb.c, %.loopexit66
  %.3 = phi i64 [ %.1, %.loopexit66 ], [ %i.at, %bb.c ], [ %i.bu, %.lr.ph73.split.us ], [ %i.cx, %.loopexit65.loopexit.unr-lcssa ], [ %i.dl, %.lr.ph73.split.epil.preheader ] ; 2 uses
  %i.dm = and i32 %i.m, 4
  %.not59 = icmp eq i32 %i.dm, 0
  br i1 %.not59, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.loopexit65
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !20 ; 2 uses
  %i.dp = sext i32 %i.do to i64                   ; 2 uses
  %i.dq = add i64 %.3, %i.dp                      ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !18
  %i.dt = ptrtoint ptr %i.ds to i64               ; 2 uses
  %i.du = and i64 %i.dt, 1
  %i.dv = icmp eq i64 %i.du, 0
  %i.dw = add i64 %i.dt, -1
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = select i1 %i.dv, ptr %i.dr, ptr %i.dy   ; 2 uses
  %.idx82 = shl nsw i64 %i.dp, 3
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 %.idx82
  %.not6075 = icmp eq i32 %i.do, 0
  br i1 %.not6075, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.d, %.lr.ph78
  %.477 = phi i64 [ %i.em, %.lr.ph78 ], [ %i.dq, %bb.d ]
  %.sroa.048.076 = phi ptr [ %i.en, %.lr.ph78 ], [ %i.dz, %bb.d ] ; 2 uses
  %i.eb = load ptr, ptr %.sroa.048.076, align 8, !tbaa !46
  %i.ec = tail call noundef i64 @_ZNK6google8protobuf6Option12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %i.eb) ; 2 uses
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = or i32 %i.ed, 1
  %i.ef = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ee, i1 true)
  %i.eg = xor i32 %i.ef, 31
  %i.eh = mul nuw nsw i32 %i.eg, 9
  %i.ei = add nuw nsw i32 %i.eh, 73
  %i.ej = lshr i32 %i.ei, 6
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = add i64 %i.ec, %.477
  %i.em = add i64 %i.el, %i.ek                    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.048.076, i64 8 ; 2 uses
  %.not60 = icmp eq ptr %i.en, %i.ea
  br i1 %.not60, label %.loopexit, label %.lr.ph78

.loopexit:                                        ; preds = %.lr.ph78, %bb.d, %.loopexit65
  %.5 = phi i64 [ %.3, %.loopexit65 ], [ %i.dq, %bb.d ], [ %i.em, %.lr.ph78 ] ; 3 uses
  %i.eo = and i32 %i.m, 8
  %.not61 = icmp eq i32 %i.eo, 0
  br i1 %.not61, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !21
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = and i64 %i.er, -4
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !30 ; 3 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ex = trunc i64 %i.ev to i32
  %i.ey = or i32 %i.ex, 1
  %i.ez = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ey, i1 true)
  %i.fa = xor i32 %i.ez, 31
  %i.fb = mul nuw nsw i32 %i.fa, 9
  %i.fc = add nuw nsw i32 %i.fb, 73
  %i.fd = lshr i32 %i.fc, 6
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = add i64 %.5, 1
  %i.fg = add i64 %i.ff, %i.ev
  %i.fh = add i64 %i.fg, %i.fe
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.loopexit
  %.6 = phi i64 [ %.5, %bb.e ], [ %i.fh, %bb.f ], [ %.5, %.loopexit ] ; 3 uses
  %i.fi = and i32 %i.m, 16
  %.not62 = icmp eq i32 %i.fi, 0
  br i1 %.not62, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !21
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = and i64 %i.fl, -4
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !30 ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fr = trunc i64 %i.fp to i32
  %i.fs = or i32 %i.fr, 1
  %i.ft = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fs, i1 true)
  %i.fu = xor i32 %i.ft, 31
  %i.fv = mul nuw nsw i32 %i.fu, 9
  %i.fw = add nuw nsw i32 %i.fv, 73
  %i.fx = lshr i32 %i.fw, 6
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = add i64 %.6, 1
  %i.ga = add i64 %i.fz, %i.fp
  %i.gb = add i64 %i.ga, %i.fy
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.7 = phi i64 [ %.6, %bb.h ], [ %i.gb, %bb.i ], [ %.6, %bb.g ] ; 2 uses
  %i.gc = and i32 %i.m, 32
  %.not63 = icmp eq i32 %i.gc, 0
  br i1 %.not63, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !10
  %i.gf = tail call noundef i64 @_ZNK6google8protobuf13SourceContext12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ge) ; 2 uses
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = or i32 %i.gg, 1
  %i.gi = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.gh, i1 true)
  %i.gj = xor i32 %i.gi, 31
  %i.gk = mul nuw nsw i32 %i.gj, 9
  %i.gl = add nuw nsw i32 %i.gk, 73
  %i.gm = lshr i32 %i.gl, 6
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = add i64 %.7, 1
  %i.gp = add i64 %i.go, %i.gf
  %i.gq = add i64 %i.gp, %i.gn
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.8 = phi i64 [ %i.gq, %bb.k ], [ %.7, %bb.j ]  ; 3 uses
  %i.gr = and i32 %i.m, 64
  %.not64 = icmp eq i32 %i.gr, 0
  br i1 %.not64, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i32 %i.gt, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gu = or i32 %i.gt, 1
  %i.gv = sext i32 %i.gu to i64
  %i.gw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gv, i1 true)
  %i.gx = xor i64 %i.gw, 63
  %i.gy = mul nuw nsw i64 %i.gx, 9
  %i.gz = add nuw nsw i64 %i.gy, 73
  %i.ha = lshr i64 %i.gz, 6
  %i.hb = add i64 %.8, 1
  %i.hc = add i64 %i.hb, %i.ha
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.9 = phi i64 [ %i.hc, %bb.n ], [ %.8, %bb.m ], [ %.8, %bb.l ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.he = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.9, ptr noundef nonnull %i.hd)
  ret i64 %i.he
}

declare noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4Type8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf4Type5ClearEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  tail call void @_ZN6google8protobuf4Type9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6google8protobuf4Type12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noalias nofree noundef %1) local_unnamed_addr #10 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  store i64 %i.d, ptr %i.a, align 8, !tbaa !56
  store i64 %i.b, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.k = load <8 x i8>, ptr %i.j, align 8, !tbaa !10, !alias.scope !68, !noalias !63
  %i.l = load <8 x i8>, ptr %i.i, align 8, !tbaa !10, !alias.scope !63, !noalias !68
  store <8 x i8> %i.k, ptr %i.i, align 8, !tbaa !10, !alias.scope !63, !noalias !68
  store <8 x i8> %i.l, ptr %i.j, align 8, !tbaa !10, !alias.scope !68, !noalias !63
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 8, !tbaa !10, !alias.scope !68, !noalias !63
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !10, !alias.scope !63, !noalias !68
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !10, !alias.scope !63, !noalias !68
  store <4 x i8> %i.o, ptr %i.m, align 8, !tbaa !10, !alias.scope !68, !noalias !63
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.r = load <8 x i8>, ptr %i.q, align 8, !tbaa !10, !alias.scope !80, !noalias !75
  %i.s = load <8 x i8>, ptr %i.p, align 8, !tbaa !10, !alias.scope !75, !noalias !80
  store <8 x i8> %i.r, ptr %i.p, align 8, !tbaa !10, !alias.scope !75, !noalias !80
  store <8 x i8> %i.s, ptr %i.q, align 8, !tbaa !10, !alias.scope !80, !noalias !75
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.079.i.ptr.8.i.i.i18 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load <4 x i8>, ptr %i.t, align 8, !tbaa !10, !alias.scope !80, !noalias !75
  %i.v = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i18, align 8, !tbaa !10, !alias.scope !75, !noalias !80
  store <4 x i8> %i.u, ptr %.079.i.ptr.8.i.i.i18, align 8, !tbaa !10, !alias.scope !75, !noalias !80
  store <4 x i8> %i.v, ptr %i.t, align 8, !tbaa !10, !alias.scope !80, !noalias !75
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.y = load <8 x i8>, ptr %i.x, align 8, !tbaa !10, !alias.scope !92, !noalias !87
  %i.z = load <8 x i8>, ptr %i.w, align 8, !tbaa !10, !alias.scope !87, !noalias !92
  store <8 x i8> %i.y, ptr %i.w, align 8, !tbaa !10, !alias.scope !87, !noalias !92
  store <8 x i8> %i.z, ptr %i.x, align 8, !tbaa !10, !alias.scope !92, !noalias !87
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.079.i.ptr.8.i.i.i29 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ab = load <4 x i8>, ptr %i.aa, align 8, !tbaa !10, !alias.scope !92, !noalias !87
  %i.ac = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i29, align 8, !tbaa !10, !alias.scope !87, !noalias !92
  store <4 x i8> %i.ab, ptr %.079.i.ptr.8.i.i.i29, align 8, !tbaa !10, !alias.scope !87, !noalias !92
  store <4 x i8> %i.ac, ptr %i.aa, align 8, !tbaa !10, !alias.scope !92, !noalias !87
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !46
  %i.ag = load <2 x i64>, ptr %i.ad, align 8, !tbaa !46
  store <2 x i64> %i.ag, ptr %i.ae, align 8, !tbaa !46
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.aj = load <8 x i8>, ptr %i.ai, align 8, !tbaa !10, !alias.scope !96, !noalias !93
  %i.ak = load <8 x i8>, ptr %i.ah, align 8, !tbaa !10, !alias.scope !93, !noalias !96
  store <8 x i8> %i.aj, ptr %i.ah, align 8, !tbaa !10, !alias.scope !93, !noalias !96
  store <8 x i8> %i.ak, ptr %i.ai, align 8, !tbaa !10, !alias.scope !96, !noalias !93
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.079.i.ptr.8.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.am = load <4 x i8>, ptr %i.al, align 8, !tbaa !10, !alias.scope !96, !noalias !93
  %i.an = load <4 x i8>, ptr %.079.i.ptr.8.i, align 8, !tbaa !10, !alias.scope !93, !noalias !96
  store <4 x i8> %i.am, ptr %.079.i.ptr.8.i, align 8, !tbaa !10, !alias.scope !93, !noalias !96
  store <4 x i8> %i.an, ptr %i.al, align 8, !tbaa !10, !alias.scope !96, !noalias !93
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf4Type11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf4Type12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf5FieldC2EPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(96) initializes((0, 89)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf5FieldE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.i, i8 0, i64 20, i1 false)
  store i32 -16, ptr %i.c, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <4 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE>, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.e, i8 0, i64 17, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf5FieldC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf5FieldE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
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
  %i.k = load i32, ptr %i.j, align 8, !tbaa !10
  store i32 %i.k, ptr %i.i, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 -16, ptr %i.o, align 4, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.noexc12, label %bb.a

bb.a:                                             ; preds = %.noexc14
  %i.s = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.x = inttoptr i64 %i.s to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef %.0.i.i.i.i.i, ptr noundef nonnull @_ZN6google8protobuf5Arena13CopyConstructINS0_6OptionEEEPvPS1_PKv), !inline_history !27
  br label %.noexc12
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf5Field18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %.9 = phi ptr [ %.8, %bb.ad ], [ %.8, %.loopexit ], [ %i.ej, %.critedge.i111 ], [ %i.en, %bb.ag ] ; 7 uses
  %i.eo = and i32 %i.b, 16
  %.not135 = icmp eq i32 %i.eo, 0
  br i1 %.not135, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit118, label %bb.ah

bb.ah:                                            ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit112
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !21
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = and i64 %i.er, -4
  %i.et = inttoptr i64 %i.es to ptr               ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !30 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit118, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ex = load ptr, ptr %i.et, align 8, !tbaa !35
  %i.ey = trunc i64 %i.ev to i32
  %i.ez = tail call noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %i.ex, i32 noundef %i.ey, i32 noundef 1, i64 35, ptr nonnull @.str.9) ; 0 uses
  %i.fa = load ptr, ptr %i.et, align 8, !tbaa !35 ; 2 uses
  %i.fb = load i64, ptr %i.eu, align 8, !tbaa !30 ; 6 uses
  %i.fc = icmp sgt i64 %i.fb, 127
  br i1 %i.fc, label %.critedge.i117, label %bb.aj, !prof !23

bb.aj:                                            ; preds = %bb.ai
  %i.fd = load ptr, ptr %2, align 8, !tbaa !43
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %.9 to i64
  %reass.sub147 = sub i64 %i.fe, %i.ff
  %i.fg = add i64 %reass.sub147, 14
  %i.fh = icmp slt i64 %i.fg, %i.fb
  br i1 %i.fh, label %.critedge.i117, label %bb.ak, !prof !23

.critedge.i117:                                   ; preds = %bb.aj, %bb.ai
  %i.fi = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 11, i64 %i.fb, ptr %i.fa, ptr noundef %.9)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit118

bb.ak:                                            ; preds = %bb.aj
  %i.fj = getelementptr inbounds nuw i8, ptr %.9, i64 1
  store i8 90, ptr %.9, align 1, !tbaa !10
  %i.fk = trunc i64 %i.fb to i8
  %i.fl = getelementptr inbounds nuw i8, ptr %.9, i64 2 ; 2 uses
  store i8 %i.fk, ptr %i.fj, align 1, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fl, ptr align 1 %i.fa, i64 %i.fb, i1 false)
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %i.fb
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit118

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit118: ; preds = %bb.ak, %.critedge.i117, %bb.ah, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit112
  %.10 = phi ptr [ %.9, %bb.ah ], [ %.9, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit112 ], [ %i.fi, %.critedge.i117 ], [ %i.fm, %bb.ak ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !11 ; 2 uses
  %i.fp = trunc i64 %i.fo to i1
  br i1 %i.fp, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.al, !prof !23

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit118
  %i.fq = add nsw i64 %i.fo, -1
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef %.10, ptr noundef %2)
  br label %bb.al

bb.al:                                            ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit118
  %.11 = phi ptr [ %i.ft, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.10, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit118 ]
  ret ptr %.11
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal14WireFormatLite26WriteInt32ToArrayWithFieldILi3EEEPhPNS0_2io19EpsCopyOutputStreamEiS4_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  %.not.i = icmp ult ptr %2, %i.a
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %2)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  store i8 24, ptr %.0.i, align 1, !tbaa !10
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = icmp ugt i32 %1, 127
  br i1 %i.e, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !52

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.f = trunc i64 %.07.i1.i.i to i8
  %i.g = or i8 %i.f, -128
  store i8 %i.g, ptr %.0.i2.i.i, align 1, !tbaa !10
  %i.h = lshr i64 %.07.i1.i.i, 7                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.j = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !53, !llvm.loop !54

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i.i = phi i64 [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.h, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.k = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.k, ptr %.0.i.lcssa.i.i, align 1, !tbaa !10
  ret ptr %i.l
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal14WireFormatLite26WriteInt32ToArrayWithFieldILi7EEEPhPNS0_2io19EpsCopyOutputStreamEiS4_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  %.not.i = icmp ult ptr %2, %i.a
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %2)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  store i8 56, ptr %.0.i, align 1, !tbaa !10
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = icmp ugt i32 %1, 127
  br i1 %i.e, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !52

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.f = trunc i64 %.07.i1.i.i to i8
  %i.g = or i8 %i.f, -128
  store i8 %i.g, ptr %.0.i2.i.i, align 1, !tbaa !10
  %i.h = lshr i64 %.07.i1.i.i, 7                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.j = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !53, !llvm.loop !54

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i.i = phi i64 [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.h, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.k = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.k, ptr %.0.i.lcssa.i.i, align 1, !tbaa !10
  ret ptr %i.l
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf5Field12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3    ; 12 uses
  %i.n = and i32 %i.m, 255
  %.not56 = icmp eq i32 %i.n, 0
  br i1 %.not56, label %bb.w, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = and i32 %i.m, 1
  %.not57 = icmp eq i32 %i.o, 0
  br i1 %.not57, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20   ; 2 uses
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
  %.not5870 = icmp eq i32 %i.q, 0
  br i1 %.not5870, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.072 = phi i64 [ %i.an, %.lr.ph ], [ %i.r, %bb.b ]
  %.sroa.053.071 = phi ptr [ %i.ao, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %i.ac = load ptr, ptr %.sroa.053.071, align 8, !tbaa !46
  %i.ad = tail call noundef i64 @_ZNK6google8protobuf6Option12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = or i32 %i.ae, 1
  %i.ag = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.af, i1 true)
  %i.ah = xor i32 %i.ag, 31
  %i.ai = mul nuw nsw i32 %i.ah, 9
  %i.aj = add nuw nsw i32 %i.ai, 73
  %i.ak = lshr i32 %i.aj, 6
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add i64 %i.ad, %.072
  %i.an = add i64 %i.am, %i.al                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.053.071, i64 8 ; 2 uses
  %.not58 = icmp eq ptr %i.ao, %i.ab
  br i1 %.not58, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ap = and i32 %i.m, 2
  %.not59 = icmp eq i32 %i.ap, 0
  br i1 %.not59, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, -4
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !30 ; 3 uses
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
  %.not60 = icmp eq i32 %i.bj, 0
  br i1 %.not60, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !21
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = and i64 %i.bm, -4
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !30 ; 3 uses
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
  %.not61 = icmp eq i32 %i.cd, 0
  br i1 %.not61, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = and i64 %i.cg, -4
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !30 ; 3 uses
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
  %.not62 = icmp eq i32 %i.cx, 0
  br i1 %.not62, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !21
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = and i64 %i.da, -4
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !30 ; 3 uses
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
  %.5 = phi i64 [ %.4, %bb.l ], [ %i.dq, %bb.m ], [ %.4, %bb.k ] ; 3 uses
  %i.dr = and i32 %i.m, 32
  %.not63 = icmp eq i32 %i.dr, 0
  br i1 %.not63, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i32 %i.dt, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.du = or i32 %i.dt, 1
  %i.dv = sext i32 %i.du to i64
  %i.dw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dv, i1 true)
  %i.dx = xor i64 %i.dw, 63
  %i.dy = mul nuw nsw i64 %i.dx, 9
  %i.dz = add nuw nsw i64 %i.dy, 73
  %i.ea = lshr i64 %i.dz, 6
  %i.eb = add i64 %.5, 1
  %i.ec = add i64 %i.eb, %i.ea
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.6 = phi i64 [ %i.ec, %bb.p ], [ %.5, %bb.o ], [ %.5, %bb.n ] ; 3 uses
  %i.ed = and i32 %i.m, 64
  %.not64 = icmp eq i32 %i.ed, 0
  br i1 %.not64, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !10 ; 2 uses
  %.not50 = icmp eq i32 %i.ef, 0
  br i1 %.not50, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eg = or i32 %i.ef, 1
  %i.eh = sext i32 %i.eg to i64
  %i.ei = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eh, i1 true)
  %i.ej = xor i64 %i.ei, 63
  %i.ek = mul nuw nsw i64 %i.ej, 9
  %i.el = add nuw nsw i64 %i.ek, 73
  %i.em = lshr i64 %i.el, 6
  %i.en = add i64 %.6, 1
  %i.eo = add i64 %i.en, %i.em
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.7 = phi i64 [ %i.eo, %bb.s ], [ %.6, %bb.r ], [ %.6, %bb.q ] ; 3 uses
  %i.ep = and i32 %i.m, 128
  %.not65 = icmp eq i32 %i.ep, 0
  br i1 %.not65, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !10 ; 2 uses
  %.not51 = icmp eq i32 %i.er, 0
  br i1 %.not51, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.es = or i32 %i.er, 1
  %i.et = sext i32 %i.es to i64
  %i.eu = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.et, i1 true)
  %i.ev = xor i64 %i.eu, 63
  %i.ew = mul nuw nsw i64 %i.ev, 9
  %i.ex = add nuw nsw i64 %i.ew, 137
  %i.ey = lshr i64 %i.ex, 6
  %i.ez = add i64 %i.ey, %.7
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v, %bb.u, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.8 = phi i64 [ %i.ez, %bb.v ], [ %.7, %bb.u ], [ %.7, %bb.t ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ] ; 4 uses
  %i.fa = and i32 %i.m, 768
  %.not66 = icmp eq i32 %i.fa, 0
  br i1 %.not66, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fb = and i32 %i.m, 256
  %.not67 = icmp eq i32 %i.fb, 0
  br i1 %.not67, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !10 ; 2 uses
  %.not52 = icmp eq i32 %i.fd, 0
  br i1 %.not52, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fe = or i32 %i.fd, 1
  %i.ff = sext i32 %i.fe to i64
  %i.fg = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ff, i1 true)
  %i.fh = xor i64 %i.fg, 63
  %i.fi = mul nuw nsw i64 %i.fh, 9
  %i.fj = add nuw nsw i64 %i.fi, 137
  %i.fk = lshr i64 %i.fj, 6
  %i.fl = add i64 %i.fk, %.8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x
  %.9 = phi i64 [ %i.fl, %bb.z ], [ %.8, %bb.y ], [ %.8, %bb.x ] ; 2 uses
  %i.fm = and i32 %i.m, 512
  %.not68 = icmp eq i32 %i.fm, 0
  br i1 %.not68, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !10, !range !98, !noundef !99
  %i.fp = shl nuw nsw i8 %i.fo, 1
  %i.fq = zext nneg i8 %i.fp to i64
  %spec.select = add i64 %.9, %i.fq
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.w
  %.10 = phi i64 [ %.8, %bb.w ], [ %spec.select, %bb.ab ], [ %.9, %bb.aa ]
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fs = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.10, ptr noundef nonnull %i.fr)
  ret i64 %i.fs
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf5Field8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf5Field5ClearEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  tail call void @_ZN6google8protobuf5Field9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6google8protobuf5Field12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 dereferenceable(96) %0, ptr noalias nofree noundef %1) local_unnamed_addr #10 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  store i64 %i.d, ptr %i.a, align 8, !tbaa !56
  store i64 %i.b, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.k = load <8 x i8>, ptr %i.j, align 8, !tbaa !10, !alias.scope !112, !noalias !107
  %i.l = load <8 x i8>, ptr %i.i, align 8, !tbaa !10, !alias.scope !107, !noalias !112
  store <8 x i8> %i.k, ptr %i.i, align 8, !tbaa !10, !alias.scope !107, !noalias !112
  store <8 x i8> %i.l, ptr %i.j, align 8, !tbaa !10, !alias.scope !112, !noalias !107
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 8, !tbaa !10, !alias.scope !112, !noalias !107
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !10, !alias.scope !107, !noalias !112
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !10, !alias.scope !107, !noalias !112
  store <4 x i8> %i.o, ptr %i.m, align 8, !tbaa !10, !alias.scope !112, !noalias !107
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !tbaa !46
  %i.s = load <2 x i64>, ptr %i.p, align 8, !tbaa !46
  store <2 x i64> %i.s, ptr %i.q, align 8, !tbaa !46
  store <2 x ptr> %i.r, ptr %i.p, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !46
  %i.w = load <2 x i64>, ptr %i.t, align 8, !tbaa !46
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !46
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.z = load <16 x i8>, ptr %i.y, align 8, !tbaa !10, !alias.scope !116, !noalias !113
  %i.aa = load <16 x i8>, ptr %i.x, align 8, !tbaa !10, !alias.scope !113, !noalias !116
  store <16 x i8> %i.z, ptr %i.x, align 8, !tbaa !10, !alias.scope !113, !noalias !116
  store <16 x i8> %i.aa, ptr %i.y, align 8, !tbaa !10, !alias.scope !116, !noalias !113
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.079.i.ptr.16.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ac = load i8, ptr %.079.i.ptr.16.i, align 8, !tbaa !10, !alias.scope !113, !noalias !116
  %i.ad = load i8, ptr %i.ab, align 8, !tbaa !10, !alias.scope !116, !noalias !113
  store i8 %i.ad, ptr %.079.i.ptr.16.i, align 8, !tbaa !10, !alias.scope !113, !noalias !116
  store i8 %i.ac, ptr %i.ab, align 8, !tbaa !10, !alias.scope !116, !noalias !113
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf5Field11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf5Field12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4Enum20clear_source_contextEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf13SourceContext5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !3
  %i.e = and i32 %i.d, -17
  store i32 %i.e, ptr %i.c, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf4EnumC2EPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) initializes((0, 84)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf4EnumE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.i, i8 0, i64 20, i1 false)
  store i32 -16, ptr %i.c, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 -32, ptr %i.f, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.i, i8 0, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4EnumC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf4EnumE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %.noexc13, label %.noexc24

.noexc13:                                         ; preds = %.noexc
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %.noexc24

.noexc24:                                         ; preds = %.noexc13, %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !10
  store i32 %i.k, ptr %i.i, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 -16, ptr %i.o, align 4, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.noexc20, label %bb.a

bb.a:                                             ; preds = %.noexc24
  %i.s = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf4Enum18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = sext i32 %.05881 to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %.0.i.i.i.i60 = select i1 %i.ba, ptr %i.aw, ptr %i.bf
  %i.bg = load ptr, ptr %.0.i.i.i.i60, align 8, !tbaa !46 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bi = load atomic i32, ptr %i.bh monotonic, align 4
  %i.bj = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i32 noundef %i.bi, ptr noundef %.382, ptr noundef %2) ; 2 uses
  %i.bk = add nuw i32 %.05881, 1                  ; 2 uses
  %exitcond91.not = icmp eq i32 %i.bk, %i.av
  br i1 %exitcond91.not, label %.loopexit, label %bb.i, !llvm.loop !120

.loopexit:                                        ; preds = %bb.i, %bb.h, %.loopexit77
  %.4 = phi ptr [ %.2, %.loopexit77 ], [ %.2, %bb.h ], [ %i.bj, %bb.i ] ; 2 uses
  %i.bl = and i32 %i.b, 16
  %.not73 = icmp eq i32 %i.bl, 0
  br i1 %.not73, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !10 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.bp = load atomic i32, ptr %i.bo monotonic, align 4
  %i.bq = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i32 noundef %i.bp, ptr noundef %.4, ptr noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %.5 = phi ptr [ %i.bq, %bb.j ], [ %.4, %.loopexit ] ; 5 uses
  %i.br = and i32 %i.b, 32
  %.not74 = icmp eq i32 %i.br, 0
  br i1 %.not74, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i32 %i.bt, 0
  br i1 %.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = load ptr, ptr %2, align 8, !tbaa !43
  %.not.i = icmp ult ptr %.5, %i.bu
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.n, !prof !51

bb.n:                                             ; preds = %bb.m
  %i.bv = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %.5)
  %.pr = load i32, ptr %i.bs, align 8, !tbaa !10
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.m, %bb.n
  %i.bw = phi i32 [ %i.bt, %bb.m ], [ %.pr, %bb.n ] ; 2 uses
  %.0.i61 = phi ptr [ %.5, %bb.m ], [ %i.bv, %bb.n ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i61, i64 1 ; 2 uses
  store i8 40, ptr %.0.i61, align 1, !tbaa !10
  %i.by = sext i32 %i.bw to i64                   ; 2 uses
  %i.bz = icmp ugt i32 %i.bw, 127
  br i1 %i.bz, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !52

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %i.bx, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.cc, %.lr.ph.i.i ], [ %i.by, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.ca = trunc i64 %.07.i1.i.i to i8
  %i.cb = or i8 %i.ca, -128
  store i8 %i.cb, ptr %.0.i2.i.i, align 1, !tbaa !10
  %i.cc = lshr i64 %.07.i1.i.i, 7                 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.ce = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.ce, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !53, !llvm.loop !54

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i.i = phi i64 [ %i.by, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.cc, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.bx, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.cd, %.lr.ph.i.i ] ; 2 uses
  %i.cf = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.cf, ptr %.0.i.lcssa.i.i, align 1, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, %bb.k
  %.6 = phi ptr [ %i.cg, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit ], [ %.5, %bb.l ], [ %.5, %bb.k ] ; 7 uses
  %i.ch = and i32 %i.b, 8
  %.not75 = icmp eq i32 %i.ch, 0
  br i1 %.not75, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit67, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !21
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, -4
  %i.cm = inttoptr i64 %i.cl to ptr               ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !30 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit67, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !35
  %i.cr = trunc i64 %i.co to i32
  %i.cs = tail call noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %i.cq, i32 noundef %i.cr, i32 noundef 1, i64 28, ptr nonnull @.str.11) ; 0 uses
  %i.ct = load ptr, ptr %i.cm, align 8, !tbaa !35 ; 2 uses
  %i.cu = load i64, ptr %i.cn, align 8, !tbaa !30 ; 6 uses
  %i.cv = icmp sgt i64 %i.cu, 127
  br i1 %i.cv, label %.critedge.i66, label %bb.r, !prof !23

bb.r:                                             ; preds = %bb.q
  %i.cw = load ptr, ptr %2, align 8, !tbaa !43
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %.6 to i64
  %reass.sub87 = sub i64 %i.cx, %i.cy
  %i.cz = add i64 %reass.sub87, 14
  %i.da = icmp slt i64 %i.cz, %i.cu
  br i1 %i.da, label %.critedge.i66, label %bb.s, !prof !23

.critedge.i66:                                    ; preds = %bb.r, %bb.q
  %i.db = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 6, i64 %i.cu, ptr %i.ct, ptr noundef %.6)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit67

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %.6, i64 1
  store i8 50, ptr %.6, align 1, !tbaa !10
  %i.dd = trunc i64 %i.cu to i8
  %i.de = getelementptr inbounds nuw i8, ptr %.6, i64 2 ; 2 uses
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr align 1 %i.ct, i64 %i.cu, i1 false)
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.cu
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit67

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit67: ; preds = %bb.s, %.critedge.i66, %bb.p, %bb.o
  %.7 = phi ptr [ %.6, %bb.p ], [ %.6, %bb.o ], [ %i.db, %.critedge.i66 ], [ %i.df, %bb.s ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !11 ; 2 uses
  %i.di = trunc i64 %i.dh to i1
  br i1 %i.di, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.t, !prof !23

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit67
  %i.dj = add nsw i64 %i.dh, -1
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, ptr noundef %.7, ptr noundef %2)
  br label %bb.t

bb.t:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit67
  %.8 = phi ptr [ %i.dm, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.7, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit67 ]
  ret ptr %.8
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf4Enum12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3    ; 7 uses
  %i.n = and i32 %i.m, 63
  %.not44 = icmp eq i32 %i.n, 0
  br i1 %.not44, label %bb.n, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = and i32 %i.m, 1
  %.not45 = icmp eq i32 %i.o, 0
  br i1 %.not45, label %.loopexit53, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20   ; 2 uses
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
  br i1 %.not4655, label %.loopexit53, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.057 = phi i64 [ %i.an, %.lr.ph ], [ %i.r, %bb.b ]
  %.sroa.041.056 = phi ptr [ %i.ao, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %i.ac = load ptr, ptr %.sroa.041.056, align 8, !tbaa !46
  %i.ad = tail call noundef i64 @_ZNK6google8protobuf9EnumValue12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ac) ; 2 uses
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
  br i1 %.not46, label %.loopexit53, label %.lr.ph

.loopexit53:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.an, %.lr.ph ] ; 2 uses
  %i.ap = and i32 %i.m, 2
  %.not47 = icmp eq i32 %i.ap, 0
  br i1 %.not47, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.loopexit53
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !20 ; 2 uses
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
  %.idx63 = shl nsw i64 %i.as, 3
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %.idx63
  %.not4858 = icmp eq i32 %i.ar, 0
  br i1 %.not4858, label %.loopexit, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.c, %.lr.ph61
  %.260 = phi i64 [ %i.bp, %.lr.ph61 ], [ %i.at, %bb.c ]
  %.sroa.037.059 = phi ptr [ %i.bq, %.lr.ph61 ], [ %i.bc, %bb.c ] ; 2 uses
  %i.be = load ptr, ptr %.sroa.037.059, align 8, !tbaa !46
  %i.bf = tail call noundef i64 @_ZNK6google8protobuf6Option12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %i.be) ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = or i32 %i.bg, 1
  %i.bi = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bh, i1 true)
  %i.bj = xor i32 %i.bi, 31
  %i.bk = mul nuw nsw i32 %i.bj, 9
  %i.bl = add nuw nsw i32 %i.bk, 73
  %i.bm = lshr i32 %i.bl, 6
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = add i64 %i.bf, %.260
  %i.bp = add i64 %i.bo, %i.bn                    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.037.059, i64 8 ; 2 uses
  %.not48 = icmp eq ptr %i.bq, %i.bd
  br i1 %.not48, label %.loopexit, label %.lr.ph61

.loopexit:                                        ; preds = %.lr.ph61, %bb.c, %.loopexit53
  %.3 = phi i64 [ %.1, %.loopexit53 ], [ %i.at, %bb.c ], [ %i.bp, %.lr.ph61 ] ; 3 uses
  %i.br = and i32 %i.m, 4
  %.not49 = icmp eq i32 %i.br, 0
  br i1 %.not49, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = and i64 %i.bu, -4
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !30 ; 3 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ca = trunc i64 %i.by to i32
  %i.cb = or i32 %i.ca, 1
  %i.cc = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cb, i1 true)
  %i.cd = xor i32 %i.cc, 31
  %i.ce = mul nuw nsw i32 %i.cd, 9
  %i.cf = add nuw nsw i32 %i.ce, 73
  %i.cg = lshr i32 %i.cf, 6
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = add i64 %.3, 1
  %i.cj = add i64 %i.ci, %i.by
  %i.ck = add i64 %i.cj, %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %.loopexit
  %.4 = phi i64 [ %.3, %bb.d ], [ %i.ck, %bb.e ], [ %.3, %.loopexit ] ; 3 uses
  %i.cl = and i32 %i.m, 8
  %.not50 = icmp eq i32 %i.cl, 0
  br i1 %.not50, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !21
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = and i64 %i.co, -4
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !30 ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cu = trunc i64 %i.cs to i32
  %i.cv = or i32 %i.cu, 1
  %i.cw = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cv, i1 true)
  %i.cx = xor i32 %i.cw, 31
  %i.cy = mul nuw nsw i32 %i.cx, 9
  %i.cz = add nuw nsw i32 %i.cy, 73
  %i.da = lshr i32 %i.cz, 6
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = add i64 %.4, 1
  %i.dd = add i64 %i.dc, %i.cs
  %i.de = add i64 %i.dd, %i.db
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.5 = phi i64 [ %.4, %bb.g ], [ %i.de, %bb.h ], [ %.4, %bb.f ] ; 2 uses
  %i.df = and i32 %i.m, 16
  %.not51 = icmp eq i32 %i.df, 0
  br i1 %.not51, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !10
  %i.di = tail call noundef i64 @_ZNK6google8protobuf13SourceContext12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dh) ; 2 uses
  %i.dj = trunc i64 %i.di to i32
  %i.dk = or i32 %i.dj, 1
  %i.dl = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dk, i1 true)
  %i.dm = xor i32 %i.dl, 31
  %i.dn = mul nuw nsw i32 %i.dm, 9
  %i.do = add nuw nsw i32 %i.dn, 73
  %i.dp = lshr i32 %i.do, 6
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = add i64 %.5, 1
  %i.ds = add i64 %i.dr, %i.di
  %i.dt = add i64 %i.ds, %i.dq
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.6 = phi i64 [ %i.dt, %bb.j ], [ %.5, %bb.i ]  ; 3 uses
  %i.du = and i32 %i.m, 32
  %.not52 = icmp eq i32 %i.du, 0
  br i1 %.not52, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i32 %i.dw, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dx = or i32 %i.dw, 1
  %i.dy = sext i32 %i.dx to i64
  %i.dz = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dy, i1 true)
  %i.ea = xor i64 %i.dz, 63
  %i.eb = mul nuw nsw i64 %i.ea, 9
  %i.ec = add nuw nsw i64 %i.eb, 73
  %i.ed = lshr i64 %i.ec, 6
  %i.ee = add i64 %.6, 1
  %i.ef = add i64 %i.ee, %i.ed
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.7 = phi i64 [ %i.ef, %bb.m ], [ %.6, %bb.l ], [ %.6, %bb.k ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eh = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.7, ptr noundef nonnull %i.eg)
  ret i64 %i.eh
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4Enum8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf4Enum5ClearEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  tail call void @_ZN6google8protobuf4Enum9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6google8protobuf4Enum12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef %1) local_unnamed_addr #10 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  store i64 %i.d, ptr %i.a, align 8, !tbaa !56
  store i64 %i.b, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.k = load <8 x i8>, ptr %i.j, align 8, !tbaa !10, !alias.scope !132, !noalias !127
  %i.l = load <8 x i8>, ptr %i.i, align 8, !tbaa !10, !alias.scope !127, !noalias !132
  store <8 x i8> %i.k, ptr %i.i, align 8, !tbaa !10, !alias.scope !127, !noalias !132
  store <8 x i8> %i.l, ptr %i.j, align 8, !tbaa !10, !alias.scope !132, !noalias !127
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 8, !tbaa !10, !alias.scope !132, !noalias !127
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !10, !alias.scope !127, !noalias !132
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !10, !alias.scope !127, !noalias !132
  store <4 x i8> %i.o, ptr %i.m, align 8, !tbaa !10, !alias.scope !132, !noalias !127
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.r = load <8 x i8>, ptr %i.q, align 8, !tbaa !10, !alias.scope !144, !noalias !139
  %i.s = load <8 x i8>, ptr %i.p, align 8, !tbaa !10, !alias.scope !139, !noalias !144
  store <8 x i8> %i.r, ptr %i.p, align 8, !tbaa !10, !alias.scope !139, !noalias !144
  store <8 x i8> %i.s, ptr %i.q, align 8, !tbaa !10, !alias.scope !144, !noalias !139
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.079.i.ptr.8.i.i.i17 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.u = load <4 x i8>, ptr %i.t, align 8, !tbaa !10, !alias.scope !144, !noalias !139
  %i.v = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i17, align 8, !tbaa !10, !alias.scope !139, !noalias !144
  store <4 x i8> %i.u, ptr %.079.i.ptr.8.i.i.i17, align 8, !tbaa !10, !alias.scope !139, !noalias !144
  store <4 x i8> %i.v, ptr %i.t, align 8, !tbaa !10, !alias.scope !144, !noalias !139
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !46
  %i.z = load <2 x i64>, ptr %i.w, align 8, !tbaa !46
  store <2 x i64> %i.z, ptr %i.x, align 8, !tbaa !46
  store <2 x ptr> %i.y, ptr %i.w, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.ac = load <8 x i8>, ptr %i.ab, align 8, !tbaa !10, !alias.scope !148, !noalias !145
  %i.ad = load <8 x i8>, ptr %i.aa, align 8, !tbaa !10, !alias.scope !145, !noalias !148
  store <8 x i8> %i.ac, ptr %i.aa, align 8, !tbaa !10, !alias.scope !145, !noalias !148
  store <8 x i8> %i.ad, ptr %i.ab, align 8, !tbaa !10, !alias.scope !148, !noalias !145
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.079.i.ptr.8.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.af = load <4 x i8>, ptr %i.ae, align 8, !tbaa !10, !alias.scope !148, !noalias !145
  %i.ag = load <4 x i8>, ptr %.079.i.ptr.8.i, align 8, !tbaa !10, !alias.scope !145, !noalias !148
  store <4 x i8> %i.af, ptr %.079.i.ptr.8.i, align 8, !tbaa !10, !alias.scope !145, !noalias !148
  store <4 x i8> %i.ag, ptr %i.ae, align 8, !tbaa !10, !alias.scope !148, !noalias !145
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf4Enum11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf4Enum12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf9EnumValueC2EPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 52)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf9EnumValueE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.i, i8 0, i64 20, i1 false)
  store i32 -16, ptr %i.c, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf9EnumValueC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf9EnumValueE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
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
  %i.k = load i32, ptr %i.j, align 8, !tbaa !10
  store i32 %i.k, ptr %i.i, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 -16, ptr %i.o, align 4, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.noexc12, label %bb.a

bb.a:                                             ; preds = %.noexc14
  %i.s = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.t = trunc i64 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.u = add nsw i64 %i.s, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.x = inttoptr i64 %i.s to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.w, %bb.b ]
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef %.0.i.i.i.i.i, ptr noundef nonnull @_ZN6google8protobuf5Arena13CopyConstructINS0_6OptionEEEPvPS1_PKv), !inline_history !27
  br label %.noexc12

.noexc12:                                         ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEE8GetArenaEv.exit.i, %.noexc14
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, 3
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc12
  %i.ad = invoke ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %1)
          to label %bb.e unwind label %.body

.body:                                            ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldINS0_6OptionEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #21
  resume { ptr, i32 } %i.ae

bb.e:                                             ; preds = %bb.d, %.noexc12
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf9EnumValue18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  br i1 %i.k, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.m = trunc i64 %i.j to i32
  %i.n = tail call noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %i.l, i32 noundef %i.m, i32 noundef 1, i64 30, ptr nonnull @.str.13) ; 0 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.p = load i64, ptr %i.i, align 8, !tbaa !30   ; 6 uses
  %i.q = icmp sgt i64 %i.p, 127
  br i1 %i.q, label %.critedge.i, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %2, align 8, !tbaa !43
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %1 to i64
  %reass.sub = sub i64 %i.s, %i.t
  %i.u = add i64 %reass.sub, 14
  %i.v = icmp slt i64 %i.u, %i.p
  br i1 %i.v, label %.critedge.i, label %bb.e, !prof !23

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %i.w = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 1, i64 %i.p, ptr %i.o, ptr noundef %1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 10, ptr %1, align 1, !tbaa !10
  %i.y = trunc i64 %i.p to i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 %i.y, ptr %i.x, align 1, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.o, i64 %i.p, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.p
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit: ; preds = %bb.e, %.critedge.i, %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.b ], [ %1, %bb.a ], [ %i.w, %.critedge.i ], [ %i.aa, %bb.e ] ; 3 uses
  %i.ab = and i32 %i.b, 4
  %.not33 = icmp eq i32 %i.ab, 0
  br i1 %.not33, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite26WriteInt32ToArrayWithFieldILi2EEEPhPNS0_2io19EpsCopyOutputStreamEiS4_(ptr noundef %2, i32 noundef %i.ad, ptr noundef %.0)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %.1 = phi ptr [ %i.ae, %bb.g ], [ %.0, %bb.f ], [ %.0, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit ] ; 3 uses
  %i.af = and i32 %i.b, 1
  %.not34 = icmp eq i32 %i.af, 0
  br i1 %.not34, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !20 ; 2 uses
  %.not37 = icmp eq i32 %i.ah, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %.236 = phi ptr [ %.1, %.lr.ph ], [ %i.av, %bb.j ]
  %.03035 = phi i32 [ 0, %.lr.ph ], [ %i.aw, %bb.j ] ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !18
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.al = and i64 %i.ak, 1
  %i.am = icmp eq i64 %i.al, 0
  %i.an = add i64 %i.ak, -1
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = sext i32 %.03035 to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  %.0.i.i.i.i = select i1 %i.am, ptr %i.ai, ptr %i.ar
  %i.as = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !46 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.au = load atomic i32, ptr %i.at monotonic, align 4
  %i.av = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i32 noundef %i.au, ptr noundef %.236, ptr noundef %2) ; 2 uses
  %i.aw = add nuw i32 %.03035, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, %i.ah
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !150

.loopexit:                                        ; preds = %bb.j, %bb.i, %bb.h
  %.3 = phi ptr [ %.1, %bb.h ], [ %.1, %bb.i ], [ %i.av, %bb.j ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11 ; 2 uses
  %i.az = trunc i64 %i.ay to i1
  br i1 %i.az, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.k, !prof !23

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %.loopexit
  %i.ba = add nsw i64 %i.ay, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef %.3, ptr noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %.loopexit
  %.4 = phi ptr [ %i.bd, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.3, %.loopexit ]
  ret ptr %.4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal14WireFormatLite26WriteInt32ToArrayWithFieldILi2EEEPhPNS0_2io19EpsCopyOutputStreamEiS4_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  %.not.i = icmp ult ptr %2, %i.a
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %2)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %2, %bb.a ]  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  store i8 16, ptr %.0.i, align 1, !tbaa !10
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = icmp ugt i32 %1, 127
  br i1 %i.e, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !52

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ] ; 3 uses
  %i.f = trunc i64 %.07.i1.i.i to i8
  %i.g = or i8 %i.f, -128
  store i8 %i.g, ptr %.0.i2.i.i, align 1, !tbaa !10
  %i.h = lshr i64 %.07.i1.i.i, 7                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.j = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !53, !llvm.loop !54

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.07.i.lcssa.i.i = phi i64 [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.h, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.c, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.k = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.k, ptr %.0.i.lcssa.i.i, align 1, !tbaa !10
  ret ptr %i.l
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf9EnumValue12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.m = load i32, ptr %i.l, align 8, !tbaa !3    ; 4 uses
  %i.n = and i32 %i.m, 7
  %.not25 = icmp eq i32 %i.n, 0
  br i1 %.not25, label %bb.h, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = and i32 %i.m, 1
  %.not26 = icmp eq i32 %i.o, 0
  br i1 %.not26, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20   ; 2 uses
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
  %.not2731 = icmp eq i32 %i.q, 0
  br i1 %.not2731, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.033 = phi i64 [ %i.an, %.lr.ph ], [ %i.r, %bb.b ]
  %.sroa.022.032 = phi ptr [ %i.ao, %.lr.ph ], [ %i.aa, %bb.b ] ; 2 uses
  %i.ac = load ptr, ptr %.sroa.022.032, align 8, !tbaa !46
  %i.ad = tail call noundef i64 @_ZNK6google8protobuf6Option12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) ; 2 uses
  %i.ae = trunc i64 %i.ad to i32
  %i.af = or i32 %i.ae, 1
  %i.ag = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.af, i1 true)
  %i.ah = xor i32 %i.ag, 31
  %i.ai = mul nuw nsw i32 %i.ah, 9
  %i.aj = add nuw nsw i32 %i.ai, 73
  %i.ak = lshr i32 %i.aj, 6
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add i64 %i.ad, %.033
  %i.an = add i64 %i.am, %i.al                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.022.032, i64 8 ; 2 uses
  %.not27 = icmp eq ptr %i.ao, %i.ab
  br i1 %.not27, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.an, %.lr.ph ] ; 3 uses
  %i.ap = and i32 %i.m, 2
  %.not28 = icmp eq i32 %i.ap, 0
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = and i64 %i.as, -4
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !30 ; 3 uses
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
  %.not29 = icmp eq i32 %i.bj, 0
  br i1 %.not29, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = or i32 %i.bl, 1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bn, i1 true)
  %i.bp = xor i64 %i.bo, 63
  %i.bq = mul nuw nsw i64 %i.bp, 9
  %i.br = add nuw nsw i64 %i.bq, 137
  %i.bs = lshr i64 %i.br, 6
  %i.bt = add i64 %i.bs, %.2
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.3 = phi i64 [ %i.bt, %bb.g ], [ %.2, %bb.f ], [ %.2, %bb.e ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bv = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.3, ptr noundef nonnull %i.bu)
  ret i64 %i.bv
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf9EnumValue8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf9EnumValue5ClearEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  tail call void @_ZN6google8protobuf9EnumValue9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6google8protobuf9EnumValue12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #10 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  store i64 %i.d, ptr %i.a, align 8, !tbaa !56
  store i64 %i.b, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.k = load <8 x i8>, ptr %i.j, align 8, !tbaa !10, !alias.scope !162, !noalias !157
  %i.l = load <8 x i8>, ptr %i.i, align 8, !tbaa !10, !alias.scope !157, !noalias !162
  store <8 x i8> %i.k, ptr %i.i, align 8, !tbaa !10, !alias.scope !157, !noalias !162
  store <8 x i8> %i.l, ptr %i.j, align 8, !tbaa !10, !alias.scope !162, !noalias !157
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 8, !tbaa !10, !alias.scope !162, !noalias !157
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !10, !alias.scope !157, !noalias !162
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !10, !alias.scope !157, !noalias !162
  store <4 x i8> %i.o, ptr %i.m, align 8, !tbaa !10, !alias.scope !162, !noalias !157
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.q, align 8, !tbaa !46
  %i.r = load i64, ptr %i.p, align 8, !tbaa !46
  store i64 %i.r, ptr %i.q, align 8, !tbaa !46
  store ptr %.sroa.0.0.copyload.i, ptr %i.p, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.u = load i32, ptr %i.s, align 8, !tbaa !3
  %i.v = load i32, ptr %i.t, align 8, !tbaa !3
  store i32 %i.v, ptr %i.s, align 8, !tbaa !3
  store i32 %i.u, ptr %i.t, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf9EnumValue11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf9EnumValue12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6Option11clear_valueEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf3Any5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !3
  %i.e = and i32 %i.d, -3
  store i32 %i.e, ptr %i.c, align 8, !tbaa !3
  ret void
}

declare void @_ZN6google8protobuf3Any5ClearEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6google8protobuf6OptionC2EPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf6OptionE, i64 16), ptr %0, align 8, !tbaa !14
  %.ptr.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.ptr.i, align 8, !tbaa !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.c, align 4, !tbaa !163
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.e, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6OptionC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 16)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf6OptionE, i64 16), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %.noexc12, label %bb.a

.noexc12:                                         ; preds = %.noexc
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %bb.a

bb.a:                                             ; preds = %.noexc12, %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !163
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 3
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %1)
  %.pre = load i32, ptr %i.i, align 8, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi i32 [ %i.k, %bb.a ], [ %.pre, %bb.b ]
  %.sroa.0.0.i.i = phi ptr [ %i.o, %bb.a ], [ %i.s, %bb.b ]
  store ptr %.sroa.0.0.i.i, ptr %i.m, align 8
  %i.u = and i32 %i.t, 2
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %_ZN6google8protobuf11MessageLite13CopyConstructINS0_3AnyEEEPT_PNS0_5ArenaERKS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.x = tail call noundef ptr @_ZN6google8protobuf5Arena13CopyConstructINS0_3AnyEEEPvPS1_PKv(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %i.w)
  br label %_ZN6google8protobuf11MessageLite13CopyConstructINS0_3AnyEEEPT_PNS0_5ArenaERKS4_.exit

_ZN6google8protobuf11MessageLite13CopyConstructINS0_3AnyEEEPT_PNS0_5ArenaERKS4_.exit: ; preds = %bb.d, %bb.c
  %i.y = phi ptr [ null, %bb.c ], [ %i.x, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.y, ptr %i.z, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf6OptionD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i unwind label %bb.d

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc1 unwind label %bb.d

end_hunk_3
begin_hunk_4_@_ZN6google8protobuf6Option9MergeImplERNS0_11MessageLiteERKS2_:bb.a
  %i.be = add nsw i64 %i.bc, -1
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.bg)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %bb.q, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak noundef ptr @_ZNK6google8protobuf6Option12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull @_ZN6google8protobuf18Option_class_data_E, i32 0, i32 3, i32 1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf18Option_class_data_E, i64 8), align 8, !tbaa !36
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 3, i32 1)
  ret ptr @_ZN6google8protobuf18Option_class_data_E
}

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf6Option5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3    ; 3 uses
  %i.c = and i32 %i.b, 3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -4
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !30
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !35
  store i8 0, ptr %i.k, align 1, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = and i32 %i.b, 2
  %.not4 = icmp eq i32 %i.l, 0
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !10
  tail call void @_ZN6google8protobuf3Any5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %i.n)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  store i32 0, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  %i.q = trunc i64 %i.p to i1
  br i1 %i.q, label %bb.g, label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit: ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf6Option18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3    ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.m = trunc i64 %i.j to i32
  %i.n = tail call noundef zeroext i1 @_ZN6google8protobuf8internal14WireFormatLite16VerifyUtf8StringEPKciNS2_9OperationESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef %i.l, i32 noundef %i.m, i32 noundef 1, i64 27, ptr nonnull @.str.15) ; 0 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.p = load i64, ptr %i.i, align 8, !tbaa !30   ; 6 uses
  %i.q = icmp sgt i64 %i.p, 127
  br i1 %i.q, label %.critedge.i, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %2, align 8, !tbaa !43
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %1 to i64
  %reass.sub = sub i64 %i.s, %i.t
  %i.u = add i64 %reass.sub, 14
  %i.v = icmp slt i64 %i.u, %i.p
  br i1 %i.v, label %.critedge.i, label %bb.e, !prof !23

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %i.w = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjSt17basic_string_viewIcSt11char_traitsIcEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 1, i64 %i.p, ptr %i.o, ptr noundef %1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 10, ptr %1, align 1, !tbaa !10
  %i.y = trunc i64 %i.p to i8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 %i.y, ptr %i.x, align 1, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.o, i64 %i.p, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.p
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit: ; preds = %bb.e, %.critedge.i, %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.b ], [ %1, %bb.a ], [ %i.w, %.critedge.i ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ab = and i32 %i.b, 2
  %.not20 = icmp eq i32 %i.ab, 0
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !10 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.af = load atomic i32, ptr %i.ae monotonic, align 4
  %i.ag = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i32 noundef %i.af, ptr noundef %.0, ptr noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit
  %.1 = phi ptr [ %i.ag, %bb.f ], [ %.0, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.h, !prof !23

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.g
  %i.ak = add nsw i64 %i.ai, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef %.1, ptr noundef %2)
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %bb.g
  %.2 = phi ptr [ %i.an, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.1, %bb.g ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf6Option12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  br i1 %.not, label %bb.f, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = and i32 %i.m, 1
  %.not13 = icmp eq i32 %i.o, 0
  br i1 %.not13, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, -4
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !30   ; 3 uses
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
  %.0 = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.ah = and i32 %i.m, 2
  %.not14 = icmp eq i32 %i.ah, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !10
  %i.ak = tail call noundef i64 @_ZNK6google8protobuf3Any12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) ; 2 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = or i32 %i.al, 1
  %i.an = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.am, i1 true)
  %i.ao = xor i32 %i.an, 31
  %i.ap = mul nuw nsw i32 %i.ao, 9
  %i.aq = add nuw nsw i32 %i.ap, 73
  %i.ar = lshr i32 %i.aq, 6
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add i64 %.0, 1
  %i.au = add i64 %i.at, %i.ak
  %i.av = add i64 %i.au, %i.as
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.1 = phi i64 [ %i.av, %bb.e ], [ %.0, %bb.d ], [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ax = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.1, ptr noundef nonnull %i.aw)
  ret i64 %i.ax
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf6Option8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf6Option5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  tail call void @_ZN6google8protobuf6Option9MergeImplERNS0_11MessageLiteERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf6Option12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #12 align 2 {
_ZNK6google8protobuf11MessageLite8GetArenaEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56
  store i64 %i.d, ptr %i.a, align 8, !tbaa !56
  store i64 %i.b, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !3
  %i.h = load i32, ptr %i.f, align 8, !tbaa !3
  store i32 %i.h, ptr %i.e, align 8, !tbaa !3
  store i32 %i.g, ptr %i.f, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !165
  %i.o = load <2 x ptr>, ptr %i.j, align 8, !tbaa !46
  store i64 %i.k, ptr %i.j, align 8, !tbaa !46
  store <2 x ptr> %i.o, ptr %i.i, align 8, !tbaa !46
  store ptr %i.n, ptr %i.m, align 8, !tbaa !165
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf6Option11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf6Option12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare void @_ZN6google8protobuf8internal14AddDescriptorsEPKNS1_15DescriptorTableE(ptr noundef) local_unnamed_addr #1

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
  tail call void @__clang_call_terminate(ptr %i.c) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf16RepeatedPtrFieldINS0_5FieldEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @__clang_call_terminate(ptr %i.c) #22
  unreachable
}

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf5Arena13CopyConstructINS0_5FieldEEEPvPS1_PKv(ptr noundef %0, ptr noundef %1) #9 comdat align 2 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_5FieldEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = add i64 %i.a, 64
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_5FieldEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.d = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef 96)
  br label %bb.c

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_5FieldEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.e = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]  ; 2 uses
  tail call void @_ZN6google8protobuf5FieldC1EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %.0, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #13

declare noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

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
  %i.e = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]  ; 2 uses
  tail call void @_ZN6google8protobuf6OptionC1EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %.0, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret ptr %.0
}

declare ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

end_hunk_4
