Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/box?download=true
inline.NumInlined: 11465
inline.NumDeleted: 5743
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK3BoxeqERKS_:bb.a
bb.l:                                             ; preds = %_ZNK12StreamWriter8get_dataEv.exit
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #38
          to label %.noexc.i.i.i17 unwind label %bb.o

.noexc.i.i.i17:                                   ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #39
          to label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i.i16 unwind label %bb.o, !noalias !1547 ; 3 uses

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i.i16: ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr align 1 %i.as, i64 %i.ax, i1 false), !noalias !1547
  %i.bb = ptrtoint ptr %i.ba to i64
  br label %_ZNK12StreamWriter8get_dataEv.exit20

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %7, align 8, !tbaa !36, !alias.scope !1547 ; 4 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i14, label %.body18, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.bd, ptr %i.aq, align 8, !tbaa !37, !alias.scope !1547
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !38, !alias.scope !1547
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #40
  br label %.body18

_ZNK12StreamWriter8get_dataEv.exit20:             ; preds = %_ZNK12StreamWriter8get_dataEv.exit, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i.i16
  %i.bi = phi i64 [ %i.bb, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i.i16 ], [ 0, %_ZNK12StreamWriter8get_dataEv.exit ]
  %i.bj = phi ptr [ %i.az, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i.i16 ], [ null, %_ZNK12StreamWriter8get_dataEv.exit ] ; 4 uses
  %i.bk = ptrtoint ptr %i.ap to i64
  %i.bl = sub i64 %i.ao, %i.bk                    ; 3 uses
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bi, %i.bm                    ; 2 uses
  %i.bo = icmp eq i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.q, label %_ZNSt3__1eqB8ne180100IhNS_9allocatorIhEEEEbRKNS_6vectorIT_T0_EES8_.exit

bb.q:                                             ; preds = %_ZNK12StreamWriter8get_dataEv.exit20
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ap, ptr %i.bj, i64 %i.bl)
  %i.bp = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZNSt3__1eqB8ne180100IhNS_9allocatorIhEEEEbRKNS_6vectorIT_T0_EES8_.exit

_ZNSt3__1eqB8ne180100IhNS_9allocatorIhEEEEbRKNS_6vectorIT_T0_EES8_.exit: ; preds = %bb.q, %_ZNK12StreamWriter8get_dataEv.exit20
  %i.bq = phi i1 [ false, %_ZNK12StreamWriter8get_dataEv.exit20 ], [ %i.bp, %bb.q ]
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt3__1eqB8ne180100IhNS_9allocatorIhEEEEbRKNS_6vectorIT_T0_EES8_.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #40
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__1eqB8ne180100IhNS_9allocatorIhEEEEbRKNS_6vectorIT_T0_EES8_.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %.not.i.i21 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i21, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit22, label %bb.s

bb.s:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.bl) #40
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit22

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit22: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %i.br = load ptr, ptr %3, align 8, !tbaa !36    ; 4 uses
  %.not.i.i.i23 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i23, label %_ZN12StreamWriterD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit22
  store ptr %i.br, ptr %i.at, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !38
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #40
  br label %_ZN12StreamWriterD2Ev.exit

_ZN12StreamWriterD2Ev.exit:                       ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit22, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.bx = load ptr, ptr %2, align 8, !tbaa !36    ; 4 uses
  %.not.i.i.i24 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i24, label %_ZN12StreamWriterD2Ev.exit25, label %bb.u

bb.u:                                             ; preds = %_ZN12StreamWriterD2Ev.exit
  store ptr %i.bx, ptr %i.ab, align 8, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !38
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #40
  br label %_ZN12StreamWriterD2Ev.exit25

_ZN12StreamWriterD2Ev.exit25:                     ; preds = %_ZN12StreamWriterD2Ev.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.z

bb.v:                                             ; preds = %_ZN5ErrorD2Ev.exit, %bb.b
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.body18:                                          ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %.not.i.i28 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i28, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body18, %bb.k
  %.sink49 = phi ptr [ %i.al, %bb.k ], [ %i.ap, %.body18 ] ; 2 uses
  %.sink47 = phi i64 [ %i.an, %bb.k ], [ %i.ao, %.body18 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.bc, %.body18 ]
  %i.ce = ptrtoint ptr %.sink49 to i64
  %i.cf = sub i64 %.sink47, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %.sink49, i64 noundef %i.cf) #40
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body18, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %i.bc, %.body18 ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.w

