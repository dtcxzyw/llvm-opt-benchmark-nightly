inline.NumInlined: 11222
inline.NumDeleted: 4344
begin_hunk_0_@_ZN4LIEF5MachO12BinaryParser22parse_dyldinfo_rebasesINS0_7details7MachO64EEENS_10ok_error_tEv:bb.a
  %.0120200 = phi i64 [ 0, %.lr.ph201 ], [ %i.ec, %bb.ae ]
  %.3199 = phi i64 [ %.0175203262, %.lr.ph201 ], [ %i.dy, %bb.ae ] ; 2 uses
  %i.dx = call i64 @_ZN4LIEF5MachO12BinaryParser9do_rebaseINS0_7details7MachO64EEENS_10ok_error_tEhhmPv(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %.0108206258, i8 noundef zeroext %i.ce, i64 noundef %.3199, ptr noundef nonnull %2) ; 0 uses
  %i.dy = add i64 %.3199, 8                       ; 3 uses
  br i1 %i.cf, label %.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = load i64, ptr %i.cg, align 8
  %i.ea = icmp ugt i64 %i.dy, %i.dz
  br i1 %i.ea, label %.sink.split, label %bb.ae

.sink.split:                                      ; preds = %bb.ad, %bb.ac
  %i.eb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ad
  %i.ec = add nuw nsw i64 %.0120200, 1            ; 2 uses
  %exitcond223.not = icmp eq i64 %i.ec, %i.cd
  br i1 %exitcond223.not, label %.loopexit, label %bb.ac, !llvm.loop !590

bb.af:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  %i.ed = load ptr, ptr %i.bg, align 8
  %i.ee = call { i64, i8 } @_ZNK4LIEF12BinaryStream12read_uleb128EPm(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef null) #17 ; 2 uses
  %.fca.1.extract20 = extractvalue { i64, i8 } %i.ee, 1
  %i.ef = trunc nuw i8 %.fca.1.extract20 to i1
  br i1 %i.ef, label %.preheader188, label %bb.ag

.preheader188:                                    ; preds = %bb.af
  %.fca.0.extract19 = extractvalue { i64, i8 } %i.ee, 0
  %i.eg = and i64 %.fca.0.extract19, 4294967295   ; 3 uses
  %.not210 = icmp eq i64 %i.eg, 0
  br i1 %.not210, label %.loopexit, label %.lr.ph196

.lr.ph196:                                        ; preds = %.preheader188
  %i.eh = icmp eq ptr %.0115204260, null
  %i.ei = getelementptr inbounds nuw i8, ptr %.0115204260, i64 112
  %i.ej = trunc nuw nsw i32 %.0111205259 to i8    ; 2 uses
  br i1 %i.eh, label %.lr.ph196.split.us, label %.lr.ph196.split

.lr.ph196.split.us:                               ; preds = %.lr.ph196, %.lr.ph196.split.us
  %.0121195.us = phi i64 [ %i.en, %.lr.ph196.split.us ], [ 0, %.lr.ph196 ]
  %.4177194.us = phi i64 [ %i.em, %.lr.ph196.split.us ], [ %.0175203262, %.lr.ph196 ] ; 2 uses
  %i.ek = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.el = call i64 @_ZN4LIEF5MachO12BinaryParser9do_rebaseINS0_7details7MachO64EEENS_10ok_error_tEhhmPv(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %.0108206258, i8 noundef zeroext %i.ej, i64 noundef %.4177194.us, ptr noundef nonnull %2) ; 0 uses
  %i.em = add i64 %.4177194.us, 8                 ; 2 uses
  %i.en = add nuw nsw i64 %.0121195.us, 1         ; 2 uses
  %exitcond222.not = icmp eq i64 %i.en, %i.eg
  br i1 %exitcond222.not, label %.loopexit, label %.lr.ph196.split.us, !llvm.loop !591

bb.ag:                                            ; preds = %bb.af
  %i.eo = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %.loopexit

.lr.ph196.split:                                  ; preds = %.lr.ph196, %bb.ai
  %.0121195 = phi i64 [ %i.eu, %bb.ai ], [ 0, %.lr.ph196 ]
  %.4177194 = phi i64 [ %i.et, %bb.ai ], [ %.0175203262, %.lr.ph196 ] ; 3 uses
  %i.ep = load i64, ptr %i.ei, align 8
  %i.eq = icmp ugt i64 %.4177194, %i.ep
  br i1 %i.eq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph196.split
  %i.er = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph196.split, %bb.ah
  %i.es = call i64 @_ZN4LIEF5MachO12BinaryParser9do_rebaseINS0_7details7MachO64EEENS_10ok_error_tEhhmPv(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %.0108206258, i8 noundef zeroext %i.ej, i64 noundef %.4177194, ptr noundef nonnull %2) ; 0 uses
  %i.et = add i64 %.4177194, 8                    ; 2 uses
  %i.eu = add nuw nsw i64 %.0121195, 1            ; 2 uses
  %exitcond221.not = icmp eq i64 %i.eu, %i.eg
  br i1 %exitcond221.not, label %.loopexit, label %.lr.ph196.split, !llvm.loop !591

bb.aj:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  %i.ev = icmp eq ptr %.0115204260, null
  br i1 %i.ev, label %.sink.split249, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = getelementptr inbounds nuw i8, ptr %.0115204260, i64 112
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = icmp ugt i64 %.0175203262, %i.ex
  br i1 %i.ey, label %.sink.split249, label %bb.al

