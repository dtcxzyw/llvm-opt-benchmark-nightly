Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/java_generator?download=true
inline.NumInlined: 1849
inline.NumDeleted: 455
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN19grpc_java_generator21GenerateServiceSourceB5cxx11EPN14grpc_generator4FileEPKNS0_7ServiceEPNS_10ParametersE:bb.a
  call void %i.zc(ptr noundef nonnull align 8 dereferenceable(8) %i.yz) #19, !inline_history !113
  br label %_ZNSt10unique_ptrIN14grpc_generator7PrinterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN14grpc_generator7PrinterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit, %_ZNKSt14default_deleteIN14grpc_generator7PrinterEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  ret void

bb.cs:                                            ; preds = %.noexc87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i, %.noexc79, %.noexc78, %.noexc77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i, %bb.v
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.i, %bb.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %.pn22 = phi { ptr, i32 } [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %.pn17.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.jk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i ], [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i ], [ %.pn22.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i ], [ %i.zd, %bb.cs ], [ %i.yr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334.i ], [ %.pn86.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.i ], [ %i.yg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i ], [ %i.yb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.i ], [ %i.xw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322.i ], [ %i.xr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319.i ], [ %.pn76.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316.i ], [ %i.xg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313.i ], [ %.pn72.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310.i ], [ %.pn70.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307.i ], [ %.pn68.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit304.i ], [ %.pn66.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit301.i ], [ %.pn64.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit298.i ], [ %i.vx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295.i ], [ %.pn60.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292.i ], [ %i.vm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.i ], [ %i.vh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286.i ], [ %i.vc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.i ], [ %i.ux, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280.i ], [ %i.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277.i ], [ %i.un, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i ] ; 2 uses
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  %i.ze = load ptr, ptr %32, align 8, !tbaa !115  ; 3 uses
  %.not.i92 = icmp eq ptr %i.ze, null
  br i1 %.not.i92, label %_ZNSt10unique_ptrIN14grpc_generator7PrinterESt14default_deleteIS1_EED2Ev.exit94, label %_ZNKSt14default_deleteIN14grpc_generator7PrinterEEclEPS1_.exit.i93

_ZNKSt14default_deleteIN14grpc_generator7PrinterEEclEPS1_.exit.i93: ; preds = %.body
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !38
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 8
  %i.zh = load ptr, ptr %i.zg, align 8
  call void %i.zh(ptr noundef nonnull align 8 dereferenceable(8) %i.ze) #19, !inline_history !113
  br label %_ZNSt10unique_ptrIN14grpc_generator7PrinterESt14default_deleteIS1_EED2Ev.exit94

_ZNSt10unique_ptrIN14grpc_generator7PrinterESt14default_deleteIS1_EED2Ev.exit94: ; preds = %_ZNKSt14default_deleteIN14grpc_generator7PrinterEEclEPS1_.exit.i93, %.body, %bb.q
  %.pn22.pn = phi { ptr, i32 } [ %i.db, %bb.q ], [ %.pn22, %.body ], [ %.pn22, %_ZNKSt14default_deleteIN14grpc_generator7PrinterEEclEPS1_.exit.i93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  %i.zi = load ptr, ptr %0, align 8, !tbaa !48    ; 2 uses
  %i.zj = icmp eq ptr %i.zi, %i.i
  br i1 %i.zj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt10unique_ptrIN14grpc_generator7PrinterESt14default_deleteIS1_EED2Ev.exit94
  %i.zk = load i64, ptr %i.i, align 8, !tbaa !36
  %i.zl = add i64 %i.zk, 1
  call void @_ZdlPvm(ptr noundef %i.zi, i64 noundef %i.zl) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt10unique_ptrIN14grpc_generator7PrinterESt14default_deleteIS1_EED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  resume { ptr, i32 } %.pn22.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.43", align 8     ; 4 uses
  %3 = alloca %"class.std::tuple.46", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #19 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !51 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !118

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !35   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #19 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %1, ptr %2, align 8, !tbaa !54, !alias.scope !121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN19grpc_java_generator12_GLOBAL__N_112PrintServiceEPN14grpc_generator7PrinterERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEPKNS1_7ServiceEb(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::unique_ptr.12", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::vector.29", align 8   ; 10 uses
  %11 = alloca %"class.std::unique_ptr.12", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::unique_ptr.12", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::unique_ptr.12", align 8 ; 12 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %45 = alloca %"class.std::set", align 8         ; 12 uses
  %46 = alloca %"class.std::unique_ptr.12", align 8 ; 18 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %78 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #19
  %i.n = load ptr, ptr %2, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %83, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #19
  %i.q = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 6 uses
  store ptr %i.q, ptr %84, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull align 1 dereferenceable(12) @.str.55, i64 12, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %84, i64 8
  store i64 12, ptr %i.r, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %84, i64 28
  store i8 0, ptr %i.s, align 4, !tbaa !36
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %84)
          to label %bb.a unwind label %bb.nt      ; 9 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !48   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %i.x = load ptr, ptr %83, align 8, !tbaa !48    ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 6 uses
  %i.z = icmp eq ptr %i.x, %i.y                   ; 2 uses
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.z, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.z, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %83, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !35 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %.not21.i = icmp eq ptr %83, %i.t
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  switch i64 %i.ab, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !36
  store i8 %i.ad, ptr %i.u, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.x, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !35
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !36
  %.pre.i = load ptr, ptr %83, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.t, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !35
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !35
  %i.al = load i64, ptr %i.y, align 8, !tbaa !36
  store i64 %i.al, ptr %i.v, align 8, !tbaa !36
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.am = load i64, ptr %i.v, align 8, !tbaa !36
  store ptr %i.x, ptr %i.t, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !35
  %i.aq = load i64, ptr %i.y, align 8, !tbaa !36
  store i64 %i.aq, ptr %i.v, align 8, !tbaa !36
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.u, ptr %83, align 8, !tbaa !48
  store i64 %i.am, ptr %i.y, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.y, ptr %83, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.ar = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.u, %bb.f ], [ %i.y, %bb.g ], [ %i.x, %bb.b ]
  %i.as = getelementptr inbounds nuw i8, ptr %83, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !35
  store i8 0, ptr %i.ar, align 1, !tbaa !36
  %i.at = load ptr, ptr %84, align 8, !tbaa !48   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.q
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.av = load i64, ptr %i.q, align 8, !tbaa !36
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN19grpc_java_generator12_GLOBAL__N_112PrintServiceEPN14grpc_generator7PrinterERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEPKNS1_7ServiceEb:._crit_edge.i.i
  call void %i.alq(ptr noundef nonnull align 8 dereferenceable(8) %i.aln) #19, !inline_history !137
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit615.i

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit615.i: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i614.i, %bb.ga, %bb.dn
  %.pn172.pn.pn.pn.i = phi { ptr, i32 } [ %i.zw, %bb.dn ], [ %.pn172.pn.pn.i, %bb.ga ], [ %.pn172.pn.pn.i, %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i614.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  br label %bb.gb

bb.gb:                                            ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit615.i, %bb.ad
  %.pn172.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn172.pn.pn.pn.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit615.i ], [ %i.kh, %bb.ad ]
  call void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %45) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit94.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187.i, %bb.gb, %bb.mw
  %common.resume.op = phi { ptr, i32 } [ %i.bwn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i ], [ %.pn156.pn.i, %bb.mw ], [ %i.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187.i ], [ %.pn172.pn.pn.pn.pn.i, %bb.gb ], [ %.pn54.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit94.i ], [ %.pn84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %i.cca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %.pn75.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %i.cbb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ]
  resume { ptr, i32 } %common.resume.op

_ZN19grpc_java_generator12_GLOBAL__N_117PrintMethodFieldsEPN14grpc_generator7PrinterERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEPKNS1_7ServiceE.exit: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #19
  %i.alr = getelementptr inbounds nuw i8, ptr %89, i64 16 ; 6 uses
  store ptr %i.alr, ptr %89, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  store i64 70, ptr %i.f, align 8, !tbaa !50
  %i.als = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc126 unwind label %bb.nx ; 3 uses

.noexc126:                                        ; preds = %_ZN19grpc_java_generator12_GLOBAL__N_117PrintMethodFieldsEPN14grpc_generator7PrinterERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEPKNS1_7ServiceE.exit
  store ptr %i.als, ptr %89, align 8, !tbaa !48
  %i.alt = load i64, ptr %i.f, align 8, !tbaa !50 ; 3 uses
  store i64 %i.alt, ptr %i.alr, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %i.als, ptr noundef nonnull align 1 dereferenceable(70) @.str.62, i64 70, i1 false)
  %i.alu = getelementptr inbounds nuw i8, ptr %89, i64 8
  store i64 %i.alt, ptr %i.alu, align 8, !tbaa !35
  %i.alv = getelementptr inbounds nuw i8, ptr %i.als, i64 %i.alt
  store i8 0, ptr %i.alv, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  invoke fastcc void @_ZN19grpc_java_generator12_GLOBAL__N_119GrpcWriteDocCommentEPN14grpc_generator7PrinterERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEERSE_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %89)
          to label %bb.gc unwind label %bb.ny

bb.gc:                                            ; preds = %.noexc126
  %i.alw = load ptr, ptr %89, align 8, !tbaa !48  ; 2 uses
  %i.alx = icmp eq ptr %i.alw, %i.alr
  br i1 %i.alx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.gc
  %i.aly = load i64, ptr %i.alr, align 8, !tbaa !36
  %i.alz = add i64 %i.aly, 1
  call void @_ZdlPvm(ptr noundef %i.alw, i64 noundef %i.alz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #19
  %i.ama = load ptr, ptr %0, align 8, !tbaa !38
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 16
  %i.amc = load ptr, ptr %i.amb, align 8
  call void %i.amc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.63)
  %i.amd = load ptr, ptr %0, align 8, !tbaa !38
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 40
  %i.amf = load ptr, ptr %i.ame, align 8
  call void %i.amf(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.amg = load ptr, ptr %0, align 8, !tbaa !38
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 16
  %i.ami = load ptr, ptr %i.amh, align 8
  call void %i.ami(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.64)
  %i.amj = load ptr, ptr %0, align 8, !tbaa !38
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 48
  %i.aml = load ptr, ptr %i.amk, align 8
  call void %i.aml(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.amm = load ptr, ptr %0, align 8, !tbaa !38
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 24
  %i.amo = load ptr, ptr %i.amn, align 8
  call void %i.amo(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.65)
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #19
  %i.amp = getelementptr inbounds nuw i8, ptr %90, i64 16 ; 6 uses
  store ptr %i.amp, ptr %90, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  store i64 96, ptr %i.e, align 8, !tbaa !50
  %i.amq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %90, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc133 unwind label %bb.nz ; 3 uses

.noexc133:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  store ptr %i.amq, ptr %90, align 8, !tbaa !48
  %i.amr = load i64, ptr %i.e, align 8, !tbaa !50 ; 3 uses
  store i64 %i.amr, ptr %i.amp, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(96) %i.amq, ptr noundef nonnull align 1 dereferenceable(96) @.str.66, i64 96, i1 false)
  %i.ams = getelementptr inbounds nuw i8, ptr %90, i64 8
  store i64 %i.amr, ptr %i.ams, align 8, !tbaa !35
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amq, i64 %i.amr
  store i8 0, ptr %i.amt, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  invoke fastcc void @_ZN19grpc_java_generator12_GLOBAL__N_119GrpcWriteDocCommentEPN14grpc_generator7PrinterERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEERSE_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %90)
          to label %bb.gd unwind label %bb.oa

