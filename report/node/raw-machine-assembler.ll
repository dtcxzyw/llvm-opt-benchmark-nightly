inline.NumInlined: 912
inline.NumDeleted: 390
begin_hunk_0_@_ZN2v88internal8compiler19RawMachineAssembler19OptimizeControlFlowEPNS1_8ScheduleEPNS1_7TFGraphEPNS1_21CommonOperatorBuilderE:bb.a
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bx) #18
  %i.by = load ptr, ptr %i.bv, align 8            ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 80 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = icmp eq ptr %i.by, %i.ca
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler19RawMachineAssembler19OptimizeControlFlowEPNS1_8ScheduleEPNS1_7TFGraphEPNS1_21CommonOperatorBuilderE:bb.a
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.by) ]
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.by, ptr nonnull align 8 %i.cc, i64 %i.cf, i1 false)
  %i.cg = load ptr, ptr %i.bz, align 8
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -8
  store ptr %i.ch, ptr %i.bz, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler19RawMachineAssembler19OptimizeControlFlowEPNS1_8ScheduleEPNS1_7TFGraphEPNS1_21CommonOperatorBuilderE:bb.a
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void @_ZN2v88internal8compiler4Node4KillEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ck) #18
  %i.cl = load ptr, ptr %i.ci, align 8            ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bu, i64 80 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = icmp eq ptr %i.cl, %i.cn
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler19RawMachineAssembler19OptimizeControlFlowEPNS1_8ScheduleEPNS1_7TFGraphEPNS1_21CommonOperatorBuilderE:bb.a
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cl, ptr nonnull align 8 %i.cp, i64 %i.cs, i1 false)
  %i.ct = load ptr, ptr %i.cm, align 8
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8
  store ptr %i.cu, ptr %i.cm, align 8
end_hunk_3