.sink.split249:                                   ; preds = %bb.ak, %bb.aj
  %i.ez = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %.sink.split249, %bb.ak
  %i.fa = trunc nuw nsw i32 %.0111205259 to i8
  %i.fb = call i64 @_ZN4LIEF5MachO12BinaryParser9do_rebaseINS0_7details7MachO64EEENS_10ok_error_tEhhmPv(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %.0108206258, i8 noundef zeroext %i.fa, i64 noundef %.0175203262, ptr noundef nonnull %2) ; 0 uses
  %i.fc = load ptr, ptr %i.bg, align 8
  %i.fd = call { i64, i8 } @_ZNK4LIEF12BinaryStream12read_uleb128EPm(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef null) #17 ; 2 uses
  %.fca.1.extract12 = extractvalue { i64, i8 } %i.fd, 1
  %i.fe = trunc nuw i8 %.fca.1.extract12 to i1
  br i1 %i.fe, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ff = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %.loopexit

bb.an:                                            ; preds = %bb.al
  %.fca.0.extract11 = extractvalue { i64, i8 } %i.fd, 0
  %i.fg = add i64 %.0175203262, 8
  %i.fh = add i64 %i.fg, %.fca.0.extract11
  br label %.loopexit

bb.ao:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  %i.fi = load ptr, ptr %i.bg, align 8
  %i.fj = call { i64, i8 } @_ZNK4LIEF12BinaryStream12read_uleb128EPm(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef null) #17 ; 2 uses
  %.fca.0.extract7 = extractvalue { i64, i8 } %i.fj, 0
  %.fca.1.extract8 = extractvalue { i64, i8 } %i.fj, 1
  %i.fk = trunc nuw i8 %.fca.1.extract8 to i1
  br i1 %i.fk, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %.loopexit

bb.aq:                                            ; preds = %bb.ao
  %i.fm = load ptr, ptr %i.bg, align 8
  %i.fn = call { i64, i8 } @_ZNK4LIEF12BinaryStream12read_uleb128EPm(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef null) #17 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.fn, 0
  %.fca.1.extract = extractvalue { i64, i8 } %i.fn, 1
  %i.fo = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.fo, label %.preheader190, label %bb.ar