bb.w:                                             ; preds = %.body, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.cd, %bb.v ]
  %i.cg = load ptr, ptr %3, align 8, !tbaa !36    ; 4 uses
  %.not.i.i.i30 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i30, label %_ZN12StreamWriterD2Ev.exit31, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !38
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.cg to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cm) #40
  br label %_ZN12StreamWriterD2Ev.exit31

_ZN12StreamWriterD2Ev.exit31:                     ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.cn = load ptr, ptr %2, align 8, !tbaa !36    ; 4 uses
  %.not.i.i.i32 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i32, label %_ZN12StreamWriterD2Ev.exit33, label %bb.y

bb.y:                                             ; preds = %_ZN12StreamWriterD2Ev.exit31
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !37
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !38
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cn to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.ct) #40
  br label %_ZN12StreamWriterD2Ev.exit33

_ZN12StreamWriterD2Ev.exit33:                     ; preds = %_ZN12StreamWriterD2Ev.exit31, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  resume { ptr, i32 } %.pn.pn.pn

bb.z:                                             ; preds = %bb.a, %_ZN12StreamWriterD2Ev.exit25
  %.08 = phi i1 [ %i.bq, %_ZN12StreamWriterD2Ev.exit25 ], [ false, %bb.a ]
  ret i1 %.08
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN3Box16remove_child_boxERKNSt3__110shared_ptrIKS_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(153) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !463  ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !462  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4                   ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit12

.lr.ph:                                           ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !467
  %wide.trip.count = and i64 %i.h, 2147483647
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit12, label %bb.c, !llvm.loop !1548

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.n = icmp eq ptr %i.m, %i.k
  br i1 %i.n, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrI3BoxEES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i
  %storemerge9.i.i.i.i.i.i = phi ptr [ %i.aa, %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i ], [ %i.l, %bb.d ] ; 3 uses
  %.08.i.i.i.i.i.i = phi ptr [ %i.z, %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i ], [ %i.p, %bb.d ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 8
  %i.r = load <2 x ptr>, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !93   ; 5 uses
  store <2 x ptr> %i.r, ptr %storemerge9.i.i.i.i.i.i, align 8, !tbaa !105
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = atomicrmw add ptr %i.t, i64 -1 acq_rel, align 8
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.f, label %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #41, !inline_history !1549
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #41
  br label %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i

_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrI3BoxEES4_EET0_T_S6_S5_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1550

_ZNSt3__14moveB8ne180100IPNS_10shared_ptrI3BoxEES4_EET0_T_S6_S5_.exit.loopexit.i: ; preds = %_ZNSt3__110shared_ptrI3BoxEaSB8ne180100EOS2_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !463
  %i.ab = ptrtoint ptr %i.aa to i64
  br label %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrI3BoxEES4_EET0_T_S6_S5_.exit.i

_ZNSt3__14moveB8ne180100IPNS_10shared_ptrI3BoxEES4_EET0_T_S6_S5_.exit.i: ; preds = %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrI3BoxEES4_EET0_T_S6_S5_.exit.loopexit.i, %bb.d
  %i.ac = phi ptr [ %i.c, %bb.d ], [ %.pre.i, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrI3BoxEES4_EET0_T_S6_S5_.exit.loopexit.i ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i.i = phi i64 [ %i.o, %bb.d ], [ %i.ab, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrI3BoxEES4_EET0_T_S6_S5_.exit.loopexit.i ]
  %i.ad = sub i64 %storemerge.lcssa.i.i.i.i.i.i, %i.o
  %i.ae = getelementptr inbounds i8, ptr %i.l, i64 %i.ad ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.ae, %i.ac
  br i1 %.not6.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrI3BoxEES4_EET0_T_S6_S5_.exit.i, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.af, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i ], [ %i.ac, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrI3BoxEES4_EET0_T_S6_S5_.exit.i ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !103 ; 5 uses
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i4.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw add ptr %i.ai, i64 -1 acq_rel, align 8
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.h, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(24) %i.ah) #41, !inline_history !1551
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ah) #41
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.loopexit:                                        ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i, %_ZNSt3__14moveB8ne180100IPNS_10shared_ptrI3BoxEES4_EET0_T_S6_S5_.exit.i
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !463
  br label %.loopexit12

