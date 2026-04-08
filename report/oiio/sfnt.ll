inline.NumInlined: 86
inline.NumDeleted: 34
begin_hunk_0_@tt_cmap6_char_next:bb.a
  %i.t = zext i8 %i.s to i32
  %i.u = or disjoint i32 %i.q, %i.t               ; 2 uses
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.d, i32 %i.u) ; 2 uses
  %i.v = sub nsw i32 %spec.select, %i.u           ; 3 uses
  %i.w = icmp ult i32 %i.v, %i.l
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
end_hunk_0
begin_hunk_1_@tt_cmap10_char_next:bb.a
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)  ; 2 uses
  %i.z = add nuw i32 %i.u, 1
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.z, i32 %i.y) ; 3 uses
  %i.aa = sub i32 %spec.select, %i.y              ; 3 uses
  %i.ab = icmp ult i32 %i.aa, %i.t
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

end_hunk_1
begin_hunk_2_@tt_sbit_decoder_load_byte_aligned:bb.a
  %i.hl = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check = icmp ult i32 %i.hj, 248
  %stride.check = icmp slt i32 %i.g, 0
  %n.vec = and i64 %i.hl, 1073741792              ; 5 uses
  %.cast = trunc nuw nsw i64 %n.vec to i32
  %i.hm = shl i32 %.cast, 3
  %i.hn = sub i32 %i.t, %i.hm                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.hl
  %ind.escape = add i32 %i.hn, 8
end_hunk_2
begin_hunk_3_@tt_sbit_decoder_load_bit_aligned:bb.a
  %i.at = add nuw nsw i32 %i.an, %i.aq
  %i.au = sub nsw i32 8, %i.at
  %i.av = shl nsw i32 %i.as, %i.au
  %i.aw = sub nsw i32 %i.q, %i.aq                 ; 3 uses
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e
end_hunk_3
begin_hunk_4_@tt_sbit_decoder_load_bit_aligned:bb.a
  br i1 %i.dk, label %bb.m, label %.loopexit, !llvm.loop !632

.split:                                           ; preds = %bb.e
  %6 = icmp sgt i32 %i.aw, 7
  %invariant.op = sub i32 8, %i.aq
  br label %bb.s

end_hunk_4
begin_hunk_5_@tt_sbit_decoder_load_bit_aligned:bb.a
  store i8 %i.eo, ptr %.198130, align 1, !tbaa !16
  %i.ep = shl nuw i16 %i.eh, 8                    ; 2 uses
  %i.eq = add nsw i32 %.1131, -8                  ; 2 uses
  %7 = icmp samesign ugt i32 %.1131, 15
  br i1 %7, label %.lr.ph, label %._crit_edge, !llvm.loop !633

._crit_edge:                                      ; preds = %.lr.ph, %bb.z
end_hunk_5
begin_hunk_6_@tt_sbit_decoder_load_bit_aligned:bb.a
  %i.fe = or i8 %i.fc, %i.fd
  store i8 %i.fe, ptr %.198.lcssa, align 1, !tbaa !16
  %reass.sub123 = add nsw i32 %.1110, 8
  %i.ff = sub nsw i32 %reass.sub123, %.1.lcssa
  %i.fg = shl i16 %.5, 8
  br label %bb.af

end_hunk_6
begin_hunk_7_@tt_cmap4_char_map_linear:bb.a
  br label %.thread14

.split136.us.split.us:                            ; preds = %bb.c
  %i.bp = sub nsw i32 %.094104.us.us.mux, %i.ag
  %i.bq = shl nsw i32 %i.bp, 1
  %i.br = add nsw i32 %.0103.us.us.us.us, %i.bq
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  %i.bv = zext i8 %i.bu to i32
end_hunk_7
