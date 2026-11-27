Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/chat?download=true
inline.NumInlined: 1363
inline.NumDeleted: 546
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11ChatBackend18addUnparsedMessageENSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40

bb.t:                                             ; preds = %bb.p
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.az
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i38: ; preds = %bb.t
  %i.cf = load i64, ptr %i.az, align 8, !tbaa !47
  %i.cg = shl i64 %i.cf, 2
  %i.ch = add i64 %i.cg, 4
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i38, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.s ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i38 ], [ %i.cc, %bb.t ] ; 2 uses
  %i.ci = load ptr, ptr %3, align 8, !tbaa !74    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ak
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40
  %i.ck = load i64, ptr %i.ak, align 8, !tbaa !47
  %i.cl = shl i64 %i.ck, 2
  %i.cm = add i64 %i.cl, 4
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i41, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.r ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i41 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.cn = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.u
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit43
  %i.cp = load i64, ptr %i.u, align 8, !tbaa !47
  %i.cq = shl i64 %i.cp, 2
  %i.cr = add i64 %i.cq, 4
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.y

.thread:                                          ; preds = %..thread_crit_edge, %bb.d, %bb.e, %bb.b
  %i.cs = phi i64 [ %.pre73, %..thread_crit_edge ], [ %.pre73, %bb.d ], [ %.pre73, %bb.e ], [ %i.f, %bb.b ] ; 5 uses
  %i.ct = phi ptr [ %.pre, %..thread_crit_edge ], [ %.pre71, %bb.d ], [ %.pre71, %bb.e ], [ %.pre72, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.cu, ptr %5, align 8, !tbaa !78
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.cv, align 8, !tbaa !75
  store i32 0, ptr %i.cu, align 8, !tbaa !80
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.cw, ptr %6, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.cs, ptr %i.a, align 8, !tbaa !44
  %i.cx = icmp ugt i64 %i.cs, 3
  br i1 %i.cx, label %.noexc.i55, label %._crit_edge.i.i52

.noexc.i55:                                       ; preds = %.thread
  %i.cy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc56 unwind label %bb.z   ; 2 uses

.noexc56:                                         ; preds = %.noexc.i55
  store ptr %i.cy, ptr %6, align 8, !tbaa !74
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  store i64 %i.cz, ptr %i.cw, align 8, !tbaa !47
  br label %._crit_edge.i.i52

._crit_edge.i.i52:                                ; preds = %.thread.thread, %.noexc56, %.thread
  %i.da = phi ptr [ %i.cw, %.noexc56 ], [ %i.cw, %.thread ], [ %i.j, %.thread.thread ] ; 4 uses
  %i.db = phi ptr [ %i.cu, %.noexc56 ], [ %i.cu, %.thread ], [ %i.h, %.thread.thread ] ; 4 uses
  %i.dc = phi ptr [ %i.ct, %.noexc56 ], [ %i.ct, %.thread ], [ %.pre72, %.thread.thread ] ; 2 uses
  %i.dd = phi i64 [ %i.cs, %.noexc56 ], [ %i.cs, %.thread ], [ %i.f, %.thread.thread ] ; 2 uses
  %i.de = phi i64 [ %i.cz, %.noexc56 ], [ %i.cs, %.thread ], [ %i.f, %.thread.thread ] ; 2 uses
  %i.df = phi ptr [ %i.cy, %.noexc56 ], [ %i.cw, %.thread ], [ %i.j, %.thread.thread ] ; 4 uses
  switch i64 %i.dd, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i52
  %i.dg = load i32, ptr %i.dc, align 4, !tbaa !80
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !80
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i52
  %i.dh = call ptr @wmemcpy(ptr noundef %i.df, ptr noundef %i.dc, i64 noundef %i.dd) #26 ; 0 uses
  %.pre6.i.i53 = load i64, ptr %i.a, align 8, !tbaa !44
  %.pre7.i.i54 = load ptr, ptr %6, align 8, !tbaa !74
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i52
  %i.di = phi ptr [ %i.df, %._crit_edge.i.i52 ], [ %i.df, %bb.u ], [ %.pre7.i.i54, %bb.v ]
  %i.dj = phi i64 [ %i.de, %._crit_edge.i.i52 ], [ %i.de, %bb.u ], [ %.pre6.i.i53, %bb.v ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !75
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dj
  store i32 0, ptr %i.dl, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  invoke void @_ZN11ChatBackend10addMessageERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEES5_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 %6)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.dm = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.da
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i58: ; preds = %bb.x
  %i.do = load i64, ptr %i.da, align 8, !tbaa !47
  %i.dp = shl i64 %i.do, 2
  %i.dq = add i64 %i.dp, 4
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit60: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i58
  %i.dr = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.db
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit60
  %i.dt = load i64, ptr %i.db, align 8, !tbaa !47
  %i.du = shl i64 %i.dt, 2
  %i.dv = add i64 %i.du, 4
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i36, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit63
  ret void

bb.z:                                             ; preds = %.noexc.i55
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit66

bb.aa:                                            ; preds = %bb.w
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.da
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i64: ; preds = %bb.aa
  %i.ea = load i64, ptr %i.da, align 8, !tbaa !47
  %i.eb = shl i64 %i.ea, 2
  %i.ec = add i64 %i.eb, 4
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit66: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i64, %bb.z
  %i.ed = phi ptr [ %i.cu, %bb.z ], [ %i.db, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i64 ], [ %i.db, %bb.aa ] ; 2 uses
  %.pn19 = phi { ptr, i32 } [ %i.dw, %bb.z ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i64 ], [ %i.dx, %bb.aa ]
  %i.ee = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.ed
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit66
  %i.eg = load i64, ptr %i.ed, align 8, !tbaa !47
  %i.eh = shl i64 %i.eg, 2
  %i.ei = add i64 %i.eh, 4
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #27
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit46
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit69 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit46 ]
  resume { ptr, i32 } %.pn19.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(113) ptr @_ZN11ChatBackend16getConsoleBufferEv(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(360) %0) local_unnamed_addr #14 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(113) ptr @_ZN11ChatBackend15getRecentBufferEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(360) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11ChatBackend13getRecentChatEv(ptr dead_on_unwind noalias nonnull writable sret(%class.EnrichedString) align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(360) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.EnrichedString, align 8      ; 16 uses
  %3 = alloca %"class.video::SColor", align 4     ; 9 uses
  %4 = alloca %class.EnrichedString, align 8      ; 16 uses
  %5 = alloca %"class.video::SColor", align 4     ; 9 uses
  %6 = alloca %class.EnrichedString, align 8      ; 10 uses
  %7 = alloca %"class.video::SColor", align 4     ; 5 uses
  tail call void @_ZN14EnrichedStringC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !54   ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 168
  %i.i = and i64 %i.h, 4294967295
  %.not31 = icmp eq i64 %i.i, 0
  br i1 %.not31, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %9 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = icmp eq i64 %.pre, 0
  br i1 %i.t, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 -1, ptr %5, align 4, !tbaa !35
  invoke void @_ZN14EnrichedStringC1ESt17basic_string_viewIwSt11char_traitsIwEERKN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 1, ptr nonnull @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %.noexc14.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14.peel:                                    ; preds = %bb.c
  invoke void @_ZN14EnrichedStringpLERKS_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %bb.d unwind label %.loopexit.split-lp40.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.noexc14.peel
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i.i.i10.peel = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i10.peel, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i11.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i11.peel

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i11.peel: ; preds = %bb.e, %bb.d
  %i.z = load ptr, ptr %4, align 8, !tbaa !74     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.m
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i13.peel, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i12.peel

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i12.peel: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i11.peel
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !47
  %i.ac = shl i64 %i.ab, 2
  %i.ad = add i64 %i.ac, 4
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #27
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i13.peel: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i11.peel
  %10 = load i64, ptr %i.n, align 8, !tbaa !75
  %11 = icmp ult i64 %10, 4
  call void @llvm.assume(i1 %11)
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i13.peel, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i12.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  invoke void @_ZN14EnrichedStringpLERKS_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.s)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 -1, ptr %3, align 4, !tbaa !35
  invoke void @_ZN14EnrichedStringC1ESt17basic_string_viewIwSt11char_traitsIwEERKN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 2, ptr nonnull @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %.noexc22.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc22.peel:                                    ; preds = %bb.g
  invoke void @_ZN14EnrichedStringpLERKS_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %bb.h unwind label %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %.noexc22.peel
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !72  ; 3 uses
  %.not.i.i.i.i.i18.peel = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i18.peel, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i19.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i19.peel

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i19.peel: ; preds = %bb.i, %bb.h
  %i.aj = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.q
  br i1 %i.ak, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i21.peel, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i20.peel

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i20.peel: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i19.peel
  %i.al = load i64, ptr %i.q, align 8, !tbaa !47
  %i.am = shl i64 %i.al, 2
  %i.an = add i64 %i.am, 4
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #27
  br label %_ZN14EnrichedStringpLESt17basic_string_viewIwSt11char_traitsIwEE.exit25.peel

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i21.peel: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i19.peel
  %12 = load i64, ptr %i.r, align 8, !tbaa !75
  %13 = icmp ult i64 %12, 4
  call void @llvm.assume(i1 %13)
  br label %_ZN14EnrichedStringpLESt17basic_string_viewIwSt11char_traitsIwEE.exit25.peel