.loopexit12:                                      ; preds = %bb.b, %bb.a, %.loopexit
  %i.ao = phi i1 [ true, %.loopexit ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %i.ao
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3Box5equalERKNSt3__110shared_ptrIS_EES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !102    ; 4 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !462
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !463
  %.not8 = icmp eq ptr %i.d, %i.f
  br i1 %.not8, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !462
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !463
  %.not9 = icmp eq ptr %i.h, %i.j
  br i1 %.not9, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(153) %i.a, ptr noundef nonnull align 8 dereferenceable(153) %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.b, %bb.e
  %.0 = phi i1 [ false, %bb.a ], [ %i.n, %bb.e ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3Box13read_childrenER14BitstreamRangejPK20heif_security_limits(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(153) %1, ptr noundef nonnull align 8 dereferenceable(41) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %5 = alloca %"class.std::__1::shared_ptr.15", align 16 ; 13 uses
  %6 = alloca %class.Error, align 8               ; 10 uses
  %7 = alloca %"class.std::__1::basic_stringstream", align 8 ; 19 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__1::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  %i.e = icmp eq i32 %3, -1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 3 uses
  %i.v = load ptr, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 2 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 72), align 8
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.not42 = icmp ne i32 %3, -1
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !90
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit.jt0
  %.02966 = phi i32 [ %i.dy, %_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev.exit.jt0 ], [ 0, %.preheader ]
  %i.ai = load i8, ptr %i.b, align 8, !tbaa !71, !range !72, !noundef !73
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.critedge, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  invoke void @_ZN3Box4readER14BitstreamRangePNSt3__110shared_ptrIS_EEPK20heif_security_limits(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %6, ptr noundef nonnull align 8 dereferenceable(41) %2, ptr noundef nonnull %5, ptr noundef %4)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ak = load i32, ptr %6, align 8, !tbaa !80
  %i.al = load i32, ptr @_ZN5Error2OkE, align 8, !tbaa !80
  %.not53 = icmp eq i32 %i.ak, %i.al
  br i1 %.not53, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = load ptr, ptr %5, align 16, !tbaa !102  ; 3 uses
  %.not54 = icmp eq ptr %i.am, null
  br i1 %.not54, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef i32 %i.ap(ptr noundef nonnull align 8 dereferenceable(153) %i.am)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.as = load i64, ptr %6, align 8
  store i64 %i.as, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br label %bb.ap

bb.g:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5ErrorD2Ev.exit52

bb.h:                                             ; preds = %bb.am, %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.i:                                             ; preds = %bb.e, %bb.b
  br i1 %i.e, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !463
  br label %bb.ak

bb.j:                                             ; preds = %bb.i
  %i.av = load i32, ptr %i.f, align 8, !tbaa !35
  %i.aw = icmp eq i32 %i.av, 1768517222
  %.0.in.v = select i1 %i.aw, i64 28, i64 60
  %.0.in = getelementptr inbounds nuw i8, ptr %4, i64 %.0.in.v
  %.0 = load i32, ptr %.0.in, align 4, !tbaa !104 ; 3 uses
  %.not = icmp eq i32 %.0, 0
  %.pre59 = load ptr, ptr %i.h, align 8, !tbaa !463 ; 3 uses
  br i1 %.not, label %bb.ak, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !462
  %i.ay = ptrtoint ptr %.pre59 to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 4
  %i.bc = zext i32 %.0 to i64
  %i.bd = icmp ugt i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.l, label %bb.ak

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  invoke void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.m unwind label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.19, i64 noundef 31)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit unwind label %bb.ac

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit: ; preds = %bb.m
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj(ptr noundef nonnull align 8 dereferenceable(8) %i.be, i32 noundef %.0)
          to label %bb.n unwind label %bb.ac

bb.n:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull @.str.20, i64 noundef 6)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit45 unwind label %bb.ac

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit45: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  invoke void @_ZNK9BoxHeader15get_type_stringEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(52) %1)
          to label %bb.o unwind label %bb.ad

bb.o:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit45
  %i.bh = load i8, ptr %8, align 8                ; 2 uses
  %i.bi = trunc i8 %i.bh to i1                    ; 2 uses
end_hunk_0
