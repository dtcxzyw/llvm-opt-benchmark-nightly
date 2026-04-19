inline.NumInlined: 185
inline.NumDeleted: 111
begin_hunk_0_@_ZN10duckdb_re26Regexp6WalkerIbE12WalkInternalEPS0_bb:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.au, i1 noundef zeroext %i.bc)
  br label %bb.y

bb.j:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re26Regexp6WalkerIbE12WalkInternalEPS0_bb:bb.a
  %i.bk = load ptr, ptr %0, align 8, !tbaa !22
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.au, i1 noundef zeroext %i.bj, ptr noundef nonnull %i.a) ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.as, i64 -11
  %i.bp = zext i1 %i.bn to i8
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !83
  %i.bq = load i8, ptr %i.a, align 1, !tbaa !9, !range !11, !noundef !12
  %i.br = trunc nuw i8 %i.bq to i1
end_hunk_1
begin_hunk_2_@_ZN10duckdb_re26Regexp6WalkerIbE12WalkInternalEPS0_bb:bb.a
  %i.ds = load ptr, ptr %0, align 8, !tbaa !22
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef zeroext i1 %i.du(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %i.au, i1 noundef zeroext %i.dm, i1 noundef zeroext %i.dp, ptr noundef %i.dr, i32 noundef %.pre87) ; 3 uses
  %i.dw = load i16, ptr %i.by, align 2, !tbaa !18
  %i.dx = icmp ugt i16 %i.dw, 1
  br i1 %i.dx, label %bb.w, label %bb.y
end_hunk_2
begin_hunk_3_@_ZN10duckdb_re26Regexp6WalkerIbE12WalkInternalEPS0_bb:bb.a
  br label %bb.y

bb.y:                                             ; preds = %bb.n, %bb.v, %bb.x, %bb.w, %bb.i
  %.161 = phi i1 [ %i.bg, %bb.i ], [ %i.dv, %bb.w ], [ %i.dv, %bb.x ], [ %i.dv, %bb.v ], [ %i.bn, %bb.n ] ; 4 uses
  %i.ea = load ptr, ptr %i.w, align 8, !tbaa !64  ; 2 uses
  %i.eb = load ptr, ptr %i.ad, align 8, !tbaa !73 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ea, %i.eb
end_hunk_3
begin_hunk_4_@_ZN10duckdb_re26Regexp6WalkerIbE12WalkInternalEPS0_bb:bb.a
  store ptr %i.ec, ptr %i.w, align 8, !tbaa !64
  %i.ed = load ptr, ptr %i.ak, align 8, !tbaa !65
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %bb.ae, label %bb.z

_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.eb) #17
end_hunk_4
begin_hunk_5_@_ZN10duckdb_re26Regexp6WalkerIbE12WalkInternalEPS0_bb:bb.a
  store ptr %i.ej, ptr %i.w, align 8, !tbaa !64
  %i.ek = load ptr, ptr %i.ak, align 8, !tbaa !65
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %bb.ae, label %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit76

bb.z:                                             ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.em = icmp eq ptr %i.ec, %i.eb
end_hunk_5
begin_hunk_6_@_ZN10duckdb_re26Regexp6WalkerIbE12WalkInternalEPS0_bb:bb.a
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !75 ; 2 uses
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds i8, ptr %i.et, i64 %i.ew
  %7 = zext i1 %.161 to i8
  store i8 %7, ptr %i.ex, align 1, !tbaa !9
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit76
  %i.ey = getelementptr inbounds i8, ptr %i.er, i64 -10
  %8 = zext i1 %.161 to i8
  store i8 %8, ptr %i.ey, align 2, !tbaa !88
  %.phi.trans.insert88 = getelementptr inbounds i8, ptr %i.er, i64 -16
  %.pre89 = load i32, ptr %.phi.trans.insert88, align 8, !tbaa !75
  br label %bb.ad
end_hunk_6
begin_hunk_7_@_ZN10duckdb_re26Regexp6WalkerIbE12WalkInternalEPS0_bb:bb.a
  store i32 %i.fb, ptr %i.fa, align 8, !tbaa !75
  br label %.thread80.backedge

bb.ae:                                            ; preds = %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit, %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, %_ZN10LogMessageD2Ev.exit
  %.264 = phi i1 [ %2, %_ZN10LogMessageD2Ev.exit ], [ %.161, %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread ], [ %.161, %_ZNSt5stackIN10duckdb_re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit ]
  ret i1 %.264
}

; Function Attrs: nobuiltin allocsize(0)
end_hunk_7