_ZN14EnrichedStringpLESt17basic_string_viewIwSt11char_traitsIwEE.exit25.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i21.peel, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i20.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.j

bb.j:                                             ; preds = %_ZN14EnrichedStringpLESt17basic_string_viewIwSt11char_traitsIwEE.exit25.peel, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  invoke void @_ZN14EnrichedStringpLERKS_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.ao)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 168
  %i.av = and i64 %i.au, 4294967294
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.k, %bb.v
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 1, %bb.k ] ; 2 uses
  %i.aw = phi ptr [ %i.ci, %bb.v ], [ %i.aq, %bb.k ]
  %i.ax = getelementptr inbounds nuw [168 x i8], ptr %i.aw, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i32 -1, ptr %7, align 4, !tbaa !35
  invoke void @_ZN14EnrichedStringC1ESt17basic_string_viewIwSt11char_traitsIwEERKN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80) %6, i64 1, ptr nonnull @.str.13, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.peel.next
  invoke void @_ZN14EnrichedStringpLERKS_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %.noexc
  %i.ay = load ptr, ptr %8, align 8, !tbaa !72    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %9, align 8, !tbaa !73
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bc) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i: ; preds = %bb.m, %bb.l
  %i.bd = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.j
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !47
  %i.bg = shl i64 %i.bf, 2
  %i.bh = add i64 %i.bg, 4
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #27
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i

