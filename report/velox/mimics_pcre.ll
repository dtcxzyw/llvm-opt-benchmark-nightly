inline.NumInlined: 150
inline.NumDeleted: 85
begin_hunk_0_@_ZN3re26Regexp6WalkerIbE12WalkInternalEPS0_bb:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.ag, i1 noundef zeroext %i.ao)
  %7 = zext i1 %i.as to i8
  br label %bb.y

bb.j:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@_ZN3re26Regexp6WalkerIbE12WalkInternalEPS0_bb:bb.a
  %i.aw = load ptr, ptr %0, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.ag, i1 noundef zeroext %i.av, ptr noundef nonnull %i.a)
  %i.ba = getelementptr inbounds i8, ptr %i.ae, i64 -11
  %i.bb = zext i1 %i.az to i8                     ; 2 uses
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !70
  %i.bc = load i8, ptr %i.a, align 1, !tbaa !9, !range !11, !noundef !12
  %i.bd = trunc nuw i8 %i.bc to i1
end_hunk_1
begin_hunk_2_@_ZN3re26Regexp6WalkerIbE12WalkInternalEPS0_bb:bb.a
  %i.de = load ptr, ptr %0, align 8, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = call noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %i.ag, i1 noundef zeroext %i.cy, i1 noundef zeroext %i.db, ptr noundef %i.dd, i32 noundef %.pre87)
  %8 = zext i1 %i.dh to i8                        ; 3 uses
  %i.di = load i16, ptr %i.bk, align 2, !tbaa !18
  %i.dj = icmp ugt i16 %i.di, 1
  br i1 %i.dj, label %bb.w, label %bb.y
end_hunk_2
begin_hunk_3_@_ZN3re26Regexp6WalkerIbE12WalkInternalEPS0_bb:bb.a
  br label %bb.y

bb.y:                                             ; preds = %bb.n, %bb.v, %bb.x, %bb.w, %bb.i
  %.3 = phi i8 [ %7, %bb.i ], [ %8, %bb.w ], [ %8, %bb.x ], [ %8, %bb.v ], [ %i.bb, %bb.n ] ; 3 uses
  %i.dm = load ptr, ptr %i.i, align 8, !tbaa !51  ; 2 uses
  %i.dn = load ptr, ptr %i.p, align 8, !tbaa !60  ; 3 uses
  %.not.i.i = icmp eq ptr %i.dm, %i.dn
end_hunk_3
begin_hunk_4_@_ZN3re26Regexp6WalkerIbE12WalkInternalEPS0_bb:bb.a
  store ptr %i.do, ptr %i.i, align 8, !tbaa !51
  %i.dp = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %.thread82, label %bb.z

_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread: ; preds = %bb.y
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef 504) #18
end_hunk_4
begin_hunk_5_@_ZN3re26Regexp6WalkerIbE12WalkInternalEPS0_bb:bb.a
  store ptr %i.dv, ptr %i.i, align 8, !tbaa !51
  %i.dw = load ptr, ptr %i.w, align 8, !tbaa !52
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %.thread82, label %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit76

.thread82:                                        ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit.thread, %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %9 = trunc nuw i8 %.3 to i1
  br label %bb.ae

bb.z:                                             ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3popEv.exit
  %i.dy = icmp eq ptr %i.do, %i.dn
end_hunk_5
begin_hunk_6_@_ZN3re26Regexp6WalkerIbE12WalkInternalEPS0_bb:bb.a
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !62 ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %i.ei
  store i8 %.3, ptr %i.ej, align 1, !tbaa !9
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNSt5stackIN3re29WalkStateIbEESt5dequeIS2_SaIS2_EEE3topEv.exit76
  %i.ek = getelementptr inbounds i8, ptr %i.ed, i64 -10
  store i8 %.3, ptr %i.ek, align 2, !tbaa !75
  %.phi.trans.insert88 = getelementptr inbounds i8, ptr %i.ed, i64 -16
  %.pre89 = load i32, ptr %.phi.trans.insert88, align 8, !tbaa !62
  br label %bb.ad
end_hunk_6
begin_hunk_7_@_ZN3re26Regexp6WalkerIbE12WalkInternalEPS0_bb:bb.a
  store i32 %i.en, ptr %i.em, align 8, !tbaa !62
  br label %.thread80.backedge

bb.ae:                                            ; preds = %.thread82, %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit
  %.2 = phi i1 [ %2, %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi10EEERS2_RAT__Kc.exit ], [ %9, %.thread82 ]
  ret i1 %.2
}

; Function Attrs: nobuiltin allocsize(0)
end_hunk_7
