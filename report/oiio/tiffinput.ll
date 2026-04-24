inline.NumInlined: 4997
inline.NumDeleted: 1755
begin_hunk_0
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"
@switch.table._ZN11OpenImageIO4v3_19TIFFInput8readspecEb = private unnamed_addr constant [3 x i64] [i64 260, i64 261, i64 266], align 8
@switch.table._ZN11OpenImageIO4v3_19TIFFInput8readspecEb.98 = private unnamed_addr constant [3 x i64] [i64 262, i64 263, i64 267], align 8
@switch.table._ZN11OpenImageIO4v3_19TIFFInput8readspecEb.99 = private unnamed_addr constant [5 x i32] [i32 1, i32 1, i32 3, i32 1, i32 1], align 4

@_ZN11OpenImageIO4v3_19TIFFInputC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN11OpenImageIO4v3_19TIFFInputC2Ev
@_ZN11OpenImageIO4v3_19TIFFInputD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN11OpenImageIO4v3_19TIFFInputD2Ev
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_19TIFFInput8readspecEb:bb.a
  br i1 %.not123, label %.thread402, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jz = load i16, ptr %i.ib, align 4, !tbaa !155 ; 3 uses
  %i.ka = icmp ult i16 %i.jz, 5
  br i1 %i.ka, label %switch.lookup573, label %bb.ar

switch.lookup573:                                 ; preds = %bb.aq
  %i.kb = zext nneg i16 %i.jz to i64
  %switch.gep574.a = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN11OpenImageIO4v3_19TIFFInput8readspecEb.99, i64 %i.kb
  %switch.load575.a = load i32, ptr %switch.gep574.a, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %switch.lookup573, %bb.aq
  %.085.a = phi i32 [ %switch.load575.a, %switch.lookup573 ], [ 3, %bb.aq ] ; 2 uses
  %i.kc = load i16, ptr %i.aw, align 2
  %i.kd = zext i16 %i.kc to i32
  %i.ke = icmp samesign ult i32 %.085.a, %i.kd
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_19TIFFInput8readspecEb:bb.a
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.kj = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 8 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 5 uses
  %93 = zext nneg i32 %.085.a to i64
  br label %bb.as

.critedge.loopexit:                               ; preds = %bb.be
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_19TIFFInput8readspecEb:bb.a
  br i1 %i.km, label %.thread563, label %bb.bf

bb.as:                                            ; preds = %.lr.ph428, %bb.be
  %indvars.iv445 = phi i64 [ %93, %.lr.ph428 ], [ %indvars.iv.next446, %bb.be ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph428 ], [ %indvars.iv.next, %bb.be ] ; 2 uses
  %.081426 = phi i1 [ false, %.lr.ph428 ], [ %.182, %bb.be ] ; 3 uses
  %i.ko = load ptr, ptr %i.ab, align 8, !tbaa !163
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0208 = phi i64 [ %i.et, %bb.z ], [ %i.en, %bb.y ] ; 2 uses
  %.0204.in = phi i64 [ %i.eu, %bb.z ], [ %i.eo, %bb.y ]
  %.0.i.a = phi i32 [ 2, %bb.z ], [ 1, %bb.y ]    ; 2 uses
  %i.ey = icmp samesign ugt i32 %.0187, %.0.i.a
  br i1 %i.ey, label %.lr.ph.i, label %.thread268

.lr.ph.i:                                         ; preds = %bb.aa
  %6 = zext nneg i32 %.0.i.a to i64               ; 4 uses
  %i.ez = zext nneg i32 %i.ei to i64              ; 3 uses
  %i.fa = and i64 %.0208, 4294967295
  %i.fb = mul nuw nsw i64 %i.fa, 100              ; 3 uses
  %i.fc = lshr i64 %i.fb, 32                      ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ej, i64 %6
  %i.fe = shl nuw nsw i64 %i.fc, 1
  %i.ff = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2
  store i16 %i.fg, ptr %i.fd, align 1
  %indvars.iv.next.i = add nuw nsw i64 %6, 2      ; 2 uses
  %i.fh = icmp samesign ult i64 %indvars.iv.next.i, %i.ez
  br i1 %i.fh, label %bb.ab, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

end_hunk_4
begin_hunk_5_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2
  store i16 %i.fo, ptr %i.fl, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %6, 4    ; 2 uses
  %i.fp = icmp samesign ult i64 %indvars.iv.next.i.1, %i.ez
  br i1 %i.fp, label %bb.ac, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

end_hunk_5
begin_hunk_6_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 2
  store i16 %i.fw, ptr %i.ft, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %6, 6    ; 2 uses
  %i.fx = icmp samesign ult i64 %indvars.iv.next.i.2, %i.ez
  br i1 %i.fx, label %bb.ad, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

end_hunk_6
begin_hunk_7_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.3211 = phi i64 [ %i.hj, %bb.aj ], [ %i.hd, %bb.ai ] ; 2 uses
  %.2206.in = phi i64 [ %i.hk, %bb.aj ], [ %i.he, %bb.ai ]
  %.0.i143.a = phi i32 [ 2, %bb.aj ], [ 1, %bb.ai ] ; 2 uses
  %i.ho = icmp samesign ult i32 %.0.i143.a, %i.gv
  br i1 %i.ho, label %.lr.ph.i144.a, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

.lr.ph.i144.a:                                    ; preds = %bb.ak
  %7 = zext nneg i32 %.0.i143.a to i64
  %i.hp = zext nneg i32 %i.gv to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i144.a
  %.4 = phi i64 [ %.3211, %.lr.ph.i144.a ], [ %i.hr, %bb.al ]
  %indvars.iv.i145 = phi i64 [ %7, %.lr.ph.i144.a ], [ %indvars.iv.next.i146, %bb.al ] ; 2 uses
  %i.hq = and i64 %.4, 4294967295
  %i.hr = mul nuw nsw i64 %i.hq, 100              ; 3 uses
  %i.hs = lshr i64 %i.hr, 32                      ; 3 uses
end_hunk_7
