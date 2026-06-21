inline.NumInlined: 4369
inline.NumDeleted: 1949
begin_hunk_0_@_ZN5arrow7compute8internal21PopulateFilterKernelsEPSt6vectorINS1_19SelectionKernelDataESaIS3_EE:bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %37, i64 1144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %23, i32 noundef 41)
          to label %bb.s unwind label %bb.dp

bb.s:                                             ; preds = %bb.r
  store i32 2, ptr %i.dk, align 8, !tbaa !345
  %i.dl = getelementptr inbounds nuw i8, ptr %37, i64 1152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %37, i64 1168
  %i.dn = load <2 x ptr>, ptr %23, align 16, !tbaa !351
  store <2 x ptr> %i.dn, ptr %i.dm, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  %i.do = getelementptr inbounds nuw i8, ptr %37, i64 1184
  %i.dp = getelementptr inbounds nuw i8, ptr %37, i64 1192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.do, ptr noundef nonnull align 8 dereferenceable(40) %34)
  %i.dq = getelementptr inbounds nuw i8, ptr %37, i64 1224
  store ptr @_ZN5arrow7compute8internal18ListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.dq, align 8, !tbaa !354
  %i.dr = getelementptr inbounds nuw i8, ptr %37, i64 1232 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %22, i32 noundef 42)
          to label %bb.t unwind label %bb.dp

bb.t:                                             ; preds = %bb.s
  store i32 2, ptr %i.dr, align 8, !tbaa !345
  %i.ds = getelementptr inbounds nuw i8, ptr %37, i64 1240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, i8 0, i64 16, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %37, i64 1256
  %i.du = load <2 x ptr>, ptr %22, align 16, !tbaa !351
  store <2 x ptr> %i.du, ptr %i.dt, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  %i.dv = getelementptr inbounds nuw i8, ptr %37, i64 1272
  %i.dw = getelementptr inbounds nuw i8, ptr %37, i64 1280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.dv, ptr noundef nonnull align 8 dereferenceable(40) %34)
  %i.dx = getelementptr inbounds nuw i8, ptr %37, i64 1312
  store ptr @_ZN5arrow7compute8internal23LargeListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.dx, align 8, !tbaa !354
  %i.dy = getelementptr inbounds nuw i8, ptr %37, i64 1320 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %21, i32 noundef 32)
          to label %bb.u unwind label %bb.dp

bb.u:                                             ; preds = %bb.t
  store i32 2, ptr %i.dy, align 8, !tbaa !345
  %i.dz = getelementptr inbounds nuw i8, ptr %37, i64 1328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i8 0, i64 16, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %37, i64 1344
  %i.eb = load <2 x ptr>, ptr %21, align 16, !tbaa !351
  store <2 x ptr> %i.eb, ptr %i.ea, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.ec = getelementptr inbounds nuw i8, ptr %37, i64 1360
  %i.ed = getelementptr inbounds nuw i8, ptr %37, i64 1368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ed, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ec, ptr noundef nonnull align 8 dereferenceable(40) %34)
  %i.ee = getelementptr inbounds nuw i8, ptr %37, i64 1400
  store ptr @_ZN5arrow7compute8internal13FSLFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.ee, align 8, !tbaa !354
  %i.ef = getelementptr inbounds nuw i8, ptr %37, i64 1408 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %20, i32 noundef 28)
          to label %bb.v unwind label %bb.dp

bb.v:                                             ; preds = %bb.u
  store i32 2, ptr %i.ef, align 8, !tbaa !345
  %i.eg = getelementptr inbounds nuw i8, ptr %37, i64 1416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i8 0, i64 16, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %37, i64 1432
  %i.ei = load <2 x ptr>, ptr %20, align 16, !tbaa !351
  store <2 x ptr> %i.ei, ptr %i.eh, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %i.ej = getelementptr inbounds nuw i8, ptr %37, i64 1448
  %i.ek = getelementptr inbounds nuw i8, ptr %37, i64 1456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ej, ptr noundef nonnull align 8 dereferenceable(40) %34)
  %i.el = getelementptr inbounds nuw i8, ptr %37, i64 1488
  store ptr @_ZN5arrow7compute8internal20DenseUnionFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.el, align 8, !tbaa !354
  %i.em = getelementptr inbounds nuw i8, ptr %37, i64 1496 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %19, i32 noundef 27)
          to label %bb.w unwind label %bb.dp

bb.w:                                             ; preds = %bb.v
  store i32 2, ptr %i.em, align 8, !tbaa !345
  %i.en = getelementptr inbounds nuw i8, ptr %37, i64 1504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, i8 0, i64 16, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %37, i64 1520
  %i.ep = load <2 x ptr>, ptr %19, align 16, !tbaa !351
  store <2 x ptr> %i.ep, ptr %i.eo, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.eq = getelementptr inbounds nuw i8, ptr %37, i64 1536
  %i.er = getelementptr inbounds nuw i8, ptr %37, i64 1544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.er, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.eq, ptr noundef nonnull align 8 dereferenceable(40) %34)
  %i.es = getelementptr inbounds nuw i8, ptr %37, i64 1576
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_121SparseUnionFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.es, align 8, !tbaa !354
  %i.et = getelementptr inbounds nuw i8, ptr %37, i64 1584 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %18, i32 noundef 26)
          to label %bb.x unwind label %bb.dp

bb.x:                                             ; preds = %bb.w
  store i32 2, ptr %i.et, align 8, !tbaa !345
  %i.eu = getelementptr inbounds nuw i8, ptr %37, i64 1592
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i8 0, i64 16, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %37, i64 1608
  %i.ew = load <2 x ptr>, ptr %18, align 16, !tbaa !351
  store <2 x ptr> %i.ew, ptr %i.ev, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.ex = getelementptr inbounds nuw i8, ptr %37, i64 1624
  %i.ey = getelementptr inbounds nuw i8, ptr %37, i64 1632
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ey, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ex, ptr noundef nonnull align 8 dereferenceable(40) %34)
  %i.ez = getelementptr inbounds nuw i8, ptr %37, i64 1664
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116StructFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.ez, align 8, !tbaa !354
  %i.fa = getelementptr inbounds nuw i8, ptr %37, i64 1672 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %17, i32 noundef 30)
          to label %bb.y unwind label %bb.dp

bb.y:                                             ; preds = %bb.x
  store i32 2, ptr %i.fa, align 8, !tbaa !345
  %i.fb = getelementptr inbounds nuw i8, ptr %37, i64 1680
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i8 0, i64 16, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %37, i64 1696
  %i.fd = load <2 x ptr>, ptr %17, align 16, !tbaa !351
  store <2 x ptr> %i.fd, ptr %i.fc, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.fe = getelementptr inbounds nuw i8, ptr %37, i64 1712
  %i.ff = getelementptr inbounds nuw i8, ptr %37, i64 1720
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.fe, ptr noundef nonnull align 8 dereferenceable(40) %34)
  %i.fg = getelementptr inbounds nuw i8, ptr %37, i64 1752
  store ptr @_ZN5arrow7compute8internal13MapFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.fg, align 8, !tbaa !354
  %i.fh = getelementptr inbounds nuw i8, ptr %37, i64 1760 ; 2 uses
  invoke void @_ZN5arrow7compute5match9PrimitiveEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %42)
          to label %bb.z unwind label %bb.dp

bb.z:                                             ; preds = %bb.y
  store i32 2, ptr %i.fh, align 8, !tbaa !345
  %i.fi = getelementptr inbounds nuw i8, ptr %37, i64 1768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, i8 0, i64 16, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %37, i64 1784
  %i.fk = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.fl = load <2 x ptr>, ptr %42, align 16, !tbaa !351
  store ptr null, ptr %i.fk, align 8, !tbaa !352
  store <2 x ptr> %i.fl, ptr %i.fj, align 8, !tbaa !351
  store ptr null, ptr %42, align 16, !tbaa !353
  %i.fm = getelementptr inbounds nuw i8, ptr %37, i64 1800
  %i.fn = getelementptr inbounds nuw i8, ptr %37, i64 1808
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fn, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.fm, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.fo = getelementptr inbounds nuw i8, ptr %37, i64 1840
  store ptr @_ZN5arrow7compute8internal19PrimitiveFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.fo, align 8, !tbaa !354
  %i.fp = getelementptr inbounds nuw i8, ptr %37, i64 1848 ; 2 uses
  invoke void @_ZN5arrow7compute5match10BinaryLikeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %43)
          to label %bb.aa unwind label %bb.dq

bb.aa:                                            ; preds = %bb.z
  store i32 2, ptr %i.fp, align 8, !tbaa !345
  %i.fq = getelementptr inbounds nuw i8, ptr %37, i64 1856
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i8 0, i64 16, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %37, i64 1872
  %i.fs = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.ft = load <2 x ptr>, ptr %43, align 16, !tbaa !351
  store ptr null, ptr %i.fs, align 8, !tbaa !352
  store <2 x ptr> %i.ft, ptr %i.fr, align 8, !tbaa !351
  store ptr null, ptr %43, align 16, !tbaa !353
  %i.fu = getelementptr inbounds nuw i8, ptr %37, i64 1888
  %i.fv = getelementptr inbounds nuw i8, ptr %37, i64 1896
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.fu, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.fw = getelementptr inbounds nuw i8, ptr %37, i64 1928
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116BinaryFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.fw, align 8, !tbaa !354
  %i.fx = getelementptr inbounds nuw i8, ptr %37, i64 1936 ; 2 uses
  invoke void @_ZN5arrow7compute5match15LargeBinaryLikeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %44)
          to label %bb.ab unwind label %bb.dr

bb.ab:                                            ; preds = %bb.aa
  store i32 2, ptr %i.fx, align 8, !tbaa !345
  %i.fy = getelementptr inbounds nuw i8, ptr %37, i64 1944
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i8 0, i64 16, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %37, i64 1960
  %i.ga = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.gb = load <2 x ptr>, ptr %44, align 16, !tbaa !351
  store ptr null, ptr %i.ga, align 8, !tbaa !352
  store <2 x ptr> %i.gb, ptr %i.fz, align 8, !tbaa !351
  store ptr null, ptr %44, align 16, !tbaa !353
  %i.gc = getelementptr inbounds nuw i8, ptr %37, i64 1976
  %i.gd = getelementptr inbounds nuw i8, ptr %37, i64 1984
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gd, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.gc, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.ge = getelementptr inbounds nuw i8, ptr %37, i64 2016
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116BinaryFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.ge, align 8, !tbaa !354
  %i.gf = getelementptr inbounds nuw i8, ptr %37, i64 2024 ; 2 uses
  %i.gg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4nullEv()
          to label %bb.ac unwind label %bb.ds     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !356 ; 3 uses
  store ptr %i.gh, ptr %45, align 8, !tbaa !356
  %i.gi = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !352 ; 4 uses
  store ptr %i.gk, ptr %i.gi, align 8, !tbaa !352
  %.not.i.i.i60 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i60, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 3 uses
  %i.gm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i61 = icmp eq i8 %i.gm, 0
  br i1 %.not.i.i.i.i61, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !3
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.gl, align 4, !tbaa !3
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.gp = atomicrmw volatile add ptr %i.gl, i32 1 acq_rel, align 4 ; 0 uses
  %.pre142 = load ptr, ptr %45, align 8, !tbaa !356
  %.pre143 = load ptr, ptr %i.gi, align 8, !tbaa !352
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %i.gq = phi ptr [ %.pre143, %bb.af ], [ %i.gk, %bb.ae ], [ null, %bb.ac ]
  %i.gr = phi ptr [ %.pre142, %bb.af ], [ %i.gh, %bb.ae ], [ %i.gh, %bb.ac ]
  store i32 1, ptr %i.gf, align 8, !tbaa !345
  %i.gs = getelementptr inbounds nuw i8, ptr %37, i64 2032
  store ptr %i.gr, ptr %i.gs, align 8, !tbaa !356
  %i.gt = getelementptr inbounds nuw i8, ptr %37, i64 2040
  store ptr null, ptr %i.gi, align 8, !tbaa !352
  store ptr %i.gq, ptr %i.gt, align 8, !tbaa !352
  store ptr null, ptr %45, align 8, !tbaa !356
  %i.gu = getelementptr inbounds nuw i8, ptr %37, i64 2048
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i8 0, i64 16, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %37, i64 2064
  %i.gw = getelementptr inbounds nuw i8, ptr %37, i64 2072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gw, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.gv, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.gx = getelementptr inbounds nuw i8, ptr %37, i64 2104
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_114NullFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.gx, align 8, !tbaa !354
  %i.gy = getelementptr inbounds nuw i8, ptr %37, i64 2112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %16, i32 noundef 15)
          to label %bb.ah unwind label %bb.dt

