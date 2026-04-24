inline.NumInlined: 736
inline.NumDeleted: 320
begin_hunk_0_@_ZN16OpenColorIO_v2_511Lut1DOpData7ComposeERSt10shared_ptrIKS0_ES4_NS0_13ComposeMethodE:bb.a
bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.ad = phi i1 [ true, %bb.k ], [ false, %bb.n ], [ false, %bb.m ]
  %.070 = phi i64 [ 0, %bb.k ], [ 65536, %bb.n ], [ 65536, %bb.m ] ; 2 uses
  %.019 = phi i1 [ true, %bb.k ], [ false, %bb.n ], [ true, %bb.m ]
  %10 = phi i32 [ 0, %bb.k ], [ 1, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !120
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 176 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !7
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_511Lut1DOpData7ComposeERSt10shared_ptrIKS0_ES4_NS0_13ComposeMethodE:bb.a
  %i.am = load i32, ptr %i.al, align 8, !tbaa !78
  %i.an = trunc i32 %i.am to i1
  %i.ao = icmp uge i64 %i.aj, %.070
  %i.ap = and i1 %.019, %i.ao
  %i.aq = or i1 %i.ap, %i.an
  %i.ar = icmp eq i32 %3, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_511Lut1DOpData7ComposeERSt10shared_ptrIKS0_ES4_NS0_13ComposeMethodE:bb.a
  br label %.body

bb.y:                                             ; preds = %bb.t
  %i.be = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #30
          to label %.noexc61 unwind label %bb.ab  ; 16 uses

end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_511Lut1DOpData7ComposeERSt10shared_ptrIKS0_ES4_NS0_13ComposeMethodE:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 184
  store i32 254, ptr %i.bi, align 8, !tbaa !55
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 192
  invoke void @_ZN16OpenColorIO_v2_511Lut1DOpData13Lut3by1DArrayC2ENS0_9HalfFlagsEmmb(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, i32 noundef %10, i64 noundef 3, i64 noundef %.070, i1 noundef zeroext true)
          to label %bb.aa unwind label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.noexc.i.i
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_511Lut1DOpData7ComposeERSt10shared_ptrIKS0_ES4_NS0_13ComposeMethodE:bb.a

bb.aa:                                            ; preds = %.noexc.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 240
  store i32 %10, ptr %i.bn, align 8, !tbaa !78
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 244
  store i32 0, ptr %i.bo, align 4, !tbaa !79
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 248
end_hunk_4
