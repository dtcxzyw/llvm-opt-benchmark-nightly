Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/text_format?download=true
inline.NumInlined: 5480
inline.NumDeleted: 2033
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i521: ; preds = %bb.cn
  %i.pc = load i64, ptr %i.oi, align 8, !tbaa !67
  %i.pd = add i64 %i.pc, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pd) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523

bb.co:                                            ; preds = %bb.cl
  %.pr = load ptr, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  %.not271 = icmp eq ptr %.pr, null
  br i1 %.not271, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pe = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %.pr)
          to label %bb.cq unwind label %bb.cn

bb.cq:                                            ; preds = %bb.cp
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !133 ; 2 uses
  %.0.copyload.i.i.i524 = load i16, ptr %i.pg, align 1 ; 2 uses
  %i.ph = zext i16 %.0.copyload.i.i.i524 to i64   ; 3 uses
  %i.pi = xor i64 %i.ph, -1
  %i.pj = getelementptr inbounds i8, ptr %i.pg, i64 %i.pi
  %i.pk = load ptr, ptr %6, align 8, !tbaa !66
  %i.pl = load i64, ptr %i.m, align 8, !tbaa !65
  %i.pm = icmp eq i64 %i.pl, %i.ph
  br i1 %i.pm, label %bb.cr, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.sink.split

bb.cr:                                            ; preds = %bb.cq
  %i.pn = icmp eq i16 %.0.copyload.i.i.i524, 0
  br i1 %i.pn, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.cr
  %bcmp.i.i529 = call i32 @bcmp(ptr nonnull %i.pj, ptr %i.pk, i64 %i.ph)
  %i.po = icmp eq i32 %bcmp.i.i529, 0
  br i1 %i.po, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.sink.split

_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.sink.split: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.cq, %bb.cl
  store ptr null, ptr %i.c, align 8, !tbaa !79
  br label %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.sink.split, %bb.cj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.cr, %bb.co
  %i.pp = load ptr, ptr %27, align 8, !tbaa !66   ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.oi
  br i1 %i.pq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i531, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530: ; preds = %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.pr = load i64, ptr %i.oi, align 8, !tbaa !67
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.pp, i64 noundef %i.ps) #41
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i531

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i521, %bb.cm
  %.pn = phi { ptr, i32 } [ %i.oy, %bb.cm ], [ %i.oz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i521 ], [ %i.oz, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  br label %.loopexit.split-lp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i531: ; preds = %_ZStneIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  %.pr900 = load ptr, ptr %i.c, align 8, !tbaa !79 ; 2 uses
  %i.pt = icmp eq ptr %.pr900, null
  br i1 %i.pt, label %bb.cs, label %.thread906

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i531
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.pv = load i8, ptr %i.pu, align 4, !tbaa !700, !range !83, !noundef !84
  %i.pw = trunc nuw i8 %i.pv to i1
  br i1 %i.pw, label %bb.ct, label %.thread

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.cu unwind label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZN4absl12lts_2025051215AsciiStrToLowerEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull %28)
          to label %bb.cv unwind label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.px = load ptr, ptr %28, align 8, !tbaa !66
  %i.py = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !65
  %i.qa = invoke noundef ptr @_ZNK6google8protobuf10Descriptor24FindFieldByLowercaseNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(160) %i.k, i64 %i.pz, ptr %i.px)
          to label %bb.cw unwind label %bb.cy     ; 2 uses

bb.cw:                                            ; preds = %bb.cv
  store ptr %i.qa, ptr %i.c, align 8, !tbaa !79
  %i.qb = load ptr, ptr %28, align 8, !tbaa !66   ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.qd = icmp eq ptr %i.qb, %i.qc
  br i1 %i.qd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i536, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535: ; preds = %bb.cw
  %i.qe = load i64, ptr %i.qc, align 8, !tbaa !67
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qf) #41
  %.pr903.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !79
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i536

bb.cx:                                            ; preds = %bb.ct
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540