bb.gd:                                            ; preds = %.noexc133
  %i.amu = load ptr, ptr %90, align 8, !tbaa !48  ; 2 uses
  %i.amv = icmp eq ptr %i.amu, %i.amp
  br i1 %i.amv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.gd
  %i.amw = load i64, ptr %i.amp, align 8, !tbaa !36
  %i.amx = add i64 %i.amw, 1
  call void @_ZdlPvm(ptr noundef %i.amu, i64 noundef %i.amx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.gd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #19
  %i.amy = load ptr, ptr %0, align 8, !tbaa !38
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 16
  %i.ana = load ptr, ptr %i.amz, align 8
  call void %i.ana(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.67)
  %i.anb = load ptr, ptr %0, align 8, !tbaa !38
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 40
  %i.and = load ptr, ptr %i.anc, align 8
  call void %i.and(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.ane = load ptr, ptr %0, align 8, !tbaa !38
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 16
  %i.ang = load ptr, ptr %i.anf, align 8
  call void %i.ang(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.68)
  %i.anh = load ptr, ptr %0, align 8, !tbaa !38
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 48
  %i.anj = load ptr, ptr %i.ani, align 8
  call void %i.anj(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.ank = load ptr, ptr %0, align 8, !tbaa !38
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 24
  %i.anm = load ptr, ptr %i.anl, align 8
  call void %i.anm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.65)
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #19
  %i.ann = getelementptr inbounds nuw i8, ptr %91, i64 16 ; 6 uses
  store ptr %i.ann, ptr %91, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 83, ptr %i.d, align 8, !tbaa !50
  %i.ano = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %91, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc140 unwind label %bb.ob ; 3 uses

.noexc140:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  store ptr %i.ano, ptr %91, align 8, !tbaa !48
  %i.anp = load i64, ptr %i.d, align 8, !tbaa !50 ; 3 uses
  store i64 %i.anp, ptr %i.ann, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(83) %i.ano, ptr noundef nonnull align 1 dereferenceable(83) @.str.69, i64 83, i1 false)
  %i.anq = getelementptr inbounds nuw i8, ptr %91, i64 8
  store i64 %i.anp, ptr %i.anq, align 8, !tbaa !35
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.anp
  store i8 0, ptr %i.anr, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  invoke fastcc void @_ZN19grpc_java_generator12_GLOBAL__N_119GrpcWriteDocCommentEPN14grpc_generator7PrinterERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEERSE_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %91)
          to label %bb.ge unwind label %bb.oc

bb.ge:                                            ; preds = %.noexc140
  %i.ans = load ptr, ptr %91, align 8, !tbaa !48  ; 2 uses
  %i.ant = icmp eq ptr %i.ans, %i.ann
  br i1 %i.ant, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.ge
  %i.anu = load i64, ptr %i.ann, align 8, !tbaa !36
  %i.anv = add i64 %i.anu, 1
  call void @_ZdlPvm(ptr noundef %i.ans, i64 noundef %i.anv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #19
  %i.anw = load ptr, ptr %0, align 8, !tbaa !38
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 16
  %i.any = load ptr, ptr %i.anx, align 8
  call void %i.any(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.70)
  %i.anz = load ptr, ptr %0, align 8, !tbaa !38
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 40
  %i.aob = load ptr, ptr %i.aoa, align 8
  call void %i.aob(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.aoc = load ptr, ptr %0, align 8, !tbaa !38
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 16
  %i.aoe = load ptr, ptr %i.aod, align 8
  call void %i.aoe(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.71)
  %i.aof = load ptr, ptr %0, align 8, !tbaa !38
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 48
  %i.aoh = load ptr, ptr %i.aog, align 8
  call void %i.aoh(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.aoi = load ptr, ptr %0, align 8, !tbaa !38
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 24
  %i.aok = load ptr, ptr %i.aoj, align 8
  call void %i.aok(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.65)
  call fastcc void @_ZN19grpc_java_generator12_GLOBAL__N_19PrintStubEPN14grpc_generator7PrinterERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEPKNS1_7ServiceENS0_8StubTypeE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %2, i32 noundef 7)
  call fastcc void @_ZN19grpc_java_generator12_GLOBAL__N_19PrintStubEPN14grpc_generator7PrinterERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEPKNS1_7ServiceENS0_8StubTypeE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %2, i32 noundef 4)
  call fastcc void @_ZN19grpc_java_generator12_GLOBAL__N_19PrintStubEPN14grpc_generator7PrinterERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEPKNS1_7ServiceENS0_8StubTypeE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %2, i32 noundef 5)
  call fastcc void @_ZN19grpc_java_generator12_GLOBAL__N_19PrintStubEPN14grpc_generator7PrinterERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEPKNS1_7ServiceENS0_8StubTypeE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %2, i32 noundef 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.aol = load ptr, ptr %2, align 8, !tbaa !38
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 64
  %i.aon = load ptr, ptr %i.aom, align 8
  %i.aoo = call noundef i32 %i.aon(ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !139 ; 3 uses
  %i.aop = sext i32 %i.aoo to i64                 ; 2 uses
  %i.aoq = icmp slt i32 %i.aoo, 0
  br i1 %i.aoq, label %.noexc.i175, label %_ZNSt6vectorISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i

.noexc.i175:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.198) #21
  unreachable

_ZNSt6vectorISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  store i64 0, ptr %10, align 8
  %.not.i.i.i.i.i = icmp eq i32 %i.aoo, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNSt6vectorISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i
  %i.aor = shl nuw nsw i64 %i.aop, 3              ; 3 uses
  %i.aos = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aor) #23 ; 5 uses
  store ptr %i.aos, ptr %10, align 8, !tbaa !59
  %i.aot = getelementptr inbounds nuw [8 x i8], ptr %i.aos, i64 %i.aop
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aos, i8 0, i64 %i.aor, i1 false), !tbaa !161
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.aos, i64 %i.aor
  br label %_ZNSt12_Vector_baseISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i.i

_ZNSt12_Vector_baseISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i
  %i.aou = phi ptr [ %i.aos, %.lr.ph.preheader.i.i.i.i.i.i ], [ null, %_ZNSt6vectorISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i ] ; 4 uses
  %.sink.i.i = phi ptr [ %i.aot, %.lr.ph.preheader.i.i.i.i.i.i ], [ null, %_ZNSt6vectorISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i ]
  %i.aov = phi ptr [ %scevgep.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ], [ null, %_ZNSt6vectorISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i ] ; 3 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %.sink.i.i, ptr %i.aox, align 8, !tbaa !60
  store ptr %i.aov, ptr %i.aow, align 8, !tbaa !61
  br label %bb.gf

bb.gf:                                            ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit.i173, %_ZNSt12_Vector_baseISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i.i
  %indvars.iv.i145 = phi i64 [ %indvars.iv.next.i174, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit.i173 ], [ 0, %_ZNSt12_Vector_baseISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EEC2EmRKS7_.exit.thread.i.i ] ; 4 uses
  %i.aoy = load ptr, ptr %2, align 8, !tbaa !38
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 64
  %i.apa = load ptr, ptr %i.aoz, align 8
  %i.apb = invoke noundef i32 %i.apa(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.gg unwind label %bb.gi

bb.gg:                                            ; preds = %bb.gf
  %i.apc = sext i32 %i.apb to i64
  %i.apd = icmp slt i64 %indvars.iv.i145, %i.apc
  br i1 %i.apd, label %bb.gj, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_(ptr %i.aou, ptr %i.aov, ptr nonnull @_ZN19grpc_java_generator12_GLOBAL__N_128CompareMethodClientStreamingERKSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS4_EES9_)
          to label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEPFbRKS8_SF_EEvT_SI_T0_.exit.preheader.i unwind label %bb.gm

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEPFbRKS8_SF_EEvT_SI_T0_.exit.preheader.i: ; preds = %bb.gh
  %.not.i146 = icmp eq ptr %i.aov, %i.aou
  br i1 %.not.i146, label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEPFbRKS8_SF_EEvT_SI_T0_.exit._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEPFbRKS8_SF_EEvT_SI_T0_.exit.preheader.i
  %i.ape = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.apg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 10 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.api = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.apk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 10 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %13, i64 25
  %i.apn = getelementptr inbounds nuw i8, ptr %15, i64 30
  br label %bb.gn

bb.gi:                                            ; preds = %bb.gf
  %i.apo = landingpad { ptr, i32 }
          cleanup
  br label %bb.mw

bb.gj:                                            ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.app = load ptr, ptr %2, align 8, !tbaa !38
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 72
  %i.apr = load ptr, ptr %i.apq, align 8
  %i.aps = trunc nuw nsw i64 %indvars.iv.i145 to i32
  invoke void %i.apr(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.12") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.aps)
          to label %bb.gk unwind label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.apt = getelementptr inbounds nuw [8 x i8], ptr %i.aou, i64 %indvars.iv.i145 ; 2 uses
  %i.apu = load ptr, ptr %11, align 8, !tbaa !56
  store ptr null, ptr %11, align 8, !tbaa !56
  %i.apv = load ptr, ptr %i.apt, align 8, !tbaa !56 ; 3 uses
  store ptr %i.apu, ptr %i.apt, align 8, !tbaa !56
  %.not.i.i.i.i162.i = icmp eq ptr %i.apv, null
  br i1 %.not.i.i.i.i162.i, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit.i173, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %bb.gk
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !38
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 8
  %i.apy = load ptr, ptr %i.apx, align 8
  call void %i.apy(ptr noundef nonnull align 8 dereferenceable(8) %i.apv) #19, !inline_history !140
  %.pre.i170 = load ptr, ptr %11, align 8, !tbaa !56 ; 3 uses
  %.not.i.i171 = icmp eq ptr %.pre.i170, null
  br i1 %.not.i.i171, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit.i173, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i172

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i172: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i
  %i.apz = load ptr, ptr %.pre.i170, align 8, !tbaa !38
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 8
  %i.aqb = load ptr, ptr %i.aqa, align 8
  call void %i.aqb(ptr noundef nonnull align 8 dereferenceable(8) %.pre.i170) #19, !inline_history !141
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit.i173

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit.i173: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i172, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %indvars.iv.next.i174 = add nuw nsw i64 %indvars.iv.i145, 1
  br label %bb.gf, !llvm.loop !142

bb.gl:                                            ; preds = %bb.gj
  %i.aqc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.mw

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEPFbRKS8_SF_EEvT_SI_T0_.exit._crit_edge.i: ; preds = %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEPFbRKS8_SF_EEvT_SI_T0_.exit.i, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEPFbRKS8_SF_EEvT_SI_T0_.exit.preheader.i
  %i.aqd = load ptr, ptr %0, align 8, !tbaa !38
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 24
  %i.aqf = load ptr, ptr %i.aqe, align 8
  invoke void %i.aqf(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.104)
          to label %bb.hh unwind label %bb.gm

bb.gm:                                            ; preds = %bb.mt, %bb.ms, %bb.mr, %bb.mq, %bb.mp, %bb.km, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.hy, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEPFbRKS8_SF_EEvT_SI_T0_.exit._crit_edge.i, %bb.gh
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  br label %bb.mw

bb.gn:                                            ; preds = %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEPFbRKS8_SF_EEvT_SI_T0_.exit.i, %.lr.ph.i
  %i.aqh = phi ptr [ %i.aou, %.lr.ph.i ], [ %i.asv, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEPFbRKS8_SF_EEvT_SI_T0_.exit.i ]
  %.069597.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ast, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEPFbRKS8_SF_EEvT_SI_T0_.exit.i ] ; 3 uses
  %i.aqi = getelementptr inbounds nuw [8 x i8], ptr %i.aqh, i64 %.069597.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZN11flatbuffers11NumToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 noundef %.069597.i)
          to label %._crit_edge.i.i.i unwind label %bb.hc