.preheader190:                                    ; preds = %bb.aq
  %i.fp = and i64 %.fca.0.extract7, 4294967295    ; 3 uses
  %.not = icmp eq i64 %i.fp, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader190
  %i.fq = icmp eq ptr %.0115204260, null
  %i.fr = getelementptr inbounds nuw i8, ptr %.0115204260, i64 112
  %i.fs = trunc nuw nsw i32 %.0111205259 to i8    ; 2 uses
  %i.ft = and i64 %.fca.0.extract, 4294967295
  %i.fu = add nuw nsw i64 %i.ft, 8                ; 2 uses
  br i1 %i.fq, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.0102193.us = phi i64 [ %i.fy, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %.7192.us = phi i64 [ %i.fx, %.lr.ph.split.us ], [ %.0175203262, %.lr.ph ] ; 2 uses
  %i.fv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.fw = call i64 @_ZN4LIEF5MachO12BinaryParser9do_rebaseINS0_7details7MachO64EEENS_10ok_error_tEhhmPv(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %.0108206258, i8 noundef zeroext %i.fs, i64 noundef %.7192.us, ptr noundef nonnull %2) ; 0 uses
  %i.fx = add i64 %i.fu, %.7192.us                ; 2 uses
  %i.fy = add nuw nsw i64 %.0102193.us, 1         ; 2 uses
  %exitcond220.not = icmp eq i64 %i.fy, %i.fp
  br i1 %exitcond220.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !592

bb.ar:                                            ; preds = %bb.aq
  %i.fz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.at
  %.0102193 = phi i64 [ %i.gf, %bb.at ], [ 0, %.lr.ph ]
  %.7192 = phi i64 [ %i.ge, %bb.at ], [ %.0175203262, %.lr.ph ] ; 3 uses
  %i.ga = load i64, ptr %i.fr, align 8
  %i.gb = icmp ugt i64 %.7192, %i.ga
  br i1 %i.gb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.split
  %i.gc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph.split, %bb.as
  %i.gd = call i64 @_ZN4LIEF5MachO12BinaryParser9do_rebaseINS0_7details7MachO64EEENS_10ok_error_tEhhmPv(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %.0108206258, i8 noundef zeroext %i.fs, i64 noundef %.7192, ptr noundef nonnull %2) ; 0 uses
  %i.ge = add i64 %i.fu, %.7192                   ; 2 uses
  %i.gf = add nuw nsw i64 %.0102193, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.gf, %i.fp
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !592

bb.au:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  %i.gg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.at, %.lr.ph.split.us, %bb.ai, %.lr.ph196.split.us, %bb.ae, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit, %.preheader190, %.preheader188, %.preheader, %bb.ap, %bb.ar, %bb.am, %bb.an, %bb.ag, %bb.t, %bb.w, %bb.x, %bb.v, %bb.p, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit, %bb.au, %bb.aa, %bb.ab, %bb.z
  %.9 = phi i64 [ %.0175203262, %bb.au ], [ %i.fx, %.lr.ph.split.us ], [ %.0175203262, %.preheader190 ], [ %.0175203262, %bb.ar ], [ %.0175203262, %bb.p ], [ %i.dq, %bb.z ], [ %i.dq, %bb.ab ], [ %i.dq, %bb.aa ], [ %.0175203262, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.0175203262, %bb.t ], [ %.0175203262, %bb.ag ], [ %.0175203262, %bb.am ], [ %.0175203262, %bb.ap ], [ %.fca.0.extract30, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit ], [ %i.dy, %bb.ae ], [ %i.dh, %bb.v ], [ %i.dh, %bb.x ], [ %i.dh, %bb.w ], [ %i.et, %bb.ai ], [ %i.fh, %bb.an ], [ %.0175203262, %.preheader ], [ %.0175203262, %.preheader188 ], [ %i.em, %.lr.ph196.split.us ], [ %i.ge, %bb.at ]
  %.4119 = phi ptr [ %.0115204260, %bb.au ], [ null, %.lr.ph.split.us ], [ %.0115204260, %.preheader190 ], [ %.0115204260, %bb.ar ], [ %.0115204260, %bb.p ], [ null, %bb.z ], [ %.0115204260, %bb.ab ], [ %.0115204260, %bb.aa ], [ %.0115204260, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.0115204260, %bb.t ], [ %.0115204260, %bb.ag ], [ %.0115204260, %bb.am ], [ %.0115204260, %bb.ap ], [ %i.cz, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit ], [ %.0115204260, %bb.ae ], [ null, %bb.v ], [ %.0115204260, %bb.x ], [ %.0115204260, %bb.w ], [ %.0115204260, %bb.ai ], [ %.0115204260, %bb.an ], [ %.0115204260, %.preheader ], [ %.0115204260, %.preheader188 ], [ null, %.lr.ph196.split.us ], [ %.0115204260, %bb.at ]
  %.3114 = phi i32 [ %.0111205259, %bb.au ], [ %.0111205259, %.lr.ph.split.us ], [ %.0111205259, %.preheader190 ], [ %.0111205259, %bb.ar ], [ %.0111205259, %bb.p ], [ %.0111205259, %bb.z ], [ %.0111205259, %bb.ab ], [ %.0111205259, %bb.aa ], [ %.0111205259, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.0111205259, %bb.t ], [ %.0111205259, %bb.ag ], [ %.0111205259, %bb.am ], [ %.0111205259, %bb.ap ], [ %i.cv, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit ], [ %.0111205259, %bb.ae ], [ %.0111205259, %bb.v ], [ %.0111205259, %bb.x ], [ %.0111205259, %bb.w ], [ %.0111205259, %bb.ai ], [ %.0111205259, %bb.an ], [ %.0111205259, %.preheader ], [ %.0111205259, %.preheader188 ], [ %.0111205259, %.lr.ph196.split.us ], [ %.0111205259, %bb.at ]
  %.2110 = phi i8 [ %.0108206258, %bb.au ], [ %.0108206258, %.lr.ph.split.us ], [ %.0108206258, %.preheader190 ], [ %.0108206258, %bb.ar ], [ %.0108206258, %bb.p ], [ %.0108206258, %bb.z ], [ %.0108206258, %bb.ab ], [ %.0108206258, %bb.aa ], [ %i.cb, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.0108206258, %bb.t ], [ %.0108206258, %bb.ag ], [ %.0108206258, %bb.am ], [ %.0108206258, %bb.ap ], [ %.0108206258, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit ], [ %.0108206258, %bb.ae ], [ %.0108206258, %bb.v ], [ %.0108206258, %bb.x ], [ %.0108206258, %bb.w ], [ %.0108206258, %bb.ai ], [ %.0108206258, %bb.an ], [ %.0108206258, %.preheader ], [ %.0108206258, %.preheader188 ], [ %.0108206258, %.lr.ph196.split.us ], [ %.0108206258, %bb.at ]
  %i.gh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8            ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.ba
  br i1 %i.gk, label %.lr.ph263, label %.critedge

.critedge:                                        ; preds = %.loopexit, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit, %bb.l, %bb.r, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.av

bb.av:                                            ; preds = %bb.k, %.critedge, %bb.c, %bb.e, %bb.h, %bb.b
  %.sroa.5.1 = phi i64 [ 2, %bb.b ], [ 4294967296, %bb.c ], [ 7, %bb.e ], [ 2, %bb.h ], [ 4294967303, %.critedge ], [ 7, %bb.k ]
  ret i64 %.sroa.5.1
}