bb.ah:                                            ; preds = %bb.ag
  store i32 2, ptr %i.gy, align 8, !tbaa !345
  %i.gz = getelementptr inbounds nuw i8, ptr %37, i64 2120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false)
  %i.ha = getelementptr inbounds nuw i8, ptr %37, i64 2136
  %i.hb = load <2 x ptr>, ptr %16, align 16, !tbaa !351
  store <2 x ptr> %i.hb, ptr %i.ha, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.hc = getelementptr inbounds nuw i8, ptr %37, i64 2152
  %i.hd = getelementptr inbounds nuw i8, ptr %37, i64 2160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hd, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.hc, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.he = getelementptr inbounds nuw i8, ptr %37, i64 2192
  store ptr @_ZN5arrow7compute8internal19PrimitiveFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.he, align 8, !tbaa !354
  %i.hf = getelementptr inbounds nuw i8, ptr %37, i64 2200 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %15, i32 noundef 43)
          to label %bb.ai unwind label %bb.dt

bb.ai:                                            ; preds = %bb.ah
  store i32 2, ptr %i.hf, align 8, !tbaa !345
  %i.hg = getelementptr inbounds nuw i8, ptr %37, i64 2208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i8 0, i64 16, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %37, i64 2224
  %i.hi = load <2 x ptr>, ptr %15, align 16, !tbaa !351
  store <2 x ptr> %i.hi, ptr %i.hh, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.hj = getelementptr inbounds nuw i8, ptr %37, i64 2240
  %i.hk = getelementptr inbounds nuw i8, ptr %37, i64 2248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hk, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.hj, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.hl = getelementptr inbounds nuw i8, ptr %37, i64 2280
  store ptr @_ZN5arrow7compute8internal19PrimitiveFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.hl, align 8, !tbaa !354
  %i.hm = getelementptr inbounds nuw i8, ptr %37, i64 2288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %14, i32 noundef 44)
          to label %bb.aj unwind label %bb.dt

bb.aj:                                            ; preds = %bb.ai
  store i32 2, ptr %i.hm, align 8, !tbaa !345
  %i.hn = getelementptr inbounds nuw i8, ptr %37, i64 2296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hn, i8 0, i64 16, i1 false)
  %i.ho = getelementptr inbounds nuw i8, ptr %37, i64 2312
  %i.hp = load <2 x ptr>, ptr %14, align 16, !tbaa !351
  store <2 x ptr> %i.hp, ptr %i.ho, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.hq = getelementptr inbounds nuw i8, ptr %37, i64 2328
  %i.hr = getelementptr inbounds nuw i8, ptr %37, i64 2336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hr, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.hq, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.hs = getelementptr inbounds nuw i8, ptr %37, i64 2368
  store ptr @_ZN5arrow7compute8internal19PrimitiveFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.hs, align 8, !tbaa !354
  %i.ht = getelementptr inbounds nuw i8, ptr %37, i64 2376 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %13, i32 noundef 23)
          to label %bb.ak unwind label %bb.dt

bb.ak:                                            ; preds = %bb.aj
  store i32 2, ptr %i.ht, align 8, !tbaa !345
  %i.hu = getelementptr inbounds nuw i8, ptr %37, i64 2384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, i8 0, i64 16, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %37, i64 2400
  %i.hw = load <2 x ptr>, ptr %13, align 16, !tbaa !351
  store <2 x ptr> %i.hw, ptr %i.hv, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.hx = getelementptr inbounds nuw i8, ptr %37, i64 2416
  %i.hy = getelementptr inbounds nuw i8, ptr %37, i64 2424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hy, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.hx, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.hz = getelementptr inbounds nuw i8, ptr %37, i64 2456
  store ptr @_ZN5arrow7compute8internal19PrimitiveFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.hz, align 8, !tbaa !354
  %i.ia = getelementptr inbounds nuw i8, ptr %37, i64 2464 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %12, i32 noundef 24)
          to label %bb.al unwind label %bb.dt

bb.al:                                            ; preds = %bb.ak
  store i32 2, ptr %i.ia, align 8, !tbaa !345
  %i.ib = getelementptr inbounds nuw i8, ptr %37, i64 2472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ib, i8 0, i64 16, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %37, i64 2488
  %i.id = load <2 x ptr>, ptr %12, align 16, !tbaa !351
  store <2 x ptr> %i.id, ptr %i.ic, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.ie = getelementptr inbounds nuw i8, ptr %37, i64 2504
  %i.if = getelementptr inbounds nuw i8, ptr %37, i64 2512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.if, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ie, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.ig = getelementptr inbounds nuw i8, ptr %37, i64 2544
  store ptr @_ZN5arrow7compute8internal19PrimitiveFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.ig, align 8, !tbaa !354
  %i.ih = getelementptr inbounds nuw i8, ptr %37, i64 2552 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %11, i32 noundef 29)
          to label %bb.am unwind label %bb.dt

bb.am:                                            ; preds = %bb.al
  store i32 2, ptr %i.ih, align 8, !tbaa !345
  %i.ii = getelementptr inbounds nuw i8, ptr %37, i64 2560
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ii, i8 0, i64 16, i1 false)
  %i.ij = getelementptr inbounds nuw i8, ptr %37, i64 2576
  %i.ik = load <2 x ptr>, ptr %11, align 16, !tbaa !351
  store <2 x ptr> %i.ik, ptr %i.ij, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.il = getelementptr inbounds nuw i8, ptr %37, i64 2592
  %i.im = getelementptr inbounds nuw i8, ptr %37, i64 2600
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.im, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.il, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.in = getelementptr inbounds nuw i8, ptr %37, i64 2632
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_120DictionaryFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.in, align 8, !tbaa !354
  %i.io = getelementptr inbounds nuw i8, ptr %37, i64 2640 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %10, i32 noundef 31)
          to label %bb.an unwind label %bb.dt

bb.an:                                            ; preds = %bb.am
  store i32 2, ptr %i.io, align 8, !tbaa !345
  %i.ip = getelementptr inbounds nuw i8, ptr %37, i64 2648
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ip, i8 0, i64 16, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %37, i64 2664
  %i.ir = load <2 x ptr>, ptr %10, align 16, !tbaa !351
  store <2 x ptr> %i.ir, ptr %i.iq, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.is = getelementptr inbounds nuw i8, ptr %37, i64 2680
  %i.it = getelementptr inbounds nuw i8, ptr %37, i64 2688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.it, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.is, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.iu = getelementptr inbounds nuw i8, ptr %37, i64 2720
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_119ExtensionFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.iu, align 8, !tbaa !354
  %i.iv = getelementptr inbounds nuw i8, ptr %37, i64 2728 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %9, i32 noundef 25)
          to label %bb.ao unwind label %bb.dt

bb.ao:                                            ; preds = %bb.an
  store i32 2, ptr %i.iv, align 8, !tbaa !345
  %i.iw = getelementptr inbounds nuw i8, ptr %37, i64 2736
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iw, i8 0, i64 16, i1 false)
  %i.ix = getelementptr inbounds nuw i8, ptr %37, i64 2752
  %i.iy = load <2 x ptr>, ptr %9, align 16, !tbaa !351
  store <2 x ptr> %i.iy, ptr %i.ix, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.iz = getelementptr inbounds nuw i8, ptr %37, i64 2768
  %i.ja = getelementptr inbounds nuw i8, ptr %37, i64 2776
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ja, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.iz, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.jb = getelementptr inbounds nuw i8, ptr %37, i64 2808
  store ptr @_ZN5arrow7compute8internal14ListFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.jb, align 8, !tbaa !354
  %i.jc = getelementptr inbounds nuw i8, ptr %37, i64 2816 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %8, i32 noundef 36)
          to label %bb.ap unwind label %bb.dt

bb.ap:                                            ; preds = %bb.ao
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal21PopulateFilterKernelsEPSt6vectorINS1_19SelectionKernelDataESaIS3_EE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %37, i64 2984
  store ptr @_ZN5arrow7compute8internal18ListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.jp, align 8, !tbaa !354
  %i.jq = getelementptr inbounds nuw i8, ptr %37, i64 2992 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %6, i32 noundef 42)
          to label %bb.ar unwind label %bb.dt

bb.ar:                                            ; preds = %bb.aq
  store i32 2, ptr %i.jq, align 8, !tbaa !345
  %i.jr = getelementptr inbounds nuw i8, ptr %37, i64 3000
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jr, i8 0, i64 16, i1 false)
  %i.js = getelementptr inbounds nuw i8, ptr %37, i64 3016
  %i.jt = load <2 x ptr>, ptr %6, align 16, !tbaa !351
  store <2 x ptr> %i.jt, ptr %i.js, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ju = getelementptr inbounds nuw i8, ptr %37, i64 3032
  %i.jv = getelementptr inbounds nuw i8, ptr %37, i64 3040
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jv, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ju, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.jw = getelementptr inbounds nuw i8, ptr %37, i64 3072
  store ptr @_ZN5arrow7compute8internal23LargeListViewFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.jw, align 8, !tbaa !354
  %i.jx = getelementptr inbounds nuw i8, ptr %37, i64 3080 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %5, i32 noundef 32)
          to label %bb.as unwind label %bb.dt

bb.as:                                            ; preds = %bb.ar
  store i32 2, ptr %i.jx, align 8, !tbaa !345
  %i.jy = getelementptr inbounds nuw i8, ptr %37, i64 3088
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jy, i8 0, i64 16, i1 false)
  %i.jz = getelementptr inbounds nuw i8, ptr %37, i64 3104
  %i.ka = load <2 x ptr>, ptr %5, align 16, !tbaa !351
  store <2 x ptr> %i.ka, ptr %i.jz, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.kb = getelementptr inbounds nuw i8, ptr %37, i64 3120
  %i.kc = getelementptr inbounds nuw i8, ptr %37, i64 3128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kc, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.kb, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.kd = getelementptr inbounds nuw i8, ptr %37, i64 3160
  store ptr @_ZN5arrow7compute8internal13FSLFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.kd, align 8, !tbaa !354
  %i.ke = getelementptr inbounds nuw i8, ptr %37, i64 3168 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %4, i32 noundef 28)
          to label %bb.at unwind label %bb.dt

bb.at:                                            ; preds = %bb.as
  store i32 2, ptr %i.ke, align 8, !tbaa !345
  %i.kf = getelementptr inbounds nuw i8, ptr %37, i64 3176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, i8 0, i64 16, i1 false)
  %i.kg = getelementptr inbounds nuw i8, ptr %37, i64 3192
  %i.kh = load <2 x ptr>, ptr %4, align 16, !tbaa !351
  store <2 x ptr> %i.kh, ptr %i.kg, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ki = getelementptr inbounds nuw i8, ptr %37, i64 3208
  %i.kj = getelementptr inbounds nuw i8, ptr %37, i64 3216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kj, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ki, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.kk = getelementptr inbounds nuw i8, ptr %37, i64 3248
  store ptr @_ZN5arrow7compute8internal20DenseUnionFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.kk, align 8, !tbaa !354
  %i.kl = getelementptr inbounds nuw i8, ptr %37, i64 3256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %3, i32 noundef 27)
          to label %bb.au unwind label %bb.dt

bb.au:                                            ; preds = %bb.at
  store i32 2, ptr %i.kl, align 8, !tbaa !345
  %i.km = getelementptr inbounds nuw i8, ptr %37, i64 3264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.km, i8 0, i64 16, i1 false)
  %i.kn = getelementptr inbounds nuw i8, ptr %37, i64 3280
  %i.ko = load <2 x ptr>, ptr %3, align 16, !tbaa !351
  store <2 x ptr> %i.ko, ptr %i.kn, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.kp = getelementptr inbounds nuw i8, ptr %37, i64 3296
  %i.kq = getelementptr inbounds nuw i8, ptr %37, i64 3304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kq, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.kp, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.kr = getelementptr inbounds nuw i8, ptr %37, i64 3336
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_121SparseUnionFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.kr, align 8, !tbaa !354
  %i.ks = getelementptr inbounds nuw i8, ptr %37, i64 3344 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %2, i32 noundef 26)
          to label %bb.av unwind label %bb.dt

