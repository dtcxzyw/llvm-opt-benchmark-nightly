inline.NumInlined: 851
inline.NumDeleted: 406
begin_hunk_0_@_ZN6Assimp7Blender9DNAParser5ParseEv:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.as, align 8
  store i8 0, ptr %i.ar, align 8
  %i.at = add i64 %.057.i.i.i.i.i.prol, -1        ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
end_hunk_0
begin_hunk_1_@_ZN6Assimp7Blender9DNAParser5ParseEv:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.bh, align 8
  store i8 0, ptr %i.bg, align 8
  %i.bi = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i.3, label %.preheader325.preheader.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !8
end_hunk_1
begin_hunk_2_@_ZN6Assimp7Blender9DNAParser5ParseEv:bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166.prol, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166.prol, i64 24
  store ptr %i.en, ptr %i.em, align 8
  %i.eo = add i64 %.057.i.i.i.i.i167.prol, -1     ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166.prol, i64 40 ; 3 uses
  %prol.iter656.next = add i64 %prol.iter656, 1   ; 2 uses
  %prol.iter656.cmp.not = icmp eq i64 %prol.iter656.next, %xtraiter654
end_hunk_2
begin_hunk_3_@_ZN6Assimp7Blender9DNAParser5ParseEv:bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 288
  %i.fo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 304
  store ptr %i.fo, ptr %i.fn, align 8
  %i.fp = add i64 %.057.i.i.i.i.i167, -8          ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i166, i64 320 ; 2 uses
  %.not.i.i.i.i.i168.7 = icmp eq i64 %i.fp, 0
  br i1 %.not.i.i.i.i.i168.7, label %.preheader317.preheader, label %.lr.ph.i.i.i.i.i165, !llvm.loop !11
end_hunk_3
