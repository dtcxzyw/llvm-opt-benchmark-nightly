inline.NumInlined: 11181
inline.NumDeleted: 2147
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNK6casadi16FunctionInternal12from_compactExxRKNS_8SparsityE:bb.a
  %.pn57.pn.pn.pn.pn.pn.pn153.ph = phi { ptr, i32 } [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.thread ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.thread ], [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %.pn57.pn.pn.pn.pn.pn.pn153 = phi { ptr, i32 } [ %.pn57.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ], [ %.pn57.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.pn57.pn.pn.pn.pn.pn.pn153.ph, %.sink.split214 ]
  call void @__cxa_free_exception(ptr %i.ds) #38
  br label %bb.bi

bb.ay:                                            ; preds = %_ZNK6casadi16FunctionInternal6nnz_inEx.exit
  %i.fp = load ptr, ptr %i.cy, align 8, !tbaa !133
  %i.fq = load ptr, ptr %i.cx, align 8, !tbaa !132 ; 2 uses
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = ashr exact i64 %i.ft, 3                 ; 2 uses
  %.not.i.i.i.i128 = icmp ult i64 %3, %i.fu
  br i1 %.not.i.i.i.i128, label %_ZNK6casadi16FunctionInternal11sparsity_inEx.exit.i129, label %.invoke

.invoke:                                          ; preds = %bb.d, %bb.a, %bb.ay, %bb.ah, %bb.ae, %bb.v
  %i.fv = phi i64 [ %3, %bb.ah ], [ %3, %bb.ae ], [ %2, %bb.v ], [ %3, %bb.ay ], [ %2, %bb.a ], [ %2, %bb.d ]
  %i.fw = phi i64 [ %i.do, %bb.ah ], [ %i.de, %bb.ae ], [ %i.bz, %bb.v ], [ %i.fu, %bb.ay ], [ %i.i, %bb.a ], [ %i.s, %bb.d ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %i.fv, i64 noundef %i.fw) #37
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

_ZNK6casadi16FunctionInternal11sparsity_inEx.exit.i129: ; preds = %bb.ay
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %3
  %i.fy = invoke noundef i64 @_ZNK6casadi8Sparsity5numelEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fx)
          to label %_ZNK6casadi16FunctionInternal8numel_inEx.exit132 unwind label %bb.n

_ZNK6casadi16FunctionInternal8numel_inEx.exit132: ; preds = %_ZNK6casadi16FunctionInternal11sparsity_inEx.exit.i129
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  %i.fz = load ptr, ptr %i.cy, align 8, !tbaa !133
  %i.ga = load ptr, ptr %i.cx, align 8, !tbaa !132 ; 2 uses
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = ashr exact i64 %i.gd, 3                 ; 2 uses
  %.not.i.i.i133 = icmp ult i64 %3, %i.ge
  br i1 %.not.i.i.i133, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNK6casadi16FunctionInternal8numel_inEx.exit132
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %3, i64 noundef %i.ge) #37
          to label %.noexc134 unwind label %bb.be

.noexc134:                                        ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %_ZNK6casadi16FunctionInternal8numel_inEx.exit132
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %3
  invoke void @_ZNK6casadi8Sparsity4findEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.145") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %i.gf, i1 noundef zeroext false)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN6casadi8Sparsity14enlargeColumnsExRKSt6vectorIxSaIxEEb(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.fy, ptr noundef nonnull align 8 dereferenceable(24) %26, i1 noundef zeroext false)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.gg = load ptr, ptr %26, align 8, !tbaa !497  ; 3 uses
  %.not.i.i.i135 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i135, label %_ZNSt6vectorIxSaIxEED2Ev.exit136, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gh = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !500
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gg to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gl) #39
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit136

_ZNSt6vectorIxSaIxEED2Ev.exit136:                 ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  br label %bb.bh

bb.be:                                            ; preds = %bb.az, %bb.ba
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit138

bb.bf:                                            ; preds = %bb.bb
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.go = load ptr, ptr %26, align 8, !tbaa !497  ; 3 uses
  %.not.i.i.i137 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i137, label %_ZNSt6vectorIxSaIxEED2Ev.exit138, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gp = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !500
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.go to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gt) #39
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit138

