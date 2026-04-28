inline.NumInlined: 3394
inline.NumDeleted: 1222
begin_hunk_0_@_ZN2v88internal15ValueSerializer10WriteJSMapENS0_12DirectHandleINS0_5JSMapEEE:bb.a
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %2 = and i64 %i.ae, -4294967296
  %3 = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %4 = load atomic volatile i64, ptr %3 monotonic, align 8
  %i.af = add i64 %4, %2
  %i.ag = ashr i64 %i.af, 32                      ; 2 uses
  %.not8385 = icmp eq i64 %i.ag, 0
  br i1 %.not8385, label %._crit_edge, label %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN2v88internal15ValueSerializer10WriteJSSetENS0_12DirectHandleINS0_5JSSetEEE:bb.a
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  %2 = and i64 %i.af, -4294967296
  %3 = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %4 = load atomic volatile i64, ptr %3 monotonic, align 8
  %i.ag = add i64 %4, %2
  %i.ah = ashr i64 %i.ag, 32                      ; 2 uses
  %.not7274 = icmp eq i64 %i.ah, 0
  br i1 %.not7274, label %._crit_edge, label %.lr.ph
end_hunk_1
