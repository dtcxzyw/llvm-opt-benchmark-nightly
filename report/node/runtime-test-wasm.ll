inline.NumInlined: 2039
inline.NumDeleted: 1017
begin_hunk_0_@_ZN2v88internal29Runtime_GetWasmExceptionTagIdEiPmPNS0_7IsolateE:bb.a

.lr.ph:                                           ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %3 = load i64, ptr %i.bc, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_ZN2v88internal29Runtime_GetWasmExceptionTagIdEiPmPNS0_7IsolateE:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv
  %i.cf = load atomic volatile i64, ptr %i.ce monotonic, align 8
  %i.cg = icmp eq i64 %i.cf, %3
  br i1 %i.cg, label %_ZN2v88internalL39__RT_impl_Runtime_GetWasmExceptionTagIdENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit, label %bb.f

end_hunk_1
begin_hunk_2_@_ZN2v88internal32Runtime_WasmGetNumberOfInstancesEiPmPNS0_7IsolateE:bb.a
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = add i64 %i.s, 15
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = lshr i64 %i.v, 32                        ; 4 uses
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.preheader, label %_ZN2v88internalL42__RT_impl_Runtime_WasmGetNumberOfInstancesENS0_9ArgumentsILNS0_13ArgumentsTypeE0EEEPNS0_7IsolateE.exit
end_hunk_2
begin_hunk_3_@_ZN2v88internal32Runtime_WasmGetNumberOfInstancesEiPmPNS0_7IsolateE:bb.a
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.aa = and i64 %i.v, 4294967296
  %lcmp.mod.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

end_hunk_3