bb.cy:                                            ; preds = %bb.cv, %bb.cu
  %i.qh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qi = load ptr, ptr %28, align 8, !tbaa !66   ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.qk = icmp eq ptr %i.qi, %i.qj
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538: ; preds = %bb.cy
  %i.ql = load i64, ptr %i.qj, align 8, !tbaa !67
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.qm) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit540: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538, %bb.cx
  %.pn273 = phi { ptr, i32 } [ %i.qg, %bb.cx ], [ %i.qh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i538 ], [ %i.qh, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  br label %.loopexit.split-lp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i536: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535
  %.pr903.pre = phi ptr [ %.pr903.pre.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i535 ], [ %i.qa, %bb.cw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  %i.qn = icmp eq ptr %.pr903.pre, null
  br i1 %i.qn, label %.thread, label %.thread906

.thread:                                          ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i536
  %i.qo = load ptr, ptr %6, align 8, !tbaa !66
  %i.qp = load i64, ptr %i.m, align 8, !tbaa !65
  %.fr24.i = freeze i64 %i.qp                     ; 3 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.k, i64 156
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !701 ; 3 uses
  %i.qs = icmp sgt i32 %i.qr, 0
  br i1 %i.qs, label %.lr.ph.i, label %_ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550

.lr.ph.i:                                         ; preds = %.thread
  %i.qt = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !702 ; 3 uses
  %i.qv = icmp eq i64 %.fr24.i, 0
  br i1 %i.qv, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.qr to i64
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.qw = load ptr, ptr %i.qu, align 8, !tbaa !204
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !65
  %i.qz = icmp eq i64 %i.qy, 0
  br i1 %i.qz, label %.thread908.thread, label %.lr.ph22.preheader.i

.lr.ph22.preheader.i:                             ; preds = %.lr.ph.split.us.i
  %i.ra = add nsw i32 %i.qr, -1                   ; 2 uses
  %wide.trip.count31.i = zext nneg i32 %i.ra to i64
  %exitcond32.not.not.i1159 = icmp eq i32 %i.ra, 0
  br i1 %exitcond32.not.not.i1159, label %_ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550, label %.lr.ph, !llvm.loop !690

.lr.ph:                                           ; preds = %.lr.ph22.preheader.i
  br label %bb.cz, !llvm.loop !690

bb.cz:                                            ; preds = %.lr.ph, %.lr.ph22.i
  %indvars.iv28.i1160 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next29.i, %.lr.ph22.i ]
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i1160, 1 ; 3 uses
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %indvars.iv.next29.i
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !204
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !65
  %i.rf = icmp eq i64 %i.re, 0
  br i1 %i.rf, label %.thread908.thread, label %.lr.ph22.i, !llvm.loop !690

.lr.ph22.i:                                       ; preds = %bb.cz
  %exitcond32.not.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.not.i, label %.lr.ph22.i._ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550.loopexit_crit_edge, label %bb.cz, !llvm.loop !690

.lr.ph.split.i:                                   ; preds = %bb.da, %.lr.ph.split.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %bb.da ] ; 2 uses
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %indvars.iv.i
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !204 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !65
  %i.rk = icmp eq i64 %.fr24.i, %i.rj
  br i1 %i.rk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i543, label %bb.da

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i543: ; preds = %.lr.ph.split.i
  %i.rl = load ptr, ptr %i.rh, align 8, !tbaa !66
  %bcmp.i.i544 = call i32 @bcmp(ptr %i.qo, ptr %i.rl, i64 %.fr24.i)
  %i.rm = icmp eq i32 %bcmp.i.i544, 0
  br i1 %i.rm, label %.thread908.thread, label %bb.da

bb.da:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i543, %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550, label %.lr.ph.split.i, !llvm.loop !690

.thread906:                                       ; preds = %..thread906_crit_edge, %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i531, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i536, %_ZN6google8protobuf12_GLOBAL__N_134DefaultFinderFindExtensionByNumberEPKNS0_10DescriptorEi.exit, %bb.cb
  %.pre961976 = phi ptr [ %i.ob, %_ZN6google8protobuf12_GLOBAL__N_134DefaultFinderFindExtensionByNumberEPKNS0_10DescriptorEi.exit ], [ %.pr903.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i536 ], [ %i.od, %bb.cb ], [ %i.og, %bb.cd ], [ %.pre953, %..thread906_crit_edge ], [ %.pr900, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i531 ] ; 3 uses
  %.0164 = phi i8 [ 0, %_ZN6google8protobuf12_GLOBAL__N_134DefaultFinderFindExtensionByNumberEPKNS0_10DescriptorEi.exit ], [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i536 ], [ 0, %bb.cb ], [ 0, %bb.cd ], [ 1, %..thread906_crit_edge ], [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i531 ] ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !188 ; 2 uses
  %i.rp = icmp ne ptr %i.ro, null
  %i.rq = icmp ne ptr %.pre961976, null
  %or.cond.i545 = and i1 %i.rq, %i.rp
  br i1 %or.cond.i545, label %bb.db, label %_ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550