bb.n:                                             ; preds = %.noexc
  %lpad.loopexit36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.o, %.peel.next, %bb.u, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i13, %bb.c, %bb.f, %bb.g, %bb.j
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp40.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit36, %bb.n ], [ %lpad.loopexit.split-lp74, %.loopexit.split-lp40.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp72, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #26
  resume { ptr, i32 } %eh.lpad-body

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !75
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.u, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i32 -1, ptr %5, align 4, !tbaa !35
  invoke void @_ZN14EnrichedStringC1ESt17basic_string_viewIwSt11char_traitsIwEERKN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 1, ptr nonnull @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %bb.o
  invoke void @_ZN14EnrichedStringpLERKS_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %bb.p unwind label %.loopexit.split-lp40.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %.noexc14
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !72  ; 3 uses
  %.not.i.i.i.i.i10 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i10, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i11, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i11

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i11: ; preds = %bb.q, %bb.p
  %i.br = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.m
  br i1 %i.bs, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i13, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i12

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i12: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i11
  %i.bt = load i64, ptr %i.m, align 8, !tbaa !47
  %i.bu = shl i64 %i.bt, 2
  %i.bv = add i64 %i.bu, 4
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #27
  br label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i13

.loopexit.split-lp40.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc14, %.noexc14.peel
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.body

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i13: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i11, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  invoke void @_ZN14EnrichedStringpLERKS_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.bi)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 -1, ptr %3, align 4, !tbaa !35
  invoke void @_ZN14EnrichedStringC1ESt17basic_string_viewIwSt11char_traitsIwEERKN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 2, ptr nonnull @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc22:                                         ; preds = %bb.r
  invoke void @_ZN14EnrichedStringpLERKS_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %bb.s unwind label %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %.noexc22
  %i.bw = load ptr, ptr %i.o, align 8, !tbaa !72  ; 3 uses
  %.not.i.i.i.i.i18 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i18, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i19, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.ca) #27
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i19

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i19: ; preds = %bb.t, %bb.s
  %i.cb = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.q
  br i1 %i.cc, label %_ZN14EnrichedStringpLESt17basic_string_viewIwSt11char_traitsIwEE.exit25, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i20

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i20: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i19
  %i.cd = load i64, ptr %i.q, align 8, !tbaa !47
  %i.ce = shl i64 %i.cd, 2
  %i.cf = add i64 %i.ce, 4
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #27
  br label %_ZN14EnrichedStringpLESt17basic_string_viewIwSt11char_traitsIwEE.exit25

.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc22, %.noexc22.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.body

_ZN14EnrichedStringpLESt17basic_string_viewIwSt11char_traitsIwEE.exit25: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i19, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.u

