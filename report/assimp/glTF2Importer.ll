inline.NumInlined: 10360
inline.NumDeleted: 3521
begin_hunk_0_@_ZN6Assimp13glTF2Importer12ImportMeshesERN5glTF25AssetE:bb.a
  %.sroa.14.1.lcssa = phi ptr [ %.sroa.14.02224, %bb.r ], [ %.sroa.14.5, %._crit_edge2210.loopexit ]
  %.sroa.0961.2.lcssa = phi ptr [ %.sroa.0961.02225, %bb.r ], [ %.sroa.0961.8, %._crit_edge2210.loopexit ] ; 2 uses
  %.sroa.28.2.lcssa = phi ptr [ %.sroa.28.02226, %bb.r ], [ %.sroa.28.81014, %._crit_edge2210.loopexit ] ; 2 uses
  %.sroa.16.2.lcssa = phi ptr [ %.sroa.16.02227, %bb.r ], [ %.sroa.16.81020.a, %._crit_edge2210.loopexit ] ; 2 uses
  %.sroa.0984.2.lcssa = phi ptr [ %.sroa.0984.02228, %bb.r ], [ %.sroa.0984.81026, %._crit_edge2210.loopexit ] ; 2 uses
  %indvars.iv.next2937 = add nuw nsw i64 %indvars.iv2936, 1 ; 2 uses
  %i.gt = ptrtoint ptr %i.gs to i64
end_hunk_0
begin_hunk_1_@_ZN6Assimp13glTF2Importer12ImportMeshesERN5glTF25AssetE:bb.a
  %i.ha = phi i64 [ 0, %.lr.ph2209 ], [ %i.bsr, %bb.jj ]
  %.04452206 = phi i32 [ 0, %.lr.ph2209 ], [ %i.bsq, %bb.jj ] ; 4 uses
  %.sroa.0984.22205 = phi ptr [ %.sroa.0984.02228, %.lr.ph2209 ], [ %.sroa.0984.81026, %bb.jj ] ; 17 uses
  %.sroa.16.22204 = phi ptr [ %.sroa.16.02227, %.lr.ph2209 ], [ %.sroa.16.81020.a, %bb.jj ] ; 13 uses
  %.sroa.28.22203 = phi ptr [ %.sroa.28.02226, %.lr.ph2209 ], [ %.sroa.28.81014, %bb.jj ] ; 6 uses
  %.sroa.0961.22202 = phi ptr [ %.sroa.0961.02225, %.lr.ph2209 ], [ %.sroa.0961.8, %bb.jj ] ; 12 uses
  %.sroa.14.12201 = phi ptr [ %.sroa.14.02224, %.lr.ph2209 ], [ %.sroa.14.5, %bb.jj ] ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp13glTF2Importer12ImportMeshesERN5glTF25AssetE:bb.a

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit.thread: ; preds = %bb.bm
  store i64 %i.ps, ptr %.sroa.16.22204, align 8
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.16.22204, i64 8
  br label %_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit

bb.bn:                                            ; preds = %bb.bm
end_hunk_2
begin_hunk_3_@_ZN6Assimp13glTF2Importer12ImportMeshesERN5glTF25AssetE:bb.a
  br i1 %.not.i.i.i.i805, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i802, !llvm.loop !47

_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i802, %middle.block4641, %.noexc809
  %.0.lcssa.i.i.i.i = phi ptr [ %i.qd, %.noexc809 ], [ %i.qn, %middle.block4641 ], [ %i.qw, %.lr.ph.i.i.i.i802 ]
  %6 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %.sroa.0984.22205, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit, label %bb.bp

end_hunk_3
begin_hunk_4_@_ZN6Assimp13glTF2Importer12ImportMeshesERN5glTF25AssetE:bb.a

_ZNSt10unique_ptrI6aiMeshSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit.thread, %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit, %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i
  %.sroa.0984.81026 = phi ptr [ %.sroa.0984.22205, %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit.thread ], [ %i.qd, %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit ], [ %i.qd, %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i ] ; 31 uses
  %.sroa.16.81020.a = phi ptr [ %5, %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit.thread ], [ %6, %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit ], [ %6, %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i ] ; 31 uses
  %.sroa.28.81014 = phi ptr [ %.sroa.28.22203, %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit.thread ], [ %i.qx, %_ZNSt6vectorISt10unique_ptrI6aiMeshSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit ], [ %i.qx, %_ZNKSt14default_deleteI6aiMeshEclEPS0_.exit.i ] ; 31 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.qy = load i64, ptr %i.gl, align 8
  %i.qz = icmp eq i64 %i.qy, 0