bb.db:                                            ; preds = %.thread906
  %.sroa.2.0.insert.ext = zext i32 %i.ng to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0835.0.insert.ext = zext i32 %i.ne to i64
  %.sroa.0835.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0835.0.insert.ext
  invoke void @_ZN6google8protobuf10TextFormat13ParseInfoTree18RecordNameLocationEPKNS0_15FieldDescriptorENS1_18ParseLocationRangeE(ptr noundef nonnull align 8 dereferenceable(64) %i.ro, ptr noundef nonnull %.pre961976, i64 %i.nb, i64 %.sroa.0835.0.insert.insert)
          to label %._ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550_crit_edge: ; preds = %bb.db
  %.pre954 = load ptr, ptr %i.c, align 8, !tbaa !79
  br label %_ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550

.lr.ph22.i._ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550.loopexit_crit_edge: ; preds = %.lr.ph22.i
  br label %_ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550, !llvm.loop !690

_ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550: ; preds = %bb.da, %.lr.ph22.preheader.i, %.lr.ph22.i._ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550.loopexit_crit_edge, %.thread, %._ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550_crit_edge, %.thread906
  %.01641139 = phi i8 [ %.0164, %._ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550_crit_edge ], [ %.0164, %.thread906 ], [ 0, %.lr.ph22.preheader.i ], [ 0, %.thread ], [ 0, %.lr.ph22.i._ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550.loopexit_crit_edge ], [ 0, %bb.da ] ; 2 uses
  %.pre961975 = phi ptr [ %.pre954, %._ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550_crit_edge ], [ %.pre961976, %.thread906 ], [ null, %.lr.ph22.preheader.i ], [ null, %.thread ], [ null, %.lr.ph22.i._ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550.loopexit_crit_edge ], [ null, %bb.da ] ; 2 uses
  %i.rr = icmp ne ptr %.pre961975, null
  %58 = trunc nuw i8 %.01641139 to i1
  %or.cond = or i1 %i.rr, %58
  br i1 %or.cond, label %.thread908, label %bb.dc

bb.dc:                                            ; preds = %_ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 253
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !696, !range !83, !noundef !84
  %i.ru = trunc nuw i8 %i.rt to i1
  %i.rv = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.ru, label %bb.dh, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !133 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 2
  %.0.copyload.i.i.i551 = load i16, ptr %i.rx, align 1
  %i.ry = zext i16 %.0.copyload.i.i.i551 to i64   ; 2 uses
  %i.rz = xor i64 %i.ry, -1
  %i.sa = getelementptr inbounds i8, ptr %i.rw, i64 %i.rz
  %i.sb = load ptr, ptr %6, align 8, !tbaa !66
  %i.sc = load i64, ptr %i.m, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38, !noalias !703
  store i64 14, ptr %3, align 8, !noalias !703
  %i.sd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.59, ptr %i.sd, align 8, !noalias !703
  %i.se = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.ry, ptr %i.se, align 8, !noalias !703
  %i.sf = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.sa, ptr %i.sf, align 8, !noalias !703
  %i.sg = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 22, ptr %i.sg, align 8, !noalias !703
  %i.sh = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr @.str.60, ptr %i.sh, align 8, !noalias !703
  %i.si = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.sc, ptr %i.si, align 8, !noalias !703
  %i.sj = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.sb, ptr %i.sj, align 8, !noalias !703
  %i.sk = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 2, ptr %i.sk, align 8, !noalias !703
  %i.sl = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr @.str.56, ptr %i.sl, align 8, !noalias !703
  invoke void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr nonnull %3, i64 5)
          to label %bb.de unwind label %bb.df

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38, !noalias !703
  %i.sm = load ptr, ptr %29, align 8, !tbaa !66
  %i.sn = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !65
  %i.sp = load i32, ptr %i.o, align 8, !tbaa !296
  %i.sq = load i32, ptr %i.q, align 4, !tbaa !297
  invoke void @_ZN6google8protobuf10TextFormat6Parser10ParserImpl11ReportErrorEiiSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %i.sp, i32 noundef %i.sq, i64 %i.so, ptr %i.sm)
          to label %_ZN6google8protobuf10TextFormat6Parser10ParserImpl11ReportErrorESt17basic_string_viewIcSt11char_traitsIcEE.exit575 unwind label %bb.dg