._crit_edge.i.i.i:                                ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store ptr %i.ape, ptr %13, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ape, ptr noundef nonnull align 1 dereferenceable(9) @.str.188, i64 9, i1 false)
  store i64 9, ptr %i.apf, align 8, !tbaa !35
  store i8 0, ptr %i.apm, align 1, !tbaa !36
  %i.aqj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.go unwind label %bb.hd     ; 9 uses

bb.go:                                            ; preds = %._crit_edge.i.i.i
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !48 ; 6 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqj, i64 16 ; 4 uses
  %i.aqm = icmp eq ptr %i.aqk, %i.aql
  %i.aqn = load ptr, ptr %12, align 8, !tbaa !48  ; 6 uses
  %i.aqo = icmp eq ptr %i.aqn, %i.apg             ; 2 uses
  br i1 %i.aqm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.go
  br i1 %i.aqo, label %bb.gp, label %.thread.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i147: ; preds = %bb.go
  br i1 %i.aqo, label %bb.gp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i148

bb.gp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  %i.aqp = load i64, ptr %i.aph, align 8, !tbaa !35 ; 3 uses
  %i.aqq = icmp ult i64 %i.aqp, 16
  call void @llvm.assume(i1 %i.aqq)
  %.not21.i.i165 = icmp eq ptr %12, %i.aqj
  br i1 %.not21.i.i165, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i149, label %bb.gq, !prof !49

bb.gq:                                            ; preds = %bb.gp
  switch i64 %i.aqp, label %bb.gs [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i166
    i64 1, label %bb.gr
  ]

bb.gr:                                            ; preds = %bb.gq
  %i.aqr = load i8, ptr %i.aqn, align 1, !tbaa !36
  store i8 %i.aqr, ptr %i.aqk, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i166

bb.gs:                                            ; preds = %bb.gq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqk, ptr align 1 %i.aqn, i64 %i.aqp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i166: ; preds = %bb.gs, %bb.gr, %bb.gq
  %i.aqs = load i64, ptr %i.aph, align 8, !tbaa !35 ; 2 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqj, i64 8
  store i64 %i.aqs, ptr %i.aqt, align 8, !tbaa !35
  %i.aqu = load ptr, ptr %i.aqj, align 8, !tbaa !48
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 %i.aqs
  store i8 0, ptr %i.aqv, align 1, !tbaa !36
  %.pre.i.i167 = load ptr, ptr %12, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i149

.thread.i.i169:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqj, i64 8
  store ptr %i.aqn, ptr %i.aqj, align 8, !tbaa !48
  %i.aqx = load i64, ptr %i.aph, align 8, !tbaa !35
  store i64 %i.aqx, ptr %i.aqw, align 8, !tbaa !35
  %i.aqy = load i64, ptr %i.apg, align 8, !tbaa !36
  store i64 %i.aqy, ptr %i.aql, align 8, !tbaa !36
  br label %bb.gu

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i148: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i147
  %i.aqz = load i64, ptr %i.aql, align 8, !tbaa !36
  store ptr %i.aqn, ptr %i.aqj, align 8, !tbaa !48
  %i.ara = load i64, ptr %i.aph, align 8, !tbaa !35
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqj, i64 8
  store i64 %i.ara, ptr %i.arb, align 8, !tbaa !35
  %i.arc = load i64, ptr %i.apg, align 8, !tbaa !36
  store i64 %i.arc, ptr %i.aql, align 8, !tbaa !36
  %.not.i164.i = icmp eq ptr %i.aqk, null
  br i1 %.not.i164.i, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i148
  store ptr %i.aqk, ptr %12, align 8, !tbaa !48
  store i64 %i.aqz, ptr %i.apg, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i149

bb.gu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i148, %.thread.i.i169
  store ptr %i.apg, ptr %12, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i149: ; preds = %bb.gu, %bb.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i166, %bb.gp
  %i.ard = phi ptr [ %.pre.i.i167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i166 ], [ %i.aqk, %bb.gt ], [ %i.apg, %bb.gu ], [ %i.aqn, %bb.gp ]
  store i64 0, ptr %i.aph, align 8, !tbaa !35
  store i8 0, ptr %i.ard, align 1, !tbaa !36
  %i.are = load ptr, ptr %13, align 8, !tbaa !48  ; 2 uses
  %i.arf = icmp eq ptr %i.are, %i.ape
  br i1 %i.arf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i149
  %i.arg = load i64, ptr %i.ape, align 8, !tbaa !36
  %i.arh = add i64 %i.arg, 1
  call void @_ZdlPvm(ptr noundef %i.are, i64 noundef %i.arh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.ari = load ptr, ptr %12, align 8, !tbaa !48  ; 2 uses
  %i.arj = icmp eq ptr %i.ari, %i.apg
  br i1 %i.arj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151
  %i.ark = load i64, ptr %i.apg, align 8, !tbaa !36
  %i.arl = add i64 %i.ark, 1
  call void @_ZdlPvm(ptr noundef %i.ari, i64 noundef %i.arl) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.arm = load ptr, ptr %i.aqi, align 8, !tbaa !56
  invoke fastcc void @_ZN19grpc_java_generator12_GLOBAL__N_117MethodIdFieldNameB5cxx11EPKN14grpc_generator6MethodE(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef %i.arm)
          to label %._crit_edge.i.i168.i unwind label %bb.he

._crit_edge.i.i168.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store ptr %i.api, ptr %15, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.api, ptr noundef nonnull align 1 dereferenceable(14) @.str.182, i64 14, i1 false)
  store i64 14, ptr %i.apj, align 8, !tbaa !35
  store i8 0, ptr %i.apn, align 2, !tbaa !36
  %i.arn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.gv unwind label %bb.hf     ; 9 uses

bb.gv:                                            ; preds = %._crit_edge.i.i168.i
  %i.aro = load ptr, ptr %i.arn, align 8, !tbaa !48 ; 6 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arn, i64 16 ; 4 uses
  %i.arq = icmp eq ptr %i.aro, %i.arp
  %i.arr = load ptr, ptr %14, align 8, !tbaa !48  ; 6 uses
  %i.ars = icmp eq ptr %i.arr, %i.apk             ; 2 uses
  br i1 %i.arq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i178.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i172.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i178.i: ; preds = %bb.gv
  br i1 %i.ars, label %bb.gw, label %.thread.i179.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i172.i: ; preds = %bb.gv
  br i1 %i.ars, label %bb.gw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i173.i

bb.gw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i172.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i178.i
  %i.art = load i64, ptr %i.apl, align 8, !tbaa !35 ; 3 uses
  %i.aru = icmp ult i64 %i.art, 16
  call void @llvm.assume(i1 %i.aru)
  %.not21.i175.i = icmp eq ptr %14, %i.arn
  br i1 %.not21.i175.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit180.i, label %bb.gx, !prof !49

bb.gx:                                            ; preds = %bb.gw
  switch i64 %i.art, label %bb.gz [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i176.i
    i64 1, label %bb.gy
  ]

bb.gy:                                            ; preds = %bb.gx
  %i.arv = load i8, ptr %i.arr, align 1, !tbaa !36
  store i8 %i.arv, ptr %i.aro, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i176.i

bb.gz:                                            ; preds = %bb.gx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aro, ptr align 1 %i.arr, i64 %i.art, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i176.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i176.i: ; preds = %bb.gz, %bb.gy, %bb.gx
  %i.arw = load i64, ptr %i.apl, align 8, !tbaa !35 ; 2 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  store i64 %i.arw, ptr %i.arx, align 8, !tbaa !35
  %i.ary = load ptr, ptr %i.arn, align 8, !tbaa !48
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 %i.arw
  store i8 0, ptr %i.arz, align 1, !tbaa !36
  %.pre.i177.i = load ptr, ptr %14, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit180.i

.thread.i179.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i178.i
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  store ptr %i.arr, ptr %i.arn, align 8, !tbaa !48
  %i.asb = load i64, ptr %i.apl, align 8, !tbaa !35
  store i64 %i.asb, ptr %i.asa, align 8, !tbaa !35
  %i.asc = load i64, ptr %i.apk, align 8, !tbaa !36
  store i64 %i.asc, ptr %i.arp, align 8, !tbaa !36
  br label %bb.hb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i173.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i172.i
  %i.asd = load i64, ptr %i.arp, align 8, !tbaa !36
  store ptr %i.arr, ptr %i.arn, align 8, !tbaa !48
  %i.ase = load i64, ptr %i.apl, align 8, !tbaa !35
  %i.asf = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  store i64 %i.ase, ptr %i.asf, align 8, !tbaa !35
  %i.asg = load i64, ptr %i.apk, align 8, !tbaa !36
  store i64 %i.asg, ptr %i.arp, align 8, !tbaa !36
  %.not.i174.i = icmp eq ptr %i.aro, null
  br i1 %.not.i174.i, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i173.i
  store ptr %i.aro, ptr %14, align 8, !tbaa !48
  store i64 %i.asd, ptr %i.apk, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit180.i