declare noundef ptr @_ZN4LIEF5MachO6Binary19dyld_chained_fixupsEv(ptr noundef nonnull align 8 dereferenceable(488)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser21parse_chained_payloadINS0_7details7MachO64EEENS_10ok_error_tERNS_10SpanStreamE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.LIEF::MachO::details::dyld_chained_fixups_header", align 4 ; 7 uses
  %3 = alloca %"struct.LIEF::MachO::details::dyld_chained_fixups_header", align 4 ; 9 uses
  %4 = alloca %"class.LIEF::SpanStream", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !593 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !593
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i64 28, i1 false), !noalias !593
  %i.c = load ptr, ptr %1, align 8, !noalias !593
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !noalias !593
  %i.f = call i64 %i.e(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2, i64 noundef %i.b, i64 noundef 28, i64 noundef 0) #17, !noalias !593, !inline_history !596
  %i.g = and i64 %i.f, 4294967296
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.a, align 8, !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !593
  %i.h = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.i = call noundef ptr @_Z9to_string11lief_errors(i32 noundef 1) #17 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.sroa.016.0.copyload = load i32, ptr %2, align 4
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.618.sroa.0.0.copyload = load <6 x i32>, ptr %.sroa.618.0..sroa_idx, align 4
  store i64 %i.b, ptr %i.a, align 8, !noalias !593
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !593
  store i32 %.sroa.016.0.copyload, ptr %3, align 4
  %.sroa.618.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store <6 x i32> %.sroa.618.sroa.0.0.copyload, ptr %.sroa.618.0..sroa_idx19, align 4
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.k = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.l = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.m = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.p = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.r = load i32, ptr %i.q, align 4
  %i.s = call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_19DYLD_CHAINED_FORMATE(i32 noundef %i.r) #17 ; 0 uses
  %i.t = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.v = load ptr, ptr %i.u, align 8
  call void @_ZN4LIEF5MachO17DyldChainedFixups11update_withERKNS0_7details26dyld_chained_fixups_headerE(ptr noundef nonnull align 8 dereferenceable(184) %i.v, ptr noundef nonnull align 4 dereferenceable(28) %3) #17
  %i.w = load i32, ptr %i.n, align 4
  %i.x = zext i32 %i.w to i64                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i64, ptr %i.y, align 8, !noalias !597 ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.x
  br i1 %i.aa, label %_ZNK4LIEF10SpanStream5sliceEm.exit, label %bb.d

