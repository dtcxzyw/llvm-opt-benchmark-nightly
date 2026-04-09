inline.NumInlined: 958
inline.NumDeleted: 130
begin_hunk_0_@utc_offset_arg:bb.a

.thread91:                                        ; preds = %bb.t
  %i.ar = mul nuw nsw i32 %i.ai, 10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %op.rdx = add nuw nsw i32 %i.an, -32208
  %op.rdx103 = add nuw nsw i32 %op.rdx, %i.ar
  br label %bb.v

bb.u:                                             ; preds = %bb.r
end_hunk_0
begin_hunk_1_@time_xmlschema:bb.a
  br label %time_get_tm.exit

time_get_tm.exit:                                 ; preds = %bb.n, %bb.m, %bb.l, %get_timeval.exit
  %3 = add nuw i64 %.0, 22
  %i.an = icmp ne i64 %.0, 0                      ; 2 uses
  %i.ao = zext i1 %i.an to i64
  %i.ap = add nuw i64 %3, %i.ao                   ; 2 uses
  %i.aq = load i64, ptr %i.ae, align 8, !tbaa !45 ; 3 uses
  %i.ar = trunc i64 %i.aq to i1
  br i1 %i.ar, label %bb.o, label %bb.q
end_hunk_1
begin_hunk_2_@gmtimew_noleapsecond:bb.a
  %i.en = sdiv i32 %.0, 36524
  %i.eo = srem i32 %.0, 36524                     ; 5 uses
  %i.ep = mul nsw i32 %i.en, 100                  ; 2 uses
  %2 = add nsw i32 %i.ep, 1970
  %i.eq = icmp sgt i32 %i.eo, 11015
  br i1 %i.eq, label %bb.ab, label %bb.ae

end_hunk_2
begin_hunk_3_@gmtimew_noleapsecond:bb.a
  %i.ev = sdiv i32 %.1, 1461
  %i.ew = srem i32 %.1, 1461                      ; 5 uses
  %i.ex = shl nsw i32 %i.ev, 2
  %i.ey = add nsw i32 %2, %i.ex                   ; 2 uses
  %i.ez = icmp sgt i32 %i.ew, 788
  br i1 %i.ez, label %bb.af, label %bb.ai

end_hunk_3
begin_hunk_4_@gmtimew_noleapsecond:bb.a
  br i1 %i.fa, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fb = add nsw i32 %i.ey, 2
  %i.fc = add nsw i32 %i.ew, -730
  br label %bb.aj

end_hunk_4
begin_hunk_5_@gmtimew_noleapsecond:bb.a
  %.sext = sext i16 %i.fe to i32
  %i.ff = srem i16 %.lhs.trunc84, 365
  %.sext86 = sext i16 %i.ff to i32
  %i.fg = add nsw i32 %i.ey, %.sext
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag, %bb.ac, %bb.y
end_hunk_5
begin_hunk_6_@timegmw_noleapsecond:bb.a
  %i.br = phi i32 [ %i.bp, %bb.m ], [ %i.bq, %bb.n ]
  %i.bs = add i32 %i.x, 299
  %i.bt = sdiv i32 %i.bs, 400
  %.0.i27 = add nsw i32 %i.bt, -25550
  %i.bu = add nsw i32 %.0.i27, %i.af
  %i.bv = add nsw i32 %i.bu, %i.bl
  %1 = add nsw i32 %i.bv, %.pn.i
  %2 = sub nsw i32 %1, %i.br
  %i.bw = sext i32 %2 to i64                      ; 2 uses
  %i.bx = shl nsw i64 %i.bw, 1
  %i.by = or disjoint i64 %i.bx, 1
end_hunk_6
begin_hunk_7_@localtimew:bb.a
  %.lhs.trunc.i.i = sub nsw i8 14, %i.ff
  %i.fg = sdiv i8 %.lhs.trunc.i.i, 12
  %.sext.i.i = zext nneg i8 %i.fg to i32          ; 2 uses
  %5 = add i32 %i.ez, 4800
  %6 = sub i32 %5, %.sext.i.i                     ; 4 uses
  %i.fh = mul nuw nsw i32 %.sext.i.i, 12
  %i.fi = add nuw nsw i32 %i.fh, %i.fe
  %i.fj = trunc nuw nsw i32 %i.fi to i16
  %i.fk = mul nuw nsw i16 %i.fj, 153
  %.lhs.trunc13.i.i = add nsw i16 %i.fk, -457
  %i.fl = sdiv i16 %.lhs.trunc13.i.i, 5
  %narrow.i.i = add nsw i16 %i.fl, 1
  %i.fm = sext i16 %narrow.i.i to i32
  %i.fn = mul i32 %6, 365
  %i.fo = sdiv i32 %6, 4
  %.neg.i.i = sdiv i32 %6, -100
  %i.fp = sdiv i32 %6, 400
  %i.fq = add i32 %i.fn, 2
  %i.fr = add i32 %i.fq, %i.fo
  %i.fs = add i32 %i.fr, %.neg.i.i
  %i.ft = add i32 %i.fs, %i.fp
  %i.fu = add i32 %i.ft, %i.fm
  %i.fv = srem i32 %i.fu, 7
  %i.fw = and i64 %i.fb, 7680
  %i.fx = icmp eq i64 %i.fw, 1024
end_hunk_7
begin_hunk_8_@timegm_noleapsecond:bb.a
  %.pn.i = sext i16 %.pn.in.i to i32
  %.0.i = add i32 %i.g, %.pn.i
  %i.av = mul nsw i64 %i.c, 365
  %1 = add nsw i64 %i.av, -25550
  %i.aw = sext i32 %.0.i to i64
  %i.ax = add nsw i64 %1, %i.aw
  %i.ay = mul i32 %i.x, 60
  %i.az = add i32 %i.ay, %i.v
  %i.ba = mul i32 %i.z, 3600
end_hunk_8
begin_hunk_9_@timegm_noleapsecond:bb.a
  %i.be = add nsw i64 %i.bd, %i.at
  %i.bf = add nsw i64 %i.be, %i.au
  %i.bg = mul nsw i64 %i.bf, 86400
  %i.bh = add nsw i64 %i.bg, %i.bc
  ret i64 %i.bh
}

end_hunk_9
begin_hunk_10_@two_digits:bb.a
  %i.ag = mul nsw i32 %i.af, 10
  %i.ah = load i8, ptr %i.i, align 1, !tbaa !53
  %i.ai = sext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -528
  %i.ak = add nsw i32 %i.aj, %i.ag
  ret i32 %i.ak
}

end_hunk_10