bb.av:                                            ; preds = %bb.au
  store i32 2, ptr %i.ks, align 8, !tbaa !345
  %i.kt = getelementptr inbounds nuw i8, ptr %37, i64 3352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, i8 0, i64 16, i1 false)
  %i.ku = getelementptr inbounds nuw i8, ptr %37, i64 3368
  %i.kv = load <2 x ptr>, ptr %2, align 16, !tbaa !351
  store <2 x ptr> %i.kv, ptr %i.ku, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.kw = getelementptr inbounds nuw i8, ptr %37, i64 3384
  %i.kx = getelementptr inbounds nuw i8, ptr %37, i64 3392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kx, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.kw, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.ky = getelementptr inbounds nuw i8, ptr %37, i64 3424
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116StructFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.ky, align 8, !tbaa !354
  %i.kz = getelementptr inbounds nuw i8, ptr %37, i64 3432 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  invoke void @_ZN5arrow7compute5match10SameTypeIdENS_4Type4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.69") align 8 %1, i32 noundef 30)
          to label %bb.aw unwind label %bb.dt

bb.aw:                                            ; preds = %bb.av
  store i32 2, ptr %i.kz, align 8, !tbaa !345
  %i.la = getelementptr inbounds nuw i8, ptr %37, i64 3440
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.la, i8 0, i64 16, i1 false)
  %i.lb = getelementptr inbounds nuw i8, ptr %37, i64 3456
  %i.lc = load <2 x ptr>, ptr %1, align 16, !tbaa !351
  store <2 x ptr> %i.lc, ptr %i.lb, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ld = getelementptr inbounds nuw i8, ptr %37, i64 3472
  %i.le = getelementptr inbounds nuw i8, ptr %37, i64 3480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.le, i8 0, i64 32, i1 false)
  call void @_ZN5arrow7compute9InputType8CopyIntoERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.ld, ptr noundef nonnull align 8 dereferenceable(40) %35)
  %i.lf = getelementptr inbounds nuw i8, ptr %37, i64 3512
  store ptr @_ZN5arrow7compute8internal13MapFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr %i.lf, align 8, !tbaa !354
  %i.lg = getelementptr inbounds nuw i8, ptr %37, i64 3520
  invoke void @_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %37, ptr noundef nonnull %i.lg)
          to label %_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %.loopexit140.loopexit

_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %bb.aw
  %i.lh = getelementptr inbounds nuw i8, ptr %37, i64 3432
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.lh) #26
  %i.li = getelementptr inbounds nuw i8, ptr %37, i64 3344
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.li) #26
  %i.lj = getelementptr inbounds nuw i8, ptr %37, i64 3256
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.lj) #26
  %i.lk = getelementptr inbounds nuw i8, ptr %37, i64 3168
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.lk) #26
  %i.ll = getelementptr inbounds nuw i8, ptr %37, i64 3080
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ll) #26
  %i.lm = getelementptr inbounds nuw i8, ptr %37, i64 2992
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.lm) #26
  %i.ln = getelementptr inbounds nuw i8, ptr %37, i64 2904
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ln) #26
  %i.lo = getelementptr inbounds nuw i8, ptr %37, i64 2816
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.lo) #26
  %i.lp = getelementptr inbounds nuw i8, ptr %37, i64 2728
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.lp) #26
  %i.lq = getelementptr inbounds nuw i8, ptr %37, i64 2640
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.lq) #26
  %i.lr = getelementptr inbounds nuw i8, ptr %37, i64 2552
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.lr) #26
  %i.ls = getelementptr inbounds nuw i8, ptr %37, i64 2464
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ls) #26
  %i.lt = getelementptr inbounds nuw i8, ptr %37, i64 2376
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.lt) #26
  %i.lu = getelementptr inbounds nuw i8, ptr %37, i64 2288
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.lu) #26
  %i.lv = getelementptr inbounds nuw i8, ptr %37, i64 2200
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.lv) #26
  %i.lw = getelementptr inbounds nuw i8, ptr %37, i64 2112
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.lw) #26
  %i.lx = getelementptr inbounds nuw i8, ptr %37, i64 2024
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.lx) #26
  %i.ly = getelementptr inbounds nuw i8, ptr %37, i64 1936
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ly) #26
  %i.lz = getelementptr inbounds nuw i8, ptr %37, i64 1848
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.lz) #26
  %i.ma = getelementptr inbounds nuw i8, ptr %37, i64 1760
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ma) #26
  %i.mb = getelementptr inbounds nuw i8, ptr %37, i64 1672
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.mb) #26
  %i.mc = getelementptr inbounds nuw i8, ptr %37, i64 1584
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.mc) #26
  %i.md = getelementptr inbounds nuw i8, ptr %37, i64 1496
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.md) #26
  %i.me = getelementptr inbounds nuw i8, ptr %37, i64 1408
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.me) #26
  %i.mf = getelementptr inbounds nuw i8, ptr %37, i64 1320
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.mf) #26
  %i.mg = getelementptr inbounds nuw i8, ptr %37, i64 1232
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.mg) #26
  %i.mh = getelementptr inbounds nuw i8, ptr %37, i64 1144
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.mh) #26
  %i.mi = getelementptr inbounds nuw i8, ptr %37, i64 1056
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.mi) #26
  %i.mj = getelementptr inbounds nuw i8, ptr %37, i64 968
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.mj) #26
  %i.mk = getelementptr inbounds nuw i8, ptr %37, i64 880
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.mk) #26
  %i.ml = getelementptr inbounds nuw i8, ptr %37, i64 792
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ml) #26
  %i.mm = getelementptr inbounds nuw i8, ptr %37, i64 704
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.mm) #26
  %i.mn = getelementptr inbounds nuw i8, ptr %37, i64 616
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.mn) #26
  %i.mo = getelementptr inbounds nuw i8, ptr %37, i64 528
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.mo) #26
  %i.mp = getelementptr inbounds nuw i8, ptr %37, i64 440
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.mp) #26
  %i.mq = getelementptr inbounds nuw i8, ptr %37, i64 352
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.mq) #26
  %i.mr = getelementptr inbounds nuw i8, ptr %37, i64 264
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.mr) #26
  %i.ms = getelementptr inbounds nuw i8, ptr %37, i64 176
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ms) #26
  %i.mt = getelementptr inbounds nuw i8, ptr %37, i64 88
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.mt) #26
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %37) #26
  %i.mu = load ptr, ptr %i.ga, align 8, !tbaa !352 ; 8 uses
  %.not.i.i79 = icmp eq ptr %i.mu, null
  br i1 %.not.i.i79, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8 ; 4 uses
  %i.mw = load atomic i64, ptr %i.mv acquire, align 8 ; 2 uses
  %i.mx = icmp eq i64 %i.mw, 4294967297
  %i.my = trunc i64 %i.mw to i32                  ; 2 uses
  br i1 %i.mx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.mv, align 8, !tbaa !357
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mu, i64 12
  store i32 0, ptr %i.mz, align 4, !tbaa !359
  %i.na = load ptr, ptr %i.mu, align 8, !tbaa !96
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8
  call void %i.nc(ptr noundef nonnull align 8 dereferenceable(16) %i.mu) #26, !inline_history !360
  %i.nd = load ptr, ptr %i.mu, align 8, !tbaa !96
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nf = load ptr, ptr %i.ne, align 8
  call void %i.nf(ptr noundef nonnull align 8 dereferenceable(16) %i.mu) #26, !inline_history !360
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

bb.az:                                            ; preds = %bb.ax
  %i.ng = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i84 = icmp eq i8 %i.ng, 0
  br i1 %.not.i.i.i84, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nh = add nsw i32 %i.my, -1
  store i32 %i.nh, ptr %i.mv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

bb.bb:                                            ; preds = %bb.az
  %i.ni = atomicrmw volatile add ptr %i.mv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i86 = phi i32 [ %i.my, %bb.ba ], [ %i.ni, %bb.bb ]
  %i.nj = icmp eq i32 %.0.i.i.i.i86, 1
  br i1 %i.nj, label %bb.bc, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, !prof !66

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mu) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87: ; preds = %_ZNSt6vectorIN5arrow7compute8internal19SelectionKernelDataESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i85, %bb.bc
  %i.nk = load ptr, ptr %i.fs, align 8, !tbaa !352 ; 8 uses
  %.not.i.i88 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i88, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8 ; 4 uses
  %i.nm = load atomic i64, ptr %i.nl acquire, align 8 ; 2 uses
  %i.nn = icmp eq i64 %i.nm, 4294967297
  %i.no = trunc i64 %i.nm to i32                  ; 2 uses
  br i1 %i.nn, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.nl, align 8, !tbaa !357
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 12
  store i32 0, ptr %i.np, align 4, !tbaa !359
  %i.nq = load ptr, ptr %i.nk, align 8, !tbaa !96
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8
  call void %i.ns(ptr noundef nonnull align 8 dereferenceable(16) %i.nk) #26, !inline_history !360
  %i.nt = load ptr, ptr %i.nk, align 8, !tbaa !96
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  %i.nv = load ptr, ptr %i.nu, align 8
  call void %i.nv(ptr noundef nonnull align 8 dereferenceable(16) %i.nk) #26, !inline_history !360
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92

bb.bf:                                            ; preds = %bb.bd
  %i.nw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i89 = icmp eq i8 %i.nw, 0
  br i1 %.not.i.i.i89, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nx = add nsw i32 %i.no, -1
  store i32 %i.nx, ptr %i.nl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90

bb.bh:                                            ; preds = %bb.bf
  %i.ny = atomicrmw volatile add ptr %i.nl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i91 = phi i32 [ %i.no, %bb.bg ], [ %i.ny, %bb.bh ]
  %i.nz = icmp eq i32 %.0.i.i.i.i91, 1
  br i1 %i.nz, label %bb.bi, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92, !prof !66

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nk) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit87, %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90, %bb.bi
  %i.oa = load ptr, ptr %i.fk, align 8, !tbaa !352 ; 8 uses
  %.not.i.i93 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i93, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8 ; 4 uses
  %i.oc = load atomic i64, ptr %i.ob acquire, align 8 ; 2 uses
  %i.od = icmp eq i64 %i.oc, 4294967297
  %i.oe = trunc i64 %i.oc to i32                  ; 2 uses
  br i1 %i.od, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.ob, align 8, !tbaa !357
  %i.of = getelementptr inbounds nuw i8, ptr %i.oa, i64 12
  store i32 0, ptr %i.of, align 4, !tbaa !359
  %i.og = load ptr, ptr %i.oa, align 8, !tbaa !96
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8
  call void %i.oi(ptr noundef nonnull align 8 dereferenceable(16) %i.oa) #26, !inline_history !360
  %i.oj = load ptr, ptr %i.oa, align 8, !tbaa !96
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  %i.ol = load ptr, ptr %i.ok, align 8
  call void %i.ol(ptr noundef nonnull align 8 dereferenceable(16) %i.oa) #26, !inline_history !360
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97

bb.bl:                                            ; preds = %bb.bj
  %i.om = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i94 = icmp eq i8 %i.om, 0
  br i1 %.not.i.i.i94, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.on = add nsw i32 %i.oe, -1
  store i32 %i.on, ptr %i.ob, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95

bb.bn:                                            ; preds = %bb.bl
  %i.oo = atomicrmw volatile add ptr %i.ob, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i96 = phi i32 [ %i.oe, %bb.bm ], [ %i.oo, %bb.bn ]
  %i.op = icmp eq i32 %.0.i.i.i.i96, 1
  br i1 %i.op, label %bb.bo, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97, !prof !66

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oa) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92, %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i95, %bb.bo
  %i.oq = load ptr, ptr %i.aj, align 8, !tbaa !352 ; 8 uses
  %.not.i.i98 = icmp eq ptr %i.oq, null
  br i1 %.not.i.i98, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit102, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8 ; 4 uses
  %i.os = load atomic i64, ptr %i.or acquire, align 8 ; 2 uses
  %i.ot = icmp eq i64 %i.os, 4294967297
  %i.ou = trunc i64 %i.os to i32                  ; 2 uses
  br i1 %i.ot, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.or, align 8, !tbaa !357
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 12
  store i32 0, ptr %i.ov, align 4, !tbaa !359
  %i.ow = load ptr, ptr %i.oq, align 8, !tbaa !96
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.oy = load ptr, ptr %i.ox, align 8
  call void %i.oy(ptr noundef nonnull align 8 dereferenceable(16) %i.oq) #26, !inline_history !361
  %i.oz = load ptr, ptr %i.oq, align 8, !tbaa !96
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.pb = load ptr, ptr %i.pa, align 8
  call void %i.pb(ptr noundef nonnull align 8 dereferenceable(16) %i.oq) #26, !inline_history !361
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit102