_ZNK4LIEF10SpanStream5sliceEm.exit:               ; preds = %bb.c
  %i.ab = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = sub nuw i64 %i.z, %i.x
  %i.ae = load ptr, ptr %i.ac, align 8, !noalias !597
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ag, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.714.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 3, ptr %.sroa.714.8..sroa_idx, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %4, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.af, ptr %i.ah, align 8
  %.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.ad, ptr %.sroa.10.24..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !range !134, !noundef !135
  store i8 %i.al, ptr %.sroa.6.8..sroa_idx, align 8
  %i.am = call i64 @_ZN4LIEF5MachO12BinaryParser20parse_chained_importINS0_7details7MachO64EEENS_10ok_error_tERKNS3_26dyld_chained_fixups_headerERNS_10SpanStreamESA_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.an = and i64 %i.am, 4294967296
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = call i64 @_ZN4LIEF5MachO12BinaryParser19parse_chained_fixupINS0_7details7MachO64EEENS_10ok_error_tERKNS3_26dyld_chained_fixups_headerERNS_10SpanStreamE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.ap = and i64 %i.ao, 4294967296
  %.not34 = icmp eq i64 %i.ap, 0
  br i1 %.not34, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.d
  %i.aq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.sroa.5.1 = phi i64 [ 4294967297, %bb.e ], [ 11, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4LIEF10SpanStream5sliceEm.exit, %bb.f, %bb.b
  %.sroa.022.0.insert.insert = phi i64 [ 1, %bb.b ], [ %.sroa.5.1, %bb.f ], [ 1, %_ZNK4LIEF10SpanStream5sliceEm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i64 %.sroa.022.0.insert.insert
}

declare noundef ptr @_ZN4LIEF5MachO6Binary15function_startsEv(ptr noundef nonnull align 8 dereferenceable(488)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO64EEENS_10ok_error_tERNS0_14FunctionStartsE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.LIEF::SpanStream", align 8  ; 11 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.c = load i8, ptr %i.b, align 2, !range !134, !noundef !135
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br i1 %i.d, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.g, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.g, ptr noundef nonnull align 1 dereferenceable(10) @.str.23, i64 10, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.i, align 2
  %i.j = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(488) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i32, ptr %i.m, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = tail call noundef ptr @_ZNK4LIEF5MachO6Binary19segment_from_offsetEm(ptr noundef nonnull align 8 dereferenceable(488) %i.f, i64 noundef %i.o) #17
  br label %.critedge38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.q = load i64, ptr %i.g, align 8
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.critedge38

.critedge38:                                      ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = phi ptr [ %i.p, %bb.b ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge38
  %i.u = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.s

bb.d:                                             ; preds = %.critedge38
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = sub i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, %i.ab
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = add i64 %i.ah, %i.al
  %i.an = icmp ugt i64 %i.am, %i.ab
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ah
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store i64 %i.al, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = icmp eq i64 %i.as, 10
  br i1 %i.at, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread

_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = load i64, ptr %i.av, align 1
  %i.ax = xor i64 %i.aw, 4919420967581409119
  %i.ay = getelementptr i8, ptr %i.av, i64 8
  %i.az = load i16, ptr %i.ay, align 1
  %i.ba = zext i16 %i.az to i64
  %i.bb = xor i64 %i.ba, 21577
  %i.bc = or i64 %i.ax, %i.bb
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.h, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread

bb.h:                                             ; preds = %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 248
  store ptr %1, ptr %i.bg, align 8
  br label %bb.i

_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread: ; preds = %bb.g, %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit
  %i.bh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %.sroa.02.0.copyload = load ptr, ptr %i.aq, align 8
  %.sroa.23.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 3, ptr %i.bk, align 4
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO12BinaryParser22parse_dyldinfo_rebasesINS0_7details7MachO32EEENS_10ok_error_tEv:bb.a

bb.ac:                                            ; preds = %.lr.ph201, %bb.ae
  %.0120200 = phi i64 [ 0, %.lr.ph201 ], [ %i.ec, %bb.ae ]
  %.3199 = phi i64 [ %.0175203262, %.lr.ph201 ], [ %i.dy, %bb.ae ] ; 2 uses
  %i.dx = call i64 @_ZN4LIEF5MachO12BinaryParser9do_rebaseINS0_7details7MachO32EEENS_10ok_error_tEhhmPv(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %.0108206258, i8 noundef zeroext %i.ce, i64 noundef %.3199, ptr noundef nonnull %2) ; 0 uses
  %i.dy = add i64 %.3199, 4                       ; 3 uses
  br i1 %i.cf, label %.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = load i64, ptr %i.cg, align 8
  %i.ea = icmp ugt i64 %i.dy, %i.dz
  br i1 %i.ea, label %.sink.split, label %bb.ae

.sink.split:                                      ; preds = %bb.ad, %bb.ac
  %i.eb = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ad
  %i.ec = add nuw nsw i64 %.0120200, 1            ; 2 uses
  %exitcond223.not = icmp eq i64 %i.ec, %i.cd
  br i1 %exitcond223.not, label %.loopexit, label %bb.ac, !llvm.loop !1230

bb.af:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  %i.ed = load ptr, ptr %i.bg, align 8
  %i.ee = call { i64, i8 } @_ZNK4LIEF12BinaryStream12read_uleb128EPm(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef null) #17 ; 2 uses
  %.fca.1.extract20 = extractvalue { i64, i8 } %i.ee, 1
  %i.ef = trunc nuw i8 %.fca.1.extract20 to i1
  br i1 %i.ef, label %.preheader188, label %bb.ag

.preheader188:                                    ; preds = %bb.af
  %.fca.0.extract19 = extractvalue { i64, i8 } %i.ee, 0
  %i.eg = and i64 %.fca.0.extract19, 4294967295   ; 3 uses
  %.not210 = icmp eq i64 %i.eg, 0
  br i1 %.not210, label %.loopexit, label %.lr.ph196

.lr.ph196:                                        ; preds = %.preheader188
  %i.eh = icmp eq ptr %.0115204260, null
  %i.ei = getelementptr inbounds nuw i8, ptr %.0115204260, i64 112
  %i.ej = trunc nuw nsw i32 %.0111205259 to i8    ; 2 uses
  br i1 %i.eh, label %.lr.ph196.split.us, label %.lr.ph196.split

.lr.ph196.split.us:                               ; preds = %.lr.ph196, %.lr.ph196.split.us
  %.0121195.us = phi i64 [ %i.en, %.lr.ph196.split.us ], [ 0, %.lr.ph196 ]
  %.4177194.us = phi i64 [ %i.em, %.lr.ph196.split.us ], [ %.0175203262, %.lr.ph196 ] ; 2 uses
  %i.ek = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.el = call i64 @_ZN4LIEF5MachO12BinaryParser9do_rebaseINS0_7details7MachO32EEENS_10ok_error_tEhhmPv(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %.0108206258, i8 noundef zeroext %i.ej, i64 noundef %.4177194.us, ptr noundef nonnull %2) ; 0 uses
  %i.em = add i64 %.4177194.us, 4                 ; 2 uses
  %i.en = add nuw nsw i64 %.0121195.us, 1         ; 2 uses
  %exitcond222.not = icmp eq i64 %i.en, %i.eg
  br i1 %exitcond222.not, label %.loopexit, label %.lr.ph196.split.us, !llvm.loop !1231

bb.ag:                                            ; preds = %bb.af
  %i.eo = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %.loopexit

.lr.ph196.split:                                  ; preds = %.lr.ph196, %bb.ai
  %.0121195 = phi i64 [ %i.eu, %bb.ai ], [ 0, %.lr.ph196 ]
  %.4177194 = phi i64 [ %i.et, %bb.ai ], [ %.0175203262, %.lr.ph196 ] ; 3 uses
  %i.ep = load i64, ptr %i.ei, align 8
  %i.eq = icmp ugt i64 %.4177194, %i.ep
  br i1 %i.eq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph196.split
  %i.er = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph196.split, %bb.ah
  %i.es = call i64 @_ZN4LIEF5MachO12BinaryParser9do_rebaseINS0_7details7MachO32EEENS_10ok_error_tEhhmPv(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %.0108206258, i8 noundef zeroext %i.ej, i64 noundef %.4177194, ptr noundef nonnull %2) ; 0 uses
  %i.et = add i64 %.4177194, 4                    ; 2 uses
  %i.eu = add nuw nsw i64 %.0121195, 1            ; 2 uses
  %exitcond221.not = icmp eq i64 %i.eu, %i.eg
  br i1 %exitcond221.not, label %.loopexit, label %.lr.ph196.split, !llvm.loop !1231

bb.aj:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  %i.ev = icmp eq ptr %.0115204260, null
  br i1 %i.ev, label %.sink.split249, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = getelementptr inbounds nuw i8, ptr %.0115204260, i64 112
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = icmp ugt i64 %.0175203262, %i.ex
  br i1 %i.ey, label %.sink.split249, label %bb.al

.sink.split249:                                   ; preds = %bb.ak, %bb.aj
  %i.ez = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %.sink.split249, %bb.ak
  %i.fa = trunc nuw nsw i32 %.0111205259 to i8
  %i.fb = call i64 @_ZN4LIEF5MachO12BinaryParser9do_rebaseINS0_7details7MachO32EEENS_10ok_error_tEhhmPv(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %.0108206258, i8 noundef zeroext %i.fa, i64 noundef %.0175203262, ptr noundef nonnull %2) ; 0 uses
  %i.fc = load ptr, ptr %i.bg, align 8
  %i.fd = call { i64, i8 } @_ZNK4LIEF12BinaryStream12read_uleb128EPm(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, ptr noundef null) #17 ; 2 uses
  %.fca.1.extract12 = extractvalue { i64, i8 } %i.fd, 1
  %i.fe = trunc nuw i8 %.fca.1.extract12 to i1
  br i1 %i.fe, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ff = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %.loopexit

bb.an:                                            ; preds = %bb.al
  %.fca.0.extract11 = extractvalue { i64, i8 } %i.fd, 0
  %i.fg = add i64 %.0175203262, 4
  %i.fh = add i64 %i.fg, %.fca.0.extract11
  br label %.loopexit

bb.ao:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  %i.fi = load ptr, ptr %i.bg, align 8
  %i.fj = call { i64, i8 } @_ZNK4LIEF12BinaryStream12read_uleb128EPm(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef null) #17 ; 2 uses
  %.fca.0.extract7 = extractvalue { i64, i8 } %i.fj, 0
  %.fca.1.extract8 = extractvalue { i64, i8 } %i.fj, 1
  %i.fk = trunc nuw i8 %.fca.1.extract8 to i1
  br i1 %i.fk, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %.loopexit

bb.aq:                                            ; preds = %bb.ao
  %i.fm = load ptr, ptr %i.bg, align 8
  %i.fn = call { i64, i8 } @_ZNK4LIEF12BinaryStream12read_uleb128EPm(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, ptr noundef null) #17 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.fn, 0
  %.fca.1.extract = extractvalue { i64, i8 } %i.fn, 1
  %i.fo = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.fo, label %.preheader190, label %bb.ar

.preheader190:                                    ; preds = %bb.aq
  %i.fp = and i64 %.fca.0.extract7, 4294967295    ; 3 uses
  %.not = icmp eq i64 %i.fp, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader190
  %i.fq = icmp eq ptr %.0115204260, null
  %i.fr = getelementptr inbounds nuw i8, ptr %.0115204260, i64 112
  %i.fs = trunc nuw nsw i32 %.0111205259 to i8    ; 2 uses
  %i.ft = and i64 %.fca.0.extract, 4294967295
  %i.fu = add nuw nsw i64 %i.ft, 4                ; 2 uses
  br i1 %i.fq, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.0102193.us = phi i64 [ %i.fy, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %.7192.us = phi i64 [ %i.fx, %.lr.ph.split.us ], [ %.0175203262, %.lr.ph ] ; 2 uses
  %i.fv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.fw = call i64 @_ZN4LIEF5MachO12BinaryParser9do_rebaseINS0_7details7MachO32EEENS_10ok_error_tEhhmPv(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %.0108206258, i8 noundef zeroext %i.fs, i64 noundef %.7192.us, ptr noundef nonnull %2) ; 0 uses
  %i.fx = add i64 %i.fu, %.7192.us                ; 2 uses
  %i.fy = add nuw nsw i64 %.0102193.us, 1         ; 2 uses
  %exitcond220.not = icmp eq i64 %i.fy, %i.fp
  br i1 %exitcond220.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !1232

bb.ar:                                            ; preds = %bb.aq
  %i.fz = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.at
  %.0102193 = phi i64 [ %i.gf, %bb.at ], [ 0, %.lr.ph ]
  %.7192 = phi i64 [ %i.ge, %bb.at ], [ %.0175203262, %.lr.ph ] ; 3 uses
  %i.ga = load i64, ptr %i.fr, align 8
  %i.gb = icmp ugt i64 %.7192, %i.ga
  br i1 %i.gb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.split
  %i.gc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph.split, %bb.as
  %i.gd = call i64 @_ZN4LIEF5MachO12BinaryParser9do_rebaseINS0_7details7MachO32EEENS_10ok_error_tEhhmPv(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %.0108206258, i8 noundef zeroext %i.fs, i64 noundef %.7192, ptr noundef nonnull %2) ; 0 uses
  %i.ge = add i64 %i.fu, %.7192                   ; 2 uses
  %i.gf = add nuw nsw i64 %.0102193, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.gf, %i.fp
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !1232

bb.au:                                            ; preds = %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit
  %i.gg = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.at, %.lr.ph.split.us, %bb.ai, %.lr.ph196.split.us, %bb.ae, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit, %.preheader190, %.preheader188, %.preheader, %bb.ap, %bb.ar, %bb.am, %bb.an, %bb.ag, %bb.t, %bb.w, %bb.x, %bb.v, %bb.p, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit, %bb.au, %bb.aa, %bb.ab, %bb.z
  %.9 = phi i64 [ %.0175203262, %bb.au ], [ %i.fx, %.lr.ph.split.us ], [ %.0175203262, %.preheader190 ], [ %.0175203262, %bb.ar ], [ %.0175203262, %bb.p ], [ %i.dq, %bb.z ], [ %i.dq, %bb.ab ], [ %i.dq, %bb.aa ], [ %.0175203262, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.0175203262, %bb.t ], [ %.0175203262, %bb.ag ], [ %.0175203262, %bb.am ], [ %.0175203262, %bb.ap ], [ %.fca.0.extract30, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit ], [ %i.dy, %bb.ae ], [ %i.dh, %bb.v ], [ %i.dh, %bb.x ], [ %i.dh, %bb.w ], [ %i.et, %bb.ai ], [ %i.fh, %bb.an ], [ %.0175203262, %.preheader ], [ %.0175203262, %.preheader188 ], [ %i.em, %.lr.ph196.split.us ], [ %i.ge, %bb.at ]
  %.4119 = phi ptr [ %.0115204260, %bb.au ], [ null, %.lr.ph.split.us ], [ %.0115204260, %.preheader190 ], [ %.0115204260, %bb.ar ], [ %.0115204260, %bb.p ], [ null, %bb.z ], [ %.0115204260, %bb.ab ], [ %.0115204260, %bb.aa ], [ %.0115204260, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.0115204260, %bb.t ], [ %.0115204260, %bb.ag ], [ %.0115204260, %bb.am ], [ %.0115204260, %bb.ap ], [ %i.cz, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit ], [ %.0115204260, %bb.ae ], [ null, %bb.v ], [ %.0115204260, %bb.x ], [ %.0115204260, %bb.w ], [ %.0115204260, %bb.ai ], [ %.0115204260, %bb.an ], [ %.0115204260, %.preheader ], [ %.0115204260, %.preheader188 ], [ null, %.lr.ph196.split.us ], [ %.0115204260, %bb.at ]
  %.3114 = phi i32 [ %.0111205259, %bb.au ], [ %.0111205259, %.lr.ph.split.us ], [ %.0111205259, %.preheader190 ], [ %.0111205259, %bb.ar ], [ %.0111205259, %bb.p ], [ %.0111205259, %bb.z ], [ %.0111205259, %bb.ab ], [ %.0111205259, %bb.aa ], [ %.0111205259, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.0111205259, %bb.t ], [ %.0111205259, %bb.ag ], [ %.0111205259, %bb.am ], [ %.0111205259, %bb.ap ], [ %i.cv, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit ], [ %.0111205259, %bb.ae ], [ %.0111205259, %bb.v ], [ %.0111205259, %bb.x ], [ %.0111205259, %bb.w ], [ %.0111205259, %bb.ai ], [ %.0111205259, %bb.an ], [ %.0111205259, %.preheader ], [ %.0111205259, %.preheader188 ], [ %.0111205259, %.lr.ph196.split.us ], [ %.0111205259, %bb.at ]
  %.2110 = phi i8 [ %.0108206258, %bb.au ], [ %.0108206258, %.lr.ph.split.us ], [ %.0108206258, %.preheader190 ], [ %.0108206258, %bb.ar ], [ %.0108206258, %bb.p ], [ %.0108206258, %bb.z ], [ %.0108206258, %bb.ab ], [ %.0108206258, %bb.aa ], [ %i.cb, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit ], [ %.0108206258, %bb.t ], [ %.0108206258, %bb.ag ], [ %.0108206258, %bb.am ], [ %.0108206258, %bb.ap ], [ %.0108206258, %_ZN4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEEixEm.exit ], [ %.0108206258, %bb.ae ], [ %.0108206258, %bb.v ], [ %.0108206258, %bb.x ], [ %.0108206258, %bb.w ], [ %.0108206258, %bb.ai ], [ %.0108206258, %bb.an ], [ %.0108206258, %.preheader ], [ %.0108206258, %.preheader188 ], [ %.0108206258, %.lr.ph196.split.us ], [ %.0108206258, %bb.at ]
  %i.gh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8            ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.ba
  br i1 %i.gk, label %.lr.ph263, label %.critedge

.critedge:                                        ; preds = %.loopexit, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit, %bb.l, %bb.r, %_ZNK4LIEF12BinaryStream4readIhEENS_6resultIT_EEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.av

bb.av:                                            ; preds = %bb.k, %.critedge, %bb.c, %bb.e, %bb.h, %bb.b
  %.sroa.5.1 = phi i64 [ 2, %bb.b ], [ 4294967296, %bb.c ], [ 7, %bb.e ], [ 2, %bb.h ], [ 4294967303, %.critedge ], [ 7, %bb.k ]
  ret i64 %.sroa.5.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser21parse_chained_payloadINS0_7details7MachO32EEENS_10ok_error_tERNS_10SpanStreamE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"struct.LIEF::MachO::details::dyld_chained_fixups_header", align 4 ; 7 uses
  %3 = alloca %"struct.LIEF::MachO::details::dyld_chained_fixups_header", align 4 ; 9 uses
  %4 = alloca %"class.LIEF::SpanStream", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !1233 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !1233
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i64 28, i1 false), !noalias !1233
  %i.c = load ptr, ptr %1, align 8, !noalias !1233
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1233
  %i.f = call i64 %i.e(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %2, i64 noundef %i.b, i64 noundef 28, i64 noundef 0) #17, !noalias !1233, !inline_history !596
  %i.g = and i64 %i.f, 4294967296
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.a, align 8, !noalias !1233
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !1233
  %i.h = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.i = call noundef ptr @_Z9to_string11lief_errors(i32 noundef 1) #17 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.sroa.016.0.copyload = load i32, ptr %2, align 4
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.618.sroa.0.0.copyload = load <6 x i32>, ptr %.sroa.618.0..sroa_idx, align 4
  store i64 %i.b, ptr %i.a, align 8, !noalias !1233
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !1233
  store i32 %.sroa.016.0.copyload, ptr %3, align 4
  %.sroa.618.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store <6 x i32> %.sroa.618.sroa.0.0.copyload, ptr %.sroa.618.0..sroa_idx19, align 4
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.k = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.l = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.m = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.p = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.r = load i32, ptr %i.q, align 4
  %i.s = call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_19DYLD_CHAINED_FORMATE(i32 noundef %i.r) #17 ; 0 uses
  %i.t = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.v = load ptr, ptr %i.u, align 8
  call void @_ZN4LIEF5MachO17DyldChainedFixups11update_withERKNS0_7details26dyld_chained_fixups_headerE(ptr noundef nonnull align 8 dereferenceable(184) %i.v, ptr noundef nonnull align 4 dereferenceable(28) %3) #17
  %i.w = load i32, ptr %i.n, align 4
  %i.x = zext i32 %i.w to i64                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i64, ptr %i.y, align 8, !noalias !1236 ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.x
  br i1 %i.aa, label %_ZNK4LIEF10SpanStream5sliceEm.exit, label %bb.d

_ZNK4LIEF10SpanStream5sliceEm.exit:               ; preds = %bb.c
  %i.ab = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = sub nuw i64 %i.z, %i.x
  %i.ae = load ptr, ptr %i.ac, align 8, !noalias !1236
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ag, align 8
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.714.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 3, ptr %.sroa.714.8..sroa_idx, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %4, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.af, ptr %i.ah, align 8
  %.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.ad, ptr %.sroa.10.24..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !range !134, !noundef !135
  store i8 %i.al, ptr %.sroa.6.8..sroa_idx, align 8
  %i.am = call i64 @_ZN4LIEF5MachO12BinaryParser20parse_chained_importINS0_7details7MachO32EEENS_10ok_error_tERKNS3_26dyld_chained_fixups_headerERNS_10SpanStreamESA_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.an = and i64 %i.am, 4294967296
  %.not = icmp eq i64 %i.an, 0
  br i1 %.not, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = call i64 @_ZN4LIEF5MachO12BinaryParser19parse_chained_fixupINS0_7details7MachO32EEENS_10ok_error_tERKNS3_26dyld_chained_fixups_headerERNS_10SpanStreamE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.ap = and i64 %i.ao, 4294967296
  %.not34 = icmp eq i64 %i.ap, 0
  br i1 %.not34, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.d
  %i.aq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.sroa.5.1 = phi i64 [ 4294967297, %bb.e ], [ 11, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4LIEF10SpanStream5sliceEm.exit, %bb.f, %bb.b
  %.sroa.022.0.insert.insert = phi i64 [ 1, %bb.b ], [ %.sroa.5.1, %bb.f ], [ 1, %_ZNK4LIEF10SpanStream5sliceEm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i64 %.sroa.022.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4LIEF5MachO12BinaryParser12post_processINS0_7details7MachO32EEENS_10ok_error_tERNS0_14FunctionStartsE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.LIEF::SpanStream", align 8  ; 11 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.c = load i8, ptr %i.b, align 2, !range !134, !noundef !135
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br i1 %i.d, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.g, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.g, ptr noundef nonnull align 1 dereferenceable(10) @.str.23, i64 10, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 10, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.i, align 2
  %i.j = call noundef ptr @_ZNK4LIEF5MachO6Binary11get_segmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(488) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %i.k = load ptr, ptr %2, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.g
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i32, ptr %i.m, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = tail call noundef ptr @_ZNK4LIEF5MachO6Binary19segment_from_offsetEm(ptr noundef nonnull align 8 dereferenceable(488) %i.f, i64 noundef %i.o) #17
  br label %.critedge38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.q = load i64, ptr %i.g, align 8
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.critedge38

.critedge38:                                      ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = phi ptr [ %i.p, %bb.b ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge38
  %i.u = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.s

bb.d:                                             ; preds = %.critedge38
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = sub i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, %i.ab
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = add i64 %i.ah, %i.al
  %i.an = icmp ugt i64 %i.am, %i.ab
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ah
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store i64 %i.al, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = icmp eq i64 %i.as, 10
  br i1 %i.at, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread

_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = load i64, ptr %i.av, align 1
  %i.ax = xor i64 %i.aw, 4919420967581409119
  %i.ay = getelementptr i8, ptr %i.av, i64 8
  %i.az = load i16, ptr %i.ay, align 1
  %i.ba = zext i16 %i.az to i64
  %i.bb = xor i64 %i.ba, 21577
  %i.bc = or i64 %i.ax, %i.bb
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.h, label %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread

bb.h:                                             ; preds = %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 248
  store ptr %1, ptr %i.bg, align 8
  br label %bb.i

_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread: ; preds = %bb.g, %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit
  %i.bh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.35) #17 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZN4LIEF5MachO8LinkEdit9segmentofERKNS0_14SegmentCommandE.exit.thread, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %.sroa.02.0.copyload = load ptr, ptr %i.aq, align 8
  %.sroa.23.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 3, ptr %i.bk, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %3, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 24
end_hunk_1