_ZN6google8protobuf10TextFormat6Parser10ParserImpl11ReportErrorESt17basic_string_viewIcSt11char_traitsIcEE.exit575: ; preds = %bb.de
  %i.sr = load ptr, ptr %29, align 8, !tbaa !66   ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.st = icmp eq ptr %i.sr, %i.ss
  br i1 %i.st, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576: ; preds = %_ZN6google8protobuf10TextFormat6Parser10ParserImpl11ReportErrorESt17basic_string_viewIcSt11char_traitsIcEE.exit575
  %i.su = load i64, ptr %i.ss, align 8, !tbaa !67
  %i.sv = add i64 %i.su, 1
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.sv) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578: ; preds = %_ZN6google8protobuf10TextFormat6Parser10ParserImpl11ReportErrorESt17basic_string_viewIcSt11char_traitsIcEE.exit575, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i576
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  br label %.thread919

bb.df:                                            ; preds = %bb.dd
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581

bb.dg:                                            ; preds = %bb.de
  %i.sx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sy = load ptr, ptr %29, align 8, !tbaa !66   ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ta = icmp eq ptr %i.sy, %i.sz
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579: ; preds = %bb.dg
  %i.tb = load i64, ptr %i.sz, align 8, !tbaa !67
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sy, i64 noundef %i.tc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit581: ; preds = %bb.dg, %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579
  %.pn276.pn.pn.pn = phi { ptr, i32 } [ %i.sx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i579 ], [ %i.sw, %bb.df ], [ %i.sx, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  br label %.loopexit.split-lp

bb.dh:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #38
  %i.td = load ptr, ptr %i.rv, align 8, !tbaa !133 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 2
  %.0.copyload.i.i.i582 = load i16, ptr %i.te, align 1
  %i.tf = zext i16 %.0.copyload.i.i.i582 to i64   ; 2 uses
  %i.tg = xor i64 %i.tf, -1
  %i.th = getelementptr inbounds i8, ptr %i.td, i64 %i.tg
  %i.ti = load ptr, ptr %6, align 8, !tbaa !66
  %i.tj = load i64, ptr %i.m, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !704
  store i64 14, ptr %2, align 8, !noalias !704
  %i.tk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.59, ptr %i.tk, align 8, !noalias !704
  %i.tl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.tf, ptr %i.tl, align 8, !noalias !704
  %i.tm = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.th, ptr %i.tm, align 8, !noalias !704
  %i.tn = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 22, ptr %i.tn, align 8, !noalias !704
  %i.to = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.60, ptr %i.to, align 8, !noalias !704
  %i.tp = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.tj, ptr %i.tp, align 8, !noalias !704
  %i.tq = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.ti, ptr %i.tq, align 8, !noalias !704
  %i.tr = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 2, ptr %i.tr, align 8, !noalias !704
  %i.ts = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @.str.56, ptr %i.ts, align 8, !noalias !704
  invoke void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr nonnull %2, i64 5)
          to label %bb.di unwind label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !704
  %i.tt = load ptr, ptr %30, align 8, !tbaa !66
  %i.tu = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !65
  %i.tw = load i32, ptr %i.o, align 8, !tbaa !296
  %i.tx = load i32, ptr %i.q, align 4, !tbaa !297
  invoke void @_ZN6google8protobuf10TextFormat6Parser10ParserImpl13ReportWarningEiiSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %i.tw, i32 noundef %i.tx, i64 %i.tv, ptr %i.tt)
          to label %_ZN6google8protobuf10TextFormat6Parser10ParserImpl13ReportWarningESt17basic_string_viewIcSt11char_traitsIcEE.exit606 unwind label %bb.dk

