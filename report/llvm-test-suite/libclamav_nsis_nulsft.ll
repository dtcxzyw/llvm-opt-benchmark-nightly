inline.NumInlined: 13
inline.NumDeleted: 5
begin_hunk_0_@cli_scannulsft:bb.a
bb.ab:                                            ; preds = %nsis_detcomp.exit71.i.i, %bb.z
  %.1.i.i = phi i32 [ %i.co, %nsis_detcomp.exit71.i.i ], [ %.04881.i.i, %bb.z ]
  %.0.i.i = phi i32 [ %i.cn, %nsis_detcomp.exit71.i.i ], [ %.val.i.i, %bb.z ] ; 2 uses
  %i.cp = add i32 %.1.i.i, 4
  %i.cq = add i32 %i.cp, %.0.i.i                  ; 3 uses
  %i.cr = load i32, ptr %i.u, align 8, !tbaa !37
  %i.cs = icmp ugt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.loopexit87.i.loopexit.i, label %bb.ac
end_hunk_0
begin_hunk_1_@nsis_unpack_next:bb.a

bb.o:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !37 ; 3 uses
  %i.af = icmp eq i32 %i.ae, 4
  br i1 %i.af, label %bb.p, label %bb.q

end_hunk_1
begin_hunk_2_@nsis_unpack_next:bb.a

bb.s:                                             ; preds = %bb.q
  %i.ak = icmp ult i32 %i.ae, 4
  %i.al = add i32 %i.ae, -4                       ; 2 uses
  %i.am = icmp ugt i32 %i.aj, %i.al
  %or.cond = or i1 %i.ak, %i.am
  br i1 %or.cond, label %bb.t, label %bb.u
end_hunk_2
begin_hunk_3_@nsis_unpack_next:bb.a
  br label %.critedge.thread213

bb.u:                                             ; preds = %bb.s
  %i.ap = sub nuw i32 %i.al, %i.aj
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !37
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !8   ; 2 uses
  %.not171 = icmp eq ptr %i.aq, null
  br i1 %.not171, label %._crit_edge230, label %bb.v
end_hunk_3