bb.u:                                             ; preds = %_ZN14EnrichedStringpLESt17basic_string_viewIwSt11char_traitsIwEE.exit25, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  invoke void @_ZN14EnrichedStringpLERKS_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.cg)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = sdiv exact i64 %i.cl, 168
  %i.cn = and i64 %i.cm, 4294967295
  %i.co = icmp samesign ult i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %.peel.next, label %._crit_edge, !llvm.loop !181

._crit_edge:                                      ; preds = %bb.v, %bb.k, %bb.a
  ret void
}

declare void @_ZN14EnrichedStringC1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

declare void @_ZN14EnrichedStringpLERKS_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(120) ptr @_ZN11ChatBackend9getPromptEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(360) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11ChatBackend8reformatEjj(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN10ChatBuffer8reformatEjj(ptr noundef nonnull align 8 dereferenceable(113) %0, i32 noundef %1, i32 noundef %2)
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load i64, ptr %i.b, align 8, !tbaa !75   ; 2 uses
  %.not.i = icmp ult i64 %i.c, %i.a
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i32 0, ptr %i.d, align 8, !tbaa !107
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.f = load i32, ptr %i.e, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 340
  store i32 %i.f, ptr %i.g, align 4, !tbaa !108
  br label %_ZN10ChatPrompt8reformatEj.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.i = load i32, ptr %i.h, align 8, !tbaa !101
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !103  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 72
  %.not.i.i = icmp ugt i64 %i.r, %i.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %i.j
  %i.u = select i1 %.not.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !75
  %i.x = trunc i64 %i.w to i32                    ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !108  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !107
  %i.ac = trunc nuw i64 %i.c to i32
  %i.ad = sub nuw i32 %1, %i.ac                   ; 4 uses
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !107
  %.not.not.i.i = icmp sgt i32 %i.ad, %i.x
  br i1 %.not.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.y, align 4, !tbaa !108
  br label %_ZN10ChatPrompt8reformatEj.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = add nsw i32 %i.ab, %i.z
  %.not5.not.i = icmp sgt i32 %i.ae, %i.x
  %spec.select.i = select i1 %.not5.not.i, i32 %i.x, i32 %i.z
  %reass.sub = sub i32 %i.x, %i.ad
  %i.af = add i32 %reass.sub, 1
  %..i.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !106 ; 2 uses
  %i.ai = tail call i32 @llvm.smin.i32(i32 %..i.i, i32 %i.ah)
  %reass.sub3 = sub i32 %i.ah, %i.ad
  %i.aj = add i32 %reass.sub3, 1
  %i.ak = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.aj)
  %i.al = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 0)
  store i32 %i.al, ptr %i.y, align 4, !tbaa !108
  br label %_ZN10ChatPrompt8reformatEj.exit

_ZN10ChatPrompt8reformatEj.exit:                  ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11ChatBackend15clearRecentChatEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(360) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP8ChatLineEEvT_S4_(ptr noundef %i.b, ptr noundef %i.d)
          to label %_ZSt8_DestroyIP8ChatLineS0_EvT_S2_RSaIT0_E.exit.i.i.i unwind label %bb.c

_ZSt8_DestroyIP8ChatLineS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %bb.b
  store ptr %i.b, ptr %i.c, align 8, !tbaa !55
  br label %_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #28
  unreachable

_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit.i:    ; preds = %_ZSt8_DestroyIP8ChatLineS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51   ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1.i, label %_ZN10ChatBuffer5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit.i, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.h, %_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit.i ] ; 2 uses
  tail call void @_ZNSt6vectorI21ChatFormattedFragmentSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %.05.i.i.i.i.i) #26
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.h, ptr %i.i, align 8, !tbaa !51
  br label %_ZN10ChatBuffer5clearEv.exit

_ZN10ChatBuffer5clearEv.exit:                     ; preds = %_ZNSt6vectorI8ChatLineSaIS0_EE5clearEv.exit.i, %_ZSt8_DestroyIP17ChatFormattedLineS0_EvT_S2_RSaIT0_E.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.l, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 1, ptr %i.m, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11ChatBackend13applySettingsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(360) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = load ptr, ptr @g_settings, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 20, ptr %i.a, align 8, !tbaa !44
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !46
  %i.e = load i64, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.d, ptr noundef nonnull align 1 dereferenceable(20) @.str.14, i64 20, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !48
  %i.g = load ptr, ptr %1, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.i = invoke noundef i32 @_ZNK8Settings6getU32ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.c

end_hunk_0
