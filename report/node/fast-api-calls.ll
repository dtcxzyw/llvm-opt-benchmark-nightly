inline.NumInlined: 478
inline.NumDeleted: 139
begin_hunk_0_@_ZN2v88internal8compiler13fast_api_call18FastApiCallBuilder5BuildENS1_19FastApiCallFunctionEPNS1_4NodeE:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = add i32 %i.p, 1
  %i.am = add i32 %i.al, %i.ah                    ; 3 uses
  %i.an = icmp sgt i32 %i.am, -1
  br i1 %i.an, label %bb.c, label %bb.b, !prof !19

end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler13fast_api_call20GetFastApiCallTargetEPNS1_12JSHeapBrokerENS1_23FunctionTemplateInfoRefEm:bb.a
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.031
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit, label %_ZNK2v813CFunctionInfo10HasOptionsEv.exit.i

_ZNK2v813CFunctionInfo10HasOptionsEv.exit.i:      ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = add i32 %i.o, -1                         ; 2 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %.fr.i = freeze i8 %i.u
  %i.v = icmp eq i8 %.fr.i, -1
  %i.w = sext i1 %i.v to i32
  %i.x = add i32 %i.r, %i.w
  %i.y = zext i32 %i.x to i64
  br label %_ZNK2v813CFunctionInfo13ArgumentCountEv.exit

end_hunk_1