bb.hb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i173.i, %.thread.i179.i
  store ptr %i.apk, ptr %14, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit180.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit180.i: ; preds = %bb.hb, %bb.ha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i176.i, %bb.gw
  %i.ash = phi ptr [ %.pre.i177.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i176.i ], [ %i.aro, %bb.ha ], [ %i.apk, %bb.hb ], [ %i.arr, %bb.gw ]
  store i64 0, ptr %i.apl, align 8, !tbaa !35
  store i8 0, ptr %i.ash, align 1, !tbaa !36
  %i.asi = load ptr, ptr %15, align 8, !tbaa !48  ; 2 uses
  %i.asj = icmp eq ptr %i.asi, %i.api
  br i1 %i.asj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit180.i
  %i.ask = load i64, ptr %i.api, align 8, !tbaa !36
  %i.asl = add i64 %i.ask, 1
  call void @_ZdlPvm(ptr noundef %i.asi, i64 noundef %i.asl) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit180.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.asm = load ptr, ptr %14, align 8, !tbaa !48  ; 2 uses
  %i.asn = icmp eq ptr %i.asm, %i.apk
  br i1 %i.asn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.i
  %i.aso = load i64, ptr %i.apk, align 8, !tbaa !36
  %i.asp = add i64 %i.aso, 1
  call void @_ZdlPvm(ptr noundef %i.asm, i64 noundef %i.asp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.asq = load ptr, ptr %0, align 8, !tbaa !38
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 16
  %i.ass = load ptr, ptr %i.asr, align 8
  invoke void %i.ass(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.189)
          to label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEPFbRKS8_SF_EEvT_SI_T0_.exit.i unwind label %bb.hg

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEPFbRKS8_SF_EEvT_SI_T0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.i
  %i.ast = add nuw i64 %.069597.i, 1              ; 2 uses
  %i.asu = load ptr, ptr %i.aow, align 8, !tbaa !61
  %i.asv = load ptr, ptr %10, align 8, !tbaa !59  ; 2 uses
  %i.asw = ptrtoint ptr %i.asu to i64
  %i.asx = ptrtoint ptr %i.asv to i64
  %i.asy = sub i64 %i.asw, %i.asx
  %i.asz = ashr exact i64 %i.asy, 3
  %i.ata = icmp ult i64 %i.ast, %i.asz
  br i1 %i.ata, label %bb.gn, label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEPFbRKS8_SF_EEvT_SI_T0_.exit._crit_edge.i, !llvm.loop !143

bb.hc:                                            ; preds = %bb.gn
  %i.atb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i

bb.hd:                                            ; preds = %._crit_edge.i.i.i
  %i.atc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.atd = load ptr, ptr %13, align 8, !tbaa !48  ; 2 uses
  %i.ate = icmp eq ptr %i.atd, %i.ape
  br i1 %i.ate, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i: ; preds = %bb.hd
  %i.atf = load i64, ptr %i.ape, align 8, !tbaa !36
  %i.atg = add i64 %i.atf, 1
  call void @_ZdlPvm(ptr noundef %i.atd, i64 noundef %i.atg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i: ; preds = %bb.hd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.ath = load ptr, ptr %12, align 8, !tbaa !48  ; 2 uses
  %i.ati = icmp eq ptr %i.ath, %i.apg
  br i1 %i.ati, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i
  %i.atj = load i64, ptr %i.apg, align 8, !tbaa !36
  %i.atk = add i64 %i.atj, 1
  call void @_ZdlPvm(ptr noundef %i.ath, i64 noundef %i.atk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i, %bb.hc
  %.pn148.pn.i = phi { ptr, i32 } [ %i.atb, %bb.hc ], [ %i.atc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i ], [ %i.atc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.mw

bb.he:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167.i
  %i.atl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.i

bb.hf:                                            ; preds = %._crit_edge.i.i168.i
  %i.atm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.atn = load ptr, ptr %15, align 8, !tbaa !48  ; 2 uses
  %i.ato = icmp eq ptr %i.atn, %i.api
  br i1 %i.ato, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i: ; preds = %bb.hf
  %i.atp = load i64, ptr %i.api, align 8, !tbaa !36
  %i.atq = add i64 %i.atp, 1
  call void @_ZdlPvm(ptr noundef %i.atn, i64 noundef %i.atq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i: ; preds = %bb.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.atr = load ptr, ptr %14, align 8, !tbaa !48  ; 2 uses
  %i.ats = icmp eq ptr %i.atr, %i.apk
  br i1 %i.ats, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i
  %i.att = load i64, ptr %i.apk, align 8, !tbaa !36
  %i.atu = add i64 %i.att, 1
  call void @_ZdlPvm(ptr noundef %i.atr, i64 noundef %i.atu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196.i, %bb.he
  %.pn151.pn.i = phi { ptr, i32 } [ %i.atl, %bb.he ], [ %i.atm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196.i ], [ %i.atm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.mw

bb.hg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186.i
  %i.atv = landingpad { ptr, i32 }
          cleanup
  br label %bb.mw

bb.hh:                                            ; preds = %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEPFbRKS8_SF_EEvT_SI_T0_.exit._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.atw = load ptr, ptr %2, align 8, !tbaa !38
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 48
  %i.aty = load ptr, ptr %i.atx, align 8
  invoke void %i.aty(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.hi unwind label %bb.hz

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.atz = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aua = load i64, ptr %i.atz, align 8, !tbaa !35, !noalias !162
  %i.aub = and i64 %i.aua, -8
  %i.auc = icmp eq i64 %i.aub, 4611686018427387896
  br i1 %i.auc, label %bb.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.hj:                                            ; preds = %bb.hi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
          to label %.noexc201.i unwind label %bb.ia

.noexc201.i:                                      ; preds = %bb.hj
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %bb.hi
  %i.aud = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.122, i64 noundef 8)
          to label %.noexc202.i unwind label %bb.ia ; 6 uses

.noexc202.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.aue = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 13 uses
  store ptr %i.aue, ptr %16, align 8, !tbaa !32, !alias.scope !162
  %i.auf = load ptr, ptr %i.aud, align 8, !tbaa !48 ; 2 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %i.aud, i64 16 ; 5 uses
  %i.auh = icmp eq ptr %i.auf, %i.aug
  br i1 %i.auh, label %bb.hk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199.i

bb.hk:                                            ; preds = %.noexc202.i
  %i.aui = getelementptr inbounds nuw i8, ptr %i.aud, i64 8
  %i.auj = load i64, ptr %i.aui, align 8, !tbaa !35 ; 3 uses
  %i.auk = icmp ult i64 %i.auj, 16
  call void @llvm.assume(i1 %i.auk)
  %i.aul = add nuw nsw i64 %i.auj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aue, ptr noundef nonnull align 8 dereferenceable(1) %i.aug, i64 %i.aul, i1 false)
  br label %._crit_edge.i.i203.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199.i: ; preds = %.noexc202.i
  store ptr %i.auf, ptr %16, align 8, !tbaa !48, !alias.scope !162
  %i.aum = load i64, ptr %i.aug, align 8, !tbaa !36
  store i64 %i.aum, ptr %i.aue, align 8, !tbaa !36, !alias.scope !162
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aud, i64 8
  %.pre.i200.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !35
  br label %._crit_edge.i.i203.i

._crit_edge.i.i203.i:                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199.i, %bb.hk
  %i.aun = phi i64 [ %i.auj, %bb.hk ], [ %.pre.i200.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199.i ]
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aud, i64 8
  %i.aup = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  store i64 %i.aun, ptr %i.aup, align 8, !tbaa !35, !alias.scope !162
  store ptr %i.aug, ptr %i.aud, align 8, !tbaa !48
  store i64 0, ptr %i.auo, align 8, !tbaa !35
  store i8 0, ptr %i.aug, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.auq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.auq, ptr %18, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.auq, ptr noundef nonnull align 1 dereferenceable(12) @.str.55, i64 12, i1 false)
  %i.aur = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 12, ptr %i.aur, align 8, !tbaa !35
  %i.aus = getelementptr inbounds nuw i8, ptr %18, i64 28
  store i8 0, ptr %i.aus, align 4, !tbaa !36
  %i.aut = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.hl unwind label %bb.ib     ; 9 uses

bb.hl:                                            ; preds = %._crit_edge.i.i203.i
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !48 ; 6 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.aut, i64 16 ; 4 uses
  %i.auw = icmp eq ptr %i.auu, %i.auv
  %i.aux = load ptr, ptr %16, align 8, !tbaa !48  ; 6 uses
  %i.auy = icmp eq ptr %i.aux, %i.aue             ; 2 uses
  br i1 %i.auw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i213.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i207.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i213.i: ; preds = %bb.hl
  br i1 %i.auy, label %bb.hm, label %.thread.i214.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i207.i: ; preds = %bb.hl
  br i1 %i.auy, label %bb.hm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i208.i

bb.hm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i207.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i213.i
  %i.auz = load i64, ptr %i.aup, align 8, !tbaa !35 ; 3 uses
  %i.ava = icmp ult i64 %i.auz, 16
  call void @llvm.assume(i1 %i.ava)
  %.not21.i210.i = icmp eq ptr %16, %i.aut
  br i1 %.not21.i210.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit215.i, label %bb.hn, !prof !49

bb.hn:                                            ; preds = %bb.hm
  switch i64 %i.auz, label %bb.hp [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i211.i
    i64 1, label %bb.ho
  ]

bb.ho:                                            ; preds = %bb.hn
  %i.avb = load i8, ptr %i.aux, align 1, !tbaa !36
  store i8 %i.avb, ptr %i.auu, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i211.i

bb.hp:                                            ; preds = %bb.hn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.auu, ptr align 1 %i.aux, i64 %i.auz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i211.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i211.i: ; preds = %bb.hp, %bb.ho, %bb.hn
  %i.avc = load i64, ptr %i.aup, align 8, !tbaa !35 ; 2 uses
  %i.avd = getelementptr inbounds nuw i8, ptr %i.aut, i64 8
  store i64 %i.avc, ptr %i.avd, align 8, !tbaa !35
  %i.ave = load ptr, ptr %i.aut, align 8, !tbaa !48
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 %i.avc
  store i8 0, ptr %i.avf, align 1, !tbaa !36
  %.pre.i212.i = load ptr, ptr %16, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit215.i

end_hunk_1
begin_hunk_2_@_ZN19grpc_java_generator12_GLOBAL__N_112PrintServiceEPN14grpc_generator7PrinterERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEPKNS1_7ServiceEb:._crit_edge.i.i
  %i.bqd = landingpad { ptr, i32 }
          cleanup
  br label %.body378.i

bb.mg:                                            ; preds = %.noexc.i382.i
  %i.bqe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.i

bb.mh:                                            ; preds = %.noexc383.i
  %i.bqf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bqg = load ptr, ptr %34, align 8, !tbaa !48  ; 2 uses
  %i.bqh = icmp eq ptr %i.bqg, %i.bic
  br i1 %i.bqh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453.i: ; preds = %bb.mh
  %i.bqi = load i64, ptr %i.bic, align 8, !tbaa !36
  %i.bqj = add i64 %i.bqi, 1
  call void @_ZdlPvm(ptr noundef %i.bqg, i64 noundef %i.bqj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.i: ; preds = %bb.mh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453.i, %bb.mg
  %.pn115.i = phi { ptr, i32 } [ %i.bqe, %bb.mg ], [ %i.bqf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i453.i ], [ %i.bqf, %bb.mh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  %i.bqk = load ptr, ptr %33, align 8, !tbaa !48  ; 2 uses
  %i.bql = icmp eq ptr %i.bqk, %i.bie
  br i1 %i.bql, label %.body378.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.i
  %i.bqm = load i64, ptr %i.bie, align 8, !tbaa !36
  %i.bqn = add i64 %i.bqm, 1
  call void @_ZdlPvm(ptr noundef %i.bqk, i64 noundef %i.bqn) #20
  br label %.body378.i

.body378.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456.i, %bb.mf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i373.i
  %.pn115.pn.i153 = phi { ptr, i32 } [ %i.bld, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i373.i ], [ %i.bqd, %bb.mf ], [ %.pn115.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i456.i ], [ %.pn115.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit455.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  br label %bb.mo

bb.mi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399.i157
  %i.bqo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467.i

bb.mj:                                            ; preds = %bb.lm
  %i.bqp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464.i

bb.mk:                                            ; preds = %._crit_edge.i.i400.i
  %i.bqq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bqr = load ptr, ptr %37, align 8, !tbaa !48  ; 2 uses
  %i.bqs = icmp eq ptr %i.bqr, %i.big
  br i1 %i.bqs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459.i: ; preds = %bb.mk
  %i.bqt = load i64, ptr %i.big, align 8, !tbaa !36
  %i.bqu = add i64 %i.bqt, 1
  call void @_ZdlPvm(ptr noundef %i.bqr, i64 noundef %i.bqu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461.i: ; preds = %bb.mk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i459.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %i.bqv = load ptr, ptr %35, align 8, !tbaa !48  ; 2 uses
  %i.bqw = icmp eq ptr %i.bqv, %i.bii
  br i1 %i.bqw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461.i
  %i.bqx = load i64, ptr %i.bii, align 8, !tbaa !36
  %i.bqy = add i64 %i.bqx, 1
  call void @_ZdlPvm(ptr noundef %i.bqv, i64 noundef %i.bqy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462.i, %bb.mj
  %.pn118.pn.i158 = phi { ptr, i32 } [ %i.bqp, %bb.mj ], [ %i.bqq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i462.i ], [ %i.bqq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit461.i ] ; 2 uses
  %i.bqz = load ptr, ptr %36, align 8, !tbaa !48  ; 2 uses
  %i.bra = icmp eq ptr %i.bqz, %i.bik
  br i1 %i.bra, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i465.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i465.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464.i
  %i.brb = load i64, ptr %i.bik, align 8, !tbaa !36
  %i.brc = add i64 %i.brb, 1
  call void @_ZdlPvm(ptr noundef %i.bqz, i64 noundef %i.brc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i465.i, %bb.mi
  %.pn118.pn.pn.i = phi { ptr, i32 } [ %i.bqo, %bb.mi ], [ %.pn118.pn.i158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i465.i ], [ %.pn118.pn.i158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  br label %bb.mo

bb.ml:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421.i
  %i.brd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476.i

bb.mm:                                            ; preds = %bb.lu
  %i.bre = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473.i

bb.mn:                                            ; preds = %._crit_edge.i.i422.i
  %i.brf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.brg = load ptr, ptr %40, align 8, !tbaa !48  ; 2 uses
  %i.brh = icmp eq ptr %i.brg, %i.bil
  br i1 %i.brh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i468.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i468.i: ; preds = %bb.mn
  %i.bri = load i64, ptr %i.bil, align 8, !tbaa !36
  %i.brj = add i64 %i.bri, 1
  call void @_ZdlPvm(ptr noundef %i.brg, i64 noundef %i.brj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470.i: ; preds = %bb.mn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i468.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  %i.brk = load ptr, ptr %38, align 8, !tbaa !48  ; 2 uses
  %i.brl = icmp eq ptr %i.brk, %i.bin
  br i1 %i.brl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i471.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i471.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470.i
  %i.brm = load i64, ptr %i.bin, align 8, !tbaa !36
  %i.brn = add i64 %i.brm, 1
  call void @_ZdlPvm(ptr noundef %i.brk, i64 noundef %i.brn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i471.i, %bb.mm
  %.pn122.pn.i = phi { ptr, i32 } [ %i.bre, %bb.mm ], [ %i.brf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i471.i ], [ %i.brf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit470.i ] ; 2 uses
  %i.bro = load ptr, ptr %39, align 8, !tbaa !48  ; 2 uses
  %i.brp = icmp eq ptr %i.bro, %i.bip
  br i1 %i.brp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473.i
  %i.brq = load i64, ptr %i.bip, align 8, !tbaa !36
  %i.brr = add i64 %i.brq, 1
  call void @_ZdlPvm(ptr noundef %i.bro, i64 noundef %i.brr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474.i, %bb.ml
  %.pn122.pn.pn.i = phi { ptr, i32 } [ %i.brd, %bb.ml ], [ %.pn122.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i474.i ], [ %.pn122.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  br label %bb.mo

bb.mo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467.i, %.body378.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452.i, %bb.ku
  %.pn126.i = phi { ptr, i32 } [ %i.bjq, %bb.ku ], [ %.pn122.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit476.i ], [ %.pn118.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467.i ], [ %.pn115.pn.i153, %.body378.i ], [ %.pn112.pn.i152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit452.i ] ; 2 uses
  %i.brs = load ptr, ptr %30, align 8, !tbaa !56  ; 3 uses
  %.not.i477.i = icmp eq ptr %i.brs, null
  br i1 %.not.i477.i, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit479.i, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i478.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i478.i: ; preds = %bb.mo
  %i.brt = load ptr, ptr %i.brs, align 8, !tbaa !38
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brt, i64 8
  %i.brv = load ptr, ptr %i.bru, align 8
  call void %i.brv(ptr noundef nonnull align 8 dereferenceable(8) %i.brs) #19, !inline_history !141
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit479.i

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit479.i: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i478.i, %bb.mo, %bb.kt
  %.pn126.pn.i = phi { ptr, i32 } [ %i.bjp, %bb.kt ], [ %.pn126.i, %bb.mo ], [ %.pn126.i, %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i478.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %bb.mw

bb.mp:                                            ; preds = %bb.km
  %i.brw = load ptr, ptr %0, align 8, !tbaa !38
  %i.brx = getelementptr inbounds nuw i8, ptr %i.brw, i64 48
  %i.bry = load ptr, ptr %i.brx, align 8
  invoke void %i.bry(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.mq unwind label %bb.gm

bb.mq:                                            ; preds = %bb.mp
  %i.brz = load ptr, ptr %0, align 8, !tbaa !38
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.brz, i64 48
  %i.bsb = load ptr, ptr %i.bsa, align 8
  invoke void %i.bsb(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.mr unwind label %bb.gm

bb.mr:                                            ; preds = %bb.mq
  %i.bsc = load ptr, ptr %0, align 8, !tbaa !38
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bsc, i64 24
  %i.bse = load ptr, ptr %i.bsd, align 8
  invoke void %i.bse(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.197)
          to label %bb.ms unwind label %bb.gm

bb.ms:                                            ; preds = %bb.mr
  %i.bsf = load ptr, ptr %0, align 8, !tbaa !38
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsf, i64 48
  %i.bsh = load ptr, ptr %i.bsg, align 8
  invoke void %i.bsh(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.mt unwind label %bb.gm

bb.mt:                                            ; preds = %bb.ms
  %i.bsi = load ptr, ptr %0, align 8, !tbaa !38
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bsi, i64 24
  %i.bsk = load ptr, ptr %i.bsj, align 8
  invoke void %i.bsk(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.65)
          to label %bb.mu unwind label %bb.gm

bb.mu:                                            ; preds = %bb.mt
  %i.bsl = load ptr, ptr %10, align 8, !tbaa !59  ; 5 uses
  %i.bsm = load ptr, ptr %i.aow, align 8, !tbaa !61 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bsl, %i.bsm
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.mu, %_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bsr, %_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.bsl, %bb.mu ] ; 2 uses
  %i.bsn = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bsn, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bso = load ptr, ptr %i.bsn, align 8, !tbaa !38
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bso, i64 8
  %i.bsq = load ptr, ptr %i.bsp, align 8
  call void %i.bsq(ptr noundef nonnull align 8 dereferenceable(8) %i.bsn) #19, !inline_history !152
  br label %_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bsr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bsr, %i.bsm
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, %bb.mu
  %.not.i.i1.i.i = icmp eq ptr %i.bsl, null
  br i1 %.not.i.i1.i.i, label %_ZN19grpc_java_generator12_GLOBAL__N_123PrintMethodHandlerClassEPN14grpc_generator7PrinterERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEPKNS1_7ServiceE.exit, label %bb.mv

bb.mv:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  %i.bss = load ptr, ptr %i.aox, align 8, !tbaa !60
  %i.bst = ptrtoint ptr %i.bss to i64
  %i.bsu = ptrtoint ptr %i.bsl to i64
  %i.bsv = sub i64 %i.bst, %i.bsu
  call void @_ZdlPvm(ptr noundef nonnull %i.bsl, i64 noundef %i.bsv) #20
  br label %_ZN19grpc_java_generator12_GLOBAL__N_123PrintMethodHandlerClassEPN14grpc_generator7PrinterERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEPKNS1_7ServiceE.exit

bb.mw:                                            ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit479.i, %bb.kn, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit352.i, %bb.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i, %bb.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i, %bb.gm, %bb.gl, %bb.gi
  %.pn156.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i ], [ %i.apo, %bb.gi ], [ %.pn148.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i ], [ %i.ayk, %bb.ic ], [ %i.aqg, %bb.gm ], [ %i.aqc, %bb.gl ], [ %i.atv, %bb.hg ], [ %.pn151.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198.i ], [ %.pn144.pn.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit352.i ], [ %.pn126.pn.i, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EED2Ev.exit479.i ], [ %i.bjb, %bb.kn ]
  call void @_ZNSt6vectorISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %common.resume

_ZN19grpc_java_generator12_GLOBAL__N_123PrintMethodHandlerClassEPN14grpc_generator7PrinterERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEPKNS1_7ServiceE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, %bb.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.bsw = load ptr, ptr %2, align 8, !tbaa !38
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsw, i64 48
  %i.bsy = load ptr, ptr %i.bsx, align 8
  call void %i.bsy(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !153
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.bsz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.bsz, ptr %4, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bsz, ptr noundef nonnull align 1 dereferenceable(12) @.str.55, i64 12, i1 false)
  %i.bta = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 12, ptr %i.bta, align 8, !tbaa !35
  %i.btb = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.btb, align 4, !tbaa !36
  %i.btc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.mx unwind label %bb.ne     ; 9 uses

bb.mx:                                            ; preds = %_ZN19grpc_java_generator12_GLOBAL__N_123PrintMethodHandlerClassEPN14grpc_generator7PrinterERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEEPKNS1_7ServiceE.exit
  %i.btd = load ptr, ptr %i.btc, align 8, !tbaa !48 ; 6 uses
  %i.bte = getelementptr inbounds nuw i8, ptr %i.btc, i64 16 ; 4 uses
  %i.btf = icmp eq ptr %i.btd, %i.bte
  %i.btg = load ptr, ptr %3, align 8, !tbaa !48   ; 6 uses
  %i.bth = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.bti = icmp eq ptr %i.btg, %i.bth             ; 2 uses
  br i1 %i.btf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.mx
  br i1 %i.bti, label %bb.my, label %.thread.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i177: ; preds = %bb.mx
  br i1 %i.bti, label %bb.my, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i178

bb.my:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  %i.btj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.btk = load i64, ptr %i.btj, align 8, !tbaa !35 ; 3 uses
  %i.btl = icmp ult i64 %i.btk, 16
  call void @llvm.assume(i1 %i.btl)
  %.not21.i.i187 = icmp eq ptr %3, %i.btc
  br i1 %.not21.i.i187, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i180, label %bb.mz, !prof !49

bb.mz:                                            ; preds = %bb.my
  switch i64 %i.btk, label %bb.nb [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i188
    i64 1, label %bb.na
  ]

bb.na:                                            ; preds = %bb.mz
  %i.btm = load i8, ptr %i.btg, align 1, !tbaa !36
  store i8 %i.btm, ptr %i.btd, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i188

bb.nb:                                            ; preds = %bb.mz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.btd, ptr align 1 %i.btg, i64 %i.btk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i188: ; preds = %bb.nb, %bb.na, %bb.mz
  %i.btn = load i64, ptr %i.btj, align 8, !tbaa !35 ; 2 uses
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btc, i64 8
  store i64 %i.btn, ptr %i.bto, align 8, !tbaa !35
  %i.btp = load ptr, ptr %i.btc, align 8, !tbaa !48
  %i.btq = getelementptr inbounds nuw i8, ptr %i.btp, i64 %i.btn
  store i8 0, ptr %i.btq, align 1, !tbaa !36
  %.pre.i.i189 = load ptr, ptr %3, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i180

.thread.i.i191:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  %i.btr = getelementptr inbounds nuw i8, ptr %i.btc, i64 8
  store ptr %i.btg, ptr %i.btc, align 8, !tbaa !48
  %i.bts = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.btt = load i64, ptr %i.bts, align 8, !tbaa !35
  store i64 %i.btt, ptr %i.btr, align 8, !tbaa !35
  %i.btu = load i64, ptr %i.bth, align 8, !tbaa !36
  store i64 %i.btu, ptr %i.bte, align 8, !tbaa !36
  br label %bb.nd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i178: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i177
  %i.btv = load i64, ptr %i.bte, align 8, !tbaa !36
  store ptr %i.btg, ptr %i.btc, align 8, !tbaa !48
  %i.btw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.btx = load i64, ptr %i.btw, align 8, !tbaa !35
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btc, i64 8
  store i64 %i.btx, ptr %i.bty, align 8, !tbaa !35
  %i.btz = load i64, ptr %i.bth, align 8, !tbaa !36
  store i64 %i.btz, ptr %i.bte, align 8, !tbaa !36
  %.not.i.i179 = icmp eq ptr %i.btd, null
  br i1 %.not.i.i179, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i178
  store ptr %i.btd, ptr %3, align 8, !tbaa !48
  store i64 %i.btv, ptr %i.bth, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i180

bb.nd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i178, %.thread.i.i191
  store ptr %i.bth, ptr %3, align 8, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i180: ; preds = %bb.nd, %bb.nc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i188, %bb.my
  %i.bua = phi ptr [ %.pre.i.i189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i188 ], [ %i.btd, %bb.nc ], [ %i.bth, %bb.nd ], [ %i.btg, %bb.my ]
  %i.bub = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bub, align 8, !tbaa !35
  store i8 0, ptr %i.bua, align 1, !tbaa !36
  %i.buc = load ptr, ptr %4, align 8, !tbaa !48   ; 2 uses
  %i.bud = icmp eq ptr %i.buc, %i.bsz
  br i1 %i.bud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i180
  %i.bue = load i64, ptr %i.bsz, align 8, !tbaa !36
  %i.buf = add i64 %i.bue, 1
  call void @_ZdlPvm(ptr noundef %i.buc, i64 noundef %i.buf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bug = load ptr, ptr %3, align 8, !tbaa !48   ; 2 uses
  %i.buh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bui = icmp eq ptr %i.bug, %i.buh
  br i1 %i.bui, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i182
  %i.buj = load i64, ptr %i.buh, align 8, !tbaa !36
  %i.buk = add i64 %i.buj, 1
  call void @_ZdlPvm(ptr noundef %i.bug, i64 noundef %i.buk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.bul = load ptr, ptr %0, align 8, !tbaa !38
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bul, i64 16
  %i.bun = load ptr, ptr %i.bum, align 8
  call void %i.bun(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.199), !inline_history !153
  %i.buo = load ptr, ptr %0, align 8, !tbaa !38
  %i.bup = getelementptr inbounds nuw i8, ptr %i.buo, i64 16
  %i.buq = load ptr, ptr %i.bup, align 8
  call void %i.buq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.200), !inline_history !153
  %i.bur = load ptr, ptr %0, align 8, !tbaa !38
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bur, i64 40
  %i.but = load ptr, ptr %i.bus, align 8
  call void %i.but(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !153
  %i.buu = load ptr, ptr %0, align 8, !tbaa !38
  %i.buv = getelementptr inbounds nuw i8, ptr %i.buu, i64 16
  %i.buw = load ptr, ptr %i.buv, align 8
  call void %i.buw(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.201), !inline_history !153
  %i.bux = load ptr, ptr %0, align 8, !tbaa !38
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bux, i64 24
  %i.buz = load ptr, ptr %i.buy, align 8
  call void %i.buz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.202), !inline_history !153
  %i.bva = load ptr, ptr %0, align 8, !tbaa !38
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bva, i64 40
  %i.bvc = load ptr, ptr %i.bvb, align 8
  call void %i.bvc(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !153
  %i.bvd = load ptr, ptr %0, align 8, !tbaa !38
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bvd, i64 16
  %i.bvf = load ptr, ptr %i.bve, align 8
  call void %i.bvf(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.203), !inline_history !153
  %i.bvg = load ptr, ptr %0, align 8, !tbaa !38
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bvg, i64 40
  %i.bvi = load ptr, ptr %i.bvh, align 8
  call void %i.bvi(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !153
  %i.bvj = load ptr, ptr %0, align 8, !tbaa !38
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bvj, i64 24
  %i.bvl = load ptr, ptr %i.bvk, align 8
  call void %i.bvl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.204), !inline_history !153
  %i.bvm = load ptr, ptr %0, align 8, !tbaa !38
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvm, i64 24
  %i.bvo = load ptr, ptr %i.bvn, align 8
  call void %i.bvo(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.202), !inline_history !153
  %i.bvp = load ptr, ptr %0, align 8, !tbaa !38
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvp, i64 40
  %i.bvr = load ptr, ptr %i.bvq, align 8
  call void %i.bvr(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !153
  %i.bvs = load ptr, ptr %0, align 8, !tbaa !38
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bvs, i64 16
  %i.bvu = load ptr, ptr %i.bvt, align 8
  call void %i.bvu(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.205), !inline_history !153
  %i.bvv = load ptr, ptr %0, align 8, !tbaa !38
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bvv, i64 40
  %i.bvx = load ptr, ptr %i.bvw, align 8
  call void %i.bvx(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !153
  %i.bvy = load ptr, ptr %0, align 8, !tbaa !38
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bvy, i64 40
  %i.bwa = load ptr, ptr %i.bvz, align 8
  call void %i.bwa(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !153
  %i.bwb = load ptr, ptr %0, align 8, !tbaa !38
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bwb, i64 16
  %i.bwd = load ptr, ptr %i.bwc, align 8
  call void %i.bwd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.206), !inline_history !153
  %i.bwe = load ptr, ptr %2, align 8, !tbaa !38
end_hunk_2
begin_hunk_3_@_ZN19grpc_java_generator12_GLOBAL__N_117MethodIdFieldNameB5cxx11EPKN14grpc_generator6MethodE:bb.a
  store ptr %i.g, ptr %i.d, align 8, !tbaa !48
  store i64 0, ptr %i.o, align 8, !tbaa !35
  store i8 0, ptr %i.g, align 8, !tbaa !36
  %i.q = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.d
  %i.t = load i64, ptr %i.r, align 8, !tbaa !36
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.v = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !36
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.f:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !48    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.f
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !36
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.e
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.ab, %bb.f ]
  %i.ah = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !36
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN19grpc_java_generator12_GLOBAL__N_128CompareMethodClientStreamingERKSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS4_EES9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.f = load ptr, ptr %1, align 8, !tbaa !56     ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.k = xor i1 %i.e, true
  %i.l = and i1 %i.j, %i.k
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11flatbuffers11NumToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %1)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !32, !alias.scope !251
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !35, !alias.scope !251
  store i8 0, ptr %i.c, align 8, !tbaa !36, !alias.scope !251
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91, !noalias !251 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !251 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEm.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92, !noalias !251 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !48, !alias.scope !251 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !36, !alias.scope !251
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #20
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !38
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !38
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !36
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #20
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #19
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !38
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !94
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #19, !inline_history !4
  br label %_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !59
  br label %_ZSt8_DestroyIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::_Temporary_buffer", align 8 ; 7 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 5 uses
  store i64 %i.g, ptr %3, align 8, !tbaa !256
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = icmp sgt i64 %i.e, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.o, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 6 uses
  %i.k = shl nuw nsw i64 %.010.i.i, 3             ; 3 uses
  %i.l = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.k, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #25 ; 10 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %bb.c

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.m = icmp eq i64 %.010.i.i, 1
  %i.n = add nuw nsw i64 %.010.i.i, 1
  %i.o = lshr i64 %i.n, 1
  br i1 %i.m, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l.exit, label %.lr.ph.i.i, !llvm.loop !252

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.q = load i64, ptr %0, align 8, !tbaa !56     ; 2 uses
  store i64 %i.q, ptr %i.l, align 8, !tbaa !56
  %.not18.i.i.i = icmp eq i64 %.010.i.i, 1
  %i.r = inttoptr i64 %i.q to ptr
  br i1 %.not18.i.i.i, label %_ZSt29__uninitialized_construct_bufIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
  %.01317.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %load_initial = load i64, ptr %i.l, align 8     ; 9 uses
  %i.s = add nsw i64 %i.k, -16                    ; 2 uses
  %i.t = lshr exact i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1
  %xtraiter = and i64 %i.u, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i.prol
  %.01320.i.i.i.prol = phi ptr [ %.013.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.019.i.i.i.prol = phi ptr [ %i.v, %.lr.ph.i.i.i.prol ], [ %i.l, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.preheader.i ]
  store i64 %load_initial, ptr %.01320.i.i.i.prol, align 8, !tbaa !56
  store ptr null, ptr %.019.i.i.i.prol, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %.019.i.i.i.prol, i64 8 ; 3 uses
  %.013.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !253

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.preheader.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %.01320.i.i.i.unr = phi ptr [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ], [ %.013.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.019.i.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i.preheader.i ], [ %i.v, %.lr.ph.i.i.i.prol ]
  %i.w = icmp ult i64 %i.s, 56
  br i1 %i.w, label %._crit_edge.i.i.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01320.i.i.i = phi ptr [ %.013.i.i.i.7, %.lr.ph.i.i.i ], [ %.01320.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.019.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.019.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  store i64 %load_initial, ptr %.01320.i.i.i, align 8, !tbaa !56
  store ptr null, ptr %.019.i.i.i, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 8
  %.013.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 8
  store i64 %load_initial, ptr %.013.i.i.i, align 8, !tbaa !56
  store ptr null, ptr %i.x, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 16
  %.013.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 16
  store i64 %load_initial, ptr %.013.i.i.i.1, align 8, !tbaa !56
  store ptr null, ptr %i.y, align 8, !tbaa !56
  %i.z = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 24
  %.013.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 24
  store i64 %load_initial, ptr %.013.i.i.i.2, align 8, !tbaa !56
  store ptr null, ptr %i.z, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 32
  %.013.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 32
  store i64 %load_initial, ptr %.013.i.i.i.3, align 8, !tbaa !56
  store ptr null, ptr %i.aa, align 8, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 40
  %.013.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 40
  store i64 %load_initial, ptr %.013.i.i.i.4, align 8, !tbaa !56
  store ptr null, ptr %i.ab, align 8, !tbaa !56
  %i.ac = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 48
  %.013.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 48
  store i64 %load_initial, ptr %.013.i.i.i.5, align 8, !tbaa !56
  store ptr null, ptr %i.ac, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 56
  %.013.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 56
  store i64 %load_initial, ptr %.013.i.i.i.6, align 8, !tbaa !56
  store ptr null, ptr %i.ad, align 8, !tbaa !56
  %i.ae = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 64 ; 2 uses
  %.013.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %.013.i.i.i.7, %i.p
  br i1 %.not.i.i.i.7, label %._crit_edge.i.i.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !254

._crit_edge.i.i.loopexit.i:                       ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ae, %.lr.ph.i.i.i ] ; 2 uses
  %.pre.i = load ptr, ptr %.lcssa, align 8, !tbaa !56
  br label %_ZSt29__uninitialized_construct_bufIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_.exit.i

_ZSt29__uninitialized_construct_bufIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_.exit.i: ; preds = %._crit_edge.i.i.loopexit.i, %bb.c
  %i.af = phi ptr [ %i.r, %bb.c ], [ %.pre.i, %._crit_edge.i.i.loopexit.i ]
  %.0.lcssa.i.i.i = phi ptr [ %i.l, %bb.c ], [ %.lcssa, %._crit_edge.i.i.loopexit.i ]
  store ptr null, ptr %.0.lcssa.i.i.i, align 8, !tbaa !56
  store ptr %i.af, ptr %0, align 8, !tbaa !56
  store ptr %i.l, ptr %i.i, align 8, !tbaa !99
  store i64 %.010.i.i, ptr %i.h, align 8, !tbaa !100
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l.exit

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l.exit: ; preds = %select.unfold.i.i, %bb.b, %_ZSt29__uninitialized_construct_bufIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_.exit.i
  %.pre.i16 = phi ptr [ %i.l, %_ZSt29__uninitialized_construct_bufIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_.exit.i ], [ null, %bb.b ], [ null, %select.unfold.i.i ] ; 8 uses
  %.pre1.i = phi i64 [ %.010.i.i, %_ZSt29__uninitialized_construct_bufIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEEvT_SE_T0_.exit.i ], [ 0, %bb.b ], [ 0, %select.unfold.i.i ] ; 4 uses
  %i.ag = icmp eq i64 %i.g, %.pre1.i
  br i1 %i.ag, label %bb.d, label %bb.f, !prof !257

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l.exit
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_(ptr %0, ptr %i.ah, ptr noundef %.pre.i16, ptr %2)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_(ptr %i.ah, ptr %1, ptr noundef %.pre.i16, ptr %2)
          to label %.noexc12 unwind label %bb.e

.noexc12:                                         ; preds = %.noexc
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.b, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = ptrtoint ptr %2 to i64
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_SL_T0_SM_T1_T2_(ptr %0, ptr %i.ah, ptr %1, i64 noundef %i.g, i64 noundef %i.ak, ptr noundef %.pre.i16, i64 %i.al)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_SL_T0_T1_.exit unwind label %bb.e

bb.e:                                             ; preds = %.noexc12, %.noexc, %bb.d, %bb.h, %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.am

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_EC2ESD_l.exit
  %i.an = icmp eq ptr %.pre.i16, null
  br i1 %i.an, label %bb.g, label %bb.h, !prof !49

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_(ptr %0, ptr %1, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_SL_T0_T1_.exit unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.pre.i16, i64 noundef %.pre1.i, ptr %2)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_SL_T0_T1_.exit unwind label %bb.e

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_SL_T0_T1_.exit: ; preds = %.noexc12, %bb.g, %bb.h
  %.idx.i = shl i64 %.pre1.i, 3                   ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.pre.i16, i64 %.idx.i
  %.not4.i.i.i = icmp eq i64 %.pre1.i, 0
  br i1 %.not4.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_ED2Ev.exit, label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_SL_T0_T1_.exit, %_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.at, %_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %.pre.i16, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_SL_T0_T1_.exit ] ; 2 uses
  %i.ap = load ptr, ptr %.05.i.i.i, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i14
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #19, !inline_history !255
  br label %_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i14
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.at, %i.ao
  br i1 %.not.i.i.i15, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_ED2Ev.exit, label %.lr.ph.i.i.i14, !llvm.loop !1

end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_:bb.a
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #19 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !51  ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !329

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !35   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !35   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !48
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #19 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}
!llvm.errno.tbaa = !{!28}

!0 = distinct !{null}
!1 = distinct !{!1, !52}
!2 = distinct !{!2, !52}
!3 = distinct !{null, null}
!4 = distinct !{null, null, null, null, null}
!5 = distinct !{!5, !52}
!6 = distinct !{!6, !52}
!7 = distinct !{!7, !52}
!8 = distinct !{null, null, null, null, null, null, null, null, null, null}
!9 = distinct !{null}
!10 = distinct !{null, null, null, null, null, null, null, null, null, null}
!11 = distinct !{!11, !52}
!12 = distinct !{null, null, null, null, null}
!13 = distinct !{null, null, null, null, null, null, null, null, null, null}
!14 = distinct !{null, null, null, null, null, null, null, null, null, null}
!15 = distinct !{null, null}
!16 = distinct !{!16, !52}
!17 = distinct !{null, null}
!18 = distinct !{!18, !52}
!19 = distinct !{!19, !52}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 2}
!23 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!24 = !{!"Simple C++ TBAA"}
!25 = !{!"omnipotent char", !24, i64 0}
!26 = !{!"int", !25, i64 0}
!27 = !{!"__libc_errno", !26, i64 0}
!28 = !{!27, !26, i64 0}
!29 = !{!"any pointer", !25, i64 0}
!30 = !{!"p1 omnipotent char", !29, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!32 = !{!31, !30, i64 0}
!33 = !{!"long", !25, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0, !33, i64 8, !25, i64 16}
!35 = !{!34, !33, i64 8}
!36 = !{!25, !25, i64 0}
!37 = !{!"vtable pointer", !24, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"_ZTSSt14_Rb_tree_color", !25, i64 0}
!40 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !29, i64 0}
!41 = !{!"_ZTSSt18_Rb_tree_node_base", !39, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!42 = !{!"_ZTSSt15_Rb_tree_header", !41, i64 0, !33, i64 32}
!43 = !{!42, !39, i64 0}
!44 = !{!42, !40, i64 8}
!45 = !{!42, !40, i64 16}
!46 = !{!42, !40, i64 24}
!47 = !{!42, !33, i64 32}
!48 = !{!34, !30, i64 0}
!49 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!50 = !{!33, !33, i64 0}
!51 = !{!40, !40, i64 0}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"p1 _ZTSN14grpc_generator6MethodE", !29, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"p1 _ZTSSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EE", !29, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!58, !57, i64 0}
!60 = !{!58, !57, i64 16}
!61 = !{!58, !57, i64 8}
!62 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!63 = !{!62, !53, i64 0}
!64 = !{!62, !53, i64 8}
!65 = !{!62, !53, i64 16}
!66 = !{!"p1 _ZTSSo", !29, i64 0}
!67 = !{!"_ZTS9LogHelper", !66, i64 0}
!68 = !{!67, !66, i64 0}
!69 = !{!"_ZTSSt13_Ios_Fmtflags", !25, i64 0}
!70 = !{!"_ZTSSt12_Ios_Iostate", !25, i64 0}
!71 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !29, i64 0}
!72 = !{!"_ZTSNSt8ios_base6_WordsE", !29, i64 0, !33, i64 8}
!73 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !29, i64 0}
!74 = !{!"p1 _ZTSNSt6locale5_ImplE", !29, i64 0}
!75 = !{!"_ZTSSt6locale", !74, i64 0}
!76 = !{!"_ZTSSt8ios_base", !33, i64 8, !33, i64 16, !69, i64 24, !70, i64 28, !70, i64 32, !71, i64 40, !72, i64 48, !25, i64 64, !26, i64 192, !73, i64 200, !75, i64 208}
!77 = !{!"bool", !25, i64 0}
!78 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !29, i64 0}
!79 = !{!"p1 _ZTSSt5ctypeIcE", !29, i64 0}
!80 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !29, i64 0}
!81 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !29, i64 0}
!82 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !76, i64 0, !66, i64 216, !25, i64 224, !77, i64 225, !78, i64 232, !79, i64 240, !80, i64 248, !81, i64 256}
!83 = !{!82, !79, i64 240}
!84 = !{!"_ZTSNSt6locale5facetE", !26, i64 8}
!85 = !{!"p1 _ZTS15__locale_struct", !29, i64 0}
!86 = !{!"p1 int", !29, i64 0}
!87 = !{!"p1 short", !29, i64 0}
!88 = !{!"_ZTSSt5ctypeIcE", !84, i64 0, !85, i64 16, !77, i64 24, !86, i64 32, !86, i64 40, !87, i64 48, !25, i64 56, !25, i64 57, !25, i64 313, !25, i64 569}
!89 = !{!88, !25, i64 56}
!90 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !75, i64 56}
!91 = !{!90, !30, i64 40}
!92 = !{!90, !30, i64 32}
!93 = !{!"_ZTSSi", !33, i64 8}
!94 = !{!93, !33, i64 8}
!95 = !{!41, !40, i64 24}
!96 = !{!41, !40, i64 16}
!97 = !{!"_ZTSSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_E", !33, i64 0, !33, i64 8, !57, i64 16}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = !{!97, !57, i64 16}
!100 = !{!97, !33, i64 8}
!101 = !{!"llvm.loop.isvectorized", i32 1}
!102 = !{!"llvm.loop.unroll.runtime.disable"}
!103 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !29, i64 0}
!104 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE", !29, i64 0}
!105 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeE", !103, i64 0, !104, i64 8}
!106 = !{!105, !104, i64 8}
!107 = distinct !{null}
!108 = distinct !{!108, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!109 = distinct !{!109, !108, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!110 = distinct !{!110, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!111 = distinct !{!111, !110, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!112 = distinct !{null}
!113 = distinct !{null, null}
!114 = !{!"p1 _ZTSN14grpc_generator7PrinterE", !29, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!109}
!117 = !{!111, !109}
!118 = distinct !{!118, !52}
!119 = distinct !{!119, i1 false, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!120 = distinct !{!120, !119, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!121 = !{!120}
!122 = distinct !{!122, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!123 = distinct !{!123, !122, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!124 = distinct !{!124, i1 false, !"_ZN19grpc_java_generator12_GLOBAL__N_116ServiceClassNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!125 = distinct !{!125, !124, !"_ZN19grpc_java_generator12_GLOBAL__N_116ServiceClassNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!126 = distinct !{!126, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!127 = distinct !{!127, !126, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!128 = distinct !{!128, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!129 = distinct !{!129, !128, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!130 = distinct !{null}
!131 = distinct !{!131, i1 false, !"_ZN19grpc_java_generator12_GLOBAL__N_125MethodPropertiesFieldNameB5cxx11EPKN14grpc_generator6MethodE"}
!132 = distinct !{!132, !131, !"_ZN19grpc_java_generator12_GLOBAL__N_125MethodPropertiesFieldNameB5cxx11EPKN14grpc_generator6MethodE: argument 0"}
!133 = distinct !{null}
!134 = distinct !{!134, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!135 = distinct !{!135, !134, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!136 = distinct !{null}
!137 = distinct !{null, null, null}
!138 = distinct !{!138, !52}
!139 = distinct !{null}
!140 = distinct !{null, null, null, null, null, null}
!141 = distinct !{null, null, null}
!142 = distinct !{!142, !52}
!143 = distinct !{!143, !52}
!144 = distinct !{!144, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!145 = distinct !{!145, !144, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!146 = distinct !{!146, i1 false, !"_ZN19grpc_java_generator12_GLOBAL__N_115LowerMethodNameB5cxx11EPKN14grpc_generator6MethodE"}
!147 = distinct !{!147, !146, !"_ZN19grpc_java_generator12_GLOBAL__N_115LowerMethodNameB5cxx11EPKN14grpc_generator6MethodE: argument 0"}
!148 = distinct !{!148, !52}
!149 = distinct !{!149, i1 false, !"_ZN19grpc_java_generator12_GLOBAL__N_115LowerMethodNameB5cxx11EPKN14grpc_generator6MethodE"}
!150 = distinct !{!150, !149, !"_ZN19grpc_java_generator12_GLOBAL__N_115LowerMethodNameB5cxx11EPKN14grpc_generator6MethodE: argument 0"}
!151 = distinct !{!151, !52}
!152 = distinct !{null, ptr @_ZNSt6vectorISt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EESaIS6_EED2Ev, null, null, null, null, null}
!153 = distinct !{null}
!154 = distinct !{null, null, null}
!155 = distinct !{!155, !52}
!156 = !{!123}
!157 = !{!129, !127, !125}
!158 = !{!132}
!159 = !{!135, !132}
!160 = !{!"_ZTSSt10_Head_baseILm0EPKN14grpc_generator6MethodELb0EE", !55, i64 0}
!161 = !{!160, !55, i64 0}
!162 = !{!145}
!163 = !{!147}
!164 = !{!150}
!165 = distinct !{!165, i1 false, !"_ZN19grpc_java_generator12_GLOBAL__N_128GrpcGetDocLinesForDescriptorB5cxx11EPKN14grpc_generator13CommentHolderE"}
!166 = distinct !{!166, !165, !"_ZN19grpc_java_generator12_GLOBAL__N_128GrpcGetDocLinesForDescriptorB5cxx11EPKN14grpc_generator13CommentHolderE: argument 0"}
!167 = distinct !{null}
!168 = !{!166}
!169 = distinct !{!169, i1 false, !"_ZN19grpc_java_generator12_GLOBAL__N_115GrpcGetDocLinesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!170 = distinct !{!170, !169, !"_ZN19grpc_java_generator12_GLOBAL__N_115GrpcGetDocLinesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!171 = distinct !{!171, i1 false, !"_ZN19grpc_java_generator12_GLOBAL__N_117GrpcEscapeJavadocERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!172 = distinct !{!172, !171, !"_ZN19grpc_java_generator12_GLOBAL__N_117GrpcEscapeJavadocERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!173 = distinct !{!173, !52}
!174 = distinct !{!174, i1 false, !"_ZN19grpc_java_generator12_GLOBAL__N_19GrpcSplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc"}
!175 = distinct !{!175, !174, !"_ZN19grpc_java_generator12_GLOBAL__N_19GrpcSplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc: argument 0"}
!176 = distinct !{!176, !52}
!177 = distinct !{!177, !52}
!178 = distinct !{!178, !52}
!179 = !{!170}
!180 = !{!172}
!181 = !{!172, !170}
!182 = !{!175}
!183 = !{!175, !170}
!184 = distinct !{!184, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!185 = distinct !{!185, !184, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!186 = distinct !{!186, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!187 = distinct !{!187, !186, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!188 = distinct !{!188, i1 false, !"_ZN19grpc_java_generator12_GLOBAL__N_115LowerMethodNameB5cxx11EPKN14grpc_generator6MethodE"}
!189 = distinct !{!189, !188, !"_ZN19grpc_java_generator12_GLOBAL__N_115LowerMethodNameB5cxx11EPKN14grpc_generator6MethodE: argument 0"}
!190 = distinct !{null}
!191 = distinct !{!191, i1 false, !"_ZN19grpc_java_generator12_GLOBAL__N_128GrpcGetDocLinesForDescriptorB5cxx11EPKN14grpc_generator13CommentHolderE"}
!192 = distinct !{!192, !191, !"_ZN19grpc_java_generator12_GLOBAL__N_128GrpcGetDocLinesForDescriptorB5cxx11EPKN14grpc_generator13CommentHolderE: argument 0"}
!193 = distinct !{null, null}
!194 = distinct !{!194, !52}
!195 = distinct !{null}
!196 = distinct !{!196, i1 false, !"_ZN19grpc_java_generator12_GLOBAL__N_115LowerMethodNameB5cxx11EPKN14grpc_generator6MethodE"}
!197 = distinct !{!197, !196, !"_ZN19grpc_java_generator12_GLOBAL__N_115LowerMethodNameB5cxx11EPKN14grpc_generator6MethodE: argument 0"}
!198 = distinct !{null, null, null}
!199 = distinct !{!199, !52}
!200 = !{!185}
!201 = !{!187, !185}
!202 = !{!189}
!203 = !{!192}
!204 = !{!197}
!205 = distinct !{!205, !52}
!206 = distinct !{!206, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!207 = distinct !{!207, !206, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!208 = distinct !{!208, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!209 = distinct !{!209, !208, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!210 = !{!207}
!211 = !{!209}
!212 = !{!209, !207}
!213 = distinct !{!213, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!214 = distinct !{!214, !213, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!215 = distinct !{!215, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!216 = distinct !{!216, !215, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!217 = !{!214}
!218 = !{!216, !214}
!219 = distinct !{!219, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!220 = distinct !{!220, !219, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!221 = distinct !{!221, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!222 = distinct !{!222, !221, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!223 = !{!220}
!224 = !{!222}
!225 = distinct !{!225, !52}
!226 = distinct !{!226, !52}
!227 = distinct !{!227, !52}
!228 = distinct !{!228, !52}
!229 = distinct !{!229, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!230 = distinct !{!230, !229, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!231 = distinct !{!231, !229, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!232 = distinct !{!232, !52}
!233 = distinct !{!233, i1 false, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!234 = distinct !{!234, !233, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!235 = distinct !{!235, !233, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!236 = !{!230}
!237 = !{!231}
!238 = !{!230, !231}
!239 = !{!234}
!240 = !{!235}
!241 = !{!234, !235}
!242 = distinct !{!242, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!243 = distinct !{!243, !242, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!244 = !{!243}
!245 = distinct !{!245, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!246 = distinct !{!246, !245, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!247 = distinct !{!247, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!248 = distinct !{!248, !247, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!249 = !{!246}
!250 = !{!248}
!251 = !{!248, !246}
!252 = distinct !{!252, !52}
!253 = distinct !{!253, !98}
!254 = distinct !{!254, !52}
!255 = distinct !{ptr @_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_ED2Ev, null, null, null, null, null}
!256 = !{!97, !33, i64 0}
!257 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!258 = distinct !{!258, !52}
!259 = distinct !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_, null}
!260 = distinct !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_, null, null, null, null, null}
!261 = distinct !{ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEET0_T_SM_SM_SM_SL_T1_, null, null, null, null, null, null, null, null, null, null}
end_hunk_4