end_hunk_4
begin_hunk_5_@_ZN6Assimp13glTF2Importer12ImportMeshesERN5glTF25AssetE:bb.a

bb.bw:                                            ; preds = %bb.cm, %bb.cl, %bb.ch, %bb.cg, %bb.cf, %bb.cb, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit576.thread
  %.sroa.28.3 = phi ptr [ %.sroa.28.81014, %bb.cm ], [ %.sroa.28.81014, %bb.cl ], [ %.sroa.28.81014, %bb.ch ], [ %.sroa.28.81014, %bb.cg ], [ %.sroa.28.81014, %bb.cf ], [ %.sroa.28.81014, %bb.cb ], [ %.sroa.28.22203, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit576.thread ]
  %.sroa.16.3 = phi ptr [ %.sroa.16.81020.a, %bb.cm ], [ %.sroa.16.81020.a, %bb.cl ], [ %.sroa.16.81020.a, %bb.ch ], [ %.sroa.16.81020.a, %bb.cg ], [ %.sroa.16.81020.a, %bb.cf ], [ %.sroa.16.81020.a, %bb.cb ], [ %.sroa.16.22204, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit576.thread ]
  %.sroa.0984.3 = phi ptr [ %.sroa.0984.81026, %bb.cm ], [ %.sroa.0984.81026, %bb.cl ], [ %.sroa.0984.81026, %bb.ch ], [ %.sroa.0984.81026, %bb.cg ], [ %.sroa.0984.81026, %bb.cf ], [ %.sroa.0984.81026, %bb.cb ], [ %.sroa.0984.22205, %_ZNK10glTFCommon3RefIN5glTF28AccessorEEcvbEv.exit576.thread ]
  %i.so = landingpad { ptr, i32 }
          cleanup
