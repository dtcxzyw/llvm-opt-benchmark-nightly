inline.NumInlined: 2192
inline.NumDeleted: 629
begin_hunk_0_@_ZN5arrow8internal7ToCharsItJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.f, label %._crit_edge.i.i.i.thread, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i
  %i.g = icmp ult i16 %1, 1000                    ; 2 uses
  %i.h = icmp ult i16 %1, 10000                   ; 2 uses
  %..i.a = select i1 %i.h, i32 3, i32 4
  %.0.i.i.i.ph = select i1 %i.g, i32 2, i32 %..i.a
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i9.i.i
  %.020.i.i.i = phi i32 [ %i.k, %.lr.ph.i9.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.01819.i.i.i = phi i32 [ %i.v, %.lr.ph.i9.i.i ], [ %.0.i.i.i.ph, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.i = urem i32 %.020.i.i.i, 100
  %i.j = shl nuw nsw i32 %i.i, 1
  %i.k = udiv i32 %.020.i.i.i, 100                ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal7ToCharsItJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.w, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !1488

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i
  %..i = select i1 %i.h, i64 4, i64 5
  %.0.i.i.i = select i1 %i.g, i64 3, i64 %..i     ; 2 uses
  %i.x = icmp samesign ugt i32 %.020.i.i.i, 999
  br i1 %i.x, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i.thread58

._crit_edge.i.i.i.thread:                         ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i57 = phi i32 [ %i.k, %._crit_edge.i.i.i ], [ %i.c, %.lr.ph.i.i.i ]
  %i.y = phi i64 [ %.0.i.i.i, %._crit_edge.i.i.i ], [ 2, %.lr.ph.i.i.i ]
  %i.z = shl nuw nsw i32 %.0.lcssa.i.i.i57, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.aa ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal7ToCharsItJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a

._crit_edge.i.i.i.thread58:                       ; preds = %bb.b, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i60 = phi i32 [ %i.k, %._crit_edge.i.i.i ], [ %i.c, %bb.b ]
  %i.ag = phi i64 [ %.0.i.i.i, %._crit_edge.i.i.i ], [ 1, %bb.b ]
  %i.ah = trunc nuw nsw i32 %.0.lcssa.i.i.i60 to i8
  %i.ai = or disjoint i8 %i.ah, 48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit23
end_hunk_2
begin_hunk_3_@_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE0_clEt:bb.a
  br i1 %i.e, label %._crit_edge.i.i.i.thread.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i
  %i.f = icmp ult i16 %1, 1000                    ; 2 uses
  %i.g = icmp ult i16 %1, 10000                   ; 2 uses
  %..i.i.a = select i1 %i.g, i32 3, i32 4
  %.0.i.i.i.ph.i = select i1 %i.f, i32 2, i32 %..i.i.a
  br label %.lr.ph.i9.i.i.i

.lr.ph.i9.i.i.i:                                  ; preds = %.lr.ph.i9.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.020.i.i.i.i = phi i32 [ %i.j, %.lr.ph.i9.i.i.i ], [ %i.b, %.lr.ph.preheader.i.i.i.i ] ; 4 uses
  %.01819.i.i.i.i = phi i32 [ %i.u, %.lr.ph.i9.i.i.i ], [ %.0.i.i.i.ph.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %i.h = urem i32 %.020.i.i.i.i, 100
  %i.i = shl nuw nsw i32 %i.h, 1
  %i.j = udiv i32 %.020.i.i.i.i, 100              ; 3 uses
end_hunk_3
begin_hunk_4_@_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE0_clEt:bb.a
  br i1 %i.v, label %.lr.ph.i9.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1488

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i9.i.i.i
  %..i.i = select i1 %i.g, i64 4, i64 5
  %.0.i.i.i.i = select i1 %i.f, i64 3, i64 %..i.i ; 2 uses
  %i.w = icmp samesign ugt i32 %.020.i.i.i.i, 999
  br i1 %i.w, label %._crit_edge.i.i.i.thread.i, label %._crit_edge.i.i.i.thread58.i

._crit_edge.i.i.i.thread.i:                       ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.lcssa.i.i.i57.i = phi i32 [ %i.j, %._crit_edge.i.i.i.i ], [ %i.b, %.lr.ph.i.i.i.i ]
  %i.x = phi i64 [ %.0.i.i.i.i, %._crit_edge.i.i.i.i ], [ 2, %.lr.ph.i.i.i.i ]
  %i.y = shl nuw nsw i32 %.0.lcssa.i.i.i57.i, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.z ; 2 uses
end_hunk_4
begin_hunk_5_@_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE0_clEt:bb.a

._crit_edge.i.i.i.thread58.i:                     ; preds = %._crit_edge.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i60.i = phi i32 [ %i.j, %._crit_edge.i.i.i.i ], [ %i.b, %bb.b ]
  %i.af = phi i64 [ %.0.i.i.i.i, %._crit_edge.i.i.i.i ], [ 1, %bb.b ]
  %i.ag = trunc nuw nsw i32 %.0.lcssa.i.i.i60.i to i8
  %i.ah = or disjoint i8 %i.ag, 48
  br label %_ZN5arrow8internal7ToCharsItJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_.exit
end_hunk_5
begin_hunk_6_@_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE0_clEt:bb.a
  br i1 %i.ap, label %._crit_edge.i.i.i.thread.i19, label %.lr.ph.preheader.i.i.i.i8

.lr.ph.preheader.i.i.i.i8:                        ; preds = %.lr.ph.i.i.i.i7
  %i.aq = icmp ult i16 %i.ak, 1000                ; 2 uses
  %i.ar = icmp ult i16 %i.ak, 10000               ; 2 uses
  %..i.i9 = select i1 %i.ar, i32 3, i32 4
  %.0.i.i.i.ph.i10 = select i1 %i.aq, i32 2, i32 %..i.i9
  br label %.lr.ph.i9.i.i.i11

.lr.ph.i9.i.i.i11:                                ; preds = %.lr.ph.i9.i.i.i11, %.lr.ph.preheader.i.i.i.i8
  %.020.i.i.i.i12 = phi i32 [ %i.au, %.lr.ph.i9.i.i.i11 ], [ %i.am, %.lr.ph.preheader.i.i.i.i8 ] ; 4 uses
  %.01819.i.i.i.i13 = phi i32 [ %i.bf, %.lr.ph.i9.i.i.i11 ], [ %.0.i.i.i.ph.i10, %.lr.ph.preheader.i.i.i.i8 ] ; 3 uses
  %i.as = urem i32 %.020.i.i.i.i12, 100
  %i.at = shl nuw nsw i32 %i.as, 1
  %i.au = udiv i32 %.020.i.i.i.i12, 100           ; 3 uses
end_hunk_6
begin_hunk_7_@_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE0_clEt:bb.a
  br i1 %i.bg, label %.lr.ph.i9.i.i.i11, label %._crit_edge.i.i.i.i14, !llvm.loop !1488

._crit_edge.i.i.i.i14:                            ; preds = %.lr.ph.i9.i.i.i11
  %..i.i13 = select i1 %i.ar, i64 4, i64 5
  %.0.i.i.i.i14 = select i1 %i.aq, i64 3, i64 %..i.i13 ; 2 uses
  %i.bh = icmp samesign ugt i32 %.020.i.i.i.i12, 999
  br i1 %i.bh, label %._crit_edge.i.i.i.thread.i19, label %._crit_edge.i.i.i.thread58.i15

._crit_edge.i.i.i.thread.i19:                     ; preds = %._crit_edge.i.i.i.i14, %.lr.ph.i.i.i.i7
  %.0.lcssa.i.i.i57.i20 = phi i32 [ %i.au, %._crit_edge.i.i.i.i14 ], [ %i.am, %.lr.ph.i.i.i.i7 ]
  %i.bi = phi i64 [ %.0.i.i.i.i14, %._crit_edge.i.i.i.i14 ], [ 2, %.lr.ph.i.i.i.i7 ]
  %i.bj = shl nuw nsw i32 %.0.lcssa.i.i.i57.i20, 1
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bk ; 2 uses
end_hunk_7
begin_hunk_8_@_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE0_clEt:bb.a

._crit_edge.i.i.i.thread58.i15:                   ; preds = %._crit_edge.i.i.i.i14, %bb.c
  %.0.lcssa.i.i.i60.i16 = phi i32 [ %i.au, %._crit_edge.i.i.i.i14 ], [ %i.am, %bb.c ]
  %i.bq = phi i64 [ %.0.i.i.i.i14, %._crit_edge.i.i.i.i14 ], [ 1, %bb.c ]
  %i.br = trunc nuw nsw i32 %.0.lcssa.i.i.i60.i16 to i8
  %i.bs = or disjoint i8 %i.br, 48
  br label %bb.d
end_hunk_8
begin_hunk_9_@_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE0_clEt:bb.a
  br i1 %i.ca, label %._crit_edge.i.i.i.thread.i34, label %.lr.ph.preheader.i.i.i.i23

.lr.ph.preheader.i.i.i.i23:                       ; preds = %.lr.ph.i.i.i.i22
  %i.cb = icmp ult i16 %i.bv, 1000                ; 2 uses
  %i.cc = icmp ult i16 %i.bv, 10000               ; 2 uses
  %..i.i24 = select i1 %i.cc, i32 3, i32 4
  %.0.i.i.i.ph.i25 = select i1 %i.cb, i32 2, i32 %..i.i24
  br label %.lr.ph.i9.i.i.i26

.lr.ph.i9.i.i.i26:                                ; preds = %.lr.ph.i9.i.i.i26, %.lr.ph.preheader.i.i.i.i23
  %.020.i.i.i.i27 = phi i32 [ %i.cf, %.lr.ph.i9.i.i.i26 ], [ %i.bx, %.lr.ph.preheader.i.i.i.i23 ] ; 4 uses
  %.01819.i.i.i.i28 = phi i32 [ %i.cq, %.lr.ph.i9.i.i.i26 ], [ %.0.i.i.i.ph.i25, %.lr.ph.preheader.i.i.i.i23 ] ; 3 uses
  %i.cd = urem i32 %.020.i.i.i.i27, 100
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = udiv i32 %.020.i.i.i.i27, 100           ; 3 uses
end_hunk_9
begin_hunk_10_@_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE0_clEt:bb.a
  br i1 %i.cr, label %.lr.ph.i9.i.i.i26, label %._crit_edge.i.i.i.i29, !llvm.loop !1488

._crit_edge.i.i.i.i29:                            ; preds = %.lr.ph.i9.i.i.i26
  %..i.i30 = select i1 %i.cc, i64 4, i64 5
  %.0.i.i.i.i31 = select i1 %i.cb, i64 3, i64 %..i.i30 ; 2 uses
  %i.cs = icmp samesign ugt i32 %.020.i.i.i.i27, 999
  br i1 %i.cs, label %._crit_edge.i.i.i.thread.i34, label %._crit_edge.i.i.i.thread58.i30

._crit_edge.i.i.i.thread.i34:                     ; preds = %._crit_edge.i.i.i.i29, %.lr.ph.i.i.i.i22
  %.0.lcssa.i.i.i57.i35 = phi i32 [ %i.cf, %._crit_edge.i.i.i.i29 ], [ %i.bx, %.lr.ph.i.i.i.i22 ]
  %i.ct = phi i64 [ %.0.i.i.i.i31, %._crit_edge.i.i.i.i29 ], [ 2, %.lr.ph.i.i.i.i22 ]
  %i.cu = shl nuw nsw i32 %.0.lcssa.i.i.i57.i35, 1
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.cv ; 2 uses
end_hunk_10
begin_hunk_11_@_ZZN5arrow8internal12_GLOBAL__N_115IntegersInRangeINS_10UInt16TypeEtEENS_6StatusERKNS_9ArraySpanET0_S8_ENKUltE0_clEt:bb.a

._crit_edge.i.i.i.thread58.i30:                   ; preds = %._crit_edge.i.i.i.i29, %bb.e
  %.0.lcssa.i.i.i60.i31 = phi i32 [ %i.cf, %._crit_edge.i.i.i.i29 ], [ %i.bx, %bb.e ]
  %i.db = phi i64 [ %.0.i.i.i.i31, %._crit_edge.i.i.i.i29 ], [ 1, %bb.e ]
  %i.dc = trunc nuw nsw i32 %.0.lcssa.i.i.i60.i31 to i8
  %i.dd = or disjoint i8 %i.dc, 48
  br label %bb.f
end_hunk_11