bb.br:                                            ; preds = %bb.bp
  %i.pc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i99 = icmp eq i8 %i.pc, 0
  br i1 %.not.i.i.i99, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pd = add nsw i32 %i.ou, -1
  store i32 %i.pd, ptr %i.or, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100

bb.bt:                                            ; preds = %bb.br
  %i.pe = atomicrmw volatile add ptr %i.or, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i101 = phi i32 [ %i.ou, %bb.bs ], [ %i.pe, %bb.bt ]
  %i.pf = icmp eq i32 %.0.i.i.i.i101, 1
  br i1 %i.pf, label %bb.bu, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit102, !prof !66

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oq) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit102

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit102: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit97, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100, %bb.bu
  %i.pg = load ptr, ptr %i.ab, align 8, !tbaa !352 ; 8 uses
  %.not.i.i103 = icmp eq ptr %i.pg, null
  br i1 %.not.i.i103, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit102
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8 ; 4 uses
  %i.pi = load atomic i64, ptr %i.ph acquire, align 8 ; 2 uses
  %i.pj = icmp eq i64 %i.pi, 4294967297
  %i.pk = trunc i64 %i.pi to i32                  ; 2 uses
  br i1 %i.pj, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.ph, align 8, !tbaa !357
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pg, i64 12
  store i32 0, ptr %i.pl, align 4, !tbaa !359
  %i.pm = load ptr, ptr %i.pg, align 8, !tbaa !96
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.po = load ptr, ptr %i.pn, align 8
  call void %i.po(ptr noundef nonnull align 8 dereferenceable(16) %i.pg) #26, !inline_history !360
  %i.pp = load ptr, ptr %i.pg, align 8, !tbaa !96
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 24
  %i.pr = load ptr, ptr %i.pq, align 8
  call void %i.pr(ptr noundef nonnull align 8 dereferenceable(16) %i.pg) #26, !inline_history !360
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

bb.bx:                                            ; preds = %bb.bv
  %i.ps = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i104 = icmp eq i8 %i.ps, 0
  br i1 %.not.i.i.i104, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pt = add nsw i32 %i.pk, -1
  store i32 %i.pt, ptr %i.ph, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105

bb.bz:                                            ; preds = %bb.bx
  %i.pu = atomicrmw volatile add ptr %i.ph, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i106 = phi i32 [ %i.pk, %bb.by ], [ %i.pu, %bb.bz ]
  %i.pv = icmp eq i32 %.0.i.i.i.i106, 1
  br i1 %i.pv, label %bb.ca, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, !prof !66

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pg) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit102, %bb.bw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105, %bb.ca
  %i.pw = load ptr, ptr %i.t, align 8, !tbaa !352 ; 8 uses
  %.not.i.i108 = icmp eq ptr %i.pw, null
  br i1 %.not.i.i108, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8 ; 4 uses
  %i.py = load atomic i64, ptr %i.px acquire, align 8 ; 2 uses
  %i.pz = icmp eq i64 %i.py, 4294967297
  %i.qa = trunc i64 %i.py to i32                  ; 2 uses
  br i1 %i.pz, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.px, align 8, !tbaa !357
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pw, i64 12
  store i32 0, ptr %i.qb, align 4, !tbaa !359
  %i.qc = load ptr, ptr %i.pw, align 8, !tbaa !96
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %i.qe = load ptr, ptr %i.qd, align 8
  call void %i.qe(ptr noundef nonnull align 8 dereferenceable(16) %i.pw) #26, !inline_history !360
  %i.qf = load ptr, ptr %i.pw, align 8, !tbaa !96
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 24
  %i.qh = load ptr, ptr %i.qg, align 8
  call void %i.qh(ptr noundef nonnull align 8 dereferenceable(16) %i.pw) #26, !inline_history !360
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112

bb.cd:                                            ; preds = %bb.cb
  %i.qi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i109 = icmp eq i8 %i.qi, 0
  br i1 %.not.i.i.i109, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.qj = add nsw i32 %i.qa, -1
  store i32 %i.qj, ptr %i.px, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110

bb.cf:                                            ; preds = %bb.cd
  %i.qk = atomicrmw volatile add ptr %i.px, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i111 = phi i32 [ %i.qa, %bb.ce ], [ %i.qk, %bb.cf ]
  %i.ql = icmp eq i32 %.0.i.i.i.i111, 1
  br i1 %i.ql, label %bb.cg, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112, !prof !66

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pw) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110, %bb.cg
  %i.qm = load ptr, ptr %i.l, align 8, !tbaa !352 ; 8 uses
  %.not.i.i113 = icmp eq ptr %i.qm, null
  br i1 %.not.i.i113, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit117, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8 ; 4 uses
  %i.qo = load atomic i64, ptr %i.qn acquire, align 8 ; 2 uses
  %i.qp = icmp eq i64 %i.qo, 4294967297
  %i.qq = trunc i64 %i.qo to i32                  ; 2 uses
  br i1 %i.qp, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  store i32 0, ptr %i.qn, align 8, !tbaa !357
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qm, i64 12
  store i32 0, ptr %i.qr, align 4, !tbaa !359
  %i.qs = load ptr, ptr %i.qm, align 8, !tbaa !96
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.qu = load ptr, ptr %i.qt, align 8
  call void %i.qu(ptr noundef nonnull align 8 dereferenceable(16) %i.qm) #26, !inline_history !360
  %i.qv = load ptr, ptr %i.qm, align 8, !tbaa !96
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 24
  %i.qx = load ptr, ptr %i.qw, align 8
  call void %i.qx(ptr noundef nonnull align 8 dereferenceable(16) %i.qm) #26, !inline_history !360
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit117

bb.cj:                                            ; preds = %bb.ch
  %i.qy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i114 = icmp eq i8 %i.qy, 0
  br i1 %.not.i.i.i114, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.qz = add nsw i32 %i.qq, -1
  store i32 %i.qz, ptr %i.qn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i115

bb.cl:                                            ; preds = %bb.cj
  %i.ra = atomicrmw volatile add ptr %i.qn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i115

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i115: ; preds = %bb.cl, %bb.ck
  %.0.i.i.i.i116 = phi i32 [ %i.qq, %bb.ck ], [ %i.ra, %bb.cl ]
  %i.rb = icmp eq i32 %.0.i.i.i.i116, 1
  br i1 %i.rb, label %bb.cm, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit117, !prof !66

bb.cm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i115
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qm) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit117

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit117: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112, %bb.ci, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i115, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  %i.rc = load ptr, ptr %i.g, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i118 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i.i118, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit117
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8 ; 4 uses
  %i.re = load atomic i64, ptr %i.rd acquire, align 8 ; 2 uses
  %i.rf = icmp eq i64 %i.re, 4294967297
  %i.rg = trunc i64 %i.re to i32                  ; 2 uses
  br i1 %i.rf, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i32 0, ptr %i.rd, align 8, !tbaa !357
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rc, i64 12
  store i32 0, ptr %i.rh, align 4, !tbaa !359
  %i.ri = load ptr, ptr %i.rc, align 8, !tbaa !96
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #26, !inline_history !362
  %i.rl = load ptr, ptr %i.rc, align 8, !tbaa !96
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  %i.rn = load ptr, ptr %i.rm, align 8
  call void %i.rn(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #26, !inline_history !362
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.cp:                                            ; preds = %bb.cn
  %i.ro = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i119 = icmp eq i8 %i.ro, 0
  br i1 %.not.i.i.i.i119, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.rp = add nsw i32 %i.rg, -1
  store i32 %i.rp, ptr %i.rd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.rq = atomicrmw volatile add ptr %i.rd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.cr, %bb.cq
  %.0.i.i.i.i.i = phi i32 [ %i.rg, %bb.cq ], [ %i.rq, %bb.cr ]
  %i.rr = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.rr, label %bb.cs, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !66

bb.cs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.cs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.co, %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit117
  %i.rs = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !352 ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.rt, null
  br i1 %.not.i.i1.i, label %_ZN5arrow7compute9InputTypeD2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8 ; 4 uses
  %i.rv = load atomic i64, ptr %i.ru acquire, align 8 ; 2 uses
  %i.rw = icmp eq i64 %i.rv, 4294967297
  %i.rx = trunc i64 %i.rv to i32                  ; 2 uses
  br i1 %i.rw, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  store i32 0, ptr %i.ru, align 8, !tbaa !357
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rt, i64 12
  store i32 0, ptr %i.ry, align 4, !tbaa !359
  %i.rz = load ptr, ptr %i.rt, align 8, !tbaa !96
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  %i.sb = load ptr, ptr %i.sa, align 8
  call void %i.sb(ptr noundef nonnull align 8 dereferenceable(16) %i.rt) #26, !inline_history !363
  %i.sc = load ptr, ptr %i.rt, align 8, !tbaa !96
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 24
  %i.se = load ptr, ptr %i.sd, align 8
  call void %i.se(ptr noundef nonnull align 8 dereferenceable(16) %i.rt) #26, !inline_history !363
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit

bb.cv:                                            ; preds = %bb.ct
  %i.sf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i2.i = icmp eq i8 %i.sf, 0
  br i1 %.not.i.i.i2.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.sg = add nsw i32 %i.rx, -1
  store i32 %i.sg, ptr %i.ru, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.cx:                                            ; preds = %bb.cv
  %i.sh = atomicrmw volatile add ptr %i.ru, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.cx, %bb.cw
  %.0.i.i.i.i4.i = phi i32 [ %i.rx, %bb.cw ], [ %i.sh, %bb.cx ]
  %i.si = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.si, label %bb.cy, label %_ZN5arrow7compute9InputTypeD2Ev.exit, !prof !66

bb.cy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rt) #26
  br label %_ZN5arrow7compute9InputTypeD2Ev.exit

_ZN5arrow7compute9InputTypeD2Ev.exit:             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.cu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  %i.sj = load ptr, ptr %i.c, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i120 = icmp eq ptr %i.sj, null
  br i1 %.not.i.i.i120, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i124, label %bb.cz

bb.cz:                                            ; preds = %_ZN5arrow7compute9InputTypeD2Ev.exit
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8 ; 4 uses
  %i.sl = load atomic i64, ptr %i.sk acquire, align 8 ; 2 uses
  %i.sm = icmp eq i64 %i.sl, 4294967297
  %i.sn = trunc i64 %i.sl to i32                  ; 2 uses
  br i1 %i.sm, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  store i32 0, ptr %i.sk, align 8, !tbaa !357
  %i.so = getelementptr inbounds nuw i8, ptr %i.sj, i64 12
  store i32 0, ptr %i.so, align 4, !tbaa !359
  %i.sp = load ptr, ptr %i.sj, align 8, !tbaa !96
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8
  call void %i.sr(ptr noundef nonnull align 8 dereferenceable(16) %i.sj) #26, !inline_history !362
  %i.ss = load ptr, ptr %i.sj, align 8, !tbaa !96
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  %i.su = load ptr, ptr %i.st, align 8
  call void %i.su(ptr noundef nonnull align 8 dereferenceable(16) %i.sj) #26, !inline_history !362
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i124

bb.db:                                            ; preds = %bb.cz
  %i.sv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i121 = icmp eq i8 %i.sv, 0
  br i1 %.not.i.i.i.i121, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.sw = add nsw i32 %i.sn, -1
  store i32 %i.sw, ptr %i.sk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i122

bb.dd:                                            ; preds = %bb.db
  %i.sx = atomicrmw volatile add ptr %i.sk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i122

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i122: ; preds = %bb.dd, %bb.dc
  %.0.i.i.i.i.i123 = phi i32 [ %i.sn, %bb.dc ], [ %i.sx, %bb.dd ]
  %i.sy = icmp eq i32 %.0.i.i.i.i.i123, 1
  br i1 %i.sy, label %bb.de, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i124, !prof !66