end_hunk_5
begin_hunk_6_@_ZN6Assimp13glTF2Importer12ImportMeshesERN5glTF25AssetE:bb.a
  %.sroa.26.9 = phi ptr [ %.sroa.26.8, %bb.ja ], [ %.sroa.26.7, %.body ], [ %.sroa.26.8, %bb.bx ], [ %.sroa.26.8, %bb.da ], [ %.sroa.26.8, %bb.cx ], [ %.sroa.26.8, %bb.di ], [ %.sroa.26.8, %bb.fr ], [ %.sroa.26.8, %bb.fl ], [ %.sroa.26.8, %bb.dq ], [ %.sroa.26.8, %bb.cr ], [ %.sroa.26.8, %bb.bw ], [ %.sroa.26.1, %bb.q ], [ %.sroa.26.8, %bb.jg ], [ %.sroa.26.8, %bb.jd ], [ %.sroa.26.8, %bb.jh ], [ %.sroa.26.8, %bb.hk ], [ %.sroa.26.8, %bb.hm ], [ %.sroa.26.8, %bb.hv ], [ %.sroa.26.8, %bb.ib ], [ %.sroa.26.8, %bb.im ], [ %.sroa.26.8, %bb.is ], [ %.sroa.26.22200, %.loopexit1141 ], [ %.sroa.26.22200, %.loopexit.split-lp1142 ] ; 2 uses
  %.sroa.0961.9 = phi ptr [ %.sroa.0961.8, %bb.ja ], [ %.sroa.0961.7, %.body ], [ %.sroa.0961.8, %bb.bx ], [ %.sroa.0961.8, %bb.da ], [ %.sroa.0961.8, %bb.cx ], [ %.sroa.0961.8, %bb.di ], [ %.sroa.0961.8, %bb.fr ], [ %.sroa.0961.8, %bb.fl ], [ %.sroa.0961.8, %bb.dq ], [ %.sroa.0961.8, %bb.cr ], [ %.sroa.0961.8, %bb.bw ], [ %.sroa.0961.1, %bb.q ], [ %.sroa.0961.8, %bb.jg ], [ %.sroa.0961.8, %bb.jd ], [ %.sroa.0961.8, %bb.jh ], [ %.sroa.0961.8, %bb.hk ], [ %.sroa.0961.8, %bb.hm ], [ %.sroa.0961.8, %bb.hv ], [ %.sroa.0961.8, %bb.ib ], [ %.sroa.0961.8, %bb.im ], [ %.sroa.0961.8, %bb.is ], [ %.sroa.0961.22202, %.loopexit1141 ], [ %.sroa.0961.22202, %.loopexit.split-lp1142 ] ; 2 uses
  %.sroa.28.4 = phi ptr [ %.sroa.28.81014, %bb.ja ], [ %.sroa.28.22203, %.body ], [ %.sroa.16.22204, %bb.bx ], [ %.sroa.28.81014, %bb.da ], [ %.sroa.28.81014, %bb.cx ], [ %.sroa.28.81014, %bb.di ], [ %.sroa.28.81014, %bb.fr ], [ %.sroa.28.81014, %bb.fl ], [ %.sroa.28.81014, %bb.dq ], [ %.sroa.28.81014, %bb.cr ], [ %.sroa.28.3, %bb.bw ], [ %.sroa.28.1, %bb.q ], [ %.sroa.28.81014, %bb.jg ], [ %.sroa.28.81014, %bb.jd ], [ %.sroa.28.81014, %bb.jh ], [ %.sroa.28.81014, %bb.hk ], [ %.sroa.28.81014, %bb.hm ], [ %.sroa.28.81014, %bb.hv ], [ %.sroa.28.81014, %bb.ib ], [ %.sroa.28.81014, %bb.im ], [ %.sroa.28.81014, %bb.is ], [ %.sroa.28.22203, %.loopexit1141 ], [ %.sroa.28.22203, %.loopexit.split-lp1142 ] ; 2 uses
  %.sroa.16.4 = phi ptr [ %.sroa.16.81020.a, %bb.ja ], [ %.sroa.16.22204, %.body ], [ %.sroa.16.22204, %bb.bx ], [ %.sroa.16.81020.a, %bb.da ], [ %.sroa.16.81020.a, %bb.cx ], [ %.sroa.16.81020.a, %bb.di ], [ %.sroa.16.81020.a, %bb.fr ], [ %.sroa.16.81020.a, %bb.fl ], [ %.sroa.16.81020.a, %bb.dq ], [ %.sroa.16.81020.a, %bb.cr ], [ %.sroa.16.3, %bb.bw ], [ %.sroa.16.1, %bb.q ], [ %.sroa.16.81020.a, %bb.jg ], [ %.sroa.16.81020.a, %bb.jd ], [ %.sroa.16.81020.a, %bb.jh ], [ %.sroa.16.81020.a, %bb.hk ], [ %.sroa.16.81020.a, %bb.hm ], [ %.sroa.16.81020.a, %bb.hv ], [ %.sroa.16.81020.a, %bb.ib ], [ %.sroa.16.81020.a, %bb.im ], [ %.sroa.16.81020.a, %bb.is ], [ %.sroa.16.22204, %.loopexit1141 ], [ %.sroa.16.22204, %.loopexit.split-lp1142 ] ; 2 uses
  %.sroa.0984.4 = phi ptr [ %.sroa.0984.81026, %bb.ja ], [ %.sroa.0984.22205, %.body ], [ %.sroa.0984.22205, %bb.bx ], [ %.sroa.0984.81026, %bb.da ], [ %.sroa.0984.81026, %bb.cx ], [ %.sroa.0984.81026, %bb.di ], [ %.sroa.0984.81026, %bb.fr ], [ %.sroa.0984.81026, %bb.fl ], [ %.sroa.0984.81026, %bb.dq ], [ %.sroa.0984.81026, %bb.cr ], [ %.sroa.0984.3, %bb.bw ], [ %.sroa.0984.1, %bb.q ], [ %.sroa.0984.81026, %bb.jg ], [ %.sroa.0984.81026, %bb.jd ], [ %.sroa.0984.81026, %bb.jh ], [ %.sroa.0984.81026, %bb.hk ], [ %.sroa.0984.81026, %bb.hm ], [ %.sroa.0984.81026, %bb.hv ], [ %.sroa.0984.81026, %bb.ib ], [ %.sroa.0984.81026, %bb.im ], [ %.sroa.0984.81026, %bb.is ], [ %.sroa.0984.22205, %.loopexit1141 ], [ %.sroa.0984.22205, %.loopexit.split-lp1142 ] ; 2 uses
  %.pn538.pn.pn.pn = phi { ptr, i32 } [ %i.brg, %bb.ja ], [ %.pn538, %.body ], [ %lpad.phi1152, %bb.bx ], [ %i.yk, %bb.da ], [ %i.yf, %bb.cx ], [ %i.agu, %bb.di ], [ %i.aud, %bb.fr ], [ %.pn512.pn, %bb.fl ], [ %i.aja, %bb.dq ], [ %i.vz, %bb.cr ], [ %i.so, %bb.bw ], [ %i.gb, %bb.q ], [ %i.brw, %bb.jg ], [ %i.brs, %bb.jd ], [ %i.brx, %bb.jh ], [ %i.bhv, %bb.hk ], [ %i.bib, %bb.hm ], [ %i.bjv, %bb.hv ], [ %i.blr, %bb.ib ], [ %i.bns, %bb.im ], [ %i.bpf, %bb.is ], [ %lpad.loopexit1145, %.loopexit1141 ], [ %lpad.loopexit.split-lp1146, %.loopexit.split-lp1142 ] ; 2 uses
  %.not.i.i.i764 = icmp eq ptr %.sroa.0927.5, null
