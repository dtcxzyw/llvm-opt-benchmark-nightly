inline.NumInlined: 15600
inline.NumDeleted: 36
begin_hunk_0_@w2c_hermes_dlfree:bb.a
  %i.jh = lshr i32 %.1, %i.jg
  %i.ji = and i32 %i.jh, 1
  %i.jj = shl nuw nsw i32 %i.jf, 1
  %2 = or disjoint i32 %i.jj, %i.ji
  %3 = xor i32 %2, 62
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.4 = phi i32 [ %3, %bb.bm ], [ 31, %bb.bl ]    ; 5 uses
  %i.jk = zext i32 %.0873 to i64                  ; 5 uses
  %.val992 = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.jl = getelementptr inbounds nuw i8, ptr %.val992, i64 %i.jk
end_hunk_0
begin_hunk_1_@w2c_hermes_dlmalloc:bb.a
  %i.fq = lshr i32 %i.fi, %i.fp
  %i.fr = and i32 %i.fq, 1
  %i.fs = shl nuw nsw i32 %i.fo, 1
  %2 = or disjoint i32 %i.fs, %i.fr
  %3 = xor i32 %2, 62
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.12996 = phi i32 [ %3, %bb.ag ], [ 31, %bb.af ] ; 4 uses
  %i.ft = shl nuw nsw i32 %.12996, 2
  %.val3340 = load ptr, ptr %i.fj, align 8, !tbaa !21
  %i.fu = zext nneg i32 %i.ft to i64
end_hunk_1
begin_hunk_2_@w2c_hermes_dlmalloc:bb.a
  %i.zv = lshr i32 %i.yq, %i.zu
  %i.zw = and i32 %i.zv, 1
  %i.zx = shl nuw nsw i32 %i.zt, 1
  %4 = or disjoint i32 %i.zx, %i.zw
  %5 = xor i32 %4, 62
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.17 = phi i32 [ %5, %bb.dv ], [ 31, %bb.du ]   ; 5 uses
  %.val3459 = load ptr, ptr %i.ix, align 8, !tbaa !21
  %i.zy = getelementptr inbounds nuw i8, ptr %.val3459, i64 %i.ys
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 28
end_hunk_2
begin_hunk_3_@w2c_hermes_dlmalloc:bb.a
  %i.afk = lshr i32 %.19, %i.afj
  %i.afl = and i32 %i.afk, 1
  %i.afm = shl nuw nsw i32 %i.afi, 1
  %6 = or disjoint i32 %i.afm, %i.afl
  %7 = xor i32 %6, 62
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.103029 = phi i32 [ %7, %bb.ev ], [ 31, %bb.eu ] ; 5 uses
  %.val3426 = load ptr, ptr %i.ix, align 8, !tbaa !21
  %i.afn = getelementptr inbounds nuw i8, ptr %.val3426, i64 %i.aef
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 28
end_hunk_3
begin_hunk_4_@w2c_hermes_dlmalloc:bb.a
  %i.akq = lshr i32 %.63025, %i.akp
  %i.akr = and i32 %i.akq, 1
  %i.aks = shl nuw nsw i32 %i.ako, 1
  %8 = or disjoint i32 %i.aks, %i.akr
  %9 = xor i32 %8, 62
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.20 = phi i32 [ %9, %bb.fu ], [ 31, %bb.ft ]   ; 5 uses
  %.val3396 = load ptr, ptr %i.fj, align 8, !tbaa !21
  %i.akt = getelementptr inbounds nuw i8, ptr %.val3396, i64 %i.ajl
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 28
end_hunk_4
begin_hunk_5_@w2c_hermes_dispose_chunk:bb.a
  %i.jb = lshr i32 %.1839, %i.ja
  %i.jc = and i32 %i.jb, 1
  %i.jd = shl nuw nsw i32 %i.iz, 1
  %3 = or disjoint i32 %i.jd, %i.jc
  %4 = xor i32 %3, 62
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.4 = phi i32 [ %4, %bb.bi ], [ 31, %bb.bh ]    ; 5 uses
  %i.je = zext i32 %.0 to i64                     ; 8 uses
  %.val951 = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.jf = getelementptr inbounds nuw i8, ptr %.val951, i64 %i.je
end_hunk_5