_ZN6google8protobuf10TextFormat6Parser10ParserImpl13ReportWarningESt17basic_string_viewIcSt11char_traitsIcEE.exit606: ; preds = %bb.di
  %i.ty = load ptr, ptr %30, align 8, !tbaa !66   ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.ua = icmp eq ptr %i.ty, %i.tz
  br i1 %i.ua, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607: ; preds = %_ZN6google8protobuf10TextFormat6Parser10ParserImpl13ReportWarningESt17basic_string_viewIcSt11char_traitsIcEE.exit606
  %i.ub = load i64, ptr %i.tz, align 8, !tbaa !67
  %i.uc = add i64 %i.ub, 1
  call void @_ZdlPvm(ptr noundef %i.ty, i64 noundef %i.uc) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609: ; preds = %_ZN6google8protobuf10TextFormat6Parser10ParserImpl13ReportWarningESt17basic_string_viewIcSt11char_traitsIcEE.exit606, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  br label %.thread908thread-pre-split

bb.dj:                                            ; preds = %bb.dh
  %i.ud = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612

bb.dk:                                            ; preds = %bb.di
  %i.ue = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uf = load ptr, ptr %30, align 8, !tbaa !66   ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.uh = icmp eq ptr %i.uf, %i.ug
  br i1 %i.uh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610: ; preds = %bb.dk
  %i.ui = load i64, ptr %i.ug, align 8, !tbaa !67
  %i.uj = add i64 %i.ui, 1
  call void @_ZdlPvm(ptr noundef %i.uf, i64 noundef %i.uj) #41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612: ; preds = %bb.dk, %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610
  %.pn281.pn.pn.pn = phi { ptr, i32 } [ %i.ue, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610 ], [ %i.ud, %bb.dj ], [ %i.ue, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  br label %.loopexit.split-lp

.thread908thread-pre-split:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609
  %i.uk = phi ptr [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501 ], [ %i.mz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609 ]
  %i.ul = phi ptr [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501 ], [ %i.na, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609 ]
  %.pr929 = load ptr, ptr %i.c, align 8, !tbaa !79
  br label %.thread908

.thread908:                                       ; preds = %.thread908thread-pre-split, %_ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550
  %i.um = phi ptr [ %i.uk, %.thread908thread-pre-split ], [ %i.mz, %_ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550 ] ; 5 uses
  %i.un = phi ptr [ %i.ul, %.thread908thread-pre-split ], [ %i.na, %_ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550 ] ; 5 uses
  %.pre961974 = phi ptr [ %.pr929, %.thread908thread-pre-split ], [ %.pre961975, %_ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550 ] ; 3 uses
  %.2166 = phi i8 [ 0, %.thread908thread-pre-split ], [ %.01641139, %_ZZN6google8protobuf10TextFormat6Parser10ParserImpl12ConsumeFieldEPNS0_7MessageEENKUlPKNS0_15FieldDescriptorERKNS1_18ParseLocationRangeEE_clES8_SB_.exit550 ]
  %i.uo = icmp eq ptr %.pre961974, null
  br i1 %i.uo, label %.thread908.thread, label %bb.dz

.thread908.thread:                                ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i543, %bb.cz, %.lr.ph.split.us.i, %.thread908
  %.21661154 = phi i8 [ %.2166, %.thread908 ], [ 1, %.lr.ph.split.us.i ], [ 1, %bb.cz ], [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i543 ]
  %i.up = phi ptr [ %i.un, %.thread908 ], [ %i.na, %.lr.ph.split.us.i ], [ %i.na, %bb.cz ], [ %i.na, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i543 ] ; 3 uses
  %i.uq = phi ptr [ %i.um, %.thread908 ], [ %i.mz, %.lr.ph.split.us.i ], [ %i.mz, %bb.cz ], [ %i.mz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i543 ] ; 3 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 253
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !696, !range !83, !noundef !84
  %i.ut = trunc nuw i8 %i.us to i1
  br i1 %i.ut, label %.critedge358, label %bb.dl

bb.dl:                                            ; preds = %.thread908.thread
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 254
end_hunk_0