bb.de:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i122
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sj) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i124

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i124: ; preds = %bb.de, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i122, %bb.da, %_ZN5arrow7compute9InputTypeD2Ev.exit
  %i.sz = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !352 ; 8 uses
  %.not.i.i1.i125 = icmp eq ptr %i.ta, null
  br i1 %.not.i.i1.i125, label %_ZN5arrow7compute9InputTypeD2Ev.exit129, label %bb.df

bb.df:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i124
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8 ; 4 uses
  %i.tc = load atomic i64, ptr %i.tb acquire, align 8 ; 2 uses
  %i.td = icmp eq i64 %i.tc, 4294967297
  %i.te = trunc i64 %i.tc to i32                  ; 2 uses
  br i1 %i.td, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i32 0, ptr %i.tb, align 8, !tbaa !357
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ta, i64 12
  store i32 0, ptr %i.tf, align 4, !tbaa !359
  %i.tg = load ptr, ptr %i.ta, align 8, !tbaa !96
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %i.ti = load ptr, ptr %i.th, align 8
  call void %i.ti(ptr noundef nonnull align 8 dereferenceable(16) %i.ta) #26, !inline_history !363
  %i.tj = load ptr, ptr %i.ta, align 8, !tbaa !96
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 24
  %i.tl = load ptr, ptr %i.tk, align 8
  call void %i.tl(ptr noundef nonnull align 8 dereferenceable(16) %i.ta) #26, !inline_history !363
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal21PopulateFilterKernelsEPSt6vectorINS1_19SelectionKernelDataESaIS3_EE:bb.a
  %i.uw = getelementptr inbounds nuw i8, ptr %37, i64 1584
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.uw) #26
  %i.ux = getelementptr inbounds nuw i8, ptr %37, i64 1496
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ux) #26
  %i.uy = getelementptr inbounds nuw i8, ptr %37, i64 1408
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.uy) #26
  %i.uz = getelementptr inbounds nuw i8, ptr %37, i64 1320
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.uz) #26
  %i.va = getelementptr inbounds nuw i8, ptr %37, i64 1232
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.va) #26
  %i.vb = getelementptr inbounds nuw i8, ptr %37, i64 1144
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.vb) #26
  %i.vc = getelementptr inbounds nuw i8, ptr %37, i64 1056
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.vc) #26
  %i.vd = getelementptr inbounds nuw i8, ptr %37, i64 968
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.vd) #26
  %i.ve = getelementptr inbounds nuw i8, ptr %37, i64 880
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.ve) #26
  %i.vf = getelementptr inbounds nuw i8, ptr %37, i64 792
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.vf) #26
  %i.vg = getelementptr inbounds nuw i8, ptr %37, i64 704
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.vg) #26
  %i.vh = getelementptr inbounds nuw i8, ptr %37, i64 616
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.vh) #26
  %i.vi = getelementptr inbounds nuw i8, ptr %37, i64 528
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.vi) #26
  %i.vj = getelementptr inbounds nuw i8, ptr %37, i64 440
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.vj) #26
  %i.vk = getelementptr inbounds nuw i8, ptr %37, i64 352
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.vk) #26
  %i.vl = getelementptr inbounds nuw i8, ptr %37, i64 264
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.vl) #26
  %i.vm = getelementptr inbounds nuw i8, ptr %37, i64 176
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.vm) #26
  %i.vn = getelementptr inbounds nuw i8, ptr %37, i64 88
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.vn) #26
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %37) #26
  br label %.loopexit140

.loopexit140:                                     ; preds = %.loopexit140.loopexit, %bb.dt
  %.pn = phi { ptr, i32 } [ %i.tz, %bb.dt ], [ %i.ua, %.loopexit140.loopexit ]
  %.27 = phi ptr [ %.16, %bb.dt ], [ %i.kz, %.loopexit140.loopexit ]
  %i.vo = phi i1 [ false, %bb.dt ], [ true, %.loopexit140.loopexit ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %45) #26
  br label %bb.du

bb.du:                                            ; preds = %.loopexit140, %bb.ds
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.loopexit140 ], [ %i.ty, %bb.ds ]
  %.38 = phi ptr [ %.27, %.loopexit140 ], [ %i.gf, %bb.ds ]
  %.1 = phi i1 [ %i.vo, %.loopexit140 ], [ false, %bb.ds ]
  call void @_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %44) #26
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dr
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.du ], [ %i.tx, %bb.dr ]
  %.49 = phi ptr [ %.38, %bb.du ], [ %i.fx, %bb.dr ]
  %.2 = phi i1 [ %.1, %bb.du ], [ false, %bb.dr ]
  call void @_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %43) #26
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dq
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.dv ], [ %i.tw, %bb.dq ]
  %.510 = phi ptr [ %.49, %bb.dv ], [ %i.fp, %bb.dq ]
  %.3 = phi i1 [ %.2, %bb.dv ], [ false, %bb.dq ]
  call void @_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %42) #26
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dp
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.dw ], [ %i.tv, %bb.dp ]
  %.611 = phi ptr [ %.510, %bb.dw ], [ %.05, %bb.dp ]
  %.4 = phi i1 [ %.3, %bb.dw ], [ false, %bb.dp ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %41) #26
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.do
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.dx ], [ %i.tu, %bb.do ]
  %.712 = phi ptr [ %.611, %bb.dx ], [ %i.ag, %bb.do ]
  %.5 = phi i1 [ %.4, %bb.dx ], [ false, %bb.do ]
  call void @_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %40) #26
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dn
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.dy ], [ %i.tt, %bb.dn ]
  %.813 = phi ptr [ %.712, %bb.dy ], [ %i.y, %bb.dn ]
  %.6 = phi i1 [ %.5, %bb.dy ], [ false, %bb.dn ]
  call void @_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %39) #26
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dm, %bb.dz
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.dz ], [ %i.ts, %bb.dm ] ; 2 uses
  %.9 = phi ptr [ %.813, %bb.dz ], [ %i.q, %bb.dm ] ; 2 uses
  %.7 = phi i1 [ %.6, %bb.dz ], [ false, %bb.dm ]
  call void @_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %38) #26
  %i.vp = icmp eq ptr %37, %.9
  %or.cond = select i1 %.7, i1 true, i1 %i.vp
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ea, %.preheader
  %i.vq = phi ptr [ %i.vr, %.preheader ], [ %.9, %bb.ea ]
  %i.vr = getelementptr inbounds i8, ptr %i.vq, i64 -88 ; 3 uses
  call void @_ZN5arrow7compute8internal19SelectionKernelDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.vr) #26
  %i.vs = icmp eq ptr %i.vr, %37
  br i1 %i.vs, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %.thread, %bb.ea
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn134 = phi { ptr, i32 } [ %i.tr, %.thread ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ea ], [ %.pn.pn.pn.pn.pn.pn.pn.pn, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %35) #26
  br label %bb.eb

bb.eb:                                            ; preds = %.loopexit, %bb.dl
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn134, %.loopexit ], [ %i.tq, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %34) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN5arrow7compute5match13RunEndEncodedENS_4Type4typeE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.69") align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !357
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !359
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !364
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !364
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN5arrow7compute5match9PrimitiveEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.69") align 8) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !357
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !359
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !360
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !360
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !352  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !357
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !359
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !361
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26, !inline_history !361
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