_ZNSt6vectorIxSaIxEED2Ev.exit138:                 ; preds = %bb.bg, %bb.bf, %bb.be
  %.pn65 = phi { ptr, i32 } [ %i.gm, %bb.be ], [ %i.gn, %bb.bf ], [ %i.gn, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  br label %bb.bi

bb.bh:                                            ; preds = %bb.af, %_ZNSt6vectorIxSaIxEED2Ev.exit136
  ret void

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %bb.u, %_ZNSt6vectorIxSaIxEED2Ev.exit138, %_ZNSt6vectorIxSaIxEED2Ev.exit99, %bb.n
  %.pn65.pn = phi { ptr, i32 } [ %.pn65, %_ZNSt6vectorIxSaIxEED2Ev.exit138 ], [ %i.x, %bb.n ], [ %.pn57.pn.pn.pn.pn.pn.pn153, %bb.ax ], [ %.pn57.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.pn54, %_ZNSt6vectorIxSaIxEED2Ev.exit99 ], [ %.pn.pn.pn.pn.pn.pn.pn141, %bb.u ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88 ], [ %.pn57.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ]
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #40
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %bb.bi
  resume { ptr, i32 } %.pn65.pn

bb.bk:                                            ; preds = %bb.aq, %bb.m
  unreachable
}

declare void @_ZN6casadi8Sparsity11enlargeRowsExRKSt6vectorIxSaIxEEb(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN6casadi8Sparsity14enlargeColumnsExRKSt6vectorIxSaIxEEb(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi16FunctionInternal12jac_sparsityExxbb(ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.casadi::Sparsity", align 8  ; 8 uses
  %6 = alloca %"class.casadi::Sparsity", align 8  ; 16 uses
  %7 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %8 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %9 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %10 = alloca %"class.casadi::Sparsity", align 8 ; 8 uses
  %11 = alloca %"class.casadi::Sparsity", align 8 ; 11 uses
  %12 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %13 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %14 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %15 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %16 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !304
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !304
  %i.g = icmp eq ptr %i.d, %i.f
  %.pre175.pre176 = load i64, ptr %i.b, align 8, !tbaa !240 ; 3 uses
  br i1 %i.g, label %bb.c, label %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE6resizeEm.exit

bb.b:                                             ; preds = %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE6resizeEm.exit.1
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %i.u, i64 noundef %i.ad) #37
  unreachable

_ZNSt6vectorIN6casadi8SparsityESaIS1_EE2atEm.exit: ; preds = %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE6resizeEm.exit.1
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.u ; 11 uses
  %i.i = tail call noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  br i1 %i.i, label %bb.g, label %bb.bl

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.c, align 8, !tbaa !268
  %i.k = mul i64 %i.j, %.pre175.pre176            ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt6vectorIN6casadi8SparsityESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.k)
  %.pre175.pre = load i64, ptr %i.b, align 8, !tbaa !240
  br label %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN6casadi8SparsityESaIS1_EE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.a
  %.pre175 = phi i64 [ %.pre175.pre176, %bb.a ], [ %.pre175.pre, %bb.d ], [ %.pre175.pre176, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !304
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !304
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.e, label %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE6resizeEm.exit.1

bb.e:                                             ; preds = %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE6resizeEm.exit
  %i.q = load i64, ptr %i.c, align 8, !tbaa !268
  %i.r = mul i64 %i.q, %.pre175                   ; 2 uses
  %.not198 = icmp eq i64 %i.r, 0
  br i1 %.not198, label %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE6resizeEm.exit.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt6vectorIN6casadi8SparsityESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.r)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !240
  br label %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE6resizeEm.exit.1

_ZNSt6vectorIN6casadi8SparsityESaIS1_EE6resizeEm.exit.1: ; preds = %bb.e, %bb.f, %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE6resizeEm.exit
  %i.s = phi i64 [ %.pre175, %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE6resizeEm.exit ], [ %.pre, %bb.f ], [ %.pre175, %bb.e ]
  %i.t = mul i64 %i.s, %1
  %i.u = add i64 %i.t, %2                         ; 6 uses
  %i.v = zext i1 %3 to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !133
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !132  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3                 ; 2 uses
  %.not.i.i = icmp ult i64 %i.u, %i.ad
  br i1 %.not.i.i, label %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE2atEm.exit, label %bb.b

bb.g:                                             ; preds = %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE2atEm.exit
  %i.ae = xor i1 %3, true
  %i.af = zext i1 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !133
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !132 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3                 ; 2 uses
  %.not.i.i96 = icmp ult i64 %i.u, %i.an
  br i1 %.not.i.i96, label %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE2atEm.exit97, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %i.u, i64 noundef %i.an) #37
  unreachable

_ZNSt6vectorIN6casadi8SparsityESaIS1_EE2atEm.exit97: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.u ; 4 uses
  %i.ap = tail call noundef zeroext i1 @_ZNK6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE7is_nullEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
  br i1 %i.ap, label %bb.p, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE2atEm.exit97
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  br i1 %3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @_ZNK6casadi16FunctionInternal10to_compactExxRKNS_8SparsityE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @_ZNK6casadi16FunctionInternal12from_compactExxRKNS_8SparsityE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1312) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN6casadi8SparsityaSEOS0_.exit unwind label %bb.n ; 0 uses