end_hunk_6
begin_hunk_7_@_ZN6Assimp13glTF2Importer12ImportMeshesERN5glTF25AssetE:bb.a
  %.pre-phi2948 = phi i64 [ %.pre2947, %..thread1041_crit_edge ], [ %i.asr, %bb.hf ], [ %i.asr, %bb.gx ], [ %i.asr, %bb.gr ], [ %i.asr, %bb.gh ], [ %i.asr, %bb.gb ], [ %i.asr, %bb.ft ]
  %.pn538.pn.pn.pn1063 = phi { ptr, i32 } [ %.pn538.pn.pn.pn, %..thread1041_crit_edge ], [ %i.bgn, %bb.hf ], [ %i.bdo, %bb.gx ], [ %i.bbo, %bb.gr ], [ %i.ayy, %bb.gh ], [ %i.awo, %bb.gb ], [ %i.auo, %bb.ft ]
  %.sroa.0984.41061 = phi ptr [ %.sroa.0984.4, %..thread1041_crit_edge ], [ %.sroa.0984.81026, %bb.hf ], [ %.sroa.0984.81026, %bb.gx ], [ %.sroa.0984.81026, %bb.gr ], [ %.sroa.0984.81026, %bb.gh ], [ %.sroa.0984.81026, %bb.gb ], [ %.sroa.0984.81026, %bb.ft ]
  %.sroa.16.41059 = phi ptr [ %.sroa.16.4, %..thread1041_crit_edge ], [ %.sroa.16.81020.a, %bb.hf ], [ %.sroa.16.81020.a, %bb.gx ], [ %.sroa.16.81020.a, %bb.gr ], [ %.sroa.16.81020.a, %bb.gh ], [ %.sroa.16.81020.a, %bb.gb ], [ %.sroa.16.81020.a, %bb.ft ]
  %.sroa.28.41057 = phi ptr [ %.sroa.28.4, %..thread1041_crit_edge ], [ %.sroa.28.81014, %bb.hf ], [ %.sroa.28.81014, %bb.gx ], [ %.sroa.28.81014, %bb.gr ], [ %.sroa.28.81014, %bb.gh ], [ %.sroa.28.81014, %bb.gb ], [ %.sroa.28.81014, %bb.ft ]
  %.sroa.0961.91055 = phi ptr [ %.sroa.0961.9, %..thread1041_crit_edge ], [ %.sroa.0961.8, %bb.hf ], [ %.sroa.0961.8, %bb.gx ], [ %.sroa.0961.8, %bb.gr ], [ %.sroa.0961.8, %bb.gh ], [ %.sroa.0961.8, %bb.gb ], [ %.sroa.0961.8, %bb.ft ]
  %.sroa.26.91053 = phi ptr [ %.sroa.26.9, %..thread1041_crit_edge ], [ %.sroa.26.8, %bb.hf ], [ %.sroa.26.8, %bb.gx ], [ %.sroa.26.8, %bb.gr ], [ %.sroa.26.8, %bb.gh ], [ %.sroa.26.8, %bb.gb ], [ %.sroa.26.8, %bb.ft ]
end_hunk_7
begin_hunk_8_@_ZN9rapidjson8internal6u32toaEjPc:bb.a
  store i8 %i.bw, ptr %1, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bz = load i8, ptr %i.by, align 1
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.bz, ptr %i.bx, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ca = trunc nuw nsw i32 %i.bq to i8
  %i.cb = or disjoint i8 %i.ca, 48
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.cb, ptr %1, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.6 = phi ptr [ %2, %bb.n ], [ %3, %bb.o ]      ; 9 uses
  %i.cc = udiv i32 %i.br, 10000
  %i.cd = urem i32 %i.br, 10000
  %i.ce = udiv i32 %i.br, 1000000
end_hunk_8