declare void @_ZN5arrow7compute5match10BinaryLikeEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.69") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_116BinaryFilterExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias nofree writable sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef readonly captures(none) %3) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 23 uses
  %i.b = alloca ptr, align 8                      ; 13 uses
  %4 = alloca %"class.arrow::TypedBufferBuilder.143", align 8 ; 14 uses
  %5 = alloca %"class.arrow::TypedBufferBuilder.99", align 8 ; 23 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.c = alloca i64, align 8                      ; 37 uses
  %i.d = alloca i64, align 8                      ; 31 uses
  %i.e = alloca ptr, align 8                      ; 10 uses
  %i.f = alloca i64, align 8                      ; 10 uses
  %i.g = alloca i64, align 8                      ; 13 uses
  %i.h = alloca ptr, align 8                      ; 13 uses
  %i.i = alloca i64, align 8                      ; 50 uses
  %i.j = alloca i64, align 8                      ; 27 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.std::function", align 8     ; 12 uses
  %10 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 6 uses
  %11 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 6 uses
  %12 = alloca %"class.arrow::internal::BitBlockCounter", align 8 ; 12 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.k = alloca ptr, align 8                      ; 23 uses
  %i.l = alloca ptr, align 8                      ; 13 uses
  %22 = alloca %"class.arrow::TypedBufferBuilder", align 8 ; 14 uses
  %23 = alloca %"class.arrow::TypedBufferBuilder.99", align 8 ; 23 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %i.m = alloca i64, align 8                      ; 37 uses
  %i.n = alloca i32, align 4                      ; 32 uses
  %i.o = alloca ptr, align 8                      ; 10 uses
  %i.p = alloca i64, align 8                      ; 10 uses
  %i.q = alloca i64, align 8                      ; 13 uses
  %i.r = alloca ptr, align 8                      ; 13 uses
  %i.s = alloca i64, align 8                      ; 50 uses
  %i.t = alloca i64, align 8                      ; 28 uses
  %26 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %27 = alloca %"class.std::function", align 8    ; 12 uses
  %28 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 6 uses
  %29 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 6 uses
  %30 = alloca %"class.arrow::internal::BitBlockCounter", align 8 ; 12 uses
  %31 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %32 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %33 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %34 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %35 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %36 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %37 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %38 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %39 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %40 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %41 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %42 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 6 uses
  %i.u = alloca ptr, align 8                      ; 12 uses
  %i.v = alloca ptr, align 8                      ; 7 uses
  %43 = alloca %"class.arrow::TypedBufferBuilder.143", align 8 ; 14 uses
  %44 = alloca %"class.arrow::TypedBufferBuilder.99", align 8 ; 16 uses
  %45 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %46 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %i.w = alloca i64, align 8                      ; 12 uses
  %i.x = alloca i64, align 8                      ; 12 uses
  %47 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %48 = alloca %"class.std::function", align 8    ; 12 uses
  %49 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %50 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %51 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %52 = alloca %"class.arrow::internal::BaseSetBitRunReader", align 8 ; 6 uses
  %i.y = alloca ptr, align 8                      ; 12 uses
  %i.z = alloca ptr, align 8                      ; 7 uses
  %53 = alloca %"class.arrow::TypedBufferBuilder", align 8 ; 14 uses
  %54 = alloca %"class.arrow::TypedBufferBuilder.99", align 8 ; 16 uses
  %55 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %56 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %i.aa = alloca i64, align 8                     ; 12 uses
  %i.ab = alloca i32, align 4                     ; 12 uses
  %57 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %58 = alloca %"class.std::function", align 8    ; 12 uses
  %59 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %60 = alloca %"class.arrow::Status", align 8    ; 12 uses
  %61 = alloca %"class.arrow::Status", align 8    ; 12 uses
  %62 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %63 = alloca %"class.arrow::Result", align 8    ; 13 uses
  %64 = alloca %"class.arrow::Status", align 8    ; 26 uses
  %65 = alloca %"class.arrow::Status", align 8    ; 26 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !88 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !80 ; 36 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 136 ; 11 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !42
  %i.am = tail call noundef i64 @_ZN5arrow7compute8internal19GetFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorE(ptr noundef nonnull align 8 dereferenceable(128) %i.ai, i32 noundef %i.af) ; 15 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !93
  switch i8 %i.ao, label %bb.b [
    i8 1, label %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !95

bb.b:                                             ; preds = %bb.a
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ap, align 8, !tbaa !96
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @.str.6, ptr %i.aq, align 8, !tbaa !98
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ar, align 8, !tbaa !96
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @.str.5, ptr %i.as, align 8, !tbaa !98
  tail call void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #28
  unreachable

_ZNK5arrow7compute10ExecResult10array_dataEv.exit: ; preds = %bb.a
  %i.at = icmp eq i32 %i.al, 38
  %i.au = load ptr, ptr %3, align 8, !tbaa !101   ; 10 uses
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !105
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow7compute10ExecResult10array_dataEv.exit, %bb.c
  %.pn = phi ptr [ %i.ax, %bb.c ], [ %i.ai, %_ZNK5arrow7compute10ExecResult10array_dataEv.exit ]
  %.in.in = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %.in = load i64, ptr %.in.in, align 8, !tbaa !59
  %i.ay = icmp eq i64 %.in, 0                     ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !59
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = icmp eq i32 %i.af, 0                    ; 3 uses
  %or.cond = select i1 %i.bc, i1 true, i1 %i.ay
  %or.cond80 = select i1 %i.bb, i1 %or.cond, i1 false
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %not.or.cond80 = xor i1 %or.cond80, true
  %. = sext i1 %not.or.cond80 to i64
  store atomic i64 %., ptr %i.bd seq_cst, align 8
  %i.be = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !42 ; 4 uses
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !59
  %i.bi = icmp eq i64 %i.bh, 0
  %or.cond7 = select i1 %i.bi, i1 %i.ay, i1 false
  br i1 %or.cond7, label %bb.e, label %bb.ci

bb.e:                                             ; preds = %bb.d
  %.off.i = add i32 %i.bg, -13
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.f, label %bb.at

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #26
  %.val = load ptr, ptr %1, align 8, !tbaa !365
end_hunk_2
begin_hunk_3_@_ZN5arrow9ArrayDataD2Ev:bb.a
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #26
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow15ArrayStatisticsELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !985 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !986 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bd, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %i.aj, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ao, align 8, !tbaa !357
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !359
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !96
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #26, !inline_history !987
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !96
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #26, !inline_history !987
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ar, %bb.q ], [ %i.bb, %bb.r ]
  %i.bc = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bc, label %bb.s, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, !prof !66

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i: ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.o, %.lr.ph.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.bd, %i.al
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !988

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.ai, align 8, !tbaa !985
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.be = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.aj, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !989
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #30
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !117 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !990 ; 2 uses
  %.not4.i.i.i6 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not4.i.i.i6, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  %.05.i.i.i8 = phi ptr [ %i.cf, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i ], [ %i.bl, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i.i.i.i.i9 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i9, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bq, align 8, !tbaa !357
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !359
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !96
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #26, !inline_history !991
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #26, !inline_history !991
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i.i.i10 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i.i.i10, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i11

bb.y:                                             ; preds = %bb.w
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i11: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i.i12 = phi i32 [ %i.bt, %bb.x ], [ %i.cd, %bb.y ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i12, 1
  br i1 %i.ce, label %bb.z, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, !prof !66

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i11
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i11, %bb.v, %.lr.ph.i.i.i7
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 16 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.cf, %i.bn
  br i1 %.not.i.i.i13, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i7, !llvm.loop !992

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  %.pr.i14 = load ptr, ptr %i.bk, align 8, !tbaa !117
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit
  %i.cg = phi ptr [ %.pr.i14, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.bl, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i15 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i1.i15, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !993
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #30
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !352 ; 8 uses
  %.not.i.i16 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i16, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 4 uses
  %i.cp = load atomic i64, ptr %i.co acquire, align 8 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 4294967297
  %i.cr = trunc i64 %i.cp to i32                  ; 2 uses
  br i1 %i.cq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.co, align 8, !tbaa !357
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store i32 0, ptr %i.cs, align 4, !tbaa !359
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !96
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #26, !inline_history !361
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !96
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  tail call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #26, !inline_history !361
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i17 = icmp eq i8 %i.cz, 0
  br i1 %.not.i.i.i17, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = add nsw i32 %i.cr, -1
  store i32 %i.da, ptr %i.co, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18

bb.af:                                            ; preds = %bb.ad
  %i.db = atomicrmw volatile add ptr %i.co, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i19 = phi i32 [ %i.cr, %bb.ae ], [ %i.db, %bb.af ]
  %i.dc = icmp eq i32 %.0.i.i.i.i19, 1
  br i1 %i.dc, label %bb.ag, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i18, %bb.ag
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA42_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(42) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !994
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !994
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !967, !noalias !994, !nonnull !131, !align !155
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(42) %2) #26, !noalias !994
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(42) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !994 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !994
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !994
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !330    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !67
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !330    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !67
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.au, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !990  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !117    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !993
  %i.j = load ptr, ptr %0, align 8, !tbaa !117    ; 6 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i, !prof !66

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29 ; 3 uses
  %i.q = icmp eq ptr %i.c, %i.b
  br i1 %i.q, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !352  ; 2 uses
  %i.t = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !351
  store <2 x ptr> %i.t, ptr %.08.i.i.i.i.i, align 8, !tbaa !351
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.ab = icmp eq ptr %i.z, %i.b
  br i1 %i.ab, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !997

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre58 = load ptr, ptr %0, align 8, !tbaa !117
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.loopexit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i
  %i.ac = phi ptr [ %.pre58, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit.loopexit ], [ %i.j, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !990 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.aw, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i ], [ %i.ac, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.i, label %bb.j
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a

_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !351
  store ptr null, ptr %i.r, align 8, !tbaa !352
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !351
  store ptr null, ptr %2, align 8, !tbaa !855
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !351, !alias.scope !1031, !noalias !1028
  store ptr null, ptr %i.t, align 8, !tbaa !352, !alias.scope !1031, !noalias !1028
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !351, !alias.scope !1028, !noalias !1031
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !855, !alias.scope !1031, !noalias !1028
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !1033

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !351, !alias.scope !1037, !noalias !1034
  store ptr null, ptr %i.y, align 8, !tbaa !352, !alias.scope !1037, !noalias !1034
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !351, !alias.scope !1034, !noalias !1037
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !855, !alias.scope !1037, !noalias !1034
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1033

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !873
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #30
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !870
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !874
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !873
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12ChunkedArrayEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5arrow12ChunkedArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.a) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !581  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !67
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EERKS3_INS0_8DataTypeEEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #19 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.319", align 16  ; 7 uses
  %4 = alloca %"class.std::shared_ptr.25", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !886
  store <2 x ptr> %i.b, ptr %3, align 16, !tbaa !886
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !873
  store ptr %i.e, ptr %i.c, align 16, !tbaa !873
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !352  ; 2 uses
  %i.i = load <2 x ptr>, ptr %2, align 8, !tbaa !351
  store <2 x ptr> %i.i, ptr %4, align 16, !tbaa !351
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.j, align 4, !tbaa !3
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN5arrow12ChunkedArrayC1ESt6vectorISt10shared_ptrINS_5ArrayEESaIS4_EES2_INS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !352  ; 8 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.p, align 8, !tbaa !357
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !359
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !96
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #26, !inline_history !361
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #26, !inline_history !361
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i4 = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.ae = load ptr, ptr %3, align 16, !tbaa !870  ; 3 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !874 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.ae, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ai, align 8, !tbaa !357
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !359
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !96
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #26, !inline_history !1039
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !96
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #26, !inline_history !1039
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.al, %bb.o ], [ %i.av, %bb.p ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aw, label %bb.q, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !66

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.m, %.lr.ph.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ax, %i.af
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !889

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 16, !tbaa !870
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ay = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ae, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.az = load ptr, ptr %i.c, align 16, !tbaa !873
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #30
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.r
  ret void

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  resume { ptr, i32 } %i.bd
}

declare void @_ZN5arrow12ChunkedArrayC1ESt6vectorISt10shared_ptrINS_5ArrayEESaIS4_EES2_INS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12ChunkedArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1040 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow13ChunkResolverD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1042
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30
  br label %_ZN5arrow13ChunkResolverD2Ev.exit

_ZN5arrow13ChunkResolverD2Ev.exit:                ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !352  ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow13ChunkResolverD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !357
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !359
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !96
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #26, !inline_history !361
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #26, !inline_history !361
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #26
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow13ChunkResolverD2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.y = load ptr, ptr %0, align 8, !tbaa !870    ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !874 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.as, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.y, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !352 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ad, align 8, !tbaa !357
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !359
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #26, !inline_history !1039
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #26, !inline_history !1039
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !67
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.l ], [ %i.aq, %bb.m ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.n, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !66

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.j, %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.as, %i.aa
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !889

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !870
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.at = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.y, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !873
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #30
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.o
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_vector_selection_filter_internal.cc() #23 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca [2 x %"class.std::__cxx11::basic_string"], align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(39) ptr @_Znwm(i64 noundef 39) #29 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !330
  store i64 38, ptr %i.a, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.b, ptr noundef nonnull align 1 dereferenceable(38) @.str, i64 38, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 38, ptr %i.c, align 8, !tbaa !332
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 38
  store i8 0, ptr %i.d, align 1, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !328
  %i.f = invoke noalias noundef nonnull dereferenceable(171) ptr @_Znwm(i64 noundef 171) #29
          to label %.noexc25.i unwind label %bb.c ; 4 uses

.noexc25.i:                                       ; preds = %bb.a
  store ptr %i.f, ptr %1, align 8, !tbaa !330
  store i64 170, ptr %i.e, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(170) %i.f, ptr noundef nonnull align 1 dereferenceable(170) @.str.1, i64 170, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 170, ptr %i.g, align 8, !tbaa !332
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 170
  store i8 0, ptr %i.h, align 1, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 5, ptr %i.j, align 8, !tbaa !332
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 0, ptr %i.k, align 1, !tbaa !67
  %i.l = invoke noalias noundef nonnull dereferenceable(17) ptr @_Znwm(i64 noundef 17) #29
          to label %.noexc41.i unwind label %.thread.thread.i ; 4 uses

.noexc41.i:                                       ; preds = %.noexc25.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store ptr %i.l, ptr %i.n, align 8, !tbaa !330
  store i64 16, ptr %i.m, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, ptr noundef nonnull align 1 dereferenceable(16) @.str.3, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 16, ptr %i.o, align 8, !tbaa !332
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i8 0, ptr %i.p, align 1, !tbaa !67
  %i.q = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i unwind label %.body.i.thread ; 4 uses

.body.i.thread:                                   ; preds = %.noexc41.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i: ; preds = %.noexc41.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.u = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %2, ptr noundef nonnull %i.s, ptr noundef nonnull %i.q)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i unwind label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.v, ptr noundef nonnull align 1 dereferenceable(13) @.str.4, i64 13, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.x, align 1, !tbaa !67
  store ptr %i.b, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, align 8, !tbaa !330
  store i64 38, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 16), align 8, !tbaa !67
  store i64 38, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 8), align 8, !tbaa !332
  store ptr %i.a, ptr %0, align 8, !tbaa !330
  store i64 0, ptr %i.c, align 8, !tbaa !332
  store i8 0, ptr %i.a, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 32), align 8, !tbaa !328
  %i.y = load ptr, ptr %1, align 8, !tbaa !330    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.e
  br i1 %i.z, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i.i

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !332 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_110filter_docE, i64 48), ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.ac, i1 false)
end_hunk_4
begin_hunk_5_@llvm.umax.i32
!160 = !{!"_ZTSN5arrow8internal15BitBlockCounterE", !62, i64 0, !28, i64 8, !28, i64 16}
!161 = !{!160, !28, i64 8}
!162 = !{!160, !28, i64 16}
!163 = !{!164, !62, i64 0}
!164 = !{!"_ZTSN5arrow8internal21BinaryBitBlockCounterE", !62, i64 0, !28, i64 8, !62, i64 16, !28, i64 24, !28, i64 32}
!165 = !{!164, !28, i64 8}
!166 = !{!164, !62, i64 16}
!167 = !{!164, !28, i64 24}
!168 = !{!164, !28, i64 32}
!169 = !{!170, !124, i64 64}
!170 = !{!"_ZTSN5arrow7compute8internal12_GLOBAL__N_115DropNullCounterE", !160, i64 0, !164, i64 24, !124, i64 64}
!171 = distinct !{!171, !69}
!172 = distinct !{!172, !69}
!173 = distinct !{!173, !69}
!174 = distinct !{!174, !69}
!175 = distinct !{!175, !69}
!176 = distinct !{!176, !69}
!177 = distinct !{!177, !69}
!178 = !{!179, !28, i64 0}
!179 = !{!"_ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi1ELb0EEE", !28, i64 0, !62, i64 8, !62, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !41, i64 48, !92, i64 56, !62, i64 64, !62, i64 72, !28, i64 80, !28, i64 88}
!180 = !{!179, !62, i64 8}
!181 = !{!179, !62, i64 16}
!182 = !{!179, !28, i64 40}
!183 = !{!179, !92, i64 56}
!184 = !{!179, !62, i64 64}
!185 = !{!179, !62, i64 72}
!186 = !{!179, !28, i64 80}
!187 = !{!179, !28, i64 88}
!188 = !{!179, !41, i64 48}
!189 = !{!190, !190, i64 0}
!190 = !{!"p1 _ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi1ELb0EEE", !36, i64 0}
!191 = !{!179, !28, i64 32}
!192 = distinct !{!192, !69}
!193 = distinct !{!193, !69}
!194 = distinct !{!194, !69}
!195 = distinct !{!195, !69}
!196 = distinct !{!196, !69}
!197 = distinct !{!197, !69}
!198 = distinct !{!198, !69}
!199 = !{!200, !28, i64 0}
!200 = !{!"_ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi2ELb0EEE", !28, i64 0, !62, i64 8, !62, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !41, i64 48, !92, i64 56, !62, i64 64, !62, i64 72, !28, i64 80, !28, i64 88}
!201 = !{!200, !62, i64 8}
!202 = !{!200, !62, i64 16}
!203 = !{!200, !28, i64 40}
!204 = !{!200, !92, i64 56}
!205 = !{!200, !62, i64 64}
!206 = !{!200, !62, i64 72}
!207 = !{!200, !28, i64 80}
!208 = !{!200, !28, i64 88}
!209 = !{!200, !41, i64 48}
!210 = !{!211, !211, i64 0}
!211 = !{!"p1 _ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi2ELb0EEE", !36, i64 0}
!212 = !{!200, !28, i64 32}
!213 = distinct !{!213, !69}
!214 = distinct !{!214, !69}
!215 = distinct !{!215, !69}
!216 = distinct !{!216, !69}
!217 = distinct !{!217, !69}
!218 = distinct !{!218, !69}
!219 = distinct !{!219, !69}
!220 = !{!221, !28, i64 0}
!221 = !{!"_ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi4ELb0EEE", !28, i64 0, !62, i64 8, !62, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !41, i64 48, !92, i64 56, !62, i64 64, !62, i64 72, !28, i64 80, !28, i64 88}
!222 = !{!221, !62, i64 8}
!223 = !{!221, !62, i64 16}
!224 = !{!221, !28, i64 40}
!225 = !{!221, !92, i64 56}
!226 = !{!221, !62, i64 64}
!227 = !{!221, !62, i64 72}
!228 = !{!221, !28, i64 80}
!229 = !{!221, !28, i64 88}
!230 = !{!221, !41, i64 48}
!231 = !{!232, !232, i64 0}
!232 = !{!"p1 _ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi4ELb0EEE", !36, i64 0}
!233 = !{!221, !28, i64 32}
!234 = distinct !{!234, !69}
!235 = distinct !{!235, !69}
!236 = distinct !{!236, !69}
!237 = distinct !{!237, !69}
!238 = distinct !{!238, !69}
!239 = distinct !{!239, !69}
!240 = distinct !{!240, !69}
!241 = !{!242, !28, i64 0}
!242 = !{!"_ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi8ELb0EEE", !28, i64 0, !62, i64 8, !62, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !41, i64 48, !92, i64 56, !62, i64 64, !62, i64 72, !28, i64 80, !28, i64 88}
!243 = !{!242, !62, i64 8}
!244 = !{!242, !62, i64 16}
!245 = !{!242, !28, i64 40}
!246 = !{!242, !92, i64 56}
!247 = !{!242, !62, i64 64}
!248 = !{!242, !62, i64 72}
!249 = !{!242, !28, i64 80}
!250 = !{!242, !28, i64 88}
!251 = !{!242, !41, i64 48}
!252 = !{!253, !253, i64 0}
!253 = !{!"p1 _ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi8ELb0EEE", !36, i64 0}
!254 = !{!242, !28, i64 32}
!255 = distinct !{!255, !69}
!256 = distinct !{!256, !69}
!257 = distinct !{!257, !69}
!258 = distinct !{!258, !69}
!259 = distinct !{!259, !69}
!260 = distinct !{!260, !69}
!261 = distinct !{!261, !69}
!262 = !{!263, !28, i64 0}
!263 = !{!"_ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi16ELb0EEE", !28, i64 0, !62, i64 8, !62, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !41, i64 48, !92, i64 56, !62, i64 64, !62, i64 72, !28, i64 80, !28, i64 88}
!264 = !{!263, !62, i64 8}
!265 = !{!263, !62, i64 16}
!266 = !{!263, !28, i64 40}
!267 = !{!263, !92, i64 56}
!268 = !{!263, !62, i64 64}
!269 = !{!263, !62, i64 72}
!270 = !{!263, !28, i64 80}
!271 = !{!263, !28, i64 88}
!272 = !{!263, !41, i64 48}
!273 = !{!274, !274, i64 0}
!274 = !{!"p1 _ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi16ELb0EEE", !36, i64 0}
!275 = !{!263, !28, i64 32}
!276 = distinct !{!276, !69}
!277 = distinct !{!277, !69}
!278 = distinct !{!278, !69}
!279 = distinct !{!279, !69}
!280 = distinct !{!280, !69}
!281 = distinct !{!281, !69}
!282 = distinct !{!282, !69}
!283 = !{!284, !28, i64 0}
!284 = !{!"_ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi32ELb0EEE", !28, i64 0, !62, i64 8, !62, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !41, i64 48, !92, i64 56, !62, i64 64, !62, i64 72, !28, i64 80, !28, i64 88}
!285 = !{!284, !62, i64 8}
!286 = !{!284, !62, i64 16}
!287 = !{!284, !28, i64 40}
!288 = !{!284, !92, i64 56}
!289 = !{!284, !62, i64 64}
!290 = !{!284, !62, i64 72}
!291 = !{!284, !28, i64 80}
!292 = !{!284, !28, i64 88}
!293 = !{!284, !41, i64 48}
!294 = !{!295, !295, i64 0}
!295 = !{!"p1 _ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILi32ELb0EEE", !36, i64 0}
!296 = !{!284, !28, i64 32}
!297 = distinct !{!297, !69}
!298 = distinct !{!298, !69}
!299 = distinct !{!299, !69}
!300 = distinct !{!300, !69}
!301 = distinct !{!301, !69}
!302 = distinct !{!302, !69}
!303 = distinct !{!303, !69}
!304 = !{!305, !28, i64 0}
!305 = !{!"_ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILin1ELb0EEE", !28, i64 0, !62, i64 8, !62, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !41, i64 48, !92, i64 56, !62, i64 64, !62, i64 72, !28, i64 80, !28, i64 88}
!306 = !{!305, !62, i64 8}
!307 = !{!305, !62, i64 16}
!308 = !{!305, !28, i64 40}
!309 = !{!305, !92, i64 56}
!310 = !{!305, !62, i64 64}
!311 = !{!305, !62, i64 72}
!312 = !{!305, !28, i64 80}
!313 = !{!305, !28, i64 88}
!314 = !{!305, !41, i64 48}
!315 = !{!316, !316, i64 0}
!316 = !{!"p1 _ZTSN5arrow7compute8internal12_GLOBAL__N_119PrimitiveFilterImplILin1ELb0EEE", !36, i64 0}
!317 = !{!305, !28, i64 32}
!318 = distinct !{!318, !69}
!319 = distinct !{!319, !69}
!320 = distinct !{!320, !69}
!321 = distinct !{!321, !69}
!322 = distinct !{!322, !69}
!323 = distinct !{!323, !69}
!324 = distinct !{!324, !69}
!325 = !{!326}
!326 = distinct !{!326, !327, !"_ZN5arrow6Status2OKEv: argument 0"}
!327 = distinct !{!327, !"_ZN5arrow6Status2OKEv"}
!328 = !{!329, !62, i64 0}
!329 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !62, i64 0}
!330 = !{!331, !62, i64 0}
!331 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !329, i64 0, !28, i64 8, !5, i64 16}
!332 = !{!331, !28, i64 8}
!333 = !{!334, !47, i64 0}
!334 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!335 = !{!334, !47, i64 8}
!336 = distinct !{!336, !69}
!337 = !{!334, !47, i64 16}
!338 = !{!"branch_weights", i32 1, i32 1048575}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZSt11make_uniqueIN5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunctionEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!341 = distinct !{!341, !"_ZSt11make_uniqueIN5arrow7compute8internal12_GLOBAL__N_118FilterMetaFunctionEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!342 = !{!343, !344, i64 0}
!343 = !{!"_ZTSSt10_Head_baseILm0EPN5arrow7compute8FunctionELb0EE", !344, i64 0}
!344 = !{!"p1 _ZTSN5arrow7compute8FunctionE", !36, i64 0}
!345 = !{!346, !347, i64 0}
!346 = !{!"_ZTSN5arrow7compute9InputTypeE", !347, i64 0, !136, i64 8, !348, i64 24}
!347 = !{!"_ZTSN5arrow7compute9InputType4KindE", !5, i64 0}
!348 = !{!"_ZTSSt10shared_ptrIN5arrow7compute11TypeMatcherEE", !349, i64 0}
!349 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EE", !350, i64 0, !104, i64 8}
!350 = !{!"p1 _ZTSN5arrow7compute11TypeMatcherE", !36, i64 0}
!351 = !{!36, !36, i64 0}
!352 = !{!104, !52, i64 0}
!353 = !{!349, !350, i64 0}
!354 = !{!355, !36, i64 80}
!355 = !{!"_ZTSN5arrow7compute8internal19SelectionKernelDataE", !346, i64 0, !346, i64 40, !36, i64 80}
!356 = !{!137, !35, i64 0}
!357 = !{!358, !4, i64 8}
!358 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!359 = !{!358, !4, i64 12}
!360 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!361 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!362 = distinct !{ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!363 = distinct !{ptr @_ZN5arrow7compute9InputTypeD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!364 = distinct !{ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!365 = !{!84, !85, i64 0}
!366 = !{!367, !368, i64 0}
!367 = !{!"_ZTSN5arrow7compute11ExecContextE", !368, i64 0, !369, i64 8, !370, i64 16, !28, i64 24, !124, i64 32, !124, i64 33}
!368 = !{!"p1 _ZTSN5arrow10MemoryPoolE", !36, i64 0}
!369 = !{!"p1 _ZTSN5arrow8internal8ExecutorE", !36, i64 0}
!370 = !{!"p1 _ZTSN5arrow7compute16FunctionRegistryE", !36, i64 0}
!371 = !{!372}
!372 = distinct !{!372, !373, !"_ZN5arrow7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS_10BinaryTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESA_lNS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataE: argument 0"}
!373 = distinct !{!373, !"_ZN5arrow7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS_10BinaryTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESA_lNS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataE"}
!374 = !{!375, !375, i64 0}
!375 = !{!"p1 int", !36, i64 0}
!376 = !{!62, !62, i64 0}
!377 = !{!378, !368, i64 16}
!378 = !{!"_ZTSN5arrow13BufferBuilderE", !379, i64 0, !368, i64 16, !62, i64 24, !28, i64 32, !28, i64 40, !28, i64 48}
!379 = !{!"_ZTSSt10shared_ptrIN5arrow15ResizableBufferEE", !380, i64 0}
!380 = !{!"_ZTSSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EE", !381, i64 0, !104, i64 8}
!381 = !{!"p1 _ZTSN5arrow15ResizableBufferE", !36, i64 0}
!382 = !{!378, !62, i64 24}
!383 = !{!378, !28, i64 48}
!384 = !{!378, !28, i64 32}
!385 = !{!378, !28, i64 40}
!386 = !{!387, !389, !372}
!387 = distinct !{!387, !388, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!388 = distinct !{!388, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!389 = distinct !{!389, !390, !"_ZN5arrow18TypedBufferBuilderIhvE7ReserveEl: argument 0"}
!390 = distinct !{!390, !"_ZN5arrow18TypedBufferBuilderIhvE7ReserveEl"}
!391 = !{!392, !392, i64 0}
!392 = !{!"p1 _ZTSN5arrow6StatusE", !36, i64 0}
!393 = !{!394, !394, i64 0}
!394 = !{!"p2 int", !395, i64 0}
!395 = !{!"any p2 pointer", !36, i64 0}
!396 = !{!397, !397, i64 0}
!397 = !{!"p1 _ZTSN5arrow18TypedBufferBuilderIhvEE", !36, i64 0}
!398 = !{!399, !399, i64 0}
!399 = !{!"p2 omnipotent char", !395, i64 0}
!400 = !{!401, !401, i64 0}
!401 = !{!"p1 _ZTSN5arrow18TypedBufferBuilderIivEE", !36, i64 0}
!402 = !{!403, !124, i64 1}
!403 = !{!"_ZTSN5arrow6Status5StateE", !404, i64 0, !124, i64 1, !331, i64 8, !405, i64 40}
!404 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!405 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !406, i64 0}
!406 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !407, i64 0, !104, i64 8}
!407 = !{!"p1 _ZTSN5arrow12StatusDetailE", !36, i64 0}
!408 = !{!409, !411, !372}
!409 = distinct !{!409, !410, !"_ZZN5arrow7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS_10BinaryTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESA_lNS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataEENKUlllE_clEll: argument 0"}
!410 = distinct !{!410, !"_ZZN5arrow7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS_10BinaryTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESA_lNS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataEENKUlllE_clEll"}
!411 = distinct !{!411, !412, !"_ZN5arrow8internal15VisitSetBitRunsIZNS_7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS_10BinaryTypeEEENS_6StatusEPNS2_13KernelContextERKNS_9ArraySpanESC_lNS2_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataEEUlllE_EES7_PKhllOT_: argument 0"}
!412 = distinct !{!412, !"_ZN5arrow8internal15VisitSetBitRunsIZNS_7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS_10BinaryTypeEEENS_6StatusEPNS2_13KernelContextERKNS_9ArraySpanESC_lNS2_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataEEUlllE_EES7_PKhllOT_"}
!413 = distinct !{!413, !69}
!414 = !{!411, !372}
!415 = !{!416, !411, !372}
!416 = distinct !{!416, !417, !"_ZZN5arrow7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS_10BinaryTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESA_lNS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataEENKUlllE_clEll: argument 0"}
!417 = distinct !{!417, !"_ZZN5arrow7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS_10BinaryTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESA_lNS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataEENKUlllE_clEll"}
!418 = distinct !{null, ptr @_ZN5arrow18TypedBufferBuilderIhvED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!419 = distinct !{null, ptr @_ZN5arrow18TypedBufferBuilderIivED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!420 = !{!421}
!421 = distinct !{!421, !422, !"_ZN5arrow7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS_15LargeBinaryTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESA_lNS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataE: argument 0"}
!422 = distinct !{!422, !"_ZN5arrow7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS_15LargeBinaryTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESA_lNS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataE"}
!423 = !{!424, !426, !421}
!424 = distinct !{!424, !425, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!425 = distinct !{!425, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!426 = distinct !{!426, !427, !"_ZN5arrow18TypedBufferBuilderIhvE7ReserveEl: argument 0"}
!427 = distinct !{!427, !"_ZN5arrow18TypedBufferBuilderIhvE7ReserveEl"}
!428 = !{!429, !429, i64 0}
!429 = !{!"p2 long", !395, i64 0}
!430 = !{!431, !431, i64 0}
!431 = !{!"p1 _ZTSN5arrow18TypedBufferBuilderIlvEE", !36, i64 0}
!432 = !{!433, !435, !421}
!433 = distinct !{!433, !434, !"_ZZN5arrow7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS_15LargeBinaryTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESA_lNS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataEENKUlllE_clEll: argument 0"}
!434 = distinct !{!434, !"_ZZN5arrow7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS_15LargeBinaryTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESA_lNS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataEENKUlllE_clEll"}
!435 = distinct !{!435, !436, !"_ZN5arrow8internal15VisitSetBitRunsIZNS_7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS_15LargeBinaryTypeEEENS_6StatusEPNS2_13KernelContextERKNS_9ArraySpanESC_lNS2_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataEEUlllE_EES7_PKhllOT_: argument 0"}
!436 = distinct !{!436, !"_ZN5arrow8internal15VisitSetBitRunsIZNS_7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS_15LargeBinaryTypeEEENS_6StatusEPNS2_13KernelContextERKNS_9ArraySpanESC_lNS2_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataEEUlllE_EES7_PKhllOT_"}
!437 = distinct !{!437, !69}
!438 = !{!435, !421}
!439 = !{!440, !435, !421}
!440 = distinct !{!440, !441, !"_ZZN5arrow7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS_15LargeBinaryTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESA_lNS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataEENKUlllE_clEll: argument 0"}
!441 = distinct !{!441, !"_ZZN5arrow7compute8internal12_GLOBAL__N_123BinaryFilterNonNullImplINS_15LargeBinaryTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESA_lNS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataEENKUlllE_clEll"}
!442 = distinct !{null, ptr @_ZN5arrow18TypedBufferBuilderIhvED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!443 = distinct !{null, ptr @_ZN5arrow18TypedBufferBuilderIlvED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE5ValueIS1_INS_6BufferEEvEENS_6StatusEPT_: argument 0"}
!446 = distinct !{!446, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE5ValueIS1_INS_6BufferEEvEENS_6StatusEPT_"}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE6statusEv: argument 0"}
!449 = distinct !{!449, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE6statusEv"}
!450 = !{!448, !445}
!451 = !{!452, !445}
!452 = distinct !{!452, !453, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!453 = distinct !{!453, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!454 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!455 = distinct !{ptr @_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!456 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!457 = !{!458}
!458 = distinct !{!458, !459, !"_ZN5arrow7compute8internal12_GLOBAL__N_116BinaryFilterImplINS_10BinaryTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESA_lNS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataE: argument 0"}
!459 = distinct !{!459, !"_ZN5arrow7compute8internal12_GLOBAL__N_116BinaryFilterImplINS_10BinaryTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESA_lNS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataE"}
!460 = !{!461, !463, !458}
!461 = distinct !{!461, !462, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!462 = distinct !{!462, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!463 = distinct !{!463, !464, !"_ZN5arrow18TypedBufferBuilderIhvE7ReserveEl: argument 0"}
!464 = distinct !{!464, !"_ZN5arrow18TypedBufferBuilderIhvE7ReserveEl"}
!465 = !{!135, !28, i64 32}
!466 = distinct !{!466, !69}
!467 = distinct !{!467, !69}
!468 = distinct !{!468, !69}
!469 = distinct !{!469, !69}
!470 = distinct !{!470, !69}
!471 = distinct !{!471, !69}
!472 = distinct !{!472, !69}
!473 = distinct !{!473, !69}
!474 = distinct !{null, ptr @_ZN5arrow18TypedBufferBuilderIhvED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!475 = distinct !{null, ptr @_ZN5arrow18TypedBufferBuilderIivED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!476 = !{!477}
!477 = distinct !{!477, !478, !"_ZN5arrow7compute8internal12_GLOBAL__N_116BinaryFilterImplINS_15LargeBinaryTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESA_lNS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataE: argument 0"}
!478 = distinct !{!478, !"_ZN5arrow7compute8internal12_GLOBAL__N_116BinaryFilterImplINS_15LargeBinaryTypeEEENS_6StatusEPNS0_13KernelContextERKNS_9ArraySpanESA_lNS0_13FilterOptions21NullSelectionBehaviorEPNS_9ArrayDataE"}
!479 = !{!480, !482, !477}
!480 = distinct !{!480, !481, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!481 = distinct !{!481, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!482 = distinct !{!482, !483, !"_ZN5arrow18TypedBufferBuilderIhvE7ReserveEl: argument 0"}
!483 = distinct !{!483, !"_ZN5arrow18TypedBufferBuilderIhvE7ReserveEl"}
!484 = distinct !{!484, !69}
!485 = distinct !{!485, !69}
!486 = distinct !{!486, !69}
!487 = distinct !{!487, !69}
!488 = distinct !{!488, !69}
!489 = distinct !{!489, !69}
!490 = distinct !{!490, !69}
!491 = distinct !{!491, !69}
!492 = distinct !{null, ptr @_ZN5arrow18TypedBufferBuilderIhvED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!493 = distinct !{null, ptr @_ZN5arrow18TypedBufferBuilderIlvED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!494 = !{!495}
!495 = distinct !{!495, !496, !"_ZN5arrow6Status2OKEv: argument 0"}
!496 = distinct !{!496, !"_ZN5arrow6Status2OKEv"}
!497 = !{!498, !500}
!498 = distinct !{!498, !499, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!499 = distinct !{!499, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow9NullArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!500 = distinct !{!500, !501, !"_ZSt11make_sharedIN5arrow9NullArrayEJRlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!501 = distinct !{!501, !"_ZSt11make_sharedIN5arrow9NullArrayEJRlEESt10shared_ptrIT_EDpOT0_"}
!502 = !{!500}
!503 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!504 = !{!505}
!505 = distinct !{!505, !506, !"_ZN5arrow6Status2OKEv: argument 0"}
!506 = distinct !{!506, !"_ZN5arrow6Status2OKEv"}
!507 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!508 = !{!509, !5, i64 16}
!509 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEEE", !5, i64 0, !5, i64 16}
!510 = !{!511}
!511 = distinct !{!511, !512, !"_ZNO5arrow6ResultINS_5DatumEE5ValueIS1_vEENS_6StatusEPT_: argument 0"}
!512 = distinct !{!512, !"_ZNO5arrow6ResultINS_5DatumEE5ValueIS1_vEENS_6StatusEPT_"}
!513 = !{!514}
!514 = distinct !{!514, !515, !"_ZNO5arrow6ResultINS_5DatumEE6statusEv: argument 0"}
!515 = distinct !{!515, !"_ZNO5arrow6ResultINS_5DatumEE6statusEv"}
!516 = !{!514, !511}
!517 = !{!518}
!518 = distinct !{!518, !519, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!519 = distinct !{!519, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!520 = !{!518, !511}
!521 = !{!522, !523, i64 0}
!522 = !{!"_ZTSZNSt8__detail9__variant17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEEaSEOSG_EUlOT_T0_E_", !523, i64 0}
!523 = !{!"p1 _ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEEE", !36, i64 0}
!524 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!525 = !{!526}
!526 = distinct !{!526, !527, !"_ZNO5arrow6ResultINS_5DatumEE5ValueIS1_vEENS_6StatusEPT_: argument 0"}
!527 = distinct !{!527, !"_ZNO5arrow6ResultINS_5DatumEE5ValueIS1_vEENS_6StatusEPT_"}
!528 = !{!529}
!529 = distinct !{!529, !530, !"_ZNO5arrow6ResultINS_5DatumEE6statusEv: argument 0"}
!530 = distinct !{!530, !"_ZNO5arrow6ResultINS_5DatumEE6statusEv"}
!531 = !{!529, !526}
!532 = !{!533}
!533 = distinct !{!533, !534, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv: argument 0"}
!534 = distinct !{!534, !"_ZN5arrow6ResultINS_5DatumEE15MoveValueUnsafeEv"}
!535 = !{!533, !526}
!536 = distinct !{ptr @_ZN5arrow14ExtensionArrayD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!537 = !{ptr @_ZN5arrow14ExtensionArrayD2Ev}
!538 = distinct !{ptr @_ZN5arrow14ExtensionArrayD2Ev, ptr @_ZN5arrow5ArrayD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!539 = !{ptr @_ZN5arrow14ExtensionArrayD2Ev, ptr @_ZN5arrow5ArrayD2Ev}
!540 = !{!541, !75, i64 0}
!541 = !{!"_ZTSZN5arrow7compute8internal12_GLOBAL__N_122GetREEFilterOutputSizeERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEE3$_0", !75, i64 0}
!542 = !{!543, !543, i64 0}
!543 = !{!"p1 _ZTSSt9type_info", !36, i64 0}
!544 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!545 = distinct !{null}
!546 = distinct !{null}
!547 = distinct !{!547, !69}
!548 = distinct !{null, null, null, null}
!549 = distinct !{null, null, null, null}
!550 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!551 = !{!552}
!552 = distinct !{!552, !553, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!553 = distinct !{!553, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!554 = !{!555, !552}
!555 = distinct !{!555, !556, !"_ZN5arrow6Status2OKEv: argument 0"}
!556 = distinct !{!556, !"_ZN5arrow6Status2OKEv"}
!557 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!558 = !{!380, !381, i64 0}
!559 = !{!560}
!560 = distinct !{!560, !561, !"_ZNO5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!561 = distinct !{!561, !"_ZNO5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
end_hunk_5
