inline.NumInlined: 1436
inline.NumDeleted: 664
begin_hunk_0_@_ZN6Assimp3MD59MD5Parser11ParseHeaderEv:bb.a
  br i1 %.not.i.i, label %bb.aa, label %bb.w, !llvm.loop !9

bb.aa:                                            ; preds = %bb.z, %bb.w
  %.119.i.i = phi ptr [ %scevgep.i.i, %bb.z ], [ %.018.i.i, %bb.w ]
  store ptr %.119.i.i, ptr %i.b, align 8
  br label %_ZN6Assimp3MD59MD5Parser20SkipSpacesAndLineEndEv.exit

_ZN6Assimp3MD59MD5Parser20SkipSpacesAndLineEndEv.exit: ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread
  ret void

bb.ab:                                            ; preds = %bb.u
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %1, align 8               ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.ax
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.ab
  %i.bz = load i64, ptr %i.ax, align 8
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.bw
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3MD59MD5Parser12ParseSectionERNS0_7SectionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 4)) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4
  store i32 %i.d, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 15 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %bb.a
  %i.i = phi ptr [ %i.k, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ], [ %i.f, %bb.a ] ; 3 uses
  %i.j = load i8, ptr %i.i, align 1
  switch i8 %i.j, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 10, label %bb.c
    i8 0, label %bb.c
    i8 12, label %bb.c
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit:         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  store ptr %i.k, ptr %i.e, align 8
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %.critedge28, label %bb.b, !llvm.loop !10

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.p, ptr %2, align 8
  %i.q = icmp eq ptr %i.f, null
  br i1 %i.q, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.41) #27
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.o, ptr %i.b, align 8
  %i.r = icmp ugt i64 %i.o, 15
  br i1 %i.r, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.s, ptr %2, align 8
  %i.t = load i64, ptr %i.b, align 8
  store i64 %i.t, ptr %i.p, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.d
  %i.u = phi ptr [ %i.s, %.noexc.i ], [ %i.p, %bb.d ] ; 2 uses
  switch i64 %i.o, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.v = load i8, ptr %i.f, align 1
  store i8 %i.v, ptr %i.u, align 1
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull align 1 %i.f, i64 %i.o, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.w = load i64, ptr %i.b, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.w, ptr %i.x, align 8
  %i.y = load ptr, ptr %2, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  %i.ae = load ptr, ptr %2, align 8               ; 5 uses
  %i.af = icmp eq ptr %i.ae, %i.p                 ; 2 uses
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.g
  br i1 %i.af, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.g
  br i1 %i.af, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ag = load i64, ptr %i.x, align 8             ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  switch i64 %i.ag, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ai = load i8, ptr %i.ae, align 1
  store i8 %i.ai, ptr %i.ab, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ae, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.aj = load i64, ptr %i.x, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.aj, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.aa, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1
  %.pre.i = load ptr, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ae, ptr %i.aa, align 8
  %i.ao = load <2 x i64>, ptr %i.x, align 8
  store <2 x i64> %i.ao, ptr %i.an, align 8
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ap = load i64, ptr %i.ac, align 8
  store ptr %i.ae, ptr %i.aa, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load <2 x i64>, ptr %i.x, align 8
  store <2 x i64> %i.ar, ptr %i.aq, align 8
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ab, ptr %2, align 8
  store i64 %i.ap, ptr %i.p, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.p, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.as = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ab, %bb.k ], [ %i.p, %bb.l ]
  store i64 0, ptr %i.x, align 8
  store i8 0, ptr %i.as, align 1
  %i.at = load ptr, ptr %2, align 8               ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.p
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.av = load i64, ptr %i.p, align 8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.promoted71 = load ptr, ptr %i.e, align 8
  %4 = load ptr, ptr %i.g, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = phi ptr [ %i.be, %bb.n ], [ %.promoted71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1             ; 2 uses
  switch i8 %i.ay, label %.preheader55 [
    i8 32, label %bb.n
    i8 9, label %bb.n
  ]

.preheader55:                                     ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 3 uses
  store ptr %i.be, ptr %i.e, align 8
  %i.bf = icmp eq ptr %i.be, %4
  br i1 %i.bf, label %.critedge28, label %bb.m, !llvm.loop !11

bb.o:                                             ; preds = %.preheader55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.bg = phi i8 [ %i.ay, %.preheader55 ], [ %.pre93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ]
  %.promoted72 = phi ptr [ %i.ax, %.preheader55 ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ] ; 6 uses
  switch i8 %i.bg, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.preheader [
    i8 123, label %bb.p
    i8 32, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread.loopexit
    i8 9, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread.loopexit
    i8 13, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread.loopexit
    i8 10, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread.loopexit
    i8 0, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread.loopexit
    i8 12, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread.loopexit
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.preheader: ; preds = %bb.o
  %5 = load ptr, ptr %i.g, align 8
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %.promoted72, i64 1 ; 3 uses
  store ptr %i.bh, ptr %i.e, align 8
  %i.bi = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %.critedge28, label %.preheader52

.preheader52:                                     ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.preheader52
  %i.bm = phi ptr [ %i.bi, %.preheader52 ], [ %.be, %.critedge.backedge ] ; 2 uses
  %.promoted73 = phi ptr [ %i.bh, %.preheader52 ], [ %.promoted73.be, %.critedge.backedge ]
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.r
  %i.bn = phi ptr [ %.promoted73, %.critedge ], [ %i.bp, %bb.r ] ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 1
  switch i8 %i.bo, label %bb.t [
    i8 32, label %bb.r
    i8 9, label %bb.r
    i8 13, label %bb.r
    i8 10, label %bb.r
    i8 0, label %bb.r
    i8 12, label %bb.r
    i8 125, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 3 uses
  store ptr %i.bp, ptr %i.e, align 8
  %i.bq = icmp eq ptr %i.bp, %i.bm
  br i1 %i.bq, label %.critedge28, label %bb.q, !llvm.loop !12

bb.s:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  store ptr %i.br, ptr %i.e, align 8
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread

bb.t:                                             ; preds = %bb.q
  %i.bs = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6Assimp3MD57ElementESaIS2_EE12emplace_backIJEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bk) ; 0 uses
  %i.bt = load ptr, ptr %i.bl, align 8            ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -24
  %i.bv = load i32, ptr %i.c, align 4
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -8
  store i32 %i.bv, ptr %i.bw, align 8
  %i.bx = load ptr, ptr %i.e, align 8
  store ptr %i.bx, ptr %i.bu, align 8
  %i.by = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bt, i64 -16
  store ptr %i.by, ptr %i.bz, align 8
  %.promoted74 = load ptr, ptr %i.e, align 8
  br label %bb.u

bb.u:                                             ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %bb.t
  %i.ca = phi ptr [ %i.cc, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.promoted74, %bb.t ] ; 5 uses
  %i.cb = load i8, ptr %i.ca, align 1
  switch i8 %i.cb, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 0, label %.critedge.backedge
    i8 10, label %bb.v
    i8 12, label %bb.v
    i8 13, label %bb.v
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 3 uses
  store ptr %i.cc, ptr %i.e, align 8
  %i.cd = icmp eq ptr %i.cc, %i.by
  br i1 %i.cd, label %.loopexit, label %bb.u, !llvm.loop !13

bb.v:                                             ; preds = %bb.u, %bb.u, %bb.u
  %i.ce = load i32, ptr %i.c, align 4
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.c, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store ptr %i.cg, ptr %i.e, align 8
  store i8 0, ptr %i.ca, align 1
  %i.ch = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ci = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %.loopexit, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.u, %bb.v
  %.be = phi ptr [ %i.ci, %bb.v ], [ %i.by, %bb.u ]
  %.promoted73.be = phi ptr [ %i.ch, %bb.v ], [ %i.ca, %bb.u ]
  br label %.critedge

.loopexit:                                        ; preds = %bb.v, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  br label %.critedge28, !llvm.loop !14

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31:       ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.preheader, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit32
  %i.ck = phi ptr [ %.promoted72, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.preheader ], [ %i.cl, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit32 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1 ; 4 uses
  store ptr %i.cl, ptr %i.e, align 8
  %i.cm = load i8, ptr %i.ck, align 1
  switch i8 %i.cm, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit32 [
    i8 32, label %bb.w
    i8 9, label %bb.w
    i8 13, label %bb.w
    i8 10, label %bb.w
    i8 0, label %bb.w
    i8 12, label %bb.w
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit32:       ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31
  %i.cn = icmp eq ptr %i.cl, %5
  br i1 %i.cn, label %.critedge28, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31, !llvm.loop !15

bb.w:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = ptrtoint ptr %.promoted72 to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 4 uses
  store ptr %i.az, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.cq, ptr %i.a, align 8
  %i.cr = icmp ugt i64 %i.cq, 15
  br i1 %i.cr, label %.noexc.i35, label %._crit_edge.i.i34

.noexc.i35:                                       ; preds = %bb.w
  %i.cs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cs, ptr %3, align 8
  %i.ct = load i64, ptr %i.a, align 8
  store i64 %i.ct, ptr %i.az, align 8
  br label %._crit_edge.i.i34

._crit_edge.i.i34:                                ; preds = %.noexc.i35, %bb.w
  %i.cu = phi ptr [ %i.cs, %.noexc.i35 ], [ %i.az, %bb.w ] ; 2 uses
  switch i64 %i.cq, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i34
  %i.cv = load i8, ptr %.promoted72, align 1
  store i8 %i.cv, ptr %i.cu, align 1
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cu, ptr noundef nonnull align 1 dereferenceable(1) %.promoted72, i64 %i.cq, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i34
  %i.cw = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.cw, ptr %i.ba, align 8
  %i.cx = load ptr, ptr %3, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i8 0, ptr %i.cy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.cz = load ptr, ptr %i.bb, align 8            ; 6 uses
  %i.da = icmp eq ptr %i.cz, %i.bc
  %i.db = load ptr, ptr %3, align 8               ; 5 uses
  %i.dc = icmp eq ptr %i.db, %i.az                ; 2 uses
  br i1 %i.da, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44: ; preds = %bb.z
  br i1 %i.dc, label %bb.aa, label %.thread.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i39: ; preds = %bb.z
  br i1 %i.dc, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i40

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44
  %i.dd = load i64, ptr %i.ba, align 8            ; 3 uses
  %i.de = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.de)
  switch i64 %i.dd, label %bb.ac [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.df = load i8, ptr %i.db, align 1
  store i8 %i.df, ptr %i.cz, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.db, i64 %i.dd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.dg = load i64, ptr %i.ba, align 8            ; 2 uses
  store i64 %i.dg, ptr %i.bd, align 8
  %i.dh = load ptr, ptr %i.bb, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  store i8 0, ptr %i.di, align 1
  %.pre.i43 = load ptr, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46

.thread.i45:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i44
  store ptr %i.db, ptr %i.bb, align 8
  %i.dj = load <2 x i64>, ptr %i.ba, align 8
  store <2 x i64> %i.dj, ptr %i.bd, align 8
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i39
  %i.dk = load i64, ptr %i.bc, align 8
  store ptr %i.db, ptr %i.bb, align 8
  %i.dl = load <2 x i64>, ptr %i.ba, align 8
  store <2 x i64> %i.dl, ptr %i.bd, align 8
  %.not.i41 = icmp eq ptr %i.cz, null
  br i1 %.not.i41, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i40
  store ptr %i.cz, ptr %3, align 8
  store i64 %i.dk, ptr %i.az, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i40, %.thread.i45
  store ptr %i.az, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42, %bb.ad, %bb.ae
  %i.dm = phi ptr [ %.pre.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i42 ], [ %i.cz, %bb.ad ], [ %i.az, %bb.ae ]
  store i64 0, ptr %i.ba, align 8
  store i8 0, ptr %i.dm, align 1
  %i.dn = load ptr, ptr %3, align 8               ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.az
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46
  %i.dp = load i64, ptr %i.az, align 8
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.pre = load ptr, ptr %i.e, align 8             ; 2 uses
  %.pre93 = load i8, ptr %.pre, align 1
  br label %bb.o, !llvm.loop !16

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread.loopexit: ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o
  %.pre96 = load ptr, ptr %i.g, align 8
  br label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread: ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread.loopexit, %bb.s
  %i.dr = phi ptr [ %.pre96, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread.loopexit ], [ %i.bm, %bb.s ] ; 2 uses
  %.promoted75 = phi ptr [ %.promoted72, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread.loopexit ], [ %i.br, %bb.s ] ; 2 uses
  %i.ds = icmp eq ptr %.promoted75, %i.dr
  br i1 %i.ds, label %.critedge28, label %.preheader

.preheader:                                       ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread, %bb.ag
  %i.dt = phi ptr [ %i.dw, %bb.ag ], [ %.promoted75, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread ] ; 3 uses
  %i.du = load i8, ptr %i.dt, align 1             ; 2 uses
  switch i8 %i.du, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit50 [
    i8 32, label %bb.af
    i8 9, label %bb.af
    i8 13, label %bb.af
    i8 10, label %bb.af
    i8 0, label %bb.af
    i8 12, label %bb.af
  ]

bb.af:                                            ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.dv = icmp eq ptr %i.dt, %i.dr
  br i1 %i.dv, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit50, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 1 ; 2 uses
  store ptr %i.dw, ptr %i.e, align 8
  br label %.preheader, !llvm.loop !17

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit50:       ; preds = %.preheader, %bb.af
  %i.dx = icmp ne i8 %i.du, 0
  br label %.critedge28

.critedge28:                                      ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit, %bb.n, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit32, %bb.r, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit50, %bb.p, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread, %.loopexit
  %.4 = phi i1 [ false, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit32 ], [ false, %bb.n ], [ false, %bb.p ], [ false, %bb.r ], [ %i.dx, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit50 ], [ false, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit31.thread ], [ false, %.loopexit ], [ false, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit ]
  ret i1 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5debugIJRA128_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(128) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(128) %1) #25
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 1 dereferenceable(128) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA128_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3) #25
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA128_cEERKT_.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
end_hunk_0