_ZN6casadi8SparsityaSEOS0_.exit:                  ; preds = %bb.l
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZN6casadi8SparsityaSEOS0_.exit
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #40
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %_ZN6casadi8SparsityaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %bb.bl

bb.n:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit98 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #40
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit98: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %bb.ct

bb.p:                                             ; preds = %_ZNSt6vectorIN6casadi8SparsityESaIS1_EE2atEm.exit97
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @_ZN6casadi8SparsityC1Ex(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 0)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !49
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !52
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !49 ; 2 uses
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = shl nsw i64 %i.be, 3
  %i.bg = zext i32 %i.ba to i64
  %i.bh = add nsw i64 %i.bf, %i.bg                ; 2 uses
  %.not.i.i99 = icmp ult i64 %1, %i.bh
  br i1 %.not.i.i99, label %bb.q, label %.invoke

bb.q:                                             ; preds = %bb.p
  %i.bi = sdiv i64 %1, 64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bi
  %i.bk = and i64 %1, -9223372036854775745
  %i.bl = icmp ugt i64 %i.bk, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.bl, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bj, i64 %storemerge.idx.i.i.i.i.i.i
  %i.bm = and i64 %1, 63
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !12
  %i.bp = and i64 %i.bo, %i.bn
  %.not171 = icmp eq i64 %i.bp, 0
  br i1 %.not171, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !49
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !52
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !49 ; 2 uses
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = shl nsw i64 %i.by, 3
  %i.ca = zext i32 %i.bu to i64
  %i.cb = add nsw i64 %i.bz, %i.ca                ; 2 uses
  %.not.i.i100 = icmp ult i64 %2, %i.cb
  br i1 %.not.i.i100, label %bb.s, label %.invoke

bb.s:                                             ; preds = %bb.r
  %i.cc = sdiv i64 %2, 64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.cc
  %i.ce = and i64 %2, -9223372036854775745
  %i.cf = icmp ugt i64 %i.ce, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i101 = select i1 %i.cf, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i102 = getelementptr inbounds i8, ptr %i.cd, i64 %storemerge.idx.i.i.i.i.i.i101
  %i.cg = and i64 %2, 63
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = load i64, ptr %storemerge.i.i.i.i.i.i102, align 8, !tbaa !12
  %i.cj = and i64 %i.ci, %i.ch
  %.not172 = icmp eq i64 %i.cj, 0
  br i1 %.not172, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !133
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !132 ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 3                 ; 2 uses
  %.not.i.i.i.i105 = icmp ult i64 %1, %i.cr
  br i1 %.not.i.i.i.i105, label %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i, label %.invoke199

_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i: ; preds = %bb.t
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %1
  %i.ct = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs)
          to label %_ZNK6casadi16FunctionInternal7nnz_outEx.exit unwind label %bb.x

_ZNK6casadi16FunctionInternal7nnz_outEx.exit:     ; preds = %_ZNK6casadi16FunctionInternal12sparsity_outEx.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !133
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !132 ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 3                 ; 2 uses
  %.not.i.i.i.i108 = icmp ult i64 %2, %i.db
  br i1 %.not.i.i.i.i108, label %_ZNK6casadi16FunctionInternal11sparsity_inEx.exit.i, label %.invoke199

.invoke199:                                       ; preds = %_ZNK6casadi16FunctionInternal7nnz_outEx.exit, %bb.t
  %i.dc = phi i64 [ %1, %bb.t ], [ %2, %_ZNK6casadi16FunctionInternal7nnz_outEx.exit ]
  %i.dd = phi i64 [ %i.cr, %bb.t ], [ %i.db, %_ZNK6casadi16FunctionInternal7nnz_outEx.exit ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.784, i64 noundef %i.dc, i64 noundef %i.dd) #37
          to label %.cont200 unwind label %bb.x

.cont200:                                         ; preds = %.invoke199
  unreachable

_ZNK6casadi16FunctionInternal11sparsity_inEx.exit.i: ; preds = %_ZNK6casadi16FunctionInternal7nnz_outEx.exit
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %2
  %i.df = invoke noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.de)
          to label %_ZNK6casadi16FunctionInternal6nnz_inEx.exit unwind label %bb.x

_ZNK6casadi16FunctionInternal6nnz_inEx.exit:      ; preds = %_ZNK6casadi16FunctionInternal11sparsity_inEx.exit.i
  invoke void @_ZN6casadi8SparsityC1Exx(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.ct, i64 noundef %i.df)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNK6casadi16FunctionInternal6nnz_inEx.exit
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %_ZN6casadi8SparsityaSEOS0_.exit112 unwind label %bb.y ; 0 uses

_ZN6casadi8SparsityaSEOS0_.exit112:               ; preds = %bb.u
end_hunk_0
