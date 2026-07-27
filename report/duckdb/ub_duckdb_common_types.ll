inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 157
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 231
begin_hunk_0_@_ZN6duckdb16DictionaryVector24CreateReusableDictionaryERKNS_11LogicalTypeERKm:bb.a
bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.z = load i64, ptr %i.n, align 8, !tbaa !152  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !152
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !153
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  store ptr %i.u, ptr %i.q, align 8, !tbaa !89
  %i.ae = load <2 x i64>, ptr %i.n, align 8, !tbaa !153
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !tbaa !153
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.af = load i64, ptr %i.s, align 8, !tbaa !153
  store ptr %i.u, ptr %i.q, align 8, !tbaa !89
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %i.ah = load <2 x i64>, ptr %i.n, align 8, !tbaa !153
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !153
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.r, ptr %6, align 8, !tbaa !89
  store i64 %i.af, ptr %i.k, align 8, !tbaa !153
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %6, align 8, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.ai = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.r, %bb.l ], [ %i.k, %bb.m ], [ %i.u, %bb.h ]
  store i64 0, ptr %i.n, align 8, !tbaa !152
  store i8 0, ptr %i.ai, align 1, !tbaa !153
  %i.aj = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.k
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.aj) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  ret void

bb.n:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %3) #46
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.am, %bb.o ], [ %i.al, %bb.n ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %bb.u

bb.q:                                             ; preds = %bb.c, %_ZN6duckdb11make_bufferINS_17VectorChildBufferEJNS_6VectorEEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %bb.t

bb.r:                                             ; preds = %bb.e, %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.s:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.k
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.aq) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.r
  %.pn10 = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.ap, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %bb.q
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ], [ %i.an, %bb.q ]
  call void @_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #46
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %.pn10.pn.pn = phi { ptr, i32 } [ %.pn10.pn, %bb.t ], [ %.pn, %bb.p ]
  resume { ptr, i32 } %.pn10.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Vector24DebugShuffleNestedVectorERS0_m(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !533
  switch i8 %i.b, label %.loopexit [
    i8 100, label %bb.b
    i8 101, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !483
  %i.d = icmp eq i8 %i.c, 3
  br i1 %i.d, label %tailrecurse.i, label %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit

tailrecurse.i:                                    ; preds = %bb.b, %tailrecurse.i
  %.tr5.i = phi ptr [ %i.g, %tailrecurse.i ], [ %0, %bb.b ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i), !inline_history !506
  %i.e = getelementptr inbounds nuw i8, ptr %.tr5.i, i64 88
  %i.f = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e), !inline_history !506
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !483
  %i.i = icmp eq i8 %i.h, 3
  br i1 %i.i, label %tailrecurse.i, label %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit

_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit: ; preds = %tailrecurse.i, %bb.b
  %.tr.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.g, %tailrecurse.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 88
  %i.k = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j), !inline_history !506 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !507  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !507  ; 2 uses
  %.not7688 = icmp eq ptr %i.m, %i.o
  br i1 %.not7688, label %.loopexit, label %.lr.ph90

.lr.ph90:                                         ; preds = %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit, %.lr.ph90
  %.sroa.071.089 = phi ptr [ %i.q, %.lr.ph90 ], [ %i.m, %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit ] ; 2 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.071.089)
  tail call void @_ZN6duckdb6Vector24DebugShuffleNestedVectorERS0_m(ptr noundef nonnull align 8 dereferenceable(104) %i.p, i64 noundef %1)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.071.089, i64 8 ; 2 uses
  %.not76 = icmp eq ptr %i.q, %i.o
  br i1 %.not76, label %.loopexit, label %.lr.ph90

bb.c:                                             ; preds = %bb.a
  %i.r = load i8, ptr %0, align 8, !tbaa !483
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !427  ; 7 uses
  %.not91 = icmp eq i64 %1, 0
  br i1 %.not91, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !519  ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us.preheader, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.preheader

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.preheader: ; preds = %.lr.ph
  %xtraiter = and i64 %1, 1
  %i.w = icmp eq i64 %1, 1
  br i1 %i.w, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.epil.preheader, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.preheader.new

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.preheader.new: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.preheader
  %unroll_iter = and i64 %1, -2
  br label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us.preheader: ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %1, 5
  br i1 %min.iters.check, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us.preheader133, label %vector.ph

vector.ph:                                        ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us.preheader
  %n.mod.vf = and i64 %1, 3                       ; 2 uses
  %i.x = icmp eq i64 %n.mod.vf, 0
  %i.y = select i1 %i.x, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %1, %i.y                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi118 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %index
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %3 = load <3 x i64>, ptr %i.ab, align 8, !tbaa !550
  %strided.vec = shufflevector <3 x i64> %3, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %4 = load <3 x i64>, ptr %i.ac, align 8, !tbaa !550
  %strided.vec120 = shufflevector <3 x i64> %4, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ad = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.ae = add <2 x i64> %strided.vec120, %vec.phi118 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !2578

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us.preheader133

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us.preheader133: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us.preheader, %middle.block
  %.05681.us.ph = phi i64 [ 0, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us.preheader ], [ %i.ag, %middle.block ]
  %.05880.us.ph = phi i64 [ 0, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us.preheader ], [ %n.vec, %middle.block ]
  br label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us.preheader133, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us
  %.05681.us = phi i64 [ %i.ak, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us ], [ %.05681.us.ph, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us.preheader133 ]
  %.05880.us = phi i64 [ %i.al, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us ], [ %.05880.us.ph, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us.preheader133 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.05880.us
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !550
  %i.ak = add i64 %i.aj, %.05681.us               ; 2 uses
  %i.al = add nuw i64 %.05880.us, 1               ; 2 uses
  %exitcond98.not = icmp eq i64 %i.al, %1
  br i1 %exitcond98.not, label %._crit_edge, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us, !llvm.loop !2579

._crit_edge.loopexit137.unr-lcssa:                ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.epil.preheader

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.epil.preheader: ; preds = %._crit_edge.loopexit137.unr-lcssa, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.preheader
  %.05681.epil.init = phi i64 [ 0, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.preheader ], [ %.157.1, %._crit_edge.loopexit137.unr-lcssa ] ; 2 uses
  %.05880.epil.init = phi i64 [ 0, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.preheader ], [ %i.bs, %._crit_edge.loopexit137.unr-lcssa ] ; 3 uses
  %lcmp.mod139 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod139)
  %i.am = lshr i64 %.05880.epil.init, 6
  %i.an = and i64 %.05880.epil.init, 63
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.am
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !108
  %i.aq = shl nuw i64 1, %i.an
  %i.ar = and i64 %i.ap, %i.aq
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %._crit_edge, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.epil

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.epil: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.epil.preheader
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.05880.epil.init
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !550
  %i.aw = add i64 %i.av, %.05681.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit137.unr-lcssa, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.epil, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.epil.preheader, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us
  %.056.lcssa = phi i64 [ %i.ak, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.us ], [ %.157.1, %._crit_edge.loopexit137.unr-lcssa ], [ %.05681.epil.init, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.epil.preheader ], [ %i.aw, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.epil ] ; 7 uses
  %i.ax = icmp eq i64 %.056.lcssa, 0
  br i1 %i.ax, label %.loopexit, label %bb.f

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit: ; preds = %bb.e, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.preheader.new
  %.05681 = phi i64 [ 0, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.preheader.new ], [ %.157.1, %bb.e ] ; 2 uses
  %.05880 = phi i64 [ 0, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.preheader.new ], [ %i.bs, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.ay = lshr i64 %.05880, 6
  %i.az = and i64 %.05880, 62
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ay
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !108 ; 2 uses
  %i.bc = shl nuw nsw i64 1, %i.az
  %i.bd = and i64 %i.bb, %i.bc
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.1, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.05880
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !550
  %i.bi = add i64 %i.bh, %.05681
  br label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.1

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.1: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread
  %.157 = phi i64 [ %.05681, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit ], [ %i.bi, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread ] ; 2 uses
  %i.bj = or disjoint i64 %.05880, 1              ; 2 uses
  %i.bk = and i64 %i.bj, 63
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = and i64 %i.bb, %i.bl
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.e, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.1

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.1: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.1
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bj
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !550
  %i.br = add i64 %i.bq, %.157
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.1, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.1
  %.157.1 = phi i64 [ %.157, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.1 ], [ %i.br, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.1 ] ; 3 uses
  %i.bs = add nuw i64 %.05880, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit137.unr-lcssa, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit, !llvm.loop !2580

bb.f:                                             ; preds = %._crit_edge
  %i.bt = load i8, ptr %0, align 8, !tbaa !483
  %i.bu = icmp eq i8 %i.bt, 3
  br i1 %i.bu, label %tailrecurse.i63, label %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit

tailrecurse.i63:                                  ; preds = %bb.f, %tailrecurse.i63
  %.tr1.i = phi ptr [ %i.bx, %tailrecurse.i63 ], [ %0, %bb.f ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i), !inline_history !596
  %i.bv = getelementptr inbounds nuw i8, ptr %.tr1.i, i64 88
  %i.bw = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv), !inline_history !596
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48 ; 3 uses
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !483
  %i.bz = icmp eq i8 %i.by, 3
  br i1 %i.bz, label %tailrecurse.i63, label %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit

_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit: ; preds = %tailrecurse.i63, %bb.f
  %.tr.lcssa.i62 = phi ptr [ %0, %bb.f ], [ %i.bx, %tailrecurse.i63 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i62, i64 88
  %i.cb = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca), !inline_history !595
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cc), !inline_history !596 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.056.lcssa)
          to label %.lr.ph87 unwind label %bb.g

.lr.ph87:                                         ; preds = %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !519 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.cg, null
  %i.ch = load ptr, ptr %2, align 8
  br label %bb.h

common.resume:                                    ; preds = %bb.s, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ci, %bb.g ], [ %lpad.phi, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ce) #46
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge:  ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  invoke void @_ZN6duckdb6Vector5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.056.lcssa)
          to label %bb.i unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %.lr.ph87, %_ZN6duckdb15SelectionVectorC2Em.exit
  %.05386 = phi i64 [ 0, %.lr.ph87 ], [ %i.dg, %_ZN6duckdb15SelectionVectorC2Em.exit ] ; 4 uses
  %.05485 = phi i64 [ %.056.lcssa, %.lr.ph87 ], [ %.155, %_ZN6duckdb15SelectionVectorC2Em.exit ] ; 2 uses
  br i1 %.not.i.i64, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit66.thread, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit66

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit66: ; preds = %bb.h
  %i.cj = lshr i64 %.05386, 6
  %i.ck = and i64 %.05386, 63
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cj
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !108
  %i.cn = shl nuw i64 1, %i.ck
  %i.co = and i64 %i.cm, %i.cn
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_ZN6duckdb15SelectionVectorC2Em.exit, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit66.thread

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit66.thread: ; preds = %bb.h, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit66
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.05386 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !550 ; 6 uses
  %i.ct = sub i64 %.05485, %i.cs                  ; 3 uses
  %.not93 = icmp eq i64 %i.cs, 0
  br i1 %.not93, label %._crit_edge84, label %.lr.ph83

.lr.ph83:                                         ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit66.thread
  %i.cu = load i64, ptr %i.cq, align 8, !tbaa !552 ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.ch, i64 %i.ct ; 2 uses
  %min.iters.check122 = icmp ult i64 %i.cs, 8
  br i1 %min.iters.check122, label %scalar.ph121.preheader, label %vector.ph123

vector.ph123:                                     ; preds = %.lr.ph83
  %n.vec125 = and i64 %i.cs, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i64> splat (i64 4), %broadcast.splat
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph123
  %index127 = phi i64 [ 0, %vector.ph123 ], [ %index.next128, %vector.body126 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph123 ], [ %vec.ind.next, %vector.body126 ] ; 3 uses
  %i.cw = add <4 x i64> %broadcast.splat, %vec.ind
  %.reass = add <4 x i64> %vec.ind, %invariant.op
  %i.cx = trunc <4 x i64> %i.cw to <4 x i32>
  %i.cy = trunc <4 x i64> %.reass to <4 x i32>
  %i.cz = getelementptr [4 x i8], ptr %i.cv, i64 %index127 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  store <4 x i32> %i.cx, ptr %i.cz, align 4, !tbaa !3
  store <4 x i32> %i.cy, ptr %i.da, align 4, !tbaa !3
  %index.next128 = add nuw i64 %index127, 8       ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.db = icmp eq i64 %index.next128, %n.vec125
  br i1 %i.db, label %middle.block129, label %vector.body126, !llvm.loop !2581

end_hunk_0
begin_hunk_1_@_ZN6duckdb8Geometry20FromVectorizedFormatERNS_6VectorES2_mNS_12GeometryTypeENS_10VertexTypeEm:bb.a
  br i1 %i.gd, label %bb.u, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.1.i40.i

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.1.i40.i: ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i39.i
  %i.ge = load i64, ptr %i.em, align 8, !tbaa !552
  %i.gf = getelementptr [8 x i8], ptr %i.dw, i64 %i.ge
  %i.gg = getelementptr [8 x i8], ptr %i.gf, i64 %i.fd
  %.val42.1.i.i = load double, ptr %i.gg, align 8
  store double %.val42.1.i.i, ptr %i.fe, align 1
  %i.gh = add i32 %.03664.i.i, 1                  ; 2 uses
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = icmp ugt i64 %i.eo, %i.gi
  br i1 %i.gj, label %.preheader.i.i, label %._crit_edge.i.i, !llvm.loop !2951

bb.aa:                                            ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit.i41.i, %bb.q
  %i.gk = add nuw i64 %.03865.i.i, 1              ; 2 uses
  %exitcond.not.i42.i = icmp eq i64 %i.gk, %2
  br i1 %exitcond.not.i42.i, label %_ZN6duckdbL28FromVectorizedFormatInternalINS_8VertexXYEEEvRNS_6VectorES3_mNS_12GeometryTypeEm.exit, label %bb.p, !llvm.loop !2952

bb.ab:                                            ; preds = %bb.b
  tail call void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2)
  %i.gl = load i8, ptr %0, align 8, !tbaa !483
  %i.gm = icmp eq i8 %i.gl, 3
  br i1 %i.gm, label %tailrecurse.i.i78.i, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i51.i

tailrecurse.i.i78.i:                              ; preds = %bb.ab, %tailrecurse.i.i78.i
  %.tr5.i.i79.i = phi ptr [ %i.gp, %tailrecurse.i.i78.i ], [ %0, %bb.ab ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i79.i), !inline_history !2854
  %i.gn = getelementptr inbounds nuw i8, ptr %.tr5.i.i79.i, i64 88
  %i.go = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gn), !inline_history !2854
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 48 ; 3 uses
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !483
  %i.gr = icmp eq i8 %i.gq, 3
  br i1 %i.gr, label %tailrecurse.i.i78.i, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i51.i

_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i51.i: ; preds = %tailrecurse.i.i78.i, %bb.ab
  %.tr.lcssa.i.i52.i = phi ptr [ %0, %bb.ab ], [ %i.gp, %tailrecurse.i.i78.i ] ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i.i52.i), !inline_history !2854
  %i.gs = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i52.i, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !427
  %i.gu = load i8, ptr %0, align 8, !tbaa !483
  %i.gv = icmp eq i8 %i.gu, 3
  br i1 %i.gv, label %tailrecurse.i70.i.i, label %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i53.i

tailrecurse.i70.i.i:                              ; preds = %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i51.i, %tailrecurse.i70.i.i
  %.tr1.i.i77.i = phi ptr [ %i.gy, %tailrecurse.i70.i.i ], [ %0, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i51.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i.i77.i), !inline_history !596
  %i.gw = getelementptr inbounds nuw i8, ptr %.tr1.i.i77.i, i64 88
  %i.gx = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gw), !inline_history !596
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 48 ; 3 uses
  %i.gz = load i8, ptr %i.gy, align 8, !tbaa !483
  %i.ha = icmp eq i8 %i.gz, 3
  br i1 %i.ha, label %tailrecurse.i70.i.i, label %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i53.i

_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i53.i: ; preds = %tailrecurse.i70.i.i, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i51.i
  %.tr.lcssa.i69.i.i = phi ptr [ %0, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i51.i ], [ %i.gy, %tailrecurse.i70.i.i ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i69.i.i, i64 88
  %i.hc = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hb), !inline_history !595
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.he = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hd), !inline_history !596 ; 6 uses
  %i.hf = load i8, ptr %i.he, align 8, !tbaa !483
  %i.hg = icmp eq i8 %i.hf, 3
  br i1 %i.hg, label %tailrecurse.i72.i.i, label %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i.i

tailrecurse.i72.i.i:                              ; preds = %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i53.i, %tailrecurse.i72.i.i
  %.tr5.i73.i.i = phi ptr [ %i.hj, %tailrecurse.i72.i.i ], [ %i.he, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i53.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i73.i.i), !inline_history !2953
  %i.hh = getelementptr inbounds nuw i8, ptr %.tr5.i73.i.i, i64 88
  %i.hi = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hh), !inline_history !2953
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 48 ; 3 uses
  %i.hk = load i8, ptr %i.hj, align 8, !tbaa !483
  %i.hl = icmp eq i8 %i.hk, 3
  br i1 %i.hl, label %tailrecurse.i72.i.i, label %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i.i

_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i.i: ; preds = %tailrecurse.i72.i.i, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i53.i
  %.tr.lcssa.i71.i.i = phi ptr [ %i.he, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i53.i ], [ %i.hj, %tailrecurse.i72.i.i ] ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKNS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i71.i.i), !inline_history !2953
  %i.hm = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i71.i.i, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !427 ; 2 uses
  %i.ho = load i8, ptr %i.he, align 8, !tbaa !483
  %i.hp = icmp eq i8 %i.ho, 3
  br i1 %i.hp, label %tailrecurse.i75.i.i, label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i.i

tailrecurse.i75.i.i:                              ; preds = %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i.i, %tailrecurse.i75.i.i
  %.tr1.i76.i.i = phi ptr [ %i.hs, %tailrecurse.i75.i.i ], [ %i.he, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i76.i.i), !inline_history !485
  %i.hq = getelementptr inbounds nuw i8, ptr %.tr1.i76.i.i, i64 88
  %i.hr = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hq), !inline_history !485
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 48 ; 3 uses
  %i.ht = load i8, ptr %i.hs, align 8, !tbaa !483
  %i.hu = icmp eq i8 %i.ht, 3
  br i1 %i.hu, label %tailrecurse.i75.i.i, label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i.i

_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i.i: ; preds = %tailrecurse.i75.i.i, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i.i
  %.tr.lcssa.i74.i.i = phi ptr [ %i.he, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i.i ], [ %i.hs, %tailrecurse.i75.i.i ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i74.i.i, i64 88
  %i.hw = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hv), !inline_history !486
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 48
  %i.hy = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hx), !inline_history !485 ; 3 uses
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !483
  %i.ia = icmp eq i8 %i.hz, 3
  br i1 %i.ia, label %tailrecurse.i.i.i.i, label %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i.i

tailrecurse.i.i.i.i:                              ; preds = %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i.i, %tailrecurse.i.i.i.i
  %.tr5.i.i.i.i = phi ptr [ %i.id, %tailrecurse.i.i.i.i ], [ %i.hy, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i.i.i), !inline_history !506
  %i.ib = getelementptr inbounds nuw i8, ptr %.tr5.i.i.i.i, i64 88
  %i.ic = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ib), !inline_history !506
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 48 ; 3 uses
  %i.ie = load i8, ptr %i.id, align 8, !tbaa !483
  %i.if = icmp eq i8 %i.ie, 3
  br i1 %i.if, label %tailrecurse.i.i.i.i, label %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i.i

_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i.i: ; preds = %tailrecurse.i.i.i.i, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i.i
  %.tr.lcssa.i.i.i.i = phi ptr [ %i.hy, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i.i ], [ %i.id, %tailrecurse.i.i.i.i ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i.i.i, i64 88
  %i.ih = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ig), !inline_history !506
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 48 ; 2 uses
  %i.ij = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, i64 noundef 0)
  %i.ik = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ij) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ik)
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !427
  %i.in = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, i64 noundef 1)
  %i.io = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.in) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.io)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !427
  %.not.i54.i = icmp eq i64 %2, 0
  br i1 %.not.i54.i, label %_ZN6duckdbL28FromVectorizedFormatInternalINS_8VertexXYEEEvRNS_6VectorES3_mNS_12GeometryTypeEm.exit, label %.lr.ph114.i.i

.lr.ph114.i.i:                                    ; preds = %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.is = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %38, i64 4 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ap, %.lr.ph114.i.i
  %.057112.i.i = phi i64 [ 0, %.lr.ph114.i.i ], [ %i.nh, %bb.ap ] ; 5 uses
  %i.ix = add i64 %.057112.i.i, %5                ; 2 uses
  %i.iy = load ptr, ptr %i.ir, align 8, !tbaa !519 ; 2 uses
  %.not.i.i.i55.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i55.i, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i57.i, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i56.i

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i56.i: ; preds = %bb.ac
  %i.iz = lshr i64 %.057112.i.i, 6
  %i.ja = and i64 %.057112.i.i, 63
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.iz
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !108
  %i.jd = shl nuw i64 1, %i.ja
  %i.je = and i64 %i.jc, %i.jd
  %i.jf = icmp eq i64 %i.je, 0
  br i1 %i.jf, label %bb.ad, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i57.i

bb.ad:                                            ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i56.i
  call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.ix, i1 noundef zeroext true)
  br label %bb.ap

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i57.i: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i56.i, %bb.ac
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %.057112.i.i ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !550 ; 8 uses
  %.not116.i.i = icmp eq i64 %i.ji, 0             ; 2 uses
  br i1 %.not116.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i58.i

._crit_edge.thread.i.i:                           ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i57.i
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #46
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i61.i

.lr.ph.i58.i:                                     ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i57.i
  %i.jj = load i64, ptr %i.jg, align 8, !tbaa !552
  %i.jk = getelementptr [16 x i8], ptr %i.hn, i64 %i.jj ; 3 uses
  %min.iters.check476 = icmp ult i64 %i.ji, 9
  br i1 %min.iters.check476, label %scalar.ph475.preheader, label %vector.scevcheck474

vector.scevcheck474:                              ; preds = %.lr.ph.i58.i
  %i.jl = add i64 %i.ji, -1                       ; 2 uses
  %i.jm = and i64 %i.jl, 4294967295
  %i.jn = icmp eq i64 %i.jm, 4294967295
  %i.jo = icmp ugt i64 %i.jl, 4294967295
  %i.jp = or i1 %i.jn, %i.jo
  br i1 %i.jp, label %scalar.ph475.preheader, label %vector.ph477

vector.ph477:                                     ; preds = %vector.scevcheck474
  %n.mod.vf478 = and i64 %i.ji, 3                 ; 2 uses
  %i.jq = icmp eq i64 %n.mod.vf478, 0
  %i.jr = select i1 %i.jq, i64 4, i64 %n.mod.vf478
  %n.vec479 = sub nsw i64 %i.ji, %i.jr            ; 2 uses
  br label %vector.body480

vector.body480:                                   ; preds = %vector.body480, %vector.ph477
  %index481 = phi i64 [ 0, %vector.ph477 ], [ %index.next488, %vector.body480 ] ; 3 uses
  %vec.phi482 = phi <2 x i64> [ <i64 9, i64 0>, %vector.ph477 ], [ %i.ka, %vector.body480 ]
  %vec.phi483 = phi <2 x i64> [ zeroinitializer, %vector.ph477 ], [ %i.kb, %vector.body480 ]
  %i.js = getelementptr [16 x i8], ptr %i.jk, i64 %index481
  %i.jt = getelementptr [16 x i8], ptr %i.jk, i64 %index481
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jv = getelementptr i8, ptr %i.jt, i64 40
  %51 = load <3 x i64>, ptr %i.ju, align 8, !tbaa !550
  %strided.vec485 = shufflevector <3 x i64> %51, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %52 = load <3 x i64>, ptr %i.jv, align 8, !tbaa !550
  %strided.vec487 = shufflevector <3 x i64> %52, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.jw = add <2 x i64> %vec.phi482, splat (i64 4)
  %i.jx = add <2 x i64> %vec.phi483, splat (i64 4)
  %i.jy = shl <2 x i64> %strided.vec485, splat (i64 4)
  %i.jz = shl <2 x i64> %strided.vec487, splat (i64 4)
  %i.ka = add <2 x i64> %i.jw, %i.jy              ; 2 uses
  %i.kb = add <2 x i64> %i.jx, %i.jz              ; 2 uses
  %index.next488 = add nuw i64 %index481, 4       ; 2 uses
  %i.kc = icmp eq i64 %index.next488, %n.vec479
  br i1 %i.kc, label %middle.block489, label %vector.body480, !llvm.loop !2954

middle.block489:                                  ; preds = %vector.body480
  %bin.rdx490 = add <2 x i64> %i.kb, %i.ka
  %i.kd = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx490)
  br label %scalar.ph475.preheader

scalar.ph475.preheader:                           ; preds = %vector.scevcheck474, %.lr.ph.i58.i, %middle.block489
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.scevcheck474 ], [ 0, %.lr.ph.i58.i ], [ %n.vec479, %middle.block489 ]
  %.05996.i.i.ph = phi i64 [ 9, %vector.scevcheck474 ], [ 9, %.lr.ph.i58.i ], [ %i.kd, %middle.block489 ]
  br label %scalar.ph475

._crit_edge.i59.i:                                ; preds = %scalar.ph475
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #46
  %i.ke = icmp ult i64 %i.kv, 13
  br i1 %i.ke, label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i61.i, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i59.i
  %i.kf = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  %i.kh = call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.kg, i64 noundef %i.kv) ; 2 uses
  %i.ki = extractvalue { i64, ptr } %i.kh, 0      ; 2 uses
  %.sroa.3.0.extract.shift.i.i60.i = and i64 %i.ki, -4294967296
  %i.kj = extractvalue { i64, ptr } %i.kh, 1
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i61.i

_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i61.i: ; preds = %bb.ae, %._crit_edge.i59.i, %._crit_edge.thread.i.i
  %.059.lcssa150.i.i = phi i64 [ %i.kv, %bb.ae ], [ %i.kv, %._crit_edge.i59.i ], [ 9, %._crit_edge.thread.i.i ]
  %.sroa.34.0.i.i62.i = phi ptr [ %i.kj, %bb.ae ], [ undef, %._crit_edge.i59.i ], [ undef, %._crit_edge.thread.i.i ] ; 2 uses
  %.sroa.3.0.i.i63.i = phi i64 [ %.sroa.3.0.extract.shift.i.i60.i, %bb.ae ], [ 0, %._crit_edge.i59.i ], [ 0, %._crit_edge.thread.i.i ]
  %.sroa.0.0.in.i.i64.i = phi i64 [ %i.ki, %bb.ae ], [ %i.kv, %._crit_edge.i59.i ], [ 9, %._crit_edge.thread.i.i ] ; 2 uses
  %.sroa.0.0.insert.ext.i.i65.i = and i64 %.sroa.0.0.in.i.i64.i, 4294967295
  %.sroa.0.0.insert.insert.i.i66.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i65.i, %.sroa.3.0.i.i63.i
  store i64 %.sroa.0.0.insert.insert.i.i66.i, ptr %38, align 8
  store ptr %.sroa.34.0.i.i62.i, ptr %i.is, align 8
  %i.kk = trunc i64 %.sroa.0.0.in.i.i64.i to i32
  %i.kl = icmp ult i32 %i.kk, 13
  %i.km = select i1 %i.kl, ptr %i.it, ptr %.sroa.34.0.i.i62.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #46
  store ptr %i.km, ptr %39, align 8, !tbaa !2024
  store ptr %i.km, ptr %i.iu, align 8, !tbaa !2026
  %i.kn = and i64 %.059.lcssa150.i.i, 4294967295
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kn
  store ptr %i.ko, ptr %i.iv, align 8, !tbaa !2027
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %39, i8 1)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %39, i32 3)
  %i.kp = trunc nuw i64 %i.ji to i32
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %39, i32 %i.kp)
  br i1 %.not116.i.i, label %._crit_edge111.i.i, label %.lr.ph110.preheader.i.i

.lr.ph110.preheader.i.i:                          ; preds = %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i61.i
  %.pre.i67.i = load ptr, ptr %i.iu, align 8, !tbaa !2026
  br label %.lr.ph110.i.i

scalar.ph475:                                     ; preds = %scalar.ph475.preheader, %scalar.ph475
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph475 ], [ %indvars.iv.i.i.ph, %scalar.ph475.preheader ] ; 2 uses
  %.05996.i.i = phi i64 [ %i.kv, %scalar.ph475 ], [ %.05996.i.i.ph, %scalar.ph475.preheader ]
  %i.kq = getelementptr [16 x i8], ptr %i.jk, i64 %indvars.iv.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !550
  %i.kt = add i64 %.05996.i.i, 4
  %i.ku = shl i64 %i.ks, 4
  %i.kv = add i64 %i.kt, %i.ku                    ; 6 uses
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.kw = and i64 %indvars.iv.next.i.i, 4294967295
  %i.kx = icmp ugt i64 %i.ji, %i.kw
  br i1 %i.kx, label %scalar.ph475, label %._crit_edge.i59.i, !llvm.loop !2955

._crit_edge111.i.i:                               ; preds = %._crit_edge107.i.i, %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i61.i
  %i.ky = load i32, ptr %38, align 8, !tbaa !153  ; 2 uses
  %i.kz = icmp ult i32 %i.ky, 13
  br i1 %i.kz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge111.i.i
  %i.la = zext nneg i32 %i.ky to i64              ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.la
  %i.lc = sub nuw nsw i64 12, %i.la
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lb, i8 0, i64 %i.lc, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i71.i

bb.ag:                                            ; preds = %._crit_edge111.i.i
  %i.ld = load ptr, ptr %i.is, align 8
  %i.le = load i32, ptr %i.ld, align 1
  store i32 %i.le, ptr %i.it, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i71.i

_ZN6duckdb8string_t8FinalizeEv.exit.i71.i:        ; preds = %bb.ag, %bb.af
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.lf = load ptr, ptr %i.iw, align 8, !tbaa !427
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.lf, i64 %i.ix
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, ptr noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false), !tbaa.struct !707
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #46
  br label %bb.ap

.lr.ph110.i.i:                                    ; preds = %._crit_edge107.i.i, %.lr.ph110.preheader.i.i
  %i.lh = phi ptr [ %.lcssa97102.lcssa.i.i, %._crit_edge107.i.i ], [ %.pre.i67.i, %.lr.ph110.preheader.i.i ] ; 3 uses
  %i.li = phi i64 [ %i.mg, %._crit_edge107.i.i ], [ 0, %.lr.ph110.preheader.i.i ]
  %.058109.i.i = phi i32 [ %i.mf, %._crit_edge107.i.i ], [ 0, %.lr.ph110.preheader.i.i ]
  %i.lj = load i64, ptr %i.jg, align 8, !tbaa !552
  %i.lk = getelementptr [16 x i8], ptr %i.hn, i64 %i.lj
  %i.ll = getelementptr [16 x i8], ptr %i.lk, i64 %i.li ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !550 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lh, i64 4 ; 3 uses
  %i.lp = load ptr, ptr %i.iv, align 8, !tbaa !2027 ; 3 uses
  %i.lq = icmp ugt ptr %i.lo, %i.lp
  br i1 %i.lq, label %bb.ah, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i.i

bb.ah:                                            ; preds = %.lr.ph110.i.i
  %i.lr = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.ai unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i73.i

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #46
  %i.ls = load ptr, ptr %39, align 8, !tbaa !2024
  %i.lt = ptrtoint ptr %i.lh to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu
  store i64 %i.lv, ptr %i.q, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.lr, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @__cxa_throw(ptr nonnull %i.lr, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.al unwind label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i73.i: ; preds = %bb.ah
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #46
  br label %common.resume.sink.split.i.i

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.04.i.i74.i = phi i1 [ false, %bb.aj ], [ true, %bb.ai ] ; 2 uses
  %i.lx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #46
  %i.ly = load ptr, ptr %36, align 8, !tbaa !89   ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.ma = icmp eq ptr %i.ly, %i.lz
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75.i: ; preds = %bb.ak
  call void @_ZdlPv(ptr noundef %i.ly) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #46
  br i1 %.04.i.i74.i, label %common.resume.sink.split.i.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76.i: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #46
  br i1 %.04.i.i74.i, label %common.resume.sink.split.i.i, label %common.resume

common.resume.sink.split.i.i:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i77.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i73.i
  %.sink.i.i = phi ptr [ %i.mi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i77.i.i ], [ %i.mi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82.i.i ], [ %i.mi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81.i.i ], [ %i.lr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76.i ], [ %i.lr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75.i ], [ %i.lr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i73.i ]
  %common.resume.op.ph.i.i = phi { ptr, i32 } [ %i.ms, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i77.i.i ], [ %i.mt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82.i.i ], [ %i.mt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81.i.i ], [ %i.lx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76.i ], [ %i.lx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75.i ], [ %i.lw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i73.i ]
  call void @__cxa_free_exception(ptr %.sink.i.i) #46
  br label %common.resume

bb.al:                                            ; preds = %bb.aj
  unreachable

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i.i: ; preds = %.lr.ph110.i.i
  %i.mb = trunc i64 %i.ln to i32
  store i32 %i.mb, ptr %i.lh, align 1
  %.not118.i.i = icmp eq i64 %i.ln, 0
  br i1 %.not118.i.i, label %._crit_edge107.i.i, label %.preheader.i68.i

.preheader.i68.i:                                 ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i.i, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.1.i70.i
  %i.mc = phi i64 [ %i.nf, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.1.i70.i ], [ 0, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i.i ] ; 2 uses
  %.055106.i.i = phi i32 [ %i.ne, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.1.i70.i ], [ 0, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i.i ]
  %.lcssa97102105.i.i = phi ptr [ %i.mz, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.1.i70.i ], [ %i.lo, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i.i ] ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.lcssa97102105.i.i, i64 8 ; 3 uses
  %i.me = icmp ugt ptr %i.md, %i.lp
  br i1 %i.me, label %.noexc.i.i.i, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i69.i

._crit_edge107.i.i:                               ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.1.i70.i, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i.i
  %.lcssa97102.lcssa.i.i = phi ptr [ %i.lo, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i.i ], [ %i.mz, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.1.i70.i ]
  %i.mf = add i32 %.058109.i.i, 1                 ; 2 uses
  %i.mg = zext i32 %i.mf to i64                   ; 2 uses
  %i.mh = icmp ugt i64 %i.ji, %i.mg
  br i1 %i.mh, label %.lr.ph110.i.i, label %._crit_edge111.i.i, !llvm.loop !2956

.noexc.i.i.i:                                     ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i69.i, %.preheader.i68.i
  %.lcssa121.i.i = phi ptr [ %.lcssa97102105.i.i, %.preheader.i68.i ], [ %i.md, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i69.i ]
  %i.mi = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #46
end_hunk_1
begin_hunk_2_@_ZN6duckdb8Geometry20FromVectorizedFormatERNS_6VectorES2_mNS_12GeometryTypeENS_10VertexTypeEm:bb.a

bb.bn:                                            ; preds = %tailrecurse._crit_edge.i.i.i
  %i.tr = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i92.i.i, i64 32
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !427 ; 2 uses
  %i.tt = load i8, ptr %24, align 8, !tbaa !483
  %i.tu = icmp eq i8 %i.tt, 3
  br i1 %i.tu, label %tailrecurse.i98.i.i, label %_ZN6duckdb10ListVector16GetEntryInternalIKNS_6VectorEEERT_S5_.exit.i.i.i

tailrecurse.i98.i.i:                              ; preds = %bb.bn, %.noexc101.i.i
  %.tr1.i99.i.i = phi ptr [ %i.tx, %.noexc101.i.i ], [ %24, %bb.bn ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i99.i.i)
          to label %.noexc100.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !inline_history !485

.noexc100.i.i:                                    ; preds = %tailrecurse.i98.i.i
  %i.tv = getelementptr inbounds nuw i8, ptr %.tr1.i99.i.i, i64 88
  %i.tw = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tv)
          to label %.noexc101.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !inline_history !485

.noexc101.i.i:                                    ; preds = %.noexc100.i.i
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 48 ; 3 uses
  %i.ty = load i8, ptr %i.tx, align 8, !tbaa !483
  %i.tz = icmp eq i8 %i.ty, 3
  br i1 %i.tz, label %tailrecurse.i98.i.i, label %_ZN6duckdb10ListVector16GetEntryInternalIKNS_6VectorEEERT_S5_.exit.i.i.i

_ZN6duckdb10ListVector16GetEntryInternalIKNS_6VectorEEERT_S5_.exit.i.i.i: ; preds = %.noexc101.i.i, %bb.bn
  %.tr.lcssa.i97.i.i = phi ptr [ %24, %bb.bn ], [ %i.tx, %.noexc101.i.i ]
  %i.ua = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i97.i.i, i64 88
  %i.ub = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ua)
          to label %.noexc102.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !inline_history !485

.noexc102.i.i:                                    ; preds = %_ZN6duckdb10ListVector16GetEntryInternalIKNS_6VectorEEERT_S5_.exit.i.i.i
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 48
  %i.ud = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.uc)
          to label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i119.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !inline_history !485 ; 3 uses

_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i119.i: ; preds = %.noexc102.i.i
  %i.ue = load i8, ptr %i.ud, align 8, !tbaa !483
  %i.uf = icmp eq i8 %i.ue, 3
  br i1 %i.uf, label %tailrecurse.i.i.i146.i, label %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i.i

tailrecurse.i.i.i146.i:                           ; preds = %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i119.i, %.noexc105.i.i
  %.tr5.i.i.i147.i = phi ptr [ %i.ui, %.noexc105.i.i ], [ %i.ud, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i119.i ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i.i147.i)
          to label %.noexc104.i.i unwind label %.loopexit.i.i

.noexc104.i.i:                                    ; preds = %tailrecurse.i.i.i146.i
  %i.ug = getelementptr inbounds nuw i8, ptr %.tr5.i.i.i147.i, i64 88
  %i.uh = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ug)
          to label %.noexc105.i.i unwind label %.loopexit.i.i

.noexc105.i.i:                                    ; preds = %.noexc104.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 48 ; 3 uses
  %i.uj = load i8, ptr %i.ui, align 8, !tbaa !483
  %i.uk = icmp eq i8 %i.uj, 3
  br i1 %i.uk, label %tailrecurse.i.i.i146.i, label %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i.i

_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i.i: ; preds = %.noexc105.i.i, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i119.i
  %.tr.lcssa.i.i.i120.i = phi ptr [ %i.ud, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i119.i ], [ %i.ui, %.noexc105.i.i ]
  %i.ul = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i.i120.i, i64 88
  %i.um = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ul)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.bo:                                            ; preds = %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i.i
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 48 ; 2 uses
  %i.uo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.un, i64 noundef 0)
          to label %bb.bp unwind label %bb.bu

.lr.ph186.i.i:                                    ; preds = %.preheader142.i.i
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.uq = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %25, i64 4 ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.bv

.loopexit146.i.i:                                 ; preds = %.noexc.i148.i, %tailrecurse.i93.i.i
  %lpad.loopexit148.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp147.i.i:                        ; preds = %tailrecurse._crit_edge.i.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.i.i:                                    ; preds = %.noexc104.i.i, %tailrecurse.i.i.i146.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %.noexc100.i.i, %tailrecurse.i98.i.i
  %lpad.loopexit143.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i.i, %.noexc102.i.i, %_ZN6duckdb10ListVector16GetEntryInternalIKNS_6VectorEEERT_S5_.exit.i.i.i
  %lpad.loopexit.split-lp144.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.uv = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.uo)
          to label %bb.bq unwind label %bb.bu     ; 2 uses

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.uv)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 32
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !427
  %i.uy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.un, i64 noundef 1)
          to label %bb.bs unwind label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.uz = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.uy)
          to label %bb.bt unwind label %bb.bu     ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.uz)
          to label %.preheader142.i.i unwind label %bb.bu

.preheader142.i.i:                                ; preds = %bb.bt
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 32
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !427
  %.not.i121.i = icmp eq i64 %2, 0
  br i1 %.not.i121.i, label %_ZN6duckdbL20FromMultiLineStringsINS_8VertexXYEEEvRNS_6VectorES3_mm.exit.i, label %.lr.ph186.i.i

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo
  %i.vc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

bb.bv:                                            ; preds = %bb.dk, %.lr.ph186.i.i
  %.067184.i.i = phi i64 [ 0, %.lr.ph186.i.i ], [ %i.aaq, %bb.dk ] ; 5 uses
  %i.vd = add i64 %.067184.i.i, %5                ; 2 uses
  %i.ve = load ptr, ptr %i.up, align 8, !tbaa !519 ; 2 uses
  %.not.i.i.i122.i = icmp eq ptr %i.ve, null
  br i1 %.not.i.i.i122.i, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i124.i, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i123.i

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i123.i: ; preds = %bb.bv
  %i.vf = lshr i64 %.067184.i.i, 6
  %i.vg = and i64 %.067184.i.i, 63
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.ve, i64 %i.vf
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !108
  %i.vj = shl nuw i64 1, %i.vg
  %i.vk = and i64 %i.vi, %i.vj
  %i.vl = icmp eq i64 %i.vk, 0
  br i1 %i.vl, label %bb.bw, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i124.i

bb.bw:                                            ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i123.i
  invoke void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.vd, i1 noundef zeroext true)
          to label %bb.dk unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i124.i: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i123.i, %bb.bv
  %i.vn = getelementptr inbounds nuw [16 x i8], ptr %i.sy, i64 %.067184.i.i ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !550 ; 8 uses
  %.not188.i.i = icmp eq i64 %i.vp, 0             ; 2 uses
  br i1 %.not188.i.i, label %._crit_edge.thread.i145.i, label %.lr.ph.i125.i

._crit_edge.thread.i145.i:                        ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i124.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #46
  br label %bb.bz

.lr.ph.i125.i:                                    ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i124.i
  %i.vq = load i64, ptr %i.vn, align 8, !tbaa !552
  %i.vr = getelementptr [16 x i8], ptr %i.ts, i64 %i.vq ; 3 uses
  %min.iters.check442 = icmp ult i64 %i.vp, 9
  br i1 %min.iters.check442, label %scalar.ph441.preheader, label %vector.scevcheck440

vector.scevcheck440:                              ; preds = %.lr.ph.i125.i
  %i.vs = add i64 %i.vp, -1                       ; 2 uses
  %i.vt = and i64 %i.vs, 4294967295
  %i.vu = icmp eq i64 %i.vt, 4294967295
  %i.vv = icmp ugt i64 %i.vs, 4294967295
  %i.vw = or i1 %i.vu, %i.vv
  br i1 %i.vw, label %scalar.ph441.preheader, label %vector.ph443

vector.ph443:                                     ; preds = %vector.scevcheck440
  %n.mod.vf444 = and i64 %i.vp, 3                 ; 2 uses
  %i.vx = icmp eq i64 %n.mod.vf444, 0
  %i.vy = select i1 %i.vx, i64 4, i64 %n.mod.vf444
  %n.vec445 = sub nsw i64 %i.vp, %i.vy            ; 2 uses
  br label %vector.body446

vector.body446:                                   ; preds = %vector.body446, %vector.ph443
  %index447 = phi i64 [ 0, %vector.ph443 ], [ %index.next454, %vector.body446 ] ; 3 uses
  %vec.phi448 = phi <2 x i64> [ <i64 9, i64 0>, %vector.ph443 ], [ %i.wh, %vector.body446 ]
  %vec.phi449 = phi <2 x i64> [ zeroinitializer, %vector.ph443 ], [ %i.wi, %vector.body446 ]
  %i.vz = getelementptr [16 x i8], ptr %i.vr, i64 %index447
  %i.wa = getelementptr [16 x i8], ptr %i.vr, i64 %index447
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wc = getelementptr i8, ptr %i.wa, i64 40
  %53 = load <3 x i64>, ptr %i.wb, align 8, !tbaa !550
  %strided.vec451 = shufflevector <3 x i64> %53, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %54 = load <3 x i64>, ptr %i.wc, align 8, !tbaa !550
  %strided.vec453 = shufflevector <3 x i64> %54, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.wd = add <2 x i64> %vec.phi448, splat (i64 9)
  %i.we = add <2 x i64> %vec.phi449, splat (i64 9)
  %i.wf = shl <2 x i64> %strided.vec451, splat (i64 4)
  %i.wg = shl <2 x i64> %strided.vec453, splat (i64 4)
  %i.wh = add <2 x i64> %i.wd, %i.wf              ; 2 uses
  %i.wi = add <2 x i64> %i.we, %i.wg              ; 2 uses
  %index.next454 = add nuw i64 %index447, 4       ; 2 uses
  %i.wj = icmp eq i64 %index.next454, %n.vec445
  br i1 %i.wj, label %middle.block455, label %vector.body446, !llvm.loop !2963

middle.block455:                                  ; preds = %vector.body446
  %bin.rdx456 = add <2 x i64> %i.wi, %i.wh
  %i.wk = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx456)
  br label %scalar.ph441.preheader

scalar.ph441.preheader:                           ; preds = %vector.scevcheck440, %.lr.ph.i125.i, %middle.block455
  %indvars.iv.i126.i.ph = phi i64 [ 0, %vector.scevcheck440 ], [ 0, %.lr.ph.i125.i ], [ %n.vec445, %middle.block455 ]
  %.069167.i.i.ph = phi i64 [ 9, %vector.scevcheck440 ], [ 9, %.lr.ph.i125.i ], [ %i.wk, %middle.block455 ]
  br label %scalar.ph441

._crit_edge.i128.i:                               ; preds = %scalar.ph441
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #46
  %i.wl = icmp ult i64 %i.ww, 13
  br i1 %i.wl, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %._crit_edge.i128.i
  %i.wm = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc108.i.i unwind label %bb.ce

.noexc108.i.i:                                    ; preds = %bb.by
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 48
  %i.wo = invoke { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.wn, i64 noundef %i.ww)
          to label %.noexc109.i.i unwind label %bb.ce ; 2 uses

.noexc109.i.i:                                    ; preds = %.noexc108.i.i
  %i.wp = extractvalue { i64, ptr } %i.wo, 0      ; 2 uses
  %.sroa.3.0.extract.shift.i.i129.i = and i64 %i.wp, -4294967296
  %i.wq = extractvalue { i64, ptr } %i.wo, 1
  br label %bb.bz

scalar.ph441:                                     ; preds = %scalar.ph441.preheader, %scalar.ph441
  %indvars.iv.i126.i = phi i64 [ %indvars.iv.next.i127.i, %scalar.ph441 ], [ %indvars.iv.i126.i.ph, %scalar.ph441.preheader ] ; 2 uses
  %.069167.i.i = phi i64 [ %i.ww, %scalar.ph441 ], [ %.069167.i.i.ph, %scalar.ph441.preheader ]
  %i.wr = getelementptr [16 x i8], ptr %i.vr, i64 %indvars.iv.i126.i
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !550
  %i.wu = add i64 %.069167.i.i, 9
  %i.wv = shl i64 %i.wt, 4
  %i.ww = add i64 %i.wu, %i.wv                    ; 6 uses
  %indvars.iv.next.i127.i = add i64 %indvars.iv.i126.i, 1 ; 2 uses
  %i.wx = and i64 %indvars.iv.next.i127.i, 4294967295
  %i.wy = icmp ugt i64 %i.vp, %i.wx
  br i1 %i.wy, label %scalar.ph441, label %._crit_edge.i128.i, !llvm.loop !2964

bb.bz:                                            ; preds = %.noexc109.i.i, %._crit_edge.i128.i, %._crit_edge.thread.i145.i
  %.069.lcssa237.i.i = phi i64 [ %i.ww, %.noexc109.i.i ], [ %i.ww, %._crit_edge.i128.i ], [ 9, %._crit_edge.thread.i145.i ]
  %.sroa.34.0.i.i130.i = phi ptr [ %i.wq, %.noexc109.i.i ], [ undef, %._crit_edge.i128.i ], [ undef, %._crit_edge.thread.i145.i ] ; 2 uses
  %.sroa.3.0.i.i131.i = phi i64 [ %.sroa.3.0.extract.shift.i.i129.i, %.noexc109.i.i ], [ 0, %._crit_edge.i128.i ], [ 0, %._crit_edge.thread.i145.i ]
  %.sroa.0.0.in.i.i132.i = phi i64 [ %i.wp, %.noexc109.i.i ], [ %i.ww, %._crit_edge.i128.i ], [ 9, %._crit_edge.thread.i145.i ] ; 2 uses
  %.sroa.0.0.insert.ext.i.i133.i = and i64 %.sroa.0.0.in.i.i132.i, 4294967295
  %.sroa.0.0.insert.insert.i.i134.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i133.i, %.sroa.3.0.i.i131.i
  store i64 %.sroa.0.0.insert.insert.i.i134.i, ptr %25, align 8
  store ptr %.sroa.34.0.i.i130.i, ptr %i.uq, align 8
  %i.wz = trunc i64 %.sroa.0.0.in.i.i132.i to i32
  %i.xa = icmp ult i32 %i.wz, 13
  %i.xb = select i1 %i.xa, ptr %i.ur, ptr %.sroa.34.0.i.i130.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #46
  store ptr %i.xb, ptr %26, align 8, !tbaa !2024
  store ptr %i.xb, ptr %i.us, align 8, !tbaa !2026
  %i.xc = and i64 %.069.lcssa237.i.i, 4294967295
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 %i.xc
  store ptr %i.xd, ptr %i.ut, align 8, !tbaa !2027
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 1)
          to label %bb.ca unwind label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %26, i32 5)
          to label %bb.cb unwind label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.xe = trunc nuw i64 %i.vp to i32
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %26, i32 %i.xe)
          to label %.preheader141.i.i unwind label %bb.ch

.preheader141.i.i:                                ; preds = %bb.cb
  br i1 %.not188.i.i, label %._crit_edge183.i.i, label %.lr.ph182.preheader.i.i

.lr.ph182.preheader.i.i:                          ; preds = %.preheader141.i.i
  %.pre.i135.i = load ptr, ptr %i.us, align 8, !tbaa !2026
  br label %.lr.ph182.i.i

._crit_edge183.i.i:                               ; preds = %._crit_edge179.i.i, %.preheader141.i.i
  %i.xf = load i32, ptr %25, align 8, !tbaa !153  ; 2 uses
  %i.xg = icmp ult i32 %i.xf, 13
  br i1 %i.xg, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %._crit_edge183.i.i
  %i.xh = zext nneg i32 %i.xf to i64              ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.ur, i64 %i.xh
  %i.xj = sub nuw nsw i64 12, %i.xh
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.xi, i8 0, i64 %i.xj, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i137.i

bb.cd:                                            ; preds = %._crit_edge183.i.i
  %i.xk = load ptr, ptr %i.uq, align 8
  %i.xl = load i32, ptr %i.xk, align 1
  store i32 %i.xl, ptr %i.ur, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i137.i

bb.ce:                                            ; preds = %.noexc108.i.i, %bb.by
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.cf:                                            ; preds = %bb.bz
  %i.xn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.cg:                                            ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit.i137.i, %bb.ca
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ch:                                            ; preds = %bb.cb
  %i.xp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.lr.ph182.i.i:                                    ; preds = %._crit_edge179.i.i, %.lr.ph182.preheader.i.i
  %i.xq = phi ptr [ %.lcssa169174.lcssa.i.i, %._crit_edge179.i.i ], [ %.pre.i135.i, %.lr.ph182.preheader.i.i ] ; 5 uses
  %i.xr = phi i64 [ %i.zn, %._crit_edge179.i.i ], [ 0, %.lr.ph182.preheader.i.i ]
  %.065181.i.i = phi i32 [ %i.zm, %._crit_edge179.i.i ], [ 0, %.lr.ph182.preheader.i.i ]
  %i.xs = load i64, ptr %i.vn, align 8, !tbaa !552
  %i.xt = getelementptr [16 x i8], ptr %i.ts, i64 %i.xs
  %i.xu = getelementptr [16 x i8], ptr %i.xt, i64 %i.xr ; 3 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !550 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xq, i64 1 ; 3 uses
  %i.xy = load ptr, ptr %i.ut, align 8, !tbaa !2027 ; 5 uses
  %i.xz = icmp ugt ptr %i.xx, %i.xy
  br i1 %i.xz, label %bb.ci, label %bb.co

bb.ci:                                            ; preds = %.lr.ph182.i.i
  %i.ya = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.cj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i140.i

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #46
  %i.yb = load ptr, ptr %26, align 8, !tbaa !2024
  %i.yc = ptrtoint ptr %i.xq to i64
  %i.yd = ptrtoint ptr %i.yb to i64
  %i.ye = sub i64 %i.yc, %i.yd
  store i64 %i.ye, ptr %i.k, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ya, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  invoke void @__cxa_throw(ptr nonnull %i.ya, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.cn unwind label %bb.cl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i140.i: ; preds = %bb.ci
  %i.yf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #46
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.04.i.i142.i = phi i1 [ false, %bb.ck ], [ true, %bb.cj ] ; 2 uses
  %i.yg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #46
  %i.yh = load ptr, ptr %22, align 8, !tbaa !89   ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.yj = icmp eq ptr %i.yh, %i.yi
  br i1 %i.yj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i144.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i143.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i143.i: ; preds = %bb.cl
  call void @_ZdlPv(ptr noundef %i.yh) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #46
  br i1 %.04.i.i142.i, label %bb.cm, label %.body.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i144.i: ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #46
  br i1 %.04.i.i142.i, label %bb.cm, label %.body.i.i

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i144.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i143.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i140.i
  %.pn4.i.i141.i = phi { ptr, i32 } [ %i.yf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i140.i ], [ %i.yg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i144.i ], [ %i.yg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i143.i ]
  call void @__cxa_free_exception(ptr %i.ya) #46
  br label %.body.i.i

bb.cn:                                            ; preds = %bb.ck
  unreachable

end_hunk_2
begin_hunk_3_@_ZN6duckdb8Geometry20FromVectorizedFormatERNS_6VectorES2_mNS_12GeometryTypeENS_10VertexTypeEm:bb.a
  %i.ace = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.acd), !inline_history !485 ; 6 uses
  %i.acf = load i8, ptr %i.ace, align 8, !tbaa !483
  %i.acg = icmp eq i8 %i.acf, 3
  br i1 %i.acg, label %tailrecurse.i103.i.i, label %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i.i

tailrecurse.i103.i.i:                             ; preds = %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i156.i, %tailrecurse.i103.i.i
  %.tr5.i104.i.i = phi ptr [ %i.acj, %tailrecurse.i103.i.i ], [ %i.ace, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i156.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i104.i.i), !inline_history !2953
  %i.ach = getelementptr inbounds nuw i8, ptr %.tr5.i104.i.i, i64 88
  %i.aci = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ach), !inline_history !2953
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 48 ; 3 uses
  %i.ack = load i8, ptr %i.acj, align 8, !tbaa !483
  %i.acl = icmp eq i8 %i.ack, 3
  br i1 %i.acl, label %tailrecurse.i103.i.i, label %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i.i

_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i.i: ; preds = %tailrecurse.i103.i.i, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i156.i
  %.tr.lcssa.i102.i.i = phi ptr [ %i.ace, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i156.i ], [ %i.acj, %tailrecurse.i103.i.i ] ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKNS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i102.i.i), !inline_history !2953
  %i.acm = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i102.i.i, i64 32
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !427 ; 2 uses
  %i.aco = load i8, ptr %i.ace, align 8, !tbaa !483
  %i.acp = icmp eq i8 %i.aco, 3
  br i1 %i.acp, label %tailrecurse.i107.i.i, label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i.i

tailrecurse.i107.i.i:                             ; preds = %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i.i, %tailrecurse.i107.i.i
  %.tr1.i108.i.i = phi ptr [ %i.acs, %tailrecurse.i107.i.i ], [ %i.ace, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i108.i.i), !inline_history !485
  %i.acq = getelementptr inbounds nuw i8, ptr %.tr1.i108.i.i, i64 88
  %i.acr = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.acq), !inline_history !485
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 48 ; 3 uses
  %i.act = load i8, ptr %i.acs, align 8, !tbaa !483
  %i.acu = icmp eq i8 %i.act, 3
  br i1 %i.acu, label %tailrecurse.i107.i.i, label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i.i

_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i.i: ; preds = %tailrecurse.i107.i.i, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i.i
  %.tr.lcssa.i106.i.i = phi ptr [ %i.ace, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i.i ], [ %i.acs, %tailrecurse.i107.i.i ]
  %i.acv = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i106.i.i, i64 88
  %i.acw = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.acv), !inline_history !486
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 48
  %i.acy = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.acx), !inline_history !485 ; 3 uses
  %i.acz = load i8, ptr %i.acy, align 8, !tbaa !483
  %i.ada = icmp eq i8 %i.acz, 3
  br i1 %i.ada, label %tailrecurse.i.i.i199.i, label %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i157.i

tailrecurse.i.i.i199.i:                           ; preds = %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i.i, %tailrecurse.i.i.i199.i
  %.tr5.i.i.i200.i = phi ptr [ %i.add, %tailrecurse.i.i.i199.i ], [ %i.acy, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i.i200.i), !inline_history !506
  %i.adb = getelementptr inbounds nuw i8, ptr %.tr5.i.i.i200.i, i64 88
  %i.adc = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adb), !inline_history !506
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 48 ; 3 uses
  %i.ade = load i8, ptr %i.add, align 8, !tbaa !483
  %i.adf = icmp eq i8 %i.ade, 3
  br i1 %i.adf, label %tailrecurse.i.i.i199.i, label %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i157.i

_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i157.i: ; preds = %tailrecurse.i.i.i199.i, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i.i
  %.tr.lcssa.i.i.i158.i = phi ptr [ %i.acy, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i.i ], [ %i.add, %tailrecurse.i.i.i199.i ]
  %i.adg = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i.i158.i, i64 88
  %i.adh = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adg), !inline_history !506
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 48 ; 2 uses
  %i.adj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.adi, i64 noundef 0)
  %i.adk = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.adj) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.adk)
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 32
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !427
  %i.adn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.adi, i64 noundef 1)
  %i.ado = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.adn) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ado)
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 32
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !427
  %.not.i159.i = icmp eq i64 %2, 0
  br i1 %.not.i159.i, label %_ZN6duckdbL28FromVectorizedFormatInternalINS_8VertexXYEEEvRNS_6VectorES3_mNS_12GeometryTypeEm.exit, label %.lr.ph193.i.i

.lr.ph193.i.i:                                    ; preds = %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i157.i
  %i.adr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ads = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 3 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.dn

bb.dn:                                            ; preds = %bb.eq, %.lr.ph193.i.i
  %.075191.i.i = phi i64 [ 0, %.lr.ph193.i.i ], [ %i.akm, %bb.eq ] ; 5 uses
  %i.adx = add i64 %.075191.i.i, %5               ; 2 uses
  %i.ady = load ptr, ptr %i.adr, align 8, !tbaa !519 ; 2 uses
  %.not.i.i.i160.i = icmp eq ptr %i.ady, null
  br i1 %.not.i.i.i160.i, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i162.i, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i161.i

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i161.i: ; preds = %bb.dn
  %i.adz = lshr i64 %.075191.i.i, 6
  %i.aea = and i64 %.075191.i.i, 63
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %i.adz
  %i.aec = load i64, ptr %i.aeb, align 8, !tbaa !108
  %i.aed = shl nuw i64 1, %i.aea
  %i.aee = and i64 %i.aec, %i.aed
  %i.aef = icmp eq i64 %i.aee, 0
  br i1 %i.aef, label %bb.do, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i162.i

bb.do:                                            ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i161.i
  call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.adx, i1 noundef zeroext true)
  br label %bb.eq

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i162.i: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i161.i, %bb.dn
  %i.aeg = getelementptr inbounds nuw [16 x i8], ptr %i.aaz, i64 %.075191.i.i ; 3 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %i.aei = load i64, ptr %i.aeh, align 8, !tbaa !550 ; 4 uses
  %.not195.i.i = icmp eq i64 %i.aei, 0            ; 2 uses
  br i1 %.not195.i.i, label %._crit_edge171.thread.i.i, label %.lr.ph170.i.i

._crit_edge171.thread.i.i:                        ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i162.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #46
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i168.i

.lr.ph170.i.i:                                    ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i162.i
  %i.aej = load i64, ptr %i.aeg, align 8, !tbaa !552
  %i.aek = getelementptr [16 x i8], ptr %i.abt, i64 %i.aej
  br label %bb.dq

._crit_edge171.i.i:                               ; preds = %._crit_edge.i166.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #46
  %i.ael = icmp ult i64 %.1.lcssa.i.i, 13
  br i1 %i.ael, label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i168.i, label %bb.dp

bb.dp:                                            ; preds = %._crit_edge171.i.i
  %i.aem = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 48
  %i.aeo = call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.aen, i64 noundef %.1.lcssa.i.i) ; 2 uses
  %i.aep = extractvalue { i64, ptr } %i.aeo, 0    ; 2 uses
  %.sroa.3.0.extract.shift.i.i167.i = and i64 %i.aep, -4294967296
  %i.aeq = extractvalue { i64, ptr } %i.aeo, 1
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i168.i

_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i168.i: ; preds = %bb.dp, %._crit_edge171.i.i, %._crit_edge171.thread.i.i
  %.077.lcssa263.i.i = phi i64 [ %.1.lcssa.i.i, %bb.dp ], [ %.1.lcssa.i.i, %._crit_edge171.i.i ], [ 9, %._crit_edge171.thread.i.i ]
  %.sroa.34.0.i.i169.i = phi ptr [ %i.aeq, %bb.dp ], [ undef, %._crit_edge171.i.i ], [ undef, %._crit_edge171.thread.i.i ] ; 2 uses
  %.sroa.3.0.i.i170.i = phi i64 [ %.sroa.3.0.extract.shift.i.i167.i, %bb.dp ], [ 0, %._crit_edge171.i.i ], [ 0, %._crit_edge171.thread.i.i ]
  %.sroa.0.0.in.i.i171.i = phi i64 [ %i.aep, %bb.dp ], [ %.1.lcssa.i.i, %._crit_edge171.i.i ], [ 9, %._crit_edge171.thread.i.i ] ; 2 uses
  %.sroa.0.0.insert.ext.i.i172.i = and i64 %.sroa.0.0.in.i.i171.i, 4294967295
  %.sroa.0.0.insert.insert.i.i173.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i172.i, %.sroa.3.0.i.i170.i
  store i64 %.sroa.0.0.insert.insert.i.i173.i, ptr %15, align 8
  store ptr %.sroa.34.0.i.i169.i, ptr %i.ads, align 8
  %i.aer = trunc i64 %.sroa.0.0.in.i.i171.i to i32
  %i.aes = icmp ult i32 %i.aer, 13
  %i.aet = select i1 %i.aes, ptr %i.adt, ptr %.sroa.34.0.i.i169.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #46
  store ptr %i.aet, ptr %16, align 8, !tbaa !2024
  store ptr %i.aet, ptr %i.adu, align 8, !tbaa !2026
  %i.aeu = and i64 %.077.lcssa263.i.i, 4294967295
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.aeu
  store ptr %i.aev, ptr %i.adv, align 8, !tbaa !2027
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 1)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %16, i32 6)
  %i.aew = trunc nuw i64 %i.aei to i32
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %16, i32 %i.aew)
  br i1 %.not195.i.i, label %._crit_edge190.i.i, label %.lr.ph189.preheader.i.i

.lr.ph189.preheader.i.i:                          ; preds = %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i168.i
  %.pre.i174.i = load ptr, ptr %i.adu, align 8, !tbaa !2026
  br label %.lr.ph189.i.i

bb.dq:                                            ; preds = %._crit_edge.i166.i, %.lr.ph170.i.i
  %indvars.iv232.i.i = phi i64 [ 0, %.lr.ph170.i.i ], [ %indvars.iv.next233.i.i, %._crit_edge.i166.i ] ; 2 uses
  %.077169.i.i = phi i64 [ 9, %.lr.ph170.i.i ], [ %.1.lcssa.i.i, %._crit_edge.i166.i ]
  %i.aex = getelementptr [16 x i8], ptr %i.aek, i64 %indvars.iv232.i.i ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  %i.aez = load i64, ptr %i.aey, align 8, !tbaa !550 ; 6 uses
  %i.afa = add i64 %.077169.i.i, 9                ; 4 uses
  %.not196.i.i = icmp eq i64 %i.aez, 0
  br i1 %.not196.i.i, label %._crit_edge.i166.i, label %.lr.ph.i163.i

.lr.ph.i163.i:                                    ; preds = %bb.dq
  %i.afb = load i64, ptr %i.aex, align 8, !tbaa !552
  %i.afc = getelementptr [16 x i8], ptr %i.acn, i64 %i.afb ; 3 uses
  %min.iters.check = icmp ult i64 %i.aez, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i163.i
  %i.afd = add i64 %i.aez, -1                     ; 2 uses
  %i.afe = and i64 %i.afd, 4294967295
  %i.aff = icmp eq i64 %i.afe, 4294967295
  %i.afg = icmp ugt i64 %i.afd, 4294967295
  %i.afh = or i1 %i.aff, %i.afg
  br i1 %i.afh, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.mod.vf = and i64 %i.aez, 3                   ; 2 uses
  %i.afi = icmp eq i64 %n.mod.vf, 0
  %i.afj = select i1 %i.afi, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.aez, %i.afj             ; 2 uses
  %i.afk = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.afa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.afk, %vector.ph ], [ %i.aft, %vector.body ]
  %vec.phi437 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.afu, %vector.body ]
  %i.afl = getelementptr [16 x i8], ptr %i.afc, i64 %index
  %i.afm = getelementptr [16 x i8], ptr %i.afc, i64 %index
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  %i.afo = getelementptr i8, ptr %i.afm, i64 40
  %55 = load <3 x i64>, ptr %i.afn, align 8, !tbaa !550
  %strided.vec = shufflevector <3 x i64> %55, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %56 = load <3 x i64>, ptr %i.afo, align 8, !tbaa !550
  %strided.vec439 = shufflevector <3 x i64> %56, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.afp = add <2 x i64> %vec.phi, splat (i64 4)
  %i.afq = add <2 x i64> %vec.phi437, splat (i64 4)
  %i.afr = shl <2 x i64> %strided.vec, splat (i64 4)
  %i.afs = shl <2 x i64> %strided.vec439, splat (i64 4)
  %i.aft = add <2 x i64> %i.afp, %i.afr           ; 2 uses
  %i.afu = add <2 x i64> %i.afq, %i.afs           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.afv = icmp eq i64 %index.next, %n.vec
  br i1 %i.afv, label %middle.block, label %vector.body, !llvm.loop !2968

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.afu, %i.aft
  %i.afw = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph.i163.i, %middle.block
  %indvars.iv.i164.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i163.i ], [ %n.vec, %middle.block ]
  %.1167.i.i.ph = phi i64 [ %i.afa, %vector.scevcheck ], [ %i.afa, %.lr.ph.i163.i ], [ %i.afw, %middle.block ]
  br label %scalar.ph

._crit_edge.i166.i:                               ; preds = %scalar.ph, %bb.dq
  %.1.lcssa.i.i = phi i64 [ %i.afa, %bb.dq ], [ %i.age, %scalar.ph ] ; 6 uses
  %indvars.iv.next233.i.i = add i64 %indvars.iv232.i.i, 1 ; 2 uses
  %i.afx = and i64 %indvars.iv.next233.i.i, 4294967295
  %i.afy = icmp ugt i64 %i.aei, %i.afx
  br i1 %i.afy, label %bb.dq, label %._crit_edge171.i.i, !llvm.loop !2969

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i164.i = phi i64 [ %indvars.iv.next.i165.i, %scalar.ph ], [ %indvars.iv.i164.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.1167.i.i = phi i64 [ %i.age, %scalar.ph ], [ %.1167.i.i.ph, %scalar.ph.preheader ]
  %i.afz = getelementptr [16 x i8], ptr %i.afc, i64 %indvars.iv.i164.i
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 8
  %i.agb = load i64, ptr %i.aga, align 8, !tbaa !550
  %i.agc = add i64 %.1167.i.i, 4
  %i.agd = shl i64 %i.agb, 4
  %i.age = add i64 %i.agc, %i.agd                 ; 2 uses
  %indvars.iv.next.i165.i = add i64 %indvars.iv.i164.i, 1 ; 2 uses
  %i.agf = and i64 %indvars.iv.next.i165.i, 4294967295
  %i.agg = icmp ugt i64 %i.aez, %i.agf
  br i1 %i.agg, label %scalar.ph, label %._crit_edge.i166.i, !llvm.loop !2970

._crit_edge190.i.i:                               ; preds = %._crit_edge187.i.i, %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i168.i
  %i.agh = load i32, ptr %15, align 8, !tbaa !153 ; 2 uses
  %i.agi = icmp ult i32 %i.agh, 13
  br i1 %i.agi, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %._crit_edge190.i.i
  %i.agj = zext nneg i32 %i.agh to i64            ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.adt, i64 %i.agj
  %i.agl = sub nuw nsw i64 12, %i.agj
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.agk, i8 0, i64 %i.agl, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i182.i

bb.ds:                                            ; preds = %._crit_edge190.i.i
  %i.agm = load ptr, ptr %i.ads, align 8
  %i.agn = load i32, ptr %i.agm, align 1
  store i32 %i.agn, ptr %i.adt, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i182.i

_ZN6duckdb8string_t8FinalizeEv.exit.i182.i:       ; preds = %bb.ds, %bb.dr
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ago = load ptr, ptr %i.adw, align 8, !tbaa !427
  %i.agp = getelementptr inbounds nuw [16 x i8], ptr %i.ago, i64 %i.adx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agp, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !707
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  br label %bb.eq

.lr.ph189.i.i:                                    ; preds = %._crit_edge187.i.i, %.lr.ph189.preheader.i.i
  %i.agq = phi ptr [ %i.aij, %._crit_edge187.i.i ], [ %.pre.i174.i, %.lr.ph189.preheader.i.i ] ; 5 uses
  %i.agr = phi i64 [ %i.ail, %._crit_edge187.i.i ], [ 0, %.lr.ph189.preheader.i.i ]
  %.078188.i.i = phi i32 [ %i.aik, %._crit_edge187.i.i ], [ 0, %.lr.ph189.preheader.i.i ]
  %i.ags = load i64, ptr %i.aeg, align 8, !tbaa !552
  %i.agt = getelementptr [16 x i8], ptr %i.abt, i64 %i.ags
  %i.agu = getelementptr [16 x i8], ptr %i.agt, i64 %i.agr ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  %i.agw = load i64, ptr %i.agv, align 8, !tbaa !550 ; 3 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agq, i64 1 ; 3 uses
  %i.agy = load ptr, ptr %i.adv, align 8, !tbaa !2027 ; 6 uses
  %i.agz = icmp ugt ptr %i.agx, %i.agy
  br i1 %i.agz, label %bb.dt, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_.exit.i175.i

bb.dt:                                            ; preds = %.lr.ph189.i.i
  %i.aha = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.du unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i195.i

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  %i.ahb = load ptr, ptr %16, align 8, !tbaa !2024
  %i.ahc = ptrtoint ptr %i.agq to i64
  %i.ahd = ptrtoint ptr %i.ahb to i64
  %i.ahe = sub i64 %i.ahc, %i.ahd
  store i64 %i.ahe, ptr %i.f, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aha, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.dv unwind label %bb.dw

bb.dv:                                            ; preds = %bb.du
  invoke void @__cxa_throw(ptr nonnull %i.aha, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.dx unwind label %bb.dw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i195.i: ; preds = %bb.dt
  %i.ahf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  br label %common.resume.sink.split.i185.i

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.04.i.i196.i = phi i1 [ false, %bb.dv ], [ true, %bb.du ] ; 2 uses
  %i.ahg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  %i.ahh = load ptr, ptr %13, align 8, !tbaa !89  ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ahj = icmp eq ptr %i.ahh, %i.ahi
  br i1 %i.ahj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i198.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i197.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i197.i: ; preds = %bb.dw
  call void @_ZdlPv(ptr noundef %i.ahh) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  br i1 %.04.i.i196.i, label %common.resume.sink.split.i185.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i198.i: ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  br i1 %.04.i.i196.i, label %common.resume.sink.split.i185.i, label %common.resume

common.resume.sink.split.i185.i:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i135.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i130.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i123.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i116.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i194.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i193.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i191.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i198.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i197.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i195.i
  %.sink.i186.i = phi ptr [ %i.aiw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i123.i.i ], [ %i.ahy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i116.i.i ], [ %i.ahm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i191.i ], [ %i.ajn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i130.i.i ], [ %i.ahm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i194.i ], [ %i.ahm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i193.i ], [ %i.ahy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i.i ], [ %i.ahy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i.i ], [ %i.aiw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128.i.i ], [ %i.aiw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i.i ], [ %i.ajn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i135.i.i ], [ %i.ajn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i.i ], [ %i.aha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i198.i ], [ %i.aha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i197.i ], [ %i.aha, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i195.i ]
  %common.resume.op.ph.i187.i = phi { ptr, i32 } [ %i.ajb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i123.i.i ], [ %i.aid, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i116.i.i ], [ %i.ahr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i191.i ], [ %i.ajx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i130.i.i ], [ %i.ahs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i194.i ], [ %i.ahs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i193.i ], [ %i.aie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i.i ], [ %i.aie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i.i ], [ %i.ajc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128.i.i ], [ %i.ajc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i.i ], [ %i.ajy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i135.i.i ], [ %i.ajy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i.i ], [ %i.ahg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i198.i ], [ %i.ahg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i197.i ], [ %i.ahf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i195.i ]
  call void @__cxa_free_exception(ptr %.sink.i186.i) #46
  br label %common.resume

bb.dx:                                            ; preds = %bb.dv
  unreachable

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_.exit.i175.i: ; preds = %.lr.ph189.i.i
  store i8 1, ptr %i.agq, align 1
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agq, i64 5 ; 3 uses
  %i.ahl = icmp ugt ptr %i.ahk, %i.agy
  br i1 %i.ahl, label %bb.dy, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i176.i

bb.dy:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_.exit.i175.i
  %i.ahm = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.dz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i191.i

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  %i.ahn = load ptr, ptr %16, align 8, !tbaa !2024
  %i.aho = ptrtoint ptr %i.agx to i64
  %i.ahp = ptrtoint ptr %i.ahn to i64
  %i.ahq = sub i64 %i.aho, %i.ahp
  store i64 %i.ahq, ptr %i.e, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ahm, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ea unwind label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  invoke void @__cxa_throw(ptr nonnull %i.ahm, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ec unwind label %bb.eb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i191.i: ; preds = %bb.dy
  %i.ahr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  br label %common.resume.sink.split.i185.i

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.04.i113.i192.i = phi i1 [ false, %bb.ea ], [ true, %bb.dz ] ; 2 uses
  %i.ahs = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  %i.aht = load ptr, ptr %11, align 8, !tbaa !89  ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ahv = icmp eq ptr %i.aht, %i.ahu
  br i1 %i.ahv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i194.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i193.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i193.i: ; preds = %bb.eb
  call void @_ZdlPv(ptr noundef %i.aht) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  br i1 %.04.i113.i192.i, label %common.resume.sink.split.i185.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i194.i: ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  br i1 %.04.i113.i192.i, label %common.resume.sink.split.i185.i, label %common.resume

bb.ec:                                            ; preds = %bb.ea
  unreachable

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i176.i: ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_.exit.i175.i
  store i32 3, ptr %i.agx, align 1
end_hunk_3
begin_hunk_4_@_ZN6duckdbL28FromVectorizedFormatInternalINS_9VertexXYZEEEvRNS_6VectorES3_mNS_12GeometryTypeEm:bb.a
  %i.gv = getelementptr [8 x i8], ptr %i.gu, i64 %i.fn
  %.val42.2.i = load double, ptr %i.gv, align 8
  store double %.val42.2.i, ptr %i.gm, align 1
  %i.gw = add i32 %.03664.i, 1                    ; 2 uses
  %i.gx = zext i32 %i.gw to i64                   ; 2 uses
  %i.gy = icmp ugt i64 %i.ey, %i.gx
  br i1 %i.gy, label %.preheader.i, label %._crit_edge.i, !llvm.loop !2976

bb.z:                                             ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit.i42, %bb.p
  %i.gz = add nuw i64 %.03865.i, 1                ; 2 uses
  %exitcond.not.i43 = icmp eq i64 %i.gz, %2
  br i1 %exitcond.not.i43, label %_ZN6duckdbL10FromPointsINS_9VertexXYZEEEvRNS_6VectorES3_mm.exit, label %bb.o, !llvm.loop !2977

bb.aa:                                            ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2)
  %i.ha = load i8, ptr %0, align 8, !tbaa !483
  %i.hb = icmp eq i8 %i.ha, 3
  br i1 %i.hb, label %tailrecurse.i.i80, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i52

tailrecurse.i.i80:                                ; preds = %bb.aa, %tailrecurse.i.i80
  %.tr5.i.i81 = phi ptr [ %i.he, %tailrecurse.i.i80 ], [ %0, %bb.aa ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i81), !inline_history !2854
  %i.hc = getelementptr inbounds nuw i8, ptr %.tr5.i.i81, i64 88
  %i.hd = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hc), !inline_history !2854
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 48 ; 3 uses
  %i.hf = load i8, ptr %i.he, align 8, !tbaa !483
  %i.hg = icmp eq i8 %i.hf, 3
  br i1 %i.hg, label %tailrecurse.i.i80, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i52

_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i52: ; preds = %tailrecurse.i.i80, %bb.aa
  %.tr.lcssa.i.i53 = phi ptr [ %0, %bb.aa ], [ %i.he, %tailrecurse.i.i80 ] ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i.i53), !inline_history !2854
  %i.hh = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i53, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !427
  %i.hj = load i8, ptr %0, align 8, !tbaa !483
  %i.hk = icmp eq i8 %i.hj, 3
  br i1 %i.hk, label %tailrecurse.i70.i, label %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i54

tailrecurse.i70.i:                                ; preds = %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i52, %tailrecurse.i70.i
  %.tr1.i.i79 = phi ptr [ %i.hn, %tailrecurse.i70.i ], [ %0, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i52 ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i.i79), !inline_history !596
  %i.hl = getelementptr inbounds nuw i8, ptr %.tr1.i.i79, i64 88
  %i.hm = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hl), !inline_history !596
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 48 ; 3 uses
  %i.ho = load i8, ptr %i.hn, align 8, !tbaa !483
  %i.hp = icmp eq i8 %i.ho, 3
  br i1 %i.hp, label %tailrecurse.i70.i, label %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i54

_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i54: ; preds = %tailrecurse.i70.i, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i52
  %.tr.lcssa.i69.i = phi ptr [ %0, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i52 ], [ %i.hn, %tailrecurse.i70.i ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i69.i, i64 88
  %i.hr = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hq), !inline_history !595
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 48
  %i.ht = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hs), !inline_history !596 ; 6 uses
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !483
  %i.hv = icmp eq i8 %i.hu, 3
  br i1 %i.hv, label %tailrecurse.i72.i, label %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i

tailrecurse.i72.i:                                ; preds = %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i54, %tailrecurse.i72.i
  %.tr5.i73.i = phi ptr [ %i.hy, %tailrecurse.i72.i ], [ %i.ht, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i54 ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i73.i), !inline_history !2953
  %i.hw = getelementptr inbounds nuw i8, ptr %.tr5.i73.i, i64 88
  %i.hx = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hw), !inline_history !2953
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48 ; 3 uses
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !483
  %i.ia = icmp eq i8 %i.hz, 3
  br i1 %i.ia, label %tailrecurse.i72.i, label %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i

_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i: ; preds = %tailrecurse.i72.i, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i54
  %.tr.lcssa.i71.i = phi ptr [ %i.ht, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i54 ], [ %i.hy, %tailrecurse.i72.i ] ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKNS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i71.i), !inline_history !2953
  %i.ib = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i71.i, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !427 ; 2 uses
  %i.id = load i8, ptr %i.ht, align 8, !tbaa !483
  %i.ie = icmp eq i8 %i.id, 3
  br i1 %i.ie, label %tailrecurse.i75.i, label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i

tailrecurse.i75.i:                                ; preds = %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i, %tailrecurse.i75.i
  %.tr1.i76.i = phi ptr [ %i.ih, %tailrecurse.i75.i ], [ %i.ht, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i76.i), !inline_history !485
  %i.if = getelementptr inbounds nuw i8, ptr %.tr1.i76.i, i64 88
  %i.ig = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.if), !inline_history !485
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 48 ; 3 uses
  %i.ii = load i8, ptr %i.ih, align 8, !tbaa !483
  %i.ij = icmp eq i8 %i.ii, 3
  br i1 %i.ij, label %tailrecurse.i75.i, label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i

_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i: ; preds = %tailrecurse.i75.i, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i
  %.tr.lcssa.i74.i = phi ptr [ %i.ht, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i ], [ %i.ih, %tailrecurse.i75.i ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i74.i, i64 88
  %i.il = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik), !inline_history !486
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  %i.in = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.im), !inline_history !485 ; 3 uses
  %i.io = load i8, ptr %i.in, align 8, !tbaa !483
  %i.ip = icmp eq i8 %i.io, 3
  br i1 %i.ip, label %tailrecurse.i.i.i, label %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i

tailrecurse.i.i.i:                                ; preds = %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i, %tailrecurse.i.i.i
  %.tr5.i.i.i = phi ptr [ %i.is, %tailrecurse.i.i.i ], [ %i.in, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i.i), !inline_history !506
  %i.iq = getelementptr inbounds nuw i8, ptr %.tr5.i.i.i, i64 88
  %i.ir = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iq), !inline_history !506
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 48 ; 3 uses
  %i.it = load i8, ptr %i.is, align 8, !tbaa !483
  %i.iu = icmp eq i8 %i.it, 3
  br i1 %i.iu, label %tailrecurse.i.i.i, label %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i

_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i: ; preds = %tailrecurse.i.i.i, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i
  %.tr.lcssa.i.i.i = phi ptr [ %i.in, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i ], [ %i.is, %tailrecurse.i.i.i ]
  %i.iv = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i.i, i64 88
  %i.iw = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iv), !inline_history !506
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 48 ; 3 uses
  %i.iy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ix, i64 noundef 0)
  %i.iz = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iy) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.iz)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 32
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !427
  %i.jc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ix, i64 noundef 1)
  %i.jd = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jc) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.jd)
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !427
  %i.jg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ix, i64 noundef 2)
  %i.jh = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jg) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.jh)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !427
  %.not.i55 = icmp eq i64 %2, 0
  br i1 %.not.i55, label %_ZN6duckdbL10FromPointsINS_9VertexXYZEEEvRNS_6VectorES3_mm.exit, label %.lr.ph114.i

.lr.ph114.i:                                      ; preds = %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jl = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %37, i64 4 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ao, %.lr.ph114.i
  %.057112.i = phi i64 [ 0, %.lr.ph114.i ], [ %i.of, %bb.ao ] ; 5 uses
  %i.jq = add i64 %.057112.i, %4                  ; 2 uses
  %i.jr = load ptr, ptr %i.jk, align 8, !tbaa !519 ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i56, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i58, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i57

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i57: ; preds = %bb.ab
  %i.js = lshr i64 %.057112.i, 6
  %i.jt = and i64 %.057112.i, 63
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.js
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !108
  %i.jw = shl nuw i64 1, %i.jt
  %i.jx = and i64 %i.jv, %i.jw
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %bb.ac, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i58

bb.ac:                                            ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i57
  call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.jq, i1 noundef zeroext true)
  br label %bb.ao

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i58: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i57, %bb.ab
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %.057112.i ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !550 ; 8 uses
  %.not116.i = icmp eq i64 %i.kb, 0               ; 2 uses
  br i1 %.not116.i, label %._crit_edge.thread.i, label %.lr.ph.i59

._crit_edge.thread.i:                             ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i58
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #46
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i62

.lr.ph.i59:                                       ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i58
  %i.kc = load i64, ptr %i.jz, align 8, !tbaa !552
  %i.kd = getelementptr [16 x i8], ptr %i.ic, i64 %i.kc ; 3 uses
  %min.iters.check663 = icmp ult i64 %i.kb, 9
  br i1 %min.iters.check663, label %scalar.ph662.preheader, label %vector.scevcheck661

vector.scevcheck661:                              ; preds = %.lr.ph.i59
  %i.ke = add i64 %i.kb, -1                       ; 2 uses
  %i.kf = and i64 %i.ke, 4294967295
  %i.kg = icmp eq i64 %i.kf, 4294967295
  %i.kh = icmp ugt i64 %i.ke, 4294967295
  %i.ki = or i1 %i.kg, %i.kh
  br i1 %i.ki, label %scalar.ph662.preheader, label %vector.ph664

vector.ph664:                                     ; preds = %vector.scevcheck661
  %n.mod.vf665 = and i64 %i.kb, 3                 ; 2 uses
  %i.kj = icmp eq i64 %n.mod.vf665, 0
  %i.kk = select i1 %i.kj, i64 4, i64 %n.mod.vf665
  %n.vec666 = sub nsw i64 %i.kb, %i.kk            ; 2 uses
  br label %vector.body667

vector.body667:                                   ; preds = %vector.body667, %vector.ph664
  %index668 = phi i64 [ 0, %vector.ph664 ], [ %index.next675, %vector.body667 ] ; 3 uses
  %vec.phi669 = phi <2 x i64> [ <i64 9, i64 0>, %vector.ph664 ], [ %i.kt, %vector.body667 ]
  %vec.phi670 = phi <2 x i64> [ zeroinitializer, %vector.ph664 ], [ %i.ku, %vector.body667 ]
  %i.kl = getelementptr [16 x i8], ptr %i.kd, i64 %index668
  %i.km = getelementptr [16 x i8], ptr %i.kd, i64 %index668
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ko = getelementptr i8, ptr %i.km, i64 40
  %48 = load <3 x i64>, ptr %i.kn, align 8, !tbaa !550
  %strided.vec672 = shufflevector <3 x i64> %48, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %49 = load <3 x i64>, ptr %i.ko, align 8, !tbaa !550
  %strided.vec674 = shufflevector <3 x i64> %49, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.kp = add <2 x i64> %vec.phi669, splat (i64 4)
  %i.kq = add <2 x i64> %vec.phi670, splat (i64 4)
  %i.kr = mul <2 x i64> %strided.vec672, splat (i64 24)
  %i.ks = mul <2 x i64> %strided.vec674, splat (i64 24)
  %i.kt = add <2 x i64> %i.kp, %i.kr              ; 2 uses
  %i.ku = add <2 x i64> %i.kq, %i.ks              ; 2 uses
  %index.next675 = add nuw i64 %index668, 4       ; 2 uses
  %i.kv = icmp eq i64 %index.next675, %n.vec666
  br i1 %i.kv, label %middle.block676, label %vector.body667, !llvm.loop !2978

middle.block676:                                  ; preds = %vector.body667
  %bin.rdx677 = add <2 x i64> %i.ku, %i.kt
  %i.kw = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx677)
  br label %scalar.ph662.preheader

scalar.ph662.preheader:                           ; preds = %vector.scevcheck661, %.lr.ph.i59, %middle.block676
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck661 ], [ 0, %.lr.ph.i59 ], [ %n.vec666, %middle.block676 ]
  %.05996.i.ph = phi i64 [ 9, %vector.scevcheck661 ], [ 9, %.lr.ph.i59 ], [ %i.kw, %middle.block676 ]
  br label %scalar.ph662

._crit_edge.i60:                                  ; preds = %scalar.ph662
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #46
  %i.kx = icmp ult i64 %i.lo, 13
  br i1 %i.kx, label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i62, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i60
  %i.ky = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  %i.la = call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.kz, i64 noundef %i.lo) ; 2 uses
  %i.lb = extractvalue { i64, ptr } %i.la, 0      ; 2 uses
  %.sroa.3.0.extract.shift.i.i61 = and i64 %i.lb, -4294967296
  %i.lc = extractvalue { i64, ptr } %i.la, 1
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i62

_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i62: ; preds = %bb.ad, %._crit_edge.i60, %._crit_edge.thread.i
  %.059.lcssa151.i = phi i64 [ %i.lo, %bb.ad ], [ %i.lo, %._crit_edge.i60 ], [ 9, %._crit_edge.thread.i ]
  %.sroa.34.0.i.i63 = phi ptr [ %i.lc, %bb.ad ], [ undef, %._crit_edge.i60 ], [ undef, %._crit_edge.thread.i ] ; 2 uses
  %.sroa.3.0.i.i64 = phi i64 [ %.sroa.3.0.extract.shift.i.i61, %bb.ad ], [ 0, %._crit_edge.i60 ], [ 0, %._crit_edge.thread.i ]
  %.sroa.0.0.in.i.i65 = phi i64 [ %i.lb, %bb.ad ], [ %i.lo, %._crit_edge.i60 ], [ 9, %._crit_edge.thread.i ] ; 2 uses
  %.sroa.0.0.insert.ext.i.i66 = and i64 %.sroa.0.0.in.i.i65, 4294967295
  %.sroa.0.0.insert.insert.i.i67 = or disjoint i64 %.sroa.0.0.insert.ext.i.i66, %.sroa.3.0.i.i64
  store i64 %.sroa.0.0.insert.insert.i.i67, ptr %37, align 8
  store ptr %.sroa.34.0.i.i63, ptr %i.jl, align 8
  %i.ld = trunc i64 %.sroa.0.0.in.i.i65 to i32
  %i.le = icmp ult i32 %i.ld, 13
  %i.lf = select i1 %i.le, ptr %i.jm, ptr %.sroa.34.0.i.i63 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #46
  store ptr %i.lf, ptr %38, align 8, !tbaa !2024
  store ptr %i.lf, ptr %i.jn, align 8, !tbaa !2026
  %i.lg = and i64 %.059.lcssa151.i, 4294967295
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lg
  store ptr %i.lh, ptr %i.jo, align 8, !tbaa !2027
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 1)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %38, i32 1003)
  %i.li = trunc nuw i64 %i.kb to i32
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %38, i32 %i.li)
  br i1 %.not116.i, label %._crit_edge111.i, label %.lr.ph110.preheader.i

.lr.ph110.preheader.i:                            ; preds = %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i62
  %.pre.i68 = load ptr, ptr %i.jn, align 8, !tbaa !2026
  br label %.lr.ph110.i

scalar.ph662:                                     ; preds = %scalar.ph662.preheader, %scalar.ph662
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph662 ], [ %indvars.iv.i.ph, %scalar.ph662.preheader ] ; 2 uses
  %.05996.i = phi i64 [ %i.lo, %scalar.ph662 ], [ %.05996.i.ph, %scalar.ph662.preheader ]
  %i.lj = getelementptr [16 x i8], ptr %i.kd, i64 %indvars.iv.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !550
  %i.lm = add i64 %.05996.i, 4
  %i.ln = mul i64 %i.ll, 24
  %i.lo = add i64 %i.lm, %i.ln                    ; 6 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.lp = and i64 %indvars.iv.next.i, 4294967295
  %i.lq = icmp ugt i64 %i.kb, %i.lp
  br i1 %i.lq, label %scalar.ph662, label %._crit_edge.i60, !llvm.loop !2979

._crit_edge111.i:                                 ; preds = %._crit_edge107.i, %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i62
  %i.lr = load i32, ptr %37, align 8, !tbaa !153  ; 2 uses
  %i.ls = icmp ult i32 %i.lr, 13
  br i1 %i.ls, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge111.i
  %i.lt = zext nneg i32 %i.lr to i64              ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.lt
  %i.lv = sub nuw nsw i64 12, %i.lt
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lu, i8 0, i64 %i.lv, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i73

bb.af:                                            ; preds = %._crit_edge111.i
  %i.lw = load ptr, ptr %i.jl, align 8
  %i.lx = load i32, ptr %i.lw, align 1
  store i32 %i.lx, ptr %i.jm, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i73

_ZN6duckdb8string_t8FinalizeEv.exit.i73:          ; preds = %bb.af, %bb.ae
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ly = load ptr, ptr %i.jp, align 8, !tbaa !427
  %i.lz = getelementptr inbounds nuw [16 x i8], ptr %i.ly, i64 %i.jq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lz, ptr noundef nonnull align 8 dereferenceable(16) %37, i64 16, i1 false), !tbaa.struct !707
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #46
  br label %bb.ao

.lr.ph110.i:                                      ; preds = %._crit_edge107.i, %.lr.ph110.preheader.i
  %i.ma = phi ptr [ %.lcssa97102.lcssa.i, %._crit_edge107.i ], [ %.pre.i68, %.lr.ph110.preheader.i ] ; 3 uses
  %i.mb = phi i64 [ %i.mz, %._crit_edge107.i ], [ 0, %.lr.ph110.preheader.i ]
  %.058109.i = phi i32 [ %i.my, %._crit_edge107.i ], [ 0, %.lr.ph110.preheader.i ]
  %i.mc = load i64, ptr %i.jz, align 8, !tbaa !552
  %i.md = getelementptr [16 x i8], ptr %i.ic, i64 %i.mc
  %i.me = getelementptr [16 x i8], ptr %i.md, i64 %i.mb ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !550 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ma, i64 4 ; 3 uses
  %i.mi = load ptr, ptr %i.jo, align 8, !tbaa !2027 ; 4 uses
  %i.mj = icmp ugt ptr %i.mh, %i.mi
  br i1 %i.mj, label %bb.ag, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i

bb.ag:                                            ; preds = %.lr.ph110.i
  %i.mk = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %36)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i75

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #46
  %i.ml = load ptr, ptr %38, align 8, !tbaa !2024
  %i.mm = ptrtoint ptr %i.ma to i64
  %i.mn = ptrtoint ptr %i.ml to i64
  %i.mo = sub i64 %i.mm, %i.mn
  store i64 %i.mo, ptr %i.q, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.mk, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.mk, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ak unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i75: ; preds = %bb.ag
  %i.mp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #46
  br label %common.resume.sink.split.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.04.i.i76 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.mq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #46
  %i.mr = load ptr, ptr %35, align 8, !tbaa !89   ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.mt = icmp eq ptr %i.mr, %i.ms
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.mr) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #46
  br i1 %.04.i.i76, label %common.resume.sink.split.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i78: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #46
  br i1 %.04.i.i76, label %common.resume.sink.split.i, label %common.resume

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i77.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i75
  %.sink.i = phi ptr [ %i.nb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i77.i ], [ %i.nb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82.i ], [ %i.nb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81.i ], [ %i.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i78 ], [ %i.mk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77 ], [ %i.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i75 ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.nl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i77.i ], [ %i.nm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82.i ], [ %i.nm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81.i ], [ %i.mq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i78 ], [ %i.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77 ], [ %i.mp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i75 ]
  call void @__cxa_free_exception(ptr %.sink.i) #46
  br label %common.resume

bb.ak:                                            ; preds = %bb.ai
  unreachable

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i: ; preds = %.lr.ph110.i
  %i.mu = trunc i64 %i.mg to i32
  store i32 %i.mu, ptr %i.ma, align 1
  %.not118.i = icmp eq i64 %i.mg, 0
  br i1 %.not118.i, label %._crit_edge107.i, label %.preheader.i69

.preheader.i69:                                   ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.2.i72
  %i.mv = phi i64 [ %i.od, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.2.i72 ], [ 0, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i ] ; 3 uses
  %.055106.i = phi i32 [ %i.oc, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.2.i72 ], [ 0, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i ]
  %.lcssa97102105.i = phi ptr [ %i.nx, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.2.i72 ], [ %i.mh, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i ] ; 5 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.lcssa97102105.i, i64 8 ; 3 uses
  %i.mx = icmp ugt ptr %i.mw, %i.mi
  br i1 %i.mx, label %.noexc.i.i, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i70

._crit_edge107.i:                                 ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.2.i72, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i
  %.lcssa97102.lcssa.i = phi ptr [ %i.mh, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i ], [ %i.nx, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.2.i72 ]
  %i.my = add i32 %.058109.i, 1                   ; 2 uses
  %i.mz = zext i32 %i.my to i64                   ; 2 uses
  %i.na = icmp ugt i64 %i.kb, %i.mz
  br i1 %i.na, label %.lr.ph110.i, label %._crit_edge111.i, !llvm.loop !2980

.noexc.i.i:                                       ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.1.i71, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i70, %.preheader.i69
  %.lcssa121.i = phi ptr [ %.lcssa97102105.i, %.preheader.i69 ], [ %i.mw, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i70 ], [ %i.ns, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.1.i71 ]
  %i.nb = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #46
end_hunk_4
begin_hunk_5_@_ZN6duckdbL28FromVectorizedFormatInternalINS_9VertexXYZEEEvRNS_6VectorES3_mNS_12GeometryTypeEm:bb.a
  %i.vc = getelementptr inbounds nuw i8, ptr %.tr1.i99.i, i64 88
  %i.vd = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vc)
          to label %.noexc101.i unwind label %.loopexit.split-lp.loopexit.i, !inline_history !485

.noexc101.i:                                      ; preds = %.noexc100.i
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 48 ; 3 uses
  %i.vf = load i8, ptr %i.ve, align 8, !tbaa !483
  %i.vg = icmp eq i8 %i.vf, 3
  br i1 %i.vg, label %tailrecurse.i98.i, label %_ZN6duckdb10ListVector16GetEntryInternalIKNS_6VectorEEERT_S5_.exit.i.i

_ZN6duckdb10ListVector16GetEntryInternalIKNS_6VectorEEERT_S5_.exit.i.i: ; preds = %.noexc101.i, %bb.bm
  %.tr.lcssa.i97.i = phi ptr [ %23, %bb.bm ], [ %i.ve, %.noexc101.i ]
  %i.vh = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i97.i, i64 88
  %i.vi = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vh)
          to label %.noexc102.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !inline_history !485

.noexc102.i:                                      ; preds = %_ZN6duckdb10ListVector16GetEntryInternalIKNS_6VectorEEERT_S5_.exit.i.i
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 48
  %i.vk = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.vj)
          to label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i122 unwind label %.loopexit.split-lp.loopexit.split-lp.i, !inline_history !485 ; 3 uses

_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i122: ; preds = %.noexc102.i
  %i.vl = load i8, ptr %i.vk, align 8, !tbaa !483
  %i.vm = icmp eq i8 %i.vl, 3
  br i1 %i.vm, label %tailrecurse.i.i.i149, label %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i

tailrecurse.i.i.i149:                             ; preds = %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i122, %.noexc105.i
  %.tr5.i.i.i150 = phi ptr [ %i.vp, %.noexc105.i ], [ %i.vk, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i122 ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i.i150)
          to label %.noexc104.i unwind label %.loopexit.i

.noexc104.i:                                      ; preds = %tailrecurse.i.i.i149
  %i.vn = getelementptr inbounds nuw i8, ptr %.tr5.i.i.i150, i64 88
  %i.vo = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vn)
          to label %.noexc105.i unwind label %.loopexit.i

.noexc105.i:                                      ; preds = %.noexc104.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 48 ; 3 uses
  %i.vq = load i8, ptr %i.vp, align 8, !tbaa !483
  %i.vr = icmp eq i8 %i.vq, 3
  br i1 %i.vr, label %tailrecurse.i.i.i149, label %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i

_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i: ; preds = %.noexc105.i, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i122
  %.tr.lcssa.i.i.i123 = phi ptr [ %i.vk, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i122 ], [ %i.vp, %.noexc105.i ]
  %i.vs = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i.i123, i64 88
  %i.vt = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vs)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.i

bb.bn:                                            ; preds = %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 48 ; 3 uses
  %i.vv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.vu, i64 noundef 0)
          to label %bb.bo unwind label %bb.bw

.lr.ph186.i:                                      ; preds = %.preheader142.i
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vx = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %24, i64 4 ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.bx

.loopexit146.i:                                   ; preds = %.noexc.i151, %tailrecurse.i93.i
  %lpad.loopexit148.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp147.i:                          ; preds = %tailrecurse._crit_edge.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %.noexc104.i, %tailrecurse.i.i.i149
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc100.i, %tailrecurse.i98.i
  %lpad.loopexit143.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i, %.noexc102.i, %_ZN6duckdb10ListVector16GetEntryInternalIKNS_6VectorEEERT_S5_.exit.i.i
  %lpad.loopexit.split-lp144.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.bo:                                            ; preds = %bb.bn
  %i.wc = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.vv)
          to label %bb.bp unwind label %bb.bw     ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.wc)
          to label %bb.bq unwind label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 32
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !427
  %i.wf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.vu, i64 noundef 1)
          to label %bb.br unwind label %bb.bw

bb.br:                                            ; preds = %bb.bq
  %i.wg = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.wf)
          to label %bb.bs unwind label %bb.bw     ; 2 uses

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.wg)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 32
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !427
  %i.wj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.vu, i64 noundef 2)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.wk = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.wj)
          to label %bb.bv unwind label %bb.bw     ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.wk)
          to label %.preheader142.i unwind label %bb.bw

.preheader142.i:                                  ; preds = %bb.bv
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 32
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !427
  %.not.i124 = icmp eq i64 %2, 0
  br i1 %.not.i124, label %_ZN6duckdbL20FromMultiLineStringsINS_9VertexXYZEEEvRNS_6VectorES3_mm.exit, label %.lr.ph186.i

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.bx:                                            ; preds = %bb.dn, %.lr.ph186.i
  %.067184.i = phi i64 [ 0, %.lr.ph186.i ], [ %i.acg, %bb.dn ] ; 5 uses
  %i.wo = add i64 %.067184.i, %4                  ; 2 uses
  %i.wp = load ptr, ptr %i.vw, align 8, !tbaa !519 ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %i.wp, null
  br i1 %.not.i.i.i125, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i127, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i126

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i126: ; preds = %bb.bx
  %i.wq = lshr i64 %.067184.i, 6
  %i.wr = and i64 %.067184.i, 63
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.wq
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !108
  %i.wu = shl nuw i64 1, %i.wr
  %i.wv = and i64 %i.wt, %i.wu
  %i.ww = icmp eq i64 %i.wv, 0
  br i1 %i.ww, label %bb.by, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i127

bb.by:                                            ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i126
  invoke void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.wo, i1 noundef zeroext true)
          to label %bb.dn unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.wx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i127: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i126, %bb.bx
  %i.wy = getelementptr inbounds nuw [16 x i8], ptr %i.uf, i64 %.067184.i ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 8
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !550 ; 8 uses
  %.not188.i = icmp eq i64 %i.xa, 0               ; 2 uses
  br i1 %.not188.i, label %._crit_edge.thread.i148, label %.lr.ph.i128

._crit_edge.thread.i148:                          ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i127
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #46
  br label %bb.cb

.lr.ph.i128:                                      ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i127
  %i.xb = load i64, ptr %i.wy, align 8, !tbaa !552
  %i.xc = getelementptr [16 x i8], ptr %i.uz, i64 %i.xb ; 3 uses
  %min.iters.check629 = icmp ult i64 %i.xa, 9
  br i1 %min.iters.check629, label %scalar.ph628.preheader, label %vector.scevcheck627

vector.scevcheck627:                              ; preds = %.lr.ph.i128
  %i.xd = add i64 %i.xa, -1                       ; 2 uses
  %i.xe = and i64 %i.xd, 4294967295
  %i.xf = icmp eq i64 %i.xe, 4294967295
  %i.xg = icmp ugt i64 %i.xd, 4294967295
  %i.xh = or i1 %i.xf, %i.xg
  br i1 %i.xh, label %scalar.ph628.preheader, label %vector.ph630

vector.ph630:                                     ; preds = %vector.scevcheck627
  %n.mod.vf631 = and i64 %i.xa, 3                 ; 2 uses
  %i.xi = icmp eq i64 %n.mod.vf631, 0
  %i.xj = select i1 %i.xi, i64 4, i64 %n.mod.vf631
  %n.vec632 = sub nsw i64 %i.xa, %i.xj            ; 2 uses
  br label %vector.body633

vector.body633:                                   ; preds = %vector.body633, %vector.ph630
  %index634 = phi i64 [ 0, %vector.ph630 ], [ %index.next641, %vector.body633 ] ; 3 uses
  %vec.phi635 = phi <2 x i64> [ <i64 9, i64 0>, %vector.ph630 ], [ %i.xs, %vector.body633 ]
  %vec.phi636 = phi <2 x i64> [ zeroinitializer, %vector.ph630 ], [ %i.xt, %vector.body633 ]
  %i.xk = getelementptr [16 x i8], ptr %i.xc, i64 %index634
  %i.xl = getelementptr [16 x i8], ptr %i.xc, i64 %index634
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.xn = getelementptr i8, ptr %i.xl, i64 40
  %50 = load <3 x i64>, ptr %i.xm, align 8, !tbaa !550
  %strided.vec638 = shufflevector <3 x i64> %50, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %51 = load <3 x i64>, ptr %i.xn, align 8, !tbaa !550
  %strided.vec640 = shufflevector <3 x i64> %51, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.xo = add <2 x i64> %vec.phi635, splat (i64 9)
  %i.xp = add <2 x i64> %vec.phi636, splat (i64 9)
  %i.xq = mul <2 x i64> %strided.vec638, splat (i64 24)
  %i.xr = mul <2 x i64> %strided.vec640, splat (i64 24)
  %i.xs = add <2 x i64> %i.xo, %i.xq              ; 2 uses
  %i.xt = add <2 x i64> %i.xp, %i.xr              ; 2 uses
  %index.next641 = add nuw i64 %index634, 4       ; 2 uses
  %i.xu = icmp eq i64 %index.next641, %n.vec632
  br i1 %i.xu, label %middle.block642, label %vector.body633, !llvm.loop !2987

middle.block642:                                  ; preds = %vector.body633
  %bin.rdx643 = add <2 x i64> %i.xt, %i.xs
  %i.xv = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx643)
  br label %scalar.ph628.preheader

scalar.ph628.preheader:                           ; preds = %vector.scevcheck627, %.lr.ph.i128, %middle.block642
  %indvars.iv.i129.ph = phi i64 [ 0, %vector.scevcheck627 ], [ 0, %.lr.ph.i128 ], [ %n.vec632, %middle.block642 ]
  %.069167.i.ph = phi i64 [ 9, %vector.scevcheck627 ], [ 9, %.lr.ph.i128 ], [ %i.xv, %middle.block642 ]
  br label %scalar.ph628

._crit_edge.i131:                                 ; preds = %scalar.ph628
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #46
  %i.xw = icmp ult i64 %i.yh, 13
  br i1 %i.xw, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.i131
  %i.xx = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc108.i unwind label %bb.cg

.noexc108.i:                                      ; preds = %bb.ca
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 48
  %i.xz = invoke { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.xy, i64 noundef %i.yh)
          to label %.noexc109.i unwind label %bb.cg ; 2 uses

.noexc109.i:                                      ; preds = %.noexc108.i
  %i.ya = extractvalue { i64, ptr } %i.xz, 0      ; 2 uses
  %.sroa.3.0.extract.shift.i.i132 = and i64 %i.ya, -4294967296
  %i.yb = extractvalue { i64, ptr } %i.xz, 1
  br label %bb.cb

scalar.ph628:                                     ; preds = %scalar.ph628.preheader, %scalar.ph628
  %indvars.iv.i129 = phi i64 [ %indvars.iv.next.i130, %scalar.ph628 ], [ %indvars.iv.i129.ph, %scalar.ph628.preheader ] ; 2 uses
  %.069167.i = phi i64 [ %i.yh, %scalar.ph628 ], [ %.069167.i.ph, %scalar.ph628.preheader ]
  %i.yc = getelementptr [16 x i8], ptr %i.xc, i64 %indvars.iv.i129
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !550
  %i.yf = add i64 %.069167.i, 9
  %i.yg = mul i64 %i.ye, 24
  %i.yh = add i64 %i.yf, %i.yg                    ; 6 uses
  %indvars.iv.next.i130 = add i64 %indvars.iv.i129, 1 ; 2 uses
  %i.yi = and i64 %indvars.iv.next.i130, 4294967295
  %i.yj = icmp ugt i64 %i.xa, %i.yi
  br i1 %i.yj, label %scalar.ph628, label %._crit_edge.i131, !llvm.loop !2988

bb.cb:                                            ; preds = %.noexc109.i, %._crit_edge.i131, %._crit_edge.thread.i148
  %.069.lcssa238.i = phi i64 [ %i.yh, %.noexc109.i ], [ %i.yh, %._crit_edge.i131 ], [ 9, %._crit_edge.thread.i148 ]
  %.sroa.34.0.i.i133 = phi ptr [ %i.yb, %.noexc109.i ], [ undef, %._crit_edge.i131 ], [ undef, %._crit_edge.thread.i148 ] ; 2 uses
  %.sroa.3.0.i.i134 = phi i64 [ %.sroa.3.0.extract.shift.i.i132, %.noexc109.i ], [ 0, %._crit_edge.i131 ], [ 0, %._crit_edge.thread.i148 ]
  %.sroa.0.0.in.i.i135 = phi i64 [ %i.ya, %.noexc109.i ], [ %i.yh, %._crit_edge.i131 ], [ 9, %._crit_edge.thread.i148 ] ; 2 uses
  %.sroa.0.0.insert.ext.i.i136 = and i64 %.sroa.0.0.in.i.i135, 4294967295
  %.sroa.0.0.insert.insert.i.i137 = or disjoint i64 %.sroa.0.0.insert.ext.i.i136, %.sroa.3.0.i.i134
  store i64 %.sroa.0.0.insert.insert.i.i137, ptr %24, align 8
  store ptr %.sroa.34.0.i.i133, ptr %i.vx, align 8
  %i.yk = trunc i64 %.sroa.0.0.in.i.i135 to i32
  %i.yl = icmp ult i32 %i.yk, 13
  %i.ym = select i1 %i.yl, ptr %i.vy, ptr %.sroa.34.0.i.i133 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #46
  store ptr %i.ym, ptr %25, align 8, !tbaa !2024
  store ptr %i.ym, ptr %i.vz, align 8, !tbaa !2026
  %i.yn = and i64 %.069.lcssa238.i, 4294967295
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.yn
  store ptr %i.yo, ptr %i.wa, align 8, !tbaa !2027
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 1)
          to label %bb.cc unwind label %bb.ch

bb.cc:                                            ; preds = %bb.cb
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %25, i32 1005)
          to label %bb.cd unwind label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  %i.yp = trunc nuw i64 %i.xa to i32
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %25, i32 %i.yp)
          to label %.preheader141.i unwind label %bb.cj

.preheader141.i:                                  ; preds = %bb.cd
  br i1 %.not188.i, label %._crit_edge183.i, label %.lr.ph182.preheader.i

.lr.ph182.preheader.i:                            ; preds = %.preheader141.i
  %.pre.i138 = load ptr, ptr %i.vz, align 8, !tbaa !2026
  br label %.lr.ph182.i

._crit_edge183.i:                                 ; preds = %._crit_edge179.i, %.preheader141.i
  %i.yq = load i32, ptr %24, align 8, !tbaa !153  ; 2 uses
  %i.yr = icmp ult i32 %i.yq, 13
  br i1 %i.yr, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %._crit_edge183.i
  %i.ys = zext nneg i32 %i.yq to i64              ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.ys
  %i.yu = sub nuw nsw i64 12, %i.ys
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.yt, i8 0, i64 %i.yu, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i140

bb.cf:                                            ; preds = %._crit_edge183.i
  %i.yv = load ptr, ptr %i.vx, align 8
  %i.yw = load i32, ptr %i.yv, align 1
  store i32 %i.yw, ptr %i.vy, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i140

bb.cg:                                            ; preds = %.noexc108.i, %bb.ca
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.ch:                                            ; preds = %bb.cb
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ci:                                            ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit.i140, %bb.cc
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cj:                                            ; preds = %bb.cd
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph182.i:                                      ; preds = %._crit_edge179.i, %.lr.ph182.preheader.i
  %i.zb = phi ptr [ %.lcssa169174.lcssa.i, %._crit_edge179.i ], [ %.pre.i138, %.lr.ph182.preheader.i ] ; 5 uses
  %i.zc = phi i64 [ %i.aay, %._crit_edge179.i ], [ 0, %.lr.ph182.preheader.i ]
  %.065181.i = phi i32 [ %i.aax, %._crit_edge179.i ], [ 0, %.lr.ph182.preheader.i ]
  %i.zd = load i64, ptr %i.wy, align 8, !tbaa !552
  %i.ze = getelementptr [16 x i8], ptr %i.uz, i64 %i.zd
  %i.zf = getelementptr [16 x i8], ptr %i.ze, i64 %i.zc ; 4 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 8
  %i.zh = load i64, ptr %i.zg, align 8, !tbaa !550 ; 3 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zb, i64 1 ; 3 uses
  %i.zj = load ptr, ptr %i.wa, align 8, !tbaa !2027 ; 6 uses
  %i.zk = icmp ugt ptr %i.zi, %i.zj
  br i1 %i.zk, label %bb.ck, label %bb.cq

bb.ck:                                            ; preds = %.lr.ph182.i
  %i.zl = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.cl unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i143

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #46
  %i.zm = load ptr, ptr %25, align 8, !tbaa !2024
  %i.zn = ptrtoint ptr %i.zb to i64
  %i.zo = ptrtoint ptr %i.zm to i64
  %i.zp = sub i64 %i.zn, %i.zo
  store i64 %i.zp, ptr %i.k, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.zl, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  invoke void @__cxa_throw(ptr nonnull %i.zl, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.cp unwind label %bb.cn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i143: ; preds = %bb.ck
  %i.zq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #46
  br label %bb.co

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.04.i.i145 = phi i1 [ false, %bb.cm ], [ true, %bb.cl ] ; 2 uses
  %i.zr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #46
  %i.zs = load ptr, ptr %21, align 8, !tbaa !89   ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.zu = icmp eq ptr %i.zs, %i.zt
  br i1 %i.zu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i146: ; preds = %bb.cn
  call void @_ZdlPv(ptr noundef %i.zs) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #46
  br i1 %.04.i.i145, label %bb.co, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i147: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #46
  br i1 %.04.i.i145, label %bb.co, label %.body.i

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i143
  %.pn4.i.i144 = phi { ptr, i32 } [ %i.zq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i143 ], [ %i.zr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i147 ], [ %i.zr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i146 ]
  call void @__cxa_free_exception(ptr %i.zl) #46
  br label %.body.i

bb.cp:                                            ; preds = %bb.cm
  unreachable

end_hunk_5
begin_hunk_6_@_ZN6duckdbL28FromVectorizedFormatInternalINS_9VertexXYZEEEvRNS_6VectorES3_mNS_12GeometryTypeEm:bb.a
tailrecurse.i103.i:                               ; preds = %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i159, %tailrecurse.i103.i
  %.tr5.i104.i = phi ptr [ %i.adz, %tailrecurse.i103.i ], [ %i.adu, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i159 ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i104.i), !inline_history !2953
  %i.adx = getelementptr inbounds nuw i8, ptr %.tr5.i104.i, i64 88
  %i.ady = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adx), !inline_history !2953
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 48 ; 3 uses
  %i.aea = load i8, ptr %i.adz, align 8, !tbaa !483
  %i.aeb = icmp eq i8 %i.aea, 3
  br i1 %i.aeb, label %tailrecurse.i103.i, label %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i

_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i: ; preds = %tailrecurse.i103.i, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i159
  %.tr.lcssa.i102.i = phi ptr [ %i.adu, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i159 ], [ %i.adz, %tailrecurse.i103.i ] ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKNS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i102.i), !inline_history !2953
  %i.aec = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i102.i, i64 32
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !427 ; 2 uses
  %i.aee = load i8, ptr %i.adu, align 8, !tbaa !483
  %i.aef = icmp eq i8 %i.aee, 3
  br i1 %i.aef, label %tailrecurse.i107.i, label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i

tailrecurse.i107.i:                               ; preds = %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i, %tailrecurse.i107.i
  %.tr1.i108.i = phi ptr [ %i.aei, %tailrecurse.i107.i ], [ %i.adu, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i108.i), !inline_history !485
  %i.aeg = getelementptr inbounds nuw i8, ptr %.tr1.i108.i, i64 88
  %i.aeh = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aeg), !inline_history !485
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 48 ; 3 uses
  %i.aej = load i8, ptr %i.aei, align 8, !tbaa !483
  %i.aek = icmp eq i8 %i.aej, 3
  br i1 %i.aek, label %tailrecurse.i107.i, label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i

_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i: ; preds = %tailrecurse.i107.i, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i
  %.tr.lcssa.i106.i = phi ptr [ %i.adu, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i ], [ %i.aei, %tailrecurse.i107.i ]
  %i.ael = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i106.i, i64 88
  %i.aem = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ael), !inline_history !486
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 48
  %i.aeo = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aen), !inline_history !485 ; 3 uses
  %i.aep = load i8, ptr %i.aeo, align 8, !tbaa !483
  %i.aeq = icmp eq i8 %i.aep, 3
  br i1 %i.aeq, label %tailrecurse.i.i.i203, label %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i160

tailrecurse.i.i.i203:                             ; preds = %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i, %tailrecurse.i.i.i203
  %.tr5.i.i.i204 = phi ptr [ %i.aet, %tailrecurse.i.i.i203 ], [ %i.aeo, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i.i204), !inline_history !506
  %i.aer = getelementptr inbounds nuw i8, ptr %.tr5.i.i.i204, i64 88
  %i.aes = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aer), !inline_history !506
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 48 ; 3 uses
  %i.aeu = load i8, ptr %i.aet, align 8, !tbaa !483
  %i.aev = icmp eq i8 %i.aeu, 3
  br i1 %i.aev, label %tailrecurse.i.i.i203, label %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i160

_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i160: ; preds = %tailrecurse.i.i.i203, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i
  %.tr.lcssa.i.i.i161 = phi ptr [ %i.aeo, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i ], [ %i.aet, %tailrecurse.i.i.i203 ]
  %i.aew = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i.i161, i64 88
  %i.aex = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aew), !inline_history !506
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 48 ; 3 uses
  %i.aez = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aey, i64 noundef 0)
  %i.afa = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aez) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.afa)
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 32
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !427
  %i.afd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aey, i64 noundef 1)
  %i.afe = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afd) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.afe)
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 32
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !427
  %i.afh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aey, i64 noundef 2)
  %i.afi = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afh) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.afi)
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 32
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !427
  %.not.i162 = icmp eq i64 %2, 0
  br i1 %.not.i162, label %_ZN6duckdbL10FromPointsINS_9VertexXYZEEEvRNS_6VectorES3_mm.exit, label %.lr.ph193.i

.lr.ph193.i:                                      ; preds = %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i160
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.afm = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 3 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.dq

bb.dq:                                            ; preds = %bb.et, %.lr.ph193.i
  %.075191.i = phi i64 [ 0, %.lr.ph193.i ], [ %i.aml, %bb.et ] ; 5 uses
  %i.afr = add i64 %.075191.i, %4                 ; 2 uses
  %i.afs = load ptr, ptr %i.afl, align 8, !tbaa !519 ; 2 uses
  %.not.i.i.i163 = icmp eq ptr %i.afs, null
  br i1 %.not.i.i.i163, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i165, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i164

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i164: ; preds = %bb.dq
  %i.aft = lshr i64 %.075191.i, 6
  %i.afu = and i64 %.075191.i, 63
  %i.afv = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %i.aft
  %i.afw = load i64, ptr %i.afv, align 8, !tbaa !108
  %i.afx = shl nuw i64 1, %i.afu
  %i.afy = and i64 %i.afw, %i.afx
  %i.afz = icmp eq i64 %i.afy, 0
  br i1 %i.afz, label %bb.dr, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i165

bb.dr:                                            ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i164
  call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.afr, i1 noundef zeroext true)
  br label %bb.et

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i165: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i164, %bb.dq
  %i.aga = getelementptr inbounds nuw [16 x i8], ptr %i.acp, i64 %.075191.i ; 3 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  %i.agc = load i64, ptr %i.agb, align 8, !tbaa !550 ; 4 uses
  %.not195.i = icmp eq i64 %i.agc, 0              ; 2 uses
  br i1 %.not195.i, label %._crit_edge171.thread.i, label %.lr.ph170.i

._crit_edge171.thread.i:                          ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i165
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #46
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i171

.lr.ph170.i:                                      ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i165
  %i.agd = load i64, ptr %i.aga, align 8, !tbaa !552
  %i.age = getelementptr [16 x i8], ptr %i.adj, i64 %i.agd
  br label %bb.dt

._crit_edge171.i:                                 ; preds = %._crit_edge.i169
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #46
  %i.agf = icmp ult i64 %.1.lcssa.i, 13
  br i1 %i.agf, label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i171, label %bb.ds

bb.ds:                                            ; preds = %._crit_edge171.i
  %i.agg = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 48
  %i.agi = call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.agh, i64 noundef %.1.lcssa.i) ; 2 uses
  %i.agj = extractvalue { i64, ptr } %i.agi, 0    ; 2 uses
  %.sroa.3.0.extract.shift.i.i170 = and i64 %i.agj, -4294967296
  %i.agk = extractvalue { i64, ptr } %i.agi, 1
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i171

_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i171: ; preds = %bb.ds, %._crit_edge171.i, %._crit_edge171.thread.i
  %.077.lcssa264.i = phi i64 [ %.1.lcssa.i, %bb.ds ], [ %.1.lcssa.i, %._crit_edge171.i ], [ 9, %._crit_edge171.thread.i ]
  %.sroa.34.0.i.i172 = phi ptr [ %i.agk, %bb.ds ], [ undef, %._crit_edge171.i ], [ undef, %._crit_edge171.thread.i ] ; 2 uses
  %.sroa.3.0.i.i173 = phi i64 [ %.sroa.3.0.extract.shift.i.i170, %bb.ds ], [ 0, %._crit_edge171.i ], [ 0, %._crit_edge171.thread.i ]
  %.sroa.0.0.in.i.i174 = phi i64 [ %i.agj, %bb.ds ], [ %.1.lcssa.i, %._crit_edge171.i ], [ 9, %._crit_edge171.thread.i ] ; 2 uses
  %.sroa.0.0.insert.ext.i.i175 = and i64 %.sroa.0.0.in.i.i174, 4294967295
  %.sroa.0.0.insert.insert.i.i176 = or disjoint i64 %.sroa.0.0.insert.ext.i.i175, %.sroa.3.0.i.i173
  store i64 %.sroa.0.0.insert.insert.i.i176, ptr %14, align 8
  store ptr %.sroa.34.0.i.i172, ptr %i.afm, align 8
  %i.agl = trunc i64 %.sroa.0.0.in.i.i174 to i32
  %i.agm = icmp ult i32 %i.agl, 13
  %i.agn = select i1 %i.agm, ptr %i.afn, ptr %.sroa.34.0.i.i172 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #46
  store ptr %i.agn, ptr %15, align 8, !tbaa !2024
  store ptr %i.agn, ptr %i.afo, align 8, !tbaa !2026
  %i.ago = and i64 %.077.lcssa264.i, 4294967295
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agn, i64 %i.ago
  store ptr %i.agp, ptr %i.afp, align 8, !tbaa !2027
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 1)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %15, i32 1006)
  %i.agq = trunc nuw i64 %i.agc to i32
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %15, i32 %i.agq)
  br i1 %.not195.i, label %._crit_edge190.i, label %.lr.ph189.preheader.i

.lr.ph189.preheader.i:                            ; preds = %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i171
  %.pre.i177 = load ptr, ptr %i.afo, align 8, !tbaa !2026
  br label %.lr.ph189.i

bb.dt:                                            ; preds = %._crit_edge.i169, %.lr.ph170.i
  %indvars.iv232.i = phi i64 [ 0, %.lr.ph170.i ], [ %indvars.iv.next233.i, %._crit_edge.i169 ] ; 2 uses
  %.077169.i = phi i64 [ 9, %.lr.ph170.i ], [ %.1.lcssa.i, %._crit_edge.i169 ]
  %i.agr = getelementptr [16 x i8], ptr %i.age, i64 %indvars.iv232.i ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  %i.agt = load i64, ptr %i.ags, align 8, !tbaa !550 ; 6 uses
  %i.agu = add i64 %.077169.i, 9                  ; 4 uses
  %.not196.i = icmp eq i64 %i.agt, 0
  br i1 %.not196.i, label %._crit_edge.i169, label %.lr.ph.i166

.lr.ph.i166:                                      ; preds = %bb.dt
  %i.agv = load i64, ptr %i.agr, align 8, !tbaa !552
  %i.agw = getelementptr [16 x i8], ptr %i.aed, i64 %i.agv ; 3 uses
  %min.iters.check = icmp ult i64 %i.agt, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i166
  %i.agx = add i64 %i.agt, -1                     ; 2 uses
  %i.agy = and i64 %i.agx, 4294967295
  %i.agz = icmp eq i64 %i.agy, 4294967295
  %i.aha = icmp ugt i64 %i.agx, 4294967295
  %i.ahb = or i1 %i.agz, %i.aha
  br i1 %i.ahb, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.mod.vf = and i64 %i.agt, 3                   ; 2 uses
  %i.ahc = icmp eq i64 %n.mod.vf, 0
  %i.ahd = select i1 %i.ahc, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.agt, %i.ahd             ; 2 uses
  %i.ahe = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.agu, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ahe, %vector.ph ], [ %i.ahn, %vector.body ]
  %vec.phi624 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aho, %vector.body ]
  %i.ahf = getelementptr [16 x i8], ptr %i.agw, i64 %index
  %i.ahg = getelementptr [16 x i8], ptr %i.agw, i64 %index
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ahi = getelementptr i8, ptr %i.ahg, i64 40
  %52 = load <3 x i64>, ptr %i.ahh, align 8, !tbaa !550
  %strided.vec = shufflevector <3 x i64> %52, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %53 = load <3 x i64>, ptr %i.ahi, align 8, !tbaa !550
  %strided.vec626 = shufflevector <3 x i64> %53, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ahj = add <2 x i64> %vec.phi, splat (i64 4)
  %i.ahk = add <2 x i64> %vec.phi624, splat (i64 4)
  %i.ahl = mul <2 x i64> %strided.vec, splat (i64 24)
  %i.ahm = mul <2 x i64> %strided.vec626, splat (i64 24)
  %i.ahn = add <2 x i64> %i.ahj, %i.ahl           ; 2 uses
  %i.aho = add <2 x i64> %i.ahk, %i.ahm           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ahp = icmp eq i64 %index.next, %n.vec
  br i1 %i.ahp, label %middle.block, label %vector.body, !llvm.loop !2992

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aho, %i.ahn
  %i.ahq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph.i166, %middle.block
  %indvars.iv.i167.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i166 ], [ %n.vec, %middle.block ]
  %.1167.i.ph = phi i64 [ %i.agu, %vector.scevcheck ], [ %i.agu, %.lr.ph.i166 ], [ %i.ahq, %middle.block ]
  br label %scalar.ph

._crit_edge.i169:                                 ; preds = %scalar.ph, %bb.dt
  %.1.lcssa.i = phi i64 [ %i.agu, %bb.dt ], [ %i.ahy, %scalar.ph ] ; 6 uses
  %indvars.iv.next233.i = add i64 %indvars.iv232.i, 1 ; 2 uses
  %i.ahr = and i64 %indvars.iv.next233.i, 4294967295
  %i.ahs = icmp ugt i64 %i.agc, %i.ahr
  br i1 %i.ahs, label %bb.dt, label %._crit_edge171.i, !llvm.loop !2993

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i167 = phi i64 [ %indvars.iv.next.i168, %scalar.ph ], [ %indvars.iv.i167.ph, %scalar.ph.preheader ] ; 2 uses
  %.1167.i = phi i64 [ %i.ahy, %scalar.ph ], [ %.1167.i.ph, %scalar.ph.preheader ]
  %i.aht = getelementptr [16 x i8], ptr %i.agw, i64 %indvars.iv.i167
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  %i.ahv = load i64, ptr %i.ahu, align 8, !tbaa !550
  %i.ahw = add i64 %.1167.i, 4
  %i.ahx = mul i64 %i.ahv, 24
  %i.ahy = add i64 %i.ahw, %i.ahx                 ; 2 uses
  %indvars.iv.next.i168 = add i64 %indvars.iv.i167, 1 ; 2 uses
  %i.ahz = and i64 %indvars.iv.next.i168, 4294967295
  %i.aia = icmp ugt i64 %i.agt, %i.ahz
  br i1 %i.aia, label %scalar.ph, label %._crit_edge.i169, !llvm.loop !2994

._crit_edge190.i:                                 ; preds = %._crit_edge187.i, %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i171
  %i.aib = load i32, ptr %14, align 8, !tbaa !153 ; 2 uses
  %i.aic = icmp ult i32 %i.aib, 13
  br i1 %i.aic, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %._crit_edge190.i
  %i.aid = zext nneg i32 %i.aib to i64            ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.afn, i64 %i.aid
  %i.aif = sub nuw nsw i64 12, %i.aid
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aie, i8 0, i64 %i.aif, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i186

bb.dv:                                            ; preds = %._crit_edge190.i
  %i.aig = load ptr, ptr %i.afm, align 8
  %i.aih = load i32, ptr %i.aig, align 1
  store i32 %i.aih, ptr %i.afn, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i186

_ZN6duckdb8string_t8FinalizeEv.exit.i186:         ; preds = %bb.dv, %bb.du
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.aii = load ptr, ptr %i.afq, align 8, !tbaa !427
  %i.aij = getelementptr inbounds nuw [16 x i8], ptr %i.aii, i64 %i.afr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aij, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !707
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  br label %bb.et

.lr.ph189.i:                                      ; preds = %._crit_edge187.i, %.lr.ph189.preheader.i
  %i.aik = phi ptr [ %i.akd, %._crit_edge187.i ], [ %.pre.i177, %.lr.ph189.preheader.i ] ; 5 uses
  %i.ail = phi i64 [ %i.akf, %._crit_edge187.i ], [ 0, %.lr.ph189.preheader.i ]
  %.078188.i = phi i32 [ %i.ake, %._crit_edge187.i ], [ 0, %.lr.ph189.preheader.i ]
  %i.aim = load i64, ptr %i.aga, align 8, !tbaa !552
  %i.ain = getelementptr [16 x i8], ptr %i.adj, i64 %i.aim
  %i.aio = getelementptr [16 x i8], ptr %i.ain, i64 %i.ail ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 8
  %i.aiq = load i64, ptr %i.aip, align 8, !tbaa !550 ; 3 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.aik, i64 1 ; 3 uses
  %i.ais = load ptr, ptr %i.afp, align 8, !tbaa !2027 ; 7 uses
  %i.ait = icmp ugt ptr %i.air, %i.ais
  br i1 %i.ait, label %bb.dw, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_.exit.i178

bb.dw:                                            ; preds = %.lr.ph189.i
  %i.aiu = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.dx unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i199

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  %i.aiv = load ptr, ptr %15, align 8, !tbaa !2024
  %i.aiw = ptrtoint ptr %i.aik to i64
  %i.aix = ptrtoint ptr %i.aiv to i64
  %i.aiy = sub i64 %i.aiw, %i.aix
  store i64 %i.aiy, ptr %i.f, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aiu, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.dy unwind label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  invoke void @__cxa_throw(ptr nonnull %i.aiu, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ea unwind label %bb.dz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i199: ; preds = %bb.dw
  %i.aiz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br label %common.resume.sink.split.i189

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.04.i.i200 = phi i1 [ false, %bb.dy ], [ true, %bb.dx ] ; 2 uses
  %i.aja = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  %i.ajb = load ptr, ptr %12, align 8, !tbaa !89  ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ajd = icmp eq ptr %i.ajb, %i.ajc
  br i1 %i.ajd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i201: ; preds = %bb.dz
  call void @_ZdlPv(ptr noundef %i.ajb) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br i1 %.04.i.i200, label %common.resume.sink.split.i189, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i202: ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br i1 %.04.i.i200, label %common.resume.sink.split.i189, label %common.resume

common.resume.sink.split.i189:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i135.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i130.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i123.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i116.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i199
  %.sink.i190 = phi ptr [ %i.akq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i123.i ], [ %i.ajs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i116.i ], [ %i.ajg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i195 ], [ %i.alh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i130.i ], [ %i.ajg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i198 ], [ %i.ajg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i197 ], [ %i.ajs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i ], [ %i.ajs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i ], [ %i.akq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128.i ], [ %i.akq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i ], [ %i.alh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i135.i ], [ %i.alh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i ], [ %i.aiu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i202 ], [ %i.aiu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i201 ], [ %i.aiu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i199 ]
  %common.resume.op.ph.i191 = phi { ptr, i32 } [ %i.akv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i123.i ], [ %i.ajx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i116.i ], [ %i.ajl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i195 ], [ %i.alr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i130.i ], [ %i.ajm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i198 ], [ %i.ajm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i197 ], [ %i.ajy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i ], [ %i.ajy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i ], [ %i.akw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128.i ], [ %i.akw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i ], [ %i.als, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i135.i ], [ %i.als, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i ], [ %i.aja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i202 ], [ %i.aja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i201 ], [ %i.aiz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i199 ]
  call void @__cxa_free_exception(ptr %.sink.i190) #46
  br label %common.resume

bb.ea:                                            ; preds = %bb.dy
  unreachable

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_.exit.i178: ; preds = %.lr.ph189.i
  store i8 1, ptr %i.aik, align 1
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aik, i64 5 ; 3 uses
  %i.ajf = icmp ugt ptr %i.aje, %i.ais
  br i1 %i.ajf, label %bb.eb, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i179

bb.eb:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_.exit.i178
  %i.ajg = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ec unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i195

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  %i.ajh = load ptr, ptr %15, align 8, !tbaa !2024
  %i.aji = ptrtoint ptr %i.air to i64
  %i.ajj = ptrtoint ptr %i.ajh to i64
  %i.ajk = sub i64 %i.aji, %i.ajj
  store i64 %i.ajk, ptr %i.e, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ajg, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ed unwind label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  invoke void @__cxa_throw(ptr nonnull %i.ajg, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ef unwind label %bb.ee

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i195: ; preds = %bb.eb
  %i.ajl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br label %common.resume.sink.split.i189

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.04.i113.i196 = phi i1 [ false, %bb.ed ], [ true, %bb.ec ] ; 2 uses
  %i.ajm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  %i.ajn = load ptr, ptr %10, align 8, !tbaa !89  ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ajp = icmp eq ptr %i.ajn, %i.ajo
  br i1 %i.ajp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i197: ; preds = %bb.ee
  call void @_ZdlPv(ptr noundef %i.ajn) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br i1 %.04.i113.i196, label %common.resume.sink.split.i189, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i198: ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br i1 %.04.i113.i196, label %common.resume.sink.split.i189, label %common.resume

bb.ef:                                            ; preds = %bb.ed
  unreachable

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i179: ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_.exit.i178
  store i32 1003, ptr %i.air, align 1
end_hunk_6
begin_hunk_7_@_ZN6duckdbL28FromVectorizedFormatInternalINS_9VertexXYMEEEvRNS_6VectorES3_mNS_12GeometryTypeEm:bb.a
  %i.gv = getelementptr [8 x i8], ptr %i.gu, i64 %i.fn
  %.val42.2.i = load double, ptr %i.gv, align 8
  store double %.val42.2.i, ptr %i.gm, align 1
  %i.gw = add i32 %.03664.i, 1                    ; 2 uses
  %i.gx = zext i32 %i.gw to i64                   ; 2 uses
  %i.gy = icmp ugt i64 %i.ey, %i.gx
  br i1 %i.gy, label %.preheader.i, label %._crit_edge.i, !llvm.loop !3000

bb.z:                                             ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit.i42, %bb.p
  %i.gz = add nuw i64 %.03865.i, 1                ; 2 uses
  %exitcond.not.i43 = icmp eq i64 %i.gz, %2
  br i1 %exitcond.not.i43, label %_ZN6duckdbL10FromPointsINS_9VertexXYMEEEvRNS_6VectorES3_mm.exit, label %bb.o, !llvm.loop !3001

bb.aa:                                            ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2)
  %i.ha = load i8, ptr %0, align 8, !tbaa !483
  %i.hb = icmp eq i8 %i.ha, 3
  br i1 %i.hb, label %tailrecurse.i.i80, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i52

tailrecurse.i.i80:                                ; preds = %bb.aa, %tailrecurse.i.i80
  %.tr5.i.i81 = phi ptr [ %i.he, %tailrecurse.i.i80 ], [ %0, %bb.aa ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i81), !inline_history !2854
  %i.hc = getelementptr inbounds nuw i8, ptr %.tr5.i.i81, i64 88
  %i.hd = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hc), !inline_history !2854
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 48 ; 3 uses
  %i.hf = load i8, ptr %i.he, align 8, !tbaa !483
  %i.hg = icmp eq i8 %i.hf, 3
  br i1 %i.hg, label %tailrecurse.i.i80, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i52

_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i52: ; preds = %tailrecurse.i.i80, %bb.aa
  %.tr.lcssa.i.i53 = phi ptr [ %0, %bb.aa ], [ %i.he, %tailrecurse.i.i80 ] ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i.i53), !inline_history !2854
  %i.hh = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i53, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !427
  %i.hj = load i8, ptr %0, align 8, !tbaa !483
  %i.hk = icmp eq i8 %i.hj, 3
  br i1 %i.hk, label %tailrecurse.i70.i, label %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i54

tailrecurse.i70.i:                                ; preds = %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i52, %tailrecurse.i70.i
  %.tr1.i.i79 = phi ptr [ %i.hn, %tailrecurse.i70.i ], [ %0, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i52 ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i.i79), !inline_history !596
  %i.hl = getelementptr inbounds nuw i8, ptr %.tr1.i.i79, i64 88
  %i.hm = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hl), !inline_history !596
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 48 ; 3 uses
  %i.ho = load i8, ptr %i.hn, align 8, !tbaa !483
  %i.hp = icmp eq i8 %i.ho, 3
  br i1 %i.hp, label %tailrecurse.i70.i, label %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i54

_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i54: ; preds = %tailrecurse.i70.i, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i52
  %.tr.lcssa.i69.i = phi ptr [ %0, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i52 ], [ %i.hn, %tailrecurse.i70.i ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i69.i, i64 88
  %i.hr = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hq), !inline_history !595
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 48
  %i.ht = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hs), !inline_history !596 ; 6 uses
  %i.hu = load i8, ptr %i.ht, align 8, !tbaa !483
  %i.hv = icmp eq i8 %i.hu, 3
  br i1 %i.hv, label %tailrecurse.i72.i, label %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i

tailrecurse.i72.i:                                ; preds = %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i54, %tailrecurse.i72.i
  %.tr5.i73.i = phi ptr [ %i.hy, %tailrecurse.i72.i ], [ %i.ht, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i54 ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i73.i), !inline_history !2953
  %i.hw = getelementptr inbounds nuw i8, ptr %.tr5.i73.i, i64 88
  %i.hx = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hw), !inline_history !2953
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48 ; 3 uses
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !483
  %i.ia = icmp eq i8 %i.hz, 3
  br i1 %i.ia, label %tailrecurse.i72.i, label %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i

_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i: ; preds = %tailrecurse.i72.i, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i54
  %.tr.lcssa.i71.i = phi ptr [ %i.ht, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i54 ], [ %i.hy, %tailrecurse.i72.i ] ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKNS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i71.i), !inline_history !2953
  %i.ib = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i71.i, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !427 ; 2 uses
  %i.id = load i8, ptr %i.ht, align 8, !tbaa !483
  %i.ie = icmp eq i8 %i.id, 3
  br i1 %i.ie, label %tailrecurse.i75.i, label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i

tailrecurse.i75.i:                                ; preds = %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i, %tailrecurse.i75.i
  %.tr1.i76.i = phi ptr [ %i.ih, %tailrecurse.i75.i ], [ %i.ht, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i76.i), !inline_history !485
  %i.if = getelementptr inbounds nuw i8, ptr %.tr1.i76.i, i64 88
  %i.ig = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.if), !inline_history !485
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 48 ; 3 uses
  %i.ii = load i8, ptr %i.ih, align 8, !tbaa !483
  %i.ij = icmp eq i8 %i.ii, 3
  br i1 %i.ij, label %tailrecurse.i75.i, label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i

_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i: ; preds = %tailrecurse.i75.i, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i
  %.tr.lcssa.i74.i = phi ptr [ %i.ht, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i ], [ %i.ih, %tailrecurse.i75.i ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i74.i, i64 88
  %i.il = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik), !inline_history !486
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  %i.in = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.im), !inline_history !485 ; 3 uses
  %i.io = load i8, ptr %i.in, align 8, !tbaa !483
  %i.ip = icmp eq i8 %i.io, 3
  br i1 %i.ip, label %tailrecurse.i.i.i, label %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i

tailrecurse.i.i.i:                                ; preds = %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i, %tailrecurse.i.i.i
  %.tr5.i.i.i = phi ptr [ %i.is, %tailrecurse.i.i.i ], [ %i.in, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i.i), !inline_history !506
  %i.iq = getelementptr inbounds nuw i8, ptr %.tr5.i.i.i, i64 88
  %i.ir = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iq), !inline_history !506
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 48 ; 3 uses
  %i.it = load i8, ptr %i.is, align 8, !tbaa !483
  %i.iu = icmp eq i8 %i.it, 3
  br i1 %i.iu, label %tailrecurse.i.i.i, label %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i

_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i: ; preds = %tailrecurse.i.i.i, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i
  %.tr.lcssa.i.i.i = phi ptr [ %i.in, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i ], [ %i.is, %tailrecurse.i.i.i ]
  %i.iv = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i.i, i64 88
  %i.iw = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iv), !inline_history !506
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 48 ; 3 uses
  %i.iy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ix, i64 noundef 0)
  %i.iz = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.iy) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.iz)
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 32
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !427
  %i.jc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ix, i64 noundef 1)
  %i.jd = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jc) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.jd)
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !427
  %i.jg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ix, i64 noundef 2)
  %i.jh = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jg) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.jh)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !427
  %.not.i55 = icmp eq i64 %2, 0
  br i1 %.not.i55, label %_ZN6duckdbL10FromPointsINS_9VertexXYMEEEvRNS_6VectorES3_mm.exit, label %.lr.ph114.i

.lr.ph114.i:                                      ; preds = %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jl = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %37, i64 4 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ao, %.lr.ph114.i
  %.057112.i = phi i64 [ 0, %.lr.ph114.i ], [ %i.of, %bb.ao ] ; 5 uses
  %i.jq = add i64 %.057112.i, %4                  ; 2 uses
  %i.jr = load ptr, ptr %i.jk, align 8, !tbaa !519 ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i56, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i58, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i57

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i57: ; preds = %bb.ab
  %i.js = lshr i64 %.057112.i, 6
  %i.jt = and i64 %.057112.i, 63
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.js
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !108
  %i.jw = shl nuw i64 1, %i.jt
  %i.jx = and i64 %i.jv, %i.jw
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %bb.ac, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i58

bb.ac:                                            ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i57
  call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.jq, i1 noundef zeroext true)
  br label %bb.ao

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i58: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i57, %bb.ab
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %.057112.i ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !550 ; 8 uses
  %.not116.i = icmp eq i64 %i.kb, 0               ; 2 uses
  br i1 %.not116.i, label %._crit_edge.thread.i, label %.lr.ph.i59

._crit_edge.thread.i:                             ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i58
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #46
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i62

.lr.ph.i59:                                       ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i58
  %i.kc = load i64, ptr %i.jz, align 8, !tbaa !552
  %i.kd = getelementptr [16 x i8], ptr %i.ic, i64 %i.kc ; 3 uses
  %min.iters.check663 = icmp ult i64 %i.kb, 9
  br i1 %min.iters.check663, label %scalar.ph662.preheader, label %vector.scevcheck661

vector.scevcheck661:                              ; preds = %.lr.ph.i59
  %i.ke = add i64 %i.kb, -1                       ; 2 uses
  %i.kf = and i64 %i.ke, 4294967295
  %i.kg = icmp eq i64 %i.kf, 4294967295
  %i.kh = icmp ugt i64 %i.ke, 4294967295
  %i.ki = or i1 %i.kg, %i.kh
  br i1 %i.ki, label %scalar.ph662.preheader, label %vector.ph664

vector.ph664:                                     ; preds = %vector.scevcheck661
  %n.mod.vf665 = and i64 %i.kb, 3                 ; 2 uses
  %i.kj = icmp eq i64 %n.mod.vf665, 0
  %i.kk = select i1 %i.kj, i64 4, i64 %n.mod.vf665
  %n.vec666 = sub nsw i64 %i.kb, %i.kk            ; 2 uses
  br label %vector.body667

vector.body667:                                   ; preds = %vector.body667, %vector.ph664
  %index668 = phi i64 [ 0, %vector.ph664 ], [ %index.next675, %vector.body667 ] ; 3 uses
  %vec.phi669 = phi <2 x i64> [ <i64 9, i64 0>, %vector.ph664 ], [ %i.kt, %vector.body667 ]
  %vec.phi670 = phi <2 x i64> [ zeroinitializer, %vector.ph664 ], [ %i.ku, %vector.body667 ]
  %i.kl = getelementptr [16 x i8], ptr %i.kd, i64 %index668
  %i.km = getelementptr [16 x i8], ptr %i.kd, i64 %index668
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ko = getelementptr i8, ptr %i.km, i64 40
  %48 = load <3 x i64>, ptr %i.kn, align 8, !tbaa !550
  %strided.vec672 = shufflevector <3 x i64> %48, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %49 = load <3 x i64>, ptr %i.ko, align 8, !tbaa !550
  %strided.vec674 = shufflevector <3 x i64> %49, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.kp = add <2 x i64> %vec.phi669, splat (i64 4)
  %i.kq = add <2 x i64> %vec.phi670, splat (i64 4)
  %i.kr = mul <2 x i64> %strided.vec672, splat (i64 24)
  %i.ks = mul <2 x i64> %strided.vec674, splat (i64 24)
  %i.kt = add <2 x i64> %i.kp, %i.kr              ; 2 uses
  %i.ku = add <2 x i64> %i.kq, %i.ks              ; 2 uses
  %index.next675 = add nuw i64 %index668, 4       ; 2 uses
  %i.kv = icmp eq i64 %index.next675, %n.vec666
  br i1 %i.kv, label %middle.block676, label %vector.body667, !llvm.loop !3002

middle.block676:                                  ; preds = %vector.body667
  %bin.rdx677 = add <2 x i64> %i.ku, %i.kt
  %i.kw = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx677)
  br label %scalar.ph662.preheader

scalar.ph662.preheader:                           ; preds = %vector.scevcheck661, %.lr.ph.i59, %middle.block676
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck661 ], [ 0, %.lr.ph.i59 ], [ %n.vec666, %middle.block676 ]
  %.05996.i.ph = phi i64 [ 9, %vector.scevcheck661 ], [ 9, %.lr.ph.i59 ], [ %i.kw, %middle.block676 ]
  br label %scalar.ph662

._crit_edge.i60:                                  ; preds = %scalar.ph662
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #46
  %i.kx = icmp ult i64 %i.lo, 13
  br i1 %i.kx, label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i62, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i60
  %i.ky = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  %i.la = call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.kz, i64 noundef %i.lo) ; 2 uses
  %i.lb = extractvalue { i64, ptr } %i.la, 0      ; 2 uses
  %.sroa.3.0.extract.shift.i.i61 = and i64 %i.lb, -4294967296
  %i.lc = extractvalue { i64, ptr } %i.la, 1
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i62

_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i62: ; preds = %bb.ad, %._crit_edge.i60, %._crit_edge.thread.i
  %.059.lcssa151.i = phi i64 [ %i.lo, %bb.ad ], [ %i.lo, %._crit_edge.i60 ], [ 9, %._crit_edge.thread.i ]
  %.sroa.34.0.i.i63 = phi ptr [ %i.lc, %bb.ad ], [ undef, %._crit_edge.i60 ], [ undef, %._crit_edge.thread.i ] ; 2 uses
  %.sroa.3.0.i.i64 = phi i64 [ %.sroa.3.0.extract.shift.i.i61, %bb.ad ], [ 0, %._crit_edge.i60 ], [ 0, %._crit_edge.thread.i ]
  %.sroa.0.0.in.i.i65 = phi i64 [ %i.lb, %bb.ad ], [ %i.lo, %._crit_edge.i60 ], [ 9, %._crit_edge.thread.i ] ; 2 uses
  %.sroa.0.0.insert.ext.i.i66 = and i64 %.sroa.0.0.in.i.i65, 4294967295
  %.sroa.0.0.insert.insert.i.i67 = or disjoint i64 %.sroa.0.0.insert.ext.i.i66, %.sroa.3.0.i.i64
  store i64 %.sroa.0.0.insert.insert.i.i67, ptr %37, align 8
  store ptr %.sroa.34.0.i.i63, ptr %i.jl, align 8
  %i.ld = trunc i64 %.sroa.0.0.in.i.i65 to i32
  %i.le = icmp ult i32 %i.ld, 13
  %i.lf = select i1 %i.le, ptr %i.jm, ptr %.sroa.34.0.i.i63 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #46
  store ptr %i.lf, ptr %38, align 8, !tbaa !2024
  store ptr %i.lf, ptr %i.jn, align 8, !tbaa !2026
  %i.lg = and i64 %.059.lcssa151.i, 4294967295
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lg
  store ptr %i.lh, ptr %i.jo, align 8, !tbaa !2027
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 1)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %38, i32 2003)
  %i.li = trunc nuw i64 %i.kb to i32
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %38, i32 %i.li)
  br i1 %.not116.i, label %._crit_edge111.i, label %.lr.ph110.preheader.i

.lr.ph110.preheader.i:                            ; preds = %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i62
  %.pre.i68 = load ptr, ptr %i.jn, align 8, !tbaa !2026
  br label %.lr.ph110.i

scalar.ph662:                                     ; preds = %scalar.ph662.preheader, %scalar.ph662
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph662 ], [ %indvars.iv.i.ph, %scalar.ph662.preheader ] ; 2 uses
  %.05996.i = phi i64 [ %i.lo, %scalar.ph662 ], [ %.05996.i.ph, %scalar.ph662.preheader ]
  %i.lj = getelementptr [16 x i8], ptr %i.kd, i64 %indvars.iv.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !550
  %i.lm = add i64 %.05996.i, 4
  %i.ln = mul i64 %i.ll, 24
  %i.lo = add i64 %i.lm, %i.ln                    ; 6 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.lp = and i64 %indvars.iv.next.i, 4294967295
  %i.lq = icmp ugt i64 %i.kb, %i.lp
  br i1 %i.lq, label %scalar.ph662, label %._crit_edge.i60, !llvm.loop !3003

._crit_edge111.i:                                 ; preds = %._crit_edge107.i, %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i62
  %i.lr = load i32, ptr %37, align 8, !tbaa !153  ; 2 uses
  %i.ls = icmp ult i32 %i.lr, 13
  br i1 %i.ls, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge111.i
  %i.lt = zext nneg i32 %i.lr to i64              ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.lt
  %i.lv = sub nuw nsw i64 12, %i.lt
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lu, i8 0, i64 %i.lv, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i73

bb.af:                                            ; preds = %._crit_edge111.i
  %i.lw = load ptr, ptr %i.jl, align 8
  %i.lx = load i32, ptr %i.lw, align 1
  store i32 %i.lx, ptr %i.jm, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i73

_ZN6duckdb8string_t8FinalizeEv.exit.i73:          ; preds = %bb.af, %bb.ae
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ly = load ptr, ptr %i.jp, align 8, !tbaa !427
  %i.lz = getelementptr inbounds nuw [16 x i8], ptr %i.ly, i64 %i.jq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lz, ptr noundef nonnull align 8 dereferenceable(16) %37, i64 16, i1 false), !tbaa.struct !707
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #46
  br label %bb.ao

.lr.ph110.i:                                      ; preds = %._crit_edge107.i, %.lr.ph110.preheader.i
  %i.ma = phi ptr [ %.lcssa97102.lcssa.i, %._crit_edge107.i ], [ %.pre.i68, %.lr.ph110.preheader.i ] ; 3 uses
  %i.mb = phi i64 [ %i.mz, %._crit_edge107.i ], [ 0, %.lr.ph110.preheader.i ]
  %.058109.i = phi i32 [ %i.my, %._crit_edge107.i ], [ 0, %.lr.ph110.preheader.i ]
  %i.mc = load i64, ptr %i.jz, align 8, !tbaa !552
  %i.md = getelementptr [16 x i8], ptr %i.ic, i64 %i.mc
  %i.me = getelementptr [16 x i8], ptr %i.md, i64 %i.mb ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !550 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ma, i64 4 ; 3 uses
  %i.mi = load ptr, ptr %i.jo, align 8, !tbaa !2027 ; 4 uses
  %i.mj = icmp ugt ptr %i.mh, %i.mi
  br i1 %i.mj, label %bb.ag, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i

bb.ag:                                            ; preds = %.lr.ph110.i
  %i.mk = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %36)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i75

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #46
  %i.ml = load ptr, ptr %38, align 8, !tbaa !2024
  %i.mm = ptrtoint ptr %i.ma to i64
  %i.mn = ptrtoint ptr %i.ml to i64
  %i.mo = sub i64 %i.mm, %i.mn
  store i64 %i.mo, ptr %i.q, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.mk, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.mk, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ak unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i75: ; preds = %bb.ag
  %i.mp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #46
  br label %common.resume.sink.split.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.04.i.i76 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.mq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #46
  %i.mr = load ptr, ptr %35, align 8, !tbaa !89   ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.mt = icmp eq ptr %i.mr, %i.ms
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.mr) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #46
  br i1 %.04.i.i76, label %common.resume.sink.split.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i78: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #46
  br i1 %.04.i.i76, label %common.resume.sink.split.i, label %common.resume

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i77.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i75
  %.sink.i = phi ptr [ %i.nb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i77.i ], [ %i.nb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82.i ], [ %i.nb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81.i ], [ %i.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i78 ], [ %i.mk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77 ], [ %i.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i75 ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.nl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i77.i ], [ %i.nm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82.i ], [ %i.nm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81.i ], [ %i.mq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i78 ], [ %i.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77 ], [ %i.mp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i75 ]
  call void @__cxa_free_exception(ptr %.sink.i) #46
  br label %common.resume

bb.ak:                                            ; preds = %bb.ai
  unreachable

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i: ; preds = %.lr.ph110.i
  %i.mu = trunc i64 %i.mg to i32
  store i32 %i.mu, ptr %i.ma, align 1
  %.not118.i = icmp eq i64 %i.mg, 0
  br i1 %.not118.i, label %._crit_edge107.i, label %.preheader.i69

.preheader.i69:                                   ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.2.i72
  %i.mv = phi i64 [ %i.od, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.2.i72 ], [ 0, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i ] ; 3 uses
  %.055106.i = phi i32 [ %i.oc, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.2.i72 ], [ 0, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i ]
  %.lcssa97102105.i = phi ptr [ %i.nx, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.2.i72 ], [ %i.mh, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i ] ; 5 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.lcssa97102105.i, i64 8 ; 3 uses
  %i.mx = icmp ugt ptr %i.mw, %i.mi
  br i1 %i.mx, label %.noexc.i.i, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i70

._crit_edge107.i:                                 ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.2.i72, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i
  %.lcssa97102.lcssa.i = phi ptr [ %i.mh, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i ], [ %i.nx, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.2.i72 ]
  %i.my = add i32 %.058109.i, 1                   ; 2 uses
  %i.mz = zext i32 %i.my to i64                   ; 2 uses
  %i.na = icmp ugt i64 %i.kb, %i.mz
  br i1 %i.na, label %.lr.ph110.i, label %._crit_edge111.i, !llvm.loop !3004

.noexc.i.i:                                       ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.1.i71, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i70, %.preheader.i69
  %.lcssa121.i = phi ptr [ %.lcssa97102105.i, %.preheader.i69 ], [ %i.mw, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i70 ], [ %i.ns, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.1.i71 ]
  %i.nb = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #46
end_hunk_7
begin_hunk_8_@_ZN6duckdbL28FromVectorizedFormatInternalINS_9VertexXYMEEEvRNS_6VectorES3_mNS_12GeometryTypeEm:bb.a
  %i.vc = getelementptr inbounds nuw i8, ptr %.tr1.i99.i, i64 88
  %i.vd = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vc)
          to label %.noexc101.i unwind label %.loopexit.split-lp.loopexit.i, !inline_history !485

.noexc101.i:                                      ; preds = %.noexc100.i
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 48 ; 3 uses
  %i.vf = load i8, ptr %i.ve, align 8, !tbaa !483
  %i.vg = icmp eq i8 %i.vf, 3
  br i1 %i.vg, label %tailrecurse.i98.i, label %_ZN6duckdb10ListVector16GetEntryInternalIKNS_6VectorEEERT_S5_.exit.i.i

_ZN6duckdb10ListVector16GetEntryInternalIKNS_6VectorEEERT_S5_.exit.i.i: ; preds = %.noexc101.i, %bb.bm
  %.tr.lcssa.i97.i = phi ptr [ %23, %bb.bm ], [ %i.ve, %.noexc101.i ]
  %i.vh = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i97.i, i64 88
  %i.vi = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vh)
          to label %.noexc102.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !inline_history !485

.noexc102.i:                                      ; preds = %_ZN6duckdb10ListVector16GetEntryInternalIKNS_6VectorEEERT_S5_.exit.i.i
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 48
  %i.vk = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.vj)
          to label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i122 unwind label %.loopexit.split-lp.loopexit.split-lp.i, !inline_history !485 ; 3 uses

_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i122: ; preds = %.noexc102.i
  %i.vl = load i8, ptr %i.vk, align 8, !tbaa !483
  %i.vm = icmp eq i8 %i.vl, 3
  br i1 %i.vm, label %tailrecurse.i.i.i149, label %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i

tailrecurse.i.i.i149:                             ; preds = %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i122, %.noexc105.i
  %.tr5.i.i.i150 = phi ptr [ %i.vp, %.noexc105.i ], [ %i.vk, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i122 ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i.i150)
          to label %.noexc104.i unwind label %.loopexit.i

.noexc104.i:                                      ; preds = %tailrecurse.i.i.i149
  %i.vn = getelementptr inbounds nuw i8, ptr %.tr5.i.i.i150, i64 88
  %i.vo = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vn)
          to label %.noexc105.i unwind label %.loopexit.i

.noexc105.i:                                      ; preds = %.noexc104.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 48 ; 3 uses
  %i.vq = load i8, ptr %i.vp, align 8, !tbaa !483
  %i.vr = icmp eq i8 %i.vq, 3
  br i1 %i.vr, label %tailrecurse.i.i.i149, label %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i

_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i: ; preds = %.noexc105.i, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i122
  %.tr.lcssa.i.i.i123 = phi ptr [ %i.vk, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i122 ], [ %i.vp, %.noexc105.i ]
  %i.vs = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i.i123, i64 88
  %i.vt = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vs)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.i

bb.bn:                                            ; preds = %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 48 ; 3 uses
  %i.vv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.vu, i64 noundef 0)
          to label %bb.bo unwind label %bb.bw

.lr.ph186.i:                                      ; preds = %.preheader142.i
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vx = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %24, i64 4 ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.bx

.loopexit146.i:                                   ; preds = %.noexc.i151, %tailrecurse.i93.i
  %lpad.loopexit148.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp147.i:                          ; preds = %tailrecurse._crit_edge.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %.noexc104.i, %tailrecurse.i.i.i149
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc100.i, %tailrecurse.i98.i
  %lpad.loopexit143.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i, %.noexc102.i, %_ZN6duckdb10ListVector16GetEntryInternalIKNS_6VectorEEERT_S5_.exit.i.i
  %lpad.loopexit.split-lp144.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.bo:                                            ; preds = %bb.bn
  %i.wc = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.vv)
          to label %bb.bp unwind label %bb.bw     ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.wc)
          to label %bb.bq unwind label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 32
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !427
  %i.wf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.vu, i64 noundef 1)
          to label %bb.br unwind label %bb.bw

bb.br:                                            ; preds = %bb.bq
  %i.wg = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.wf)
          to label %bb.bs unwind label %bb.bw     ; 2 uses

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.wg)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 32
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !427
  %i.wj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.vu, i64 noundef 2)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.wk = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.wj)
          to label %bb.bv unwind label %bb.bw     ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.wk)
          to label %.preheader142.i unwind label %bb.bw

.preheader142.i:                                  ; preds = %bb.bv
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 32
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !427
  %.not.i124 = icmp eq i64 %2, 0
  br i1 %.not.i124, label %_ZN6duckdbL20FromMultiLineStringsINS_9VertexXYMEEEvRNS_6VectorES3_mm.exit, label %.lr.ph186.i

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.bx:                                            ; preds = %bb.dn, %.lr.ph186.i
  %.067184.i = phi i64 [ 0, %.lr.ph186.i ], [ %i.acg, %bb.dn ] ; 5 uses
  %i.wo = add i64 %.067184.i, %4                  ; 2 uses
  %i.wp = load ptr, ptr %i.vw, align 8, !tbaa !519 ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %i.wp, null
  br i1 %.not.i.i.i125, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i127, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i126

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i126: ; preds = %bb.bx
  %i.wq = lshr i64 %.067184.i, 6
  %i.wr = and i64 %.067184.i, 63
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %i.wq
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !108
  %i.wu = shl nuw i64 1, %i.wr
  %i.wv = and i64 %i.wt, %i.wu
  %i.ww = icmp eq i64 %i.wv, 0
  br i1 %i.ww, label %bb.by, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i127

bb.by:                                            ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i126
  invoke void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.wo, i1 noundef zeroext true)
          to label %bb.dn unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.wx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i127: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i126, %bb.bx
  %i.wy = getelementptr inbounds nuw [16 x i8], ptr %i.uf, i64 %.067184.i ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 8
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !550 ; 8 uses
  %.not188.i = icmp eq i64 %i.xa, 0               ; 2 uses
  br i1 %.not188.i, label %._crit_edge.thread.i148, label %.lr.ph.i128

._crit_edge.thread.i148:                          ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i127
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #46
  br label %bb.cb

.lr.ph.i128:                                      ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i127
  %i.xb = load i64, ptr %i.wy, align 8, !tbaa !552
  %i.xc = getelementptr [16 x i8], ptr %i.uz, i64 %i.xb ; 3 uses
  %min.iters.check629 = icmp ult i64 %i.xa, 9
  br i1 %min.iters.check629, label %scalar.ph628.preheader, label %vector.scevcheck627

vector.scevcheck627:                              ; preds = %.lr.ph.i128
  %i.xd = add i64 %i.xa, -1                       ; 2 uses
  %i.xe = and i64 %i.xd, 4294967295
  %i.xf = icmp eq i64 %i.xe, 4294967295
  %i.xg = icmp ugt i64 %i.xd, 4294967295
  %i.xh = or i1 %i.xf, %i.xg
  br i1 %i.xh, label %scalar.ph628.preheader, label %vector.ph630

vector.ph630:                                     ; preds = %vector.scevcheck627
  %n.mod.vf631 = and i64 %i.xa, 3                 ; 2 uses
  %i.xi = icmp eq i64 %n.mod.vf631, 0
  %i.xj = select i1 %i.xi, i64 4, i64 %n.mod.vf631
  %n.vec632 = sub nsw i64 %i.xa, %i.xj            ; 2 uses
  br label %vector.body633

vector.body633:                                   ; preds = %vector.body633, %vector.ph630
  %index634 = phi i64 [ 0, %vector.ph630 ], [ %index.next641, %vector.body633 ] ; 3 uses
  %vec.phi635 = phi <2 x i64> [ <i64 9, i64 0>, %vector.ph630 ], [ %i.xs, %vector.body633 ]
  %vec.phi636 = phi <2 x i64> [ zeroinitializer, %vector.ph630 ], [ %i.xt, %vector.body633 ]
  %i.xk = getelementptr [16 x i8], ptr %i.xc, i64 %index634
  %i.xl = getelementptr [16 x i8], ptr %i.xc, i64 %index634
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.xn = getelementptr i8, ptr %i.xl, i64 40
  %50 = load <3 x i64>, ptr %i.xm, align 8, !tbaa !550
  %strided.vec638 = shufflevector <3 x i64> %50, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %51 = load <3 x i64>, ptr %i.xn, align 8, !tbaa !550
  %strided.vec640 = shufflevector <3 x i64> %51, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.xo = add <2 x i64> %vec.phi635, splat (i64 9)
  %i.xp = add <2 x i64> %vec.phi636, splat (i64 9)
  %i.xq = mul <2 x i64> %strided.vec638, splat (i64 24)
  %i.xr = mul <2 x i64> %strided.vec640, splat (i64 24)
  %i.xs = add <2 x i64> %i.xo, %i.xq              ; 2 uses
  %i.xt = add <2 x i64> %i.xp, %i.xr              ; 2 uses
  %index.next641 = add nuw i64 %index634, 4       ; 2 uses
  %i.xu = icmp eq i64 %index.next641, %n.vec632
  br i1 %i.xu, label %middle.block642, label %vector.body633, !llvm.loop !3011

middle.block642:                                  ; preds = %vector.body633
  %bin.rdx643 = add <2 x i64> %i.xt, %i.xs
  %i.xv = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx643)
  br label %scalar.ph628.preheader

scalar.ph628.preheader:                           ; preds = %vector.scevcheck627, %.lr.ph.i128, %middle.block642
  %indvars.iv.i129.ph = phi i64 [ 0, %vector.scevcheck627 ], [ 0, %.lr.ph.i128 ], [ %n.vec632, %middle.block642 ]
  %.069167.i.ph = phi i64 [ 9, %vector.scevcheck627 ], [ 9, %.lr.ph.i128 ], [ %i.xv, %middle.block642 ]
  br label %scalar.ph628

._crit_edge.i131:                                 ; preds = %scalar.ph628
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #46
  %i.xw = icmp ult i64 %i.yh, 13
  br i1 %i.xw, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.i131
  %i.xx = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc108.i unwind label %bb.cg

.noexc108.i:                                      ; preds = %bb.ca
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 48
  %i.xz = invoke { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.xy, i64 noundef %i.yh)
          to label %.noexc109.i unwind label %bb.cg ; 2 uses

.noexc109.i:                                      ; preds = %.noexc108.i
  %i.ya = extractvalue { i64, ptr } %i.xz, 0      ; 2 uses
  %.sroa.3.0.extract.shift.i.i132 = and i64 %i.ya, -4294967296
  %i.yb = extractvalue { i64, ptr } %i.xz, 1
  br label %bb.cb

scalar.ph628:                                     ; preds = %scalar.ph628.preheader, %scalar.ph628
  %indvars.iv.i129 = phi i64 [ %indvars.iv.next.i130, %scalar.ph628 ], [ %indvars.iv.i129.ph, %scalar.ph628.preheader ] ; 2 uses
  %.069167.i = phi i64 [ %i.yh, %scalar.ph628 ], [ %.069167.i.ph, %scalar.ph628.preheader ]
  %i.yc = getelementptr [16 x i8], ptr %i.xc, i64 %indvars.iv.i129
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !550
  %i.yf = add i64 %.069167.i, 9
  %i.yg = mul i64 %i.ye, 24
  %i.yh = add i64 %i.yf, %i.yg                    ; 6 uses
  %indvars.iv.next.i130 = add i64 %indvars.iv.i129, 1 ; 2 uses
  %i.yi = and i64 %indvars.iv.next.i130, 4294967295
  %i.yj = icmp ugt i64 %i.xa, %i.yi
  br i1 %i.yj, label %scalar.ph628, label %._crit_edge.i131, !llvm.loop !3012

bb.cb:                                            ; preds = %.noexc109.i, %._crit_edge.i131, %._crit_edge.thread.i148
  %.069.lcssa238.i = phi i64 [ %i.yh, %.noexc109.i ], [ %i.yh, %._crit_edge.i131 ], [ 9, %._crit_edge.thread.i148 ]
  %.sroa.34.0.i.i133 = phi ptr [ %i.yb, %.noexc109.i ], [ undef, %._crit_edge.i131 ], [ undef, %._crit_edge.thread.i148 ] ; 2 uses
  %.sroa.3.0.i.i134 = phi i64 [ %.sroa.3.0.extract.shift.i.i132, %.noexc109.i ], [ 0, %._crit_edge.i131 ], [ 0, %._crit_edge.thread.i148 ]
  %.sroa.0.0.in.i.i135 = phi i64 [ %i.ya, %.noexc109.i ], [ %i.yh, %._crit_edge.i131 ], [ 9, %._crit_edge.thread.i148 ] ; 2 uses
  %.sroa.0.0.insert.ext.i.i136 = and i64 %.sroa.0.0.in.i.i135, 4294967295
  %.sroa.0.0.insert.insert.i.i137 = or disjoint i64 %.sroa.0.0.insert.ext.i.i136, %.sroa.3.0.i.i134
  store i64 %.sroa.0.0.insert.insert.i.i137, ptr %24, align 8
  store ptr %.sroa.34.0.i.i133, ptr %i.vx, align 8
  %i.yk = trunc i64 %.sroa.0.0.in.i.i135 to i32
  %i.yl = icmp ult i32 %i.yk, 13
  %i.ym = select i1 %i.yl, ptr %i.vy, ptr %.sroa.34.0.i.i133 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #46
  store ptr %i.ym, ptr %25, align 8, !tbaa !2024
  store ptr %i.ym, ptr %i.vz, align 8, !tbaa !2026
  %i.yn = and i64 %.069.lcssa238.i, 4294967295
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.yn
  store ptr %i.yo, ptr %i.wa, align 8, !tbaa !2027
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 1)
          to label %bb.cc unwind label %bb.ch

bb.cc:                                            ; preds = %bb.cb
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %25, i32 2005)
          to label %bb.cd unwind label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  %i.yp = trunc nuw i64 %i.xa to i32
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %25, i32 %i.yp)
          to label %.preheader141.i unwind label %bb.cj

.preheader141.i:                                  ; preds = %bb.cd
  br i1 %.not188.i, label %._crit_edge183.i, label %.lr.ph182.preheader.i

.lr.ph182.preheader.i:                            ; preds = %.preheader141.i
  %.pre.i138 = load ptr, ptr %i.vz, align 8, !tbaa !2026
  br label %.lr.ph182.i

._crit_edge183.i:                                 ; preds = %._crit_edge179.i, %.preheader141.i
  %i.yq = load i32, ptr %24, align 8, !tbaa !153  ; 2 uses
  %i.yr = icmp ult i32 %i.yq, 13
  br i1 %i.yr, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %._crit_edge183.i
  %i.ys = zext nneg i32 %i.yq to i64              ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.ys
  %i.yu = sub nuw nsw i64 12, %i.ys
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.yt, i8 0, i64 %i.yu, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i140

bb.cf:                                            ; preds = %._crit_edge183.i
  %i.yv = load ptr, ptr %i.vx, align 8
  %i.yw = load i32, ptr %i.yv, align 1
  store i32 %i.yw, ptr %i.vy, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i140

bb.cg:                                            ; preds = %.noexc108.i, %bb.ca
  %i.yx = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.ch:                                            ; preds = %bb.cb
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ci:                                            ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit.i140, %bb.cc
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cj:                                            ; preds = %bb.cd
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph182.i:                                      ; preds = %._crit_edge179.i, %.lr.ph182.preheader.i
  %i.zb = phi ptr [ %.lcssa169174.lcssa.i, %._crit_edge179.i ], [ %.pre.i138, %.lr.ph182.preheader.i ] ; 5 uses
  %i.zc = phi i64 [ %i.aay, %._crit_edge179.i ], [ 0, %.lr.ph182.preheader.i ]
  %.065181.i = phi i32 [ %i.aax, %._crit_edge179.i ], [ 0, %.lr.ph182.preheader.i ]
  %i.zd = load i64, ptr %i.wy, align 8, !tbaa !552
  %i.ze = getelementptr [16 x i8], ptr %i.uz, i64 %i.zd
  %i.zf = getelementptr [16 x i8], ptr %i.ze, i64 %i.zc ; 4 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 8
  %i.zh = load i64, ptr %i.zg, align 8, !tbaa !550 ; 3 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zb, i64 1 ; 3 uses
  %i.zj = load ptr, ptr %i.wa, align 8, !tbaa !2027 ; 6 uses
  %i.zk = icmp ugt ptr %i.zi, %i.zj
  br i1 %i.zk, label %bb.ck, label %bb.cq

bb.ck:                                            ; preds = %.lr.ph182.i
  %i.zl = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.cl unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i143

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #46
  %i.zm = load ptr, ptr %25, align 8, !tbaa !2024
  %i.zn = ptrtoint ptr %i.zb to i64
  %i.zo = ptrtoint ptr %i.zm to i64
  %i.zp = sub i64 %i.zn, %i.zo
  store i64 %i.zp, ptr %i.k, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.zl, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  invoke void @__cxa_throw(ptr nonnull %i.zl, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.cp unwind label %bb.cn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i143: ; preds = %bb.ck
  %i.zq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #46
  br label %bb.co

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.04.i.i145 = phi i1 [ false, %bb.cm ], [ true, %bb.cl ] ; 2 uses
  %i.zr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #46
  %i.zs = load ptr, ptr %21, align 8, !tbaa !89   ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.zu = icmp eq ptr %i.zs, %i.zt
  br i1 %i.zu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i146: ; preds = %bb.cn
  call void @_ZdlPv(ptr noundef %i.zs) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #46
  br i1 %.04.i.i145, label %bb.co, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i147: ; preds = %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #46
  br i1 %.04.i.i145, label %bb.co, label %.body.i

bb.co:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i143
  %.pn4.i.i144 = phi { ptr, i32 } [ %i.zq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i143 ], [ %i.zr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i147 ], [ %i.zr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i146 ]
  call void @__cxa_free_exception(ptr %i.zl) #46
  br label %.body.i

bb.cp:                                            ; preds = %bb.cm
  unreachable

end_hunk_8
begin_hunk_9_@_ZN6duckdbL28FromVectorizedFormatInternalINS_9VertexXYMEEEvRNS_6VectorES3_mNS_12GeometryTypeEm:bb.a
tailrecurse.i103.i:                               ; preds = %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i159, %tailrecurse.i103.i
  %.tr5.i104.i = phi ptr [ %i.adz, %tailrecurse.i103.i ], [ %i.adu, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i159 ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i104.i), !inline_history !2953
  %i.adx = getelementptr inbounds nuw i8, ptr %.tr5.i104.i, i64 88
  %i.ady = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.adx), !inline_history !2953
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 48 ; 3 uses
  %i.aea = load i8, ptr %i.adz, align 8, !tbaa !483
  %i.aeb = icmp eq i8 %i.aea, 3
  br i1 %i.aeb, label %tailrecurse.i103.i, label %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i

_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i: ; preds = %tailrecurse.i103.i, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i159
  %.tr.lcssa.i102.i = phi ptr [ %i.adu, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i159 ], [ %i.adz, %tailrecurse.i103.i ] ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKNS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i102.i), !inline_history !2953
  %i.aec = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i102.i, i64 32
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !427 ; 2 uses
  %i.aee = load i8, ptr %i.adu, align 8, !tbaa !483
  %i.aef = icmp eq i8 %i.aee, 3
  br i1 %i.aef, label %tailrecurse.i107.i, label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i

tailrecurse.i107.i:                               ; preds = %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i, %tailrecurse.i107.i
  %.tr1.i108.i = phi ptr [ %i.aei, %tailrecurse.i107.i ], [ %i.adu, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i108.i), !inline_history !485
  %i.aeg = getelementptr inbounds nuw i8, ptr %.tr1.i108.i, i64 88
  %i.aeh = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aeg), !inline_history !485
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 48 ; 3 uses
  %i.aej = load i8, ptr %i.aei, align 8, !tbaa !483
  %i.aek = icmp eq i8 %i.aej, 3
  br i1 %i.aek, label %tailrecurse.i107.i, label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i

_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i: ; preds = %tailrecurse.i107.i, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i
  %.tr.lcssa.i106.i = phi ptr [ %i.adu, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i ], [ %i.aei, %tailrecurse.i107.i ]
  %i.ael = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i106.i, i64 88
  %i.aem = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ael), !inline_history !486
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 48
  %i.aeo = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aen), !inline_history !485 ; 3 uses
  %i.aep = load i8, ptr %i.aeo, align 8, !tbaa !483
  %i.aeq = icmp eq i8 %i.aep, 3
  br i1 %i.aeq, label %tailrecurse.i.i.i203, label %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i160

tailrecurse.i.i.i203:                             ; preds = %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i, %tailrecurse.i.i.i203
  %.tr5.i.i.i204 = phi ptr [ %i.aet, %tailrecurse.i.i.i203 ], [ %i.aeo, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i.i204), !inline_history !506
  %i.aer = getelementptr inbounds nuw i8, ptr %.tr5.i.i.i204, i64 88
  %i.aes = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aer), !inline_history !506
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 48 ; 3 uses
  %i.aeu = load i8, ptr %i.aet, align 8, !tbaa !483
  %i.aev = icmp eq i8 %i.aeu, 3
  br i1 %i.aev, label %tailrecurse.i.i.i203, label %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i160

_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i160: ; preds = %tailrecurse.i.i.i203, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i
  %.tr.lcssa.i.i.i161 = phi ptr [ %i.aeo, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i ], [ %i.aet, %tailrecurse.i.i.i203 ]
  %i.aew = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i.i161, i64 88
  %i.aex = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aew), !inline_history !506
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 48 ; 3 uses
  %i.aez = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aey, i64 noundef 0)
  %i.afa = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aez) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.afa)
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 32
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !427
  %i.afd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aey, i64 noundef 1)
  %i.afe = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afd) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.afe)
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 32
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !427
  %i.afh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aey, i64 noundef 2)
  %i.afi = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afh) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.afi)
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 32
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !427
  %.not.i162 = icmp eq i64 %2, 0
  br i1 %.not.i162, label %_ZN6duckdbL10FromPointsINS_9VertexXYMEEEvRNS_6VectorES3_mm.exit, label %.lr.ph193.i

.lr.ph193.i:                                      ; preds = %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i160
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.afm = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 3 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.dq

bb.dq:                                            ; preds = %bb.et, %.lr.ph193.i
  %.075191.i = phi i64 [ 0, %.lr.ph193.i ], [ %i.aml, %bb.et ] ; 5 uses
  %i.afr = add i64 %.075191.i, %4                 ; 2 uses
  %i.afs = load ptr, ptr %i.afl, align 8, !tbaa !519 ; 2 uses
  %.not.i.i.i163 = icmp eq ptr %i.afs, null
  br i1 %.not.i.i.i163, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i165, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i164

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i164: ; preds = %bb.dq
  %i.aft = lshr i64 %.075191.i, 6
  %i.afu = and i64 %.075191.i, 63
  %i.afv = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %i.aft
  %i.afw = load i64, ptr %i.afv, align 8, !tbaa !108
  %i.afx = shl nuw i64 1, %i.afu
  %i.afy = and i64 %i.afw, %i.afx
  %i.afz = icmp eq i64 %i.afy, 0
  br i1 %i.afz, label %bb.dr, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i165

bb.dr:                                            ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i164
  call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.afr, i1 noundef zeroext true)
  br label %bb.et

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i165: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i164, %bb.dq
  %i.aga = getelementptr inbounds nuw [16 x i8], ptr %i.acp, i64 %.075191.i ; 3 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 8
  %i.agc = load i64, ptr %i.agb, align 8, !tbaa !550 ; 4 uses
  %.not195.i = icmp eq i64 %i.agc, 0              ; 2 uses
  br i1 %.not195.i, label %._crit_edge171.thread.i, label %.lr.ph170.i

._crit_edge171.thread.i:                          ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i165
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #46
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i171

.lr.ph170.i:                                      ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i165
  %i.agd = load i64, ptr %i.aga, align 8, !tbaa !552
  %i.age = getelementptr [16 x i8], ptr %i.adj, i64 %i.agd
  br label %bb.dt

._crit_edge171.i:                                 ; preds = %._crit_edge.i169
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #46
  %i.agf = icmp ult i64 %.1.lcssa.i, 13
  br i1 %i.agf, label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i171, label %bb.ds

bb.ds:                                            ; preds = %._crit_edge171.i
  %i.agg = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 48
  %i.agi = call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.agh, i64 noundef %.1.lcssa.i) ; 2 uses
  %i.agj = extractvalue { i64, ptr } %i.agi, 0    ; 2 uses
  %.sroa.3.0.extract.shift.i.i170 = and i64 %i.agj, -4294967296
  %i.agk = extractvalue { i64, ptr } %i.agi, 1
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i171

_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i171: ; preds = %bb.ds, %._crit_edge171.i, %._crit_edge171.thread.i
  %.077.lcssa264.i = phi i64 [ %.1.lcssa.i, %bb.ds ], [ %.1.lcssa.i, %._crit_edge171.i ], [ 9, %._crit_edge171.thread.i ]
  %.sroa.34.0.i.i172 = phi ptr [ %i.agk, %bb.ds ], [ undef, %._crit_edge171.i ], [ undef, %._crit_edge171.thread.i ] ; 2 uses
  %.sroa.3.0.i.i173 = phi i64 [ %.sroa.3.0.extract.shift.i.i170, %bb.ds ], [ 0, %._crit_edge171.i ], [ 0, %._crit_edge171.thread.i ]
  %.sroa.0.0.in.i.i174 = phi i64 [ %i.agj, %bb.ds ], [ %.1.lcssa.i, %._crit_edge171.i ], [ 9, %._crit_edge171.thread.i ] ; 2 uses
  %.sroa.0.0.insert.ext.i.i175 = and i64 %.sroa.0.0.in.i.i174, 4294967295
  %.sroa.0.0.insert.insert.i.i176 = or disjoint i64 %.sroa.0.0.insert.ext.i.i175, %.sroa.3.0.i.i173
  store i64 %.sroa.0.0.insert.insert.i.i176, ptr %14, align 8
  store ptr %.sroa.34.0.i.i172, ptr %i.afm, align 8
  %i.agl = trunc i64 %.sroa.0.0.in.i.i174 to i32
  %i.agm = icmp ult i32 %i.agl, 13
  %i.agn = select i1 %i.agm, ptr %i.afn, ptr %.sroa.34.0.i.i172 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #46
  store ptr %i.agn, ptr %15, align 8, !tbaa !2024
  store ptr %i.agn, ptr %i.afo, align 8, !tbaa !2026
  %i.ago = and i64 %.077.lcssa264.i, 4294967295
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agn, i64 %i.ago
  store ptr %i.agp, ptr %i.afp, align 8, !tbaa !2027
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 1)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %15, i32 2006)
  %i.agq = trunc nuw i64 %i.agc to i32
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %15, i32 %i.agq)
  br i1 %.not195.i, label %._crit_edge190.i, label %.lr.ph189.preheader.i

.lr.ph189.preheader.i:                            ; preds = %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i171
  %.pre.i177 = load ptr, ptr %i.afo, align 8, !tbaa !2026
  br label %.lr.ph189.i

bb.dt:                                            ; preds = %._crit_edge.i169, %.lr.ph170.i
  %indvars.iv232.i = phi i64 [ 0, %.lr.ph170.i ], [ %indvars.iv.next233.i, %._crit_edge.i169 ] ; 2 uses
  %.077169.i = phi i64 [ 9, %.lr.ph170.i ], [ %.1.lcssa.i, %._crit_edge.i169 ]
  %i.agr = getelementptr [16 x i8], ptr %i.age, i64 %indvars.iv232.i ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 8
  %i.agt = load i64, ptr %i.ags, align 8, !tbaa !550 ; 6 uses
  %i.agu = add i64 %.077169.i, 9                  ; 4 uses
  %.not196.i = icmp eq i64 %i.agt, 0
  br i1 %.not196.i, label %._crit_edge.i169, label %.lr.ph.i166

.lr.ph.i166:                                      ; preds = %bb.dt
  %i.agv = load i64, ptr %i.agr, align 8, !tbaa !552
  %i.agw = getelementptr [16 x i8], ptr %i.aed, i64 %i.agv ; 3 uses
  %min.iters.check = icmp ult i64 %i.agt, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i166
  %i.agx = add i64 %i.agt, -1                     ; 2 uses
  %i.agy = and i64 %i.agx, 4294967295
  %i.agz = icmp eq i64 %i.agy, 4294967295
  %i.aha = icmp ugt i64 %i.agx, 4294967295
  %i.ahb = or i1 %i.agz, %i.aha
  br i1 %i.ahb, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.mod.vf = and i64 %i.agt, 3                   ; 2 uses
  %i.ahc = icmp eq i64 %n.mod.vf, 0
  %i.ahd = select i1 %i.ahc, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.agt, %i.ahd             ; 2 uses
  %i.ahe = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.agu, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ahe, %vector.ph ], [ %i.ahn, %vector.body ]
  %vec.phi624 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aho, %vector.body ]
  %i.ahf = getelementptr [16 x i8], ptr %i.agw, i64 %index
  %i.ahg = getelementptr [16 x i8], ptr %i.agw, i64 %index
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ahi = getelementptr i8, ptr %i.ahg, i64 40
  %52 = load <3 x i64>, ptr %i.ahh, align 8, !tbaa !550
  %strided.vec = shufflevector <3 x i64> %52, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %53 = load <3 x i64>, ptr %i.ahi, align 8, !tbaa !550
  %strided.vec626 = shufflevector <3 x i64> %53, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ahj = add <2 x i64> %vec.phi, splat (i64 4)
  %i.ahk = add <2 x i64> %vec.phi624, splat (i64 4)
  %i.ahl = mul <2 x i64> %strided.vec, splat (i64 24)
  %i.ahm = mul <2 x i64> %strided.vec626, splat (i64 24)
  %i.ahn = add <2 x i64> %i.ahj, %i.ahl           ; 2 uses
  %i.aho = add <2 x i64> %i.ahk, %i.ahm           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ahp = icmp eq i64 %index.next, %n.vec
  br i1 %i.ahp, label %middle.block, label %vector.body, !llvm.loop !3016

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aho, %i.ahn
  %i.ahq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph.i166, %middle.block
  %indvars.iv.i167.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i166 ], [ %n.vec, %middle.block ]
  %.1167.i.ph = phi i64 [ %i.agu, %vector.scevcheck ], [ %i.agu, %.lr.ph.i166 ], [ %i.ahq, %middle.block ]
  br label %scalar.ph

._crit_edge.i169:                                 ; preds = %scalar.ph, %bb.dt
  %.1.lcssa.i = phi i64 [ %i.agu, %bb.dt ], [ %i.ahy, %scalar.ph ] ; 6 uses
  %indvars.iv.next233.i = add i64 %indvars.iv232.i, 1 ; 2 uses
  %i.ahr = and i64 %indvars.iv.next233.i, 4294967295
  %i.ahs = icmp ugt i64 %i.agc, %i.ahr
  br i1 %i.ahs, label %bb.dt, label %._crit_edge171.i, !llvm.loop !3017

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i167 = phi i64 [ %indvars.iv.next.i168, %scalar.ph ], [ %indvars.iv.i167.ph, %scalar.ph.preheader ] ; 2 uses
  %.1167.i = phi i64 [ %i.ahy, %scalar.ph ], [ %.1167.i.ph, %scalar.ph.preheader ]
  %i.aht = getelementptr [16 x i8], ptr %i.agw, i64 %indvars.iv.i167
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 8
  %i.ahv = load i64, ptr %i.ahu, align 8, !tbaa !550
  %i.ahw = add i64 %.1167.i, 4
  %i.ahx = mul i64 %i.ahv, 24
  %i.ahy = add i64 %i.ahw, %i.ahx                 ; 2 uses
  %indvars.iv.next.i168 = add i64 %indvars.iv.i167, 1 ; 2 uses
  %i.ahz = and i64 %indvars.iv.next.i168, 4294967295
  %i.aia = icmp ugt i64 %i.agt, %i.ahz
  br i1 %i.aia, label %scalar.ph, label %._crit_edge.i169, !llvm.loop !3018

._crit_edge190.i:                                 ; preds = %._crit_edge187.i, %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i171
  %i.aib = load i32, ptr %14, align 8, !tbaa !153 ; 2 uses
  %i.aic = icmp ult i32 %i.aib, 13
  br i1 %i.aic, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %._crit_edge190.i
  %i.aid = zext nneg i32 %i.aib to i64            ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.afn, i64 %i.aid
  %i.aif = sub nuw nsw i64 12, %i.aid
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aie, i8 0, i64 %i.aif, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i186

bb.dv:                                            ; preds = %._crit_edge190.i
  %i.aig = load ptr, ptr %i.afm, align 8
  %i.aih = load i32, ptr %i.aig, align 1
  store i32 %i.aih, ptr %i.afn, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i186

_ZN6duckdb8string_t8FinalizeEv.exit.i186:         ; preds = %bb.dv, %bb.du
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.aii = load ptr, ptr %i.afq, align 8, !tbaa !427
  %i.aij = getelementptr inbounds nuw [16 x i8], ptr %i.aii, i64 %i.afr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aij, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !707
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  br label %bb.et

.lr.ph189.i:                                      ; preds = %._crit_edge187.i, %.lr.ph189.preheader.i
  %i.aik = phi ptr [ %i.akd, %._crit_edge187.i ], [ %.pre.i177, %.lr.ph189.preheader.i ] ; 5 uses
  %i.ail = phi i64 [ %i.akf, %._crit_edge187.i ], [ 0, %.lr.ph189.preheader.i ]
  %.078188.i = phi i32 [ %i.ake, %._crit_edge187.i ], [ 0, %.lr.ph189.preheader.i ]
  %i.aim = load i64, ptr %i.aga, align 8, !tbaa !552
  %i.ain = getelementptr [16 x i8], ptr %i.adj, i64 %i.aim
  %i.aio = getelementptr [16 x i8], ptr %i.ain, i64 %i.ail ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 8
  %i.aiq = load i64, ptr %i.aip, align 8, !tbaa !550 ; 3 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.aik, i64 1 ; 3 uses
  %i.ais = load ptr, ptr %i.afp, align 8, !tbaa !2027 ; 7 uses
  %i.ait = icmp ugt ptr %i.air, %i.ais
  br i1 %i.ait, label %bb.dw, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_.exit.i178

bb.dw:                                            ; preds = %.lr.ph189.i
  %i.aiu = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.dx unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i199

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  %i.aiv = load ptr, ptr %15, align 8, !tbaa !2024
  %i.aiw = ptrtoint ptr %i.aik to i64
  %i.aix = ptrtoint ptr %i.aiv to i64
  %i.aiy = sub i64 %i.aiw, %i.aix
  store i64 %i.aiy, ptr %i.f, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aiu, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.dy unwind label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  invoke void @__cxa_throw(ptr nonnull %i.aiu, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ea unwind label %bb.dz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i199: ; preds = %bb.dw
  %i.aiz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br label %common.resume.sink.split.i189

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.04.i.i200 = phi i1 [ false, %bb.dy ], [ true, %bb.dx ] ; 2 uses
  %i.aja = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  %i.ajb = load ptr, ptr %12, align 8, !tbaa !89  ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ajd = icmp eq ptr %i.ajb, %i.ajc
  br i1 %i.ajd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i201: ; preds = %bb.dz
  call void @_ZdlPv(ptr noundef %i.ajb) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br i1 %.04.i.i200, label %common.resume.sink.split.i189, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i202: ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br i1 %.04.i.i200, label %common.resume.sink.split.i189, label %common.resume

common.resume.sink.split.i189:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i135.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i130.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i123.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i116.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i199
  %.sink.i190 = phi ptr [ %i.akq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i123.i ], [ %i.ajs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i116.i ], [ %i.ajg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i195 ], [ %i.alh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i130.i ], [ %i.ajg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i198 ], [ %i.ajg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i197 ], [ %i.ajs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i ], [ %i.ajs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i ], [ %i.akq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128.i ], [ %i.akq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i ], [ %i.alh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i135.i ], [ %i.alh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i ], [ %i.aiu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i202 ], [ %i.aiu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i201 ], [ %i.aiu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i199 ]
  %common.resume.op.ph.i191 = phi { ptr, i32 } [ %i.akv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i123.i ], [ %i.ajx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i116.i ], [ %i.ajl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i195 ], [ %i.alr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i130.i ], [ %i.ajm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i198 ], [ %i.ajm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i197 ], [ %i.ajy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i ], [ %i.ajy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i ], [ %i.akw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128.i ], [ %i.akw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i ], [ %i.als, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i135.i ], [ %i.als, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i ], [ %i.aja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i202 ], [ %i.aja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i201 ], [ %i.aiz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i199 ]
  call void @__cxa_free_exception(ptr %.sink.i190) #46
  br label %common.resume

bb.ea:                                            ; preds = %bb.dy
  unreachable

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_.exit.i178: ; preds = %.lr.ph189.i
  store i8 1, ptr %i.aik, align 1
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aik, i64 5 ; 3 uses
  %i.ajf = icmp ugt ptr %i.aje, %i.ais
  br i1 %i.ajf, label %bb.eb, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i179

bb.eb:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_.exit.i178
  %i.ajg = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ec unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i195

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  %i.ajh = load ptr, ptr %15, align 8, !tbaa !2024
  %i.aji = ptrtoint ptr %i.air to i64
  %i.ajj = ptrtoint ptr %i.ajh to i64
  %i.ajk = sub i64 %i.aji, %i.ajj
  store i64 %i.ajk, ptr %i.e, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ajg, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ed unwind label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  invoke void @__cxa_throw(ptr nonnull %i.ajg, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ef unwind label %bb.ee

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i195: ; preds = %bb.eb
  %i.ajl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br label %common.resume.sink.split.i189

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.04.i113.i196 = phi i1 [ false, %bb.ed ], [ true, %bb.ec ] ; 2 uses
  %i.ajm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  %i.ajn = load ptr, ptr %10, align 8, !tbaa !89  ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ajp = icmp eq ptr %i.ajn, %i.ajo
  br i1 %i.ajp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i197: ; preds = %bb.ee
  call void @_ZdlPv(ptr noundef %i.ajn) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br i1 %.04.i113.i196, label %common.resume.sink.split.i189, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i198: ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br i1 %.04.i113.i196, label %common.resume.sink.split.i189, label %common.resume

bb.ef:                                            ; preds = %bb.ed
  unreachable

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i179: ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_.exit.i178
  store i32 2003, ptr %i.air, align 1
end_hunk_9
begin_hunk_10_@_ZN6duckdbL28FromVectorizedFormatInternalINS_10VertexXYZMEEEvRNS_6VectorES3_mNS_12GeometryTypeEm:bb.a
  %i.ho = icmp ugt i64 %i.fj, %i.hn
  br i1 %i.ho, label %.preheader.i, label %._crit_edge.i, !llvm.loop !3024

bb.z:                                             ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit.i43, %bb.p
  %i.hp = add nuw i64 %.03865.i, 1                ; 2 uses
  %exitcond.not.i44 = icmp eq i64 %i.hp, %2
  br i1 %exitcond.not.i44, label %_ZN6duckdbL10FromPointsINS_10VertexXYZMEEEvRNS_6VectorES3_mm.exit, label %bb.o, !llvm.loop !3025

bb.aa:                                            ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2)
  %i.hq = load i8, ptr %0, align 8, !tbaa !483
  %i.hr = icmp eq i8 %i.hq, 3
  br i1 %i.hr, label %tailrecurse.i.i82, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i53

tailrecurse.i.i82:                                ; preds = %bb.aa, %tailrecurse.i.i82
  %.tr5.i.i83 = phi ptr [ %i.hu, %tailrecurse.i.i82 ], [ %0, %bb.aa ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i83), !inline_history !2854
  %i.hs = getelementptr inbounds nuw i8, ptr %.tr5.i.i83, i64 88
  %i.ht = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hs), !inline_history !2854
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 48 ; 3 uses
  %i.hv = load i8, ptr %i.hu, align 8, !tbaa !483
  %i.hw = icmp eq i8 %i.hv, 3
  br i1 %i.hw, label %tailrecurse.i.i82, label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i53

_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i53: ; preds = %tailrecurse.i.i82, %bb.aa
  %.tr.lcssa.i.i54 = phi ptr [ %0, %bb.aa ], [ %i.hu, %tailrecurse.i.i82 ] ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i.i54), !inline_history !2854
  %i.hx = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i54, i64 32
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !427
  %i.hz = load i8, ptr %0, align 8, !tbaa !483
  %i.ia = icmp eq i8 %i.hz, 3
  br i1 %i.ia, label %tailrecurse.i70.i, label %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i55

tailrecurse.i70.i:                                ; preds = %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i53, %tailrecurse.i70.i
  %.tr1.i.i81 = phi ptr [ %i.id, %tailrecurse.i70.i ], [ %0, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i53 ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i.i81), !inline_history !596
  %i.ib = getelementptr inbounds nuw i8, ptr %.tr1.i.i81, i64 88
  %i.ic = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ib), !inline_history !596
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 48 ; 3 uses
  %i.ie = load i8, ptr %i.id, align 8, !tbaa !483
  %i.if = icmp eq i8 %i.ie, 3
  br i1 %i.if, label %tailrecurse.i70.i, label %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i55

_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i55: ; preds = %tailrecurse.i70.i, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i53
  %.tr.lcssa.i69.i = phi ptr [ %0, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit.i53 ], [ %i.id, %tailrecurse.i70.i ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i69.i, i64 88
  %i.ih = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ig), !inline_history !595
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  %i.ij = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ii), !inline_history !596 ; 6 uses
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !483
  %i.il = icmp eq i8 %i.ik, 3
  br i1 %i.il, label %tailrecurse.i72.i, label %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i

tailrecurse.i72.i:                                ; preds = %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i55, %tailrecurse.i72.i
  %.tr5.i73.i = phi ptr [ %i.io, %tailrecurse.i72.i ], [ %i.ij, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i55 ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i73.i), !inline_history !2953
  %i.im = getelementptr inbounds nuw i8, ptr %.tr5.i73.i, i64 88
  %i.in = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.im), !inline_history !2953
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 48 ; 3 uses
  %i.ip = load i8, ptr %i.io, align 8, !tbaa !483
  %i.iq = icmp eq i8 %i.ip, 3
  br i1 %i.iq, label %tailrecurse.i72.i, label %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i

_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i: ; preds = %tailrecurse.i72.i, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i55
  %.tr.lcssa.i71.i = phi ptr [ %i.ij, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit.i55 ], [ %i.io, %tailrecurse.i72.i ] ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKNS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i71.i), !inline_history !2953
  %i.ir = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i71.i, i64 32
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !427 ; 2 uses
  %i.it = load i8, ptr %i.ij, align 8, !tbaa !483
  %i.iu = icmp eq i8 %i.it, 3
  br i1 %i.iu, label %tailrecurse.i75.i, label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i

tailrecurse.i75.i:                                ; preds = %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i, %tailrecurse.i75.i
  %.tr1.i76.i = phi ptr [ %i.ix, %tailrecurse.i75.i ], [ %i.ij, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i76.i), !inline_history !485
  %i.iv = getelementptr inbounds nuw i8, ptr %.tr1.i76.i, i64 88
  %i.iw = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iv), !inline_history !485
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 48 ; 3 uses
  %i.iy = load i8, ptr %i.ix, align 8, !tbaa !483
  %i.iz = icmp eq i8 %i.iy, 3
  br i1 %i.iz, label %tailrecurse.i75.i, label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i

_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i: ; preds = %tailrecurse.i75.i, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i
  %.tr.lcssa.i74.i = phi ptr [ %i.ij, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit.i ], [ %i.ix, %tailrecurse.i75.i ]
  %i.ja = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i74.i, i64 88
  %i.jb = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ja), !inline_history !486
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 48
  %i.jd = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jc), !inline_history !485 ; 3 uses
  %i.je = load i8, ptr %i.jd, align 8, !tbaa !483
  %i.jf = icmp eq i8 %i.je, 3
  br i1 %i.jf, label %tailrecurse.i.i.i, label %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i

tailrecurse.i.i.i:                                ; preds = %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i, %tailrecurse.i.i.i
  %.tr5.i.i.i = phi ptr [ %i.ji, %tailrecurse.i.i.i ], [ %i.jd, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i.i), !inline_history !506
  %i.jg = getelementptr inbounds nuw i8, ptr %.tr5.i.i.i, i64 88
  %i.jh = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jg), !inline_history !506
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 48 ; 3 uses
  %i.jj = load i8, ptr %i.ji, align 8, !tbaa !483
  %i.jk = icmp eq i8 %i.jj, 3
  br i1 %i.jk, label %tailrecurse.i.i.i, label %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i

_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i: ; preds = %tailrecurse.i.i.i, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i
  %.tr.lcssa.i.i.i = phi ptr [ %i.jd, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i ], [ %i.ji, %tailrecurse.i.i.i ]
  %i.jl = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i.i, i64 88
  %i.jm = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jl), !inline_history !506
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 48 ; 4 uses
  %i.jo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jn, i64 noundef 0)
  %i.jp = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jo) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.jp)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !427
  %i.js = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jn, i64 noundef 1)
  %i.jt = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.js) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.jt)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !427
  %i.jw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jn, i64 noundef 2)
  %i.jx = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jw) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.jx)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !427
  %i.ka = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jn, i64 noundef 3)
  %i.kb = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ka) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.kb)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !427
  %.not.i56 = icmp eq i64 %2, 0
  br i1 %.not.i56, label %_ZN6duckdbL10FromPointsINS_10VertexXYZMEEEvRNS_6VectorES3_mm.exit, label %.lr.ph114.i

.lr.ph114.i:                                      ; preds = %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kf = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %37, i64 4 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ao, %.lr.ph114.i
  %.057112.i = phi i64 [ 0, %.lr.ph114.i ], [ %i.pe, %bb.ao ] ; 5 uses
  %i.kk = add i64 %.057112.i, %4                  ; 2 uses
  %i.kl = load ptr, ptr %i.ke, align 8, !tbaa !519 ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i57, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i59, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i58

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i58: ; preds = %bb.ab
  %i.km = lshr i64 %.057112.i, 6
  %i.kn = and i64 %.057112.i, 63
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %i.km
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !108
  %i.kq = shl nuw i64 1, %i.kn
  %i.kr = and i64 %i.kp, %i.kq
  %i.ks = icmp eq i64 %i.kr, 0
  br i1 %i.ks, label %bb.ac, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i59

bb.ac:                                            ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i58
  call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.kk, i1 noundef zeroext true)
  br label %bb.ao

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i59: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i58, %bb.ab
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %.057112.i ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !550 ; 8 uses
  %.not116.i = icmp eq i64 %i.kv, 0               ; 2 uses
  br i1 %.not116.i, label %._crit_edge.thread.i, label %.lr.ph.i60

._crit_edge.thread.i:                             ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i59
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #46
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i63

.lr.ph.i60:                                       ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i59
  %i.kw = load i64, ptr %i.kt, align 8, !tbaa !552
  %i.kx = getelementptr [16 x i8], ptr %i.is, i64 %i.kw ; 3 uses
  %min.iters.check673 = icmp ult i64 %i.kv, 9
  br i1 %min.iters.check673, label %scalar.ph672.preheader, label %vector.scevcheck671

vector.scevcheck671:                              ; preds = %.lr.ph.i60
  %i.ky = add i64 %i.kv, -1                       ; 2 uses
  %i.kz = and i64 %i.ky, 4294967295
  %i.la = icmp eq i64 %i.kz, 4294967295
  %i.lb = icmp ugt i64 %i.ky, 4294967295
  %i.lc = or i1 %i.la, %i.lb
  br i1 %i.lc, label %scalar.ph672.preheader, label %vector.ph674

vector.ph674:                                     ; preds = %vector.scevcheck671
  %n.mod.vf675 = and i64 %i.kv, 3                 ; 2 uses
  %i.ld = icmp eq i64 %n.mod.vf675, 0
  %i.le = select i1 %i.ld, i64 4, i64 %n.mod.vf675
  %n.vec676 = sub nsw i64 %i.kv, %i.le            ; 2 uses
  br label %vector.body677

vector.body677:                                   ; preds = %vector.body677, %vector.ph674
  %index678 = phi i64 [ 0, %vector.ph674 ], [ %index.next685, %vector.body677 ] ; 3 uses
  %vec.phi679 = phi <2 x i64> [ <i64 9, i64 0>, %vector.ph674 ], [ %i.ln, %vector.body677 ]
  %vec.phi680 = phi <2 x i64> [ zeroinitializer, %vector.ph674 ], [ %i.lo, %vector.body677 ]
  %i.lf = getelementptr [16 x i8], ptr %i.kx, i64 %index678
  %i.lg = getelementptr [16 x i8], ptr %i.kx, i64 %index678
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.li = getelementptr i8, ptr %i.lg, i64 40
  %48 = load <3 x i64>, ptr %i.lh, align 8, !tbaa !550
  %strided.vec682 = shufflevector <3 x i64> %48, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %49 = load <3 x i64>, ptr %i.li, align 8, !tbaa !550
  %strided.vec684 = shufflevector <3 x i64> %49, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.lj = add <2 x i64> %vec.phi679, splat (i64 4)
  %i.lk = add <2 x i64> %vec.phi680, splat (i64 4)
  %i.ll = shl <2 x i64> %strided.vec682, splat (i64 5)
  %i.lm = shl <2 x i64> %strided.vec684, splat (i64 5)
  %i.ln = add <2 x i64> %i.lj, %i.ll              ; 2 uses
  %i.lo = add <2 x i64> %i.lk, %i.lm              ; 2 uses
  %index.next685 = add nuw i64 %index678, 4       ; 2 uses
  %i.lp = icmp eq i64 %index.next685, %n.vec676
  br i1 %i.lp, label %middle.block686, label %vector.body677, !llvm.loop !3026

middle.block686:                                  ; preds = %vector.body677
  %bin.rdx687 = add <2 x i64> %i.lo, %i.ln
  %i.lq = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx687)
  br label %scalar.ph672.preheader

scalar.ph672.preheader:                           ; preds = %vector.scevcheck671, %.lr.ph.i60, %middle.block686
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck671 ], [ 0, %.lr.ph.i60 ], [ %n.vec676, %middle.block686 ]
  %.05996.i.ph = phi i64 [ 9, %vector.scevcheck671 ], [ 9, %.lr.ph.i60 ], [ %i.lq, %middle.block686 ]
  br label %scalar.ph672

._crit_edge.i61:                                  ; preds = %scalar.ph672
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #46
  %i.lr = icmp ult i64 %i.mi, 13
  br i1 %i.lr, label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i63, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i61
  %i.ls = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 48
  %i.lu = call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.lt, i64 noundef %i.mi) ; 2 uses
  %i.lv = extractvalue { i64, ptr } %i.lu, 0      ; 2 uses
  %.sroa.3.0.extract.shift.i.i62 = and i64 %i.lv, -4294967296
  %i.lw = extractvalue { i64, ptr } %i.lu, 1
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i63

_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i63: ; preds = %bb.ad, %._crit_edge.i61, %._crit_edge.thread.i
  %.059.lcssa152.i = phi i64 [ %i.mi, %bb.ad ], [ %i.mi, %._crit_edge.i61 ], [ 9, %._crit_edge.thread.i ]
  %.sroa.34.0.i.i64 = phi ptr [ %i.lw, %bb.ad ], [ undef, %._crit_edge.i61 ], [ undef, %._crit_edge.thread.i ] ; 2 uses
  %.sroa.3.0.i.i65 = phi i64 [ %.sroa.3.0.extract.shift.i.i62, %bb.ad ], [ 0, %._crit_edge.i61 ], [ 0, %._crit_edge.thread.i ]
  %.sroa.0.0.in.i.i66 = phi i64 [ %i.lv, %bb.ad ], [ %i.mi, %._crit_edge.i61 ], [ 9, %._crit_edge.thread.i ] ; 2 uses
  %.sroa.0.0.insert.ext.i.i67 = and i64 %.sroa.0.0.in.i.i66, 4294967295
  %.sroa.0.0.insert.insert.i.i68 = or disjoint i64 %.sroa.0.0.insert.ext.i.i67, %.sroa.3.0.i.i65
  store i64 %.sroa.0.0.insert.insert.i.i68, ptr %37, align 8
  store ptr %.sroa.34.0.i.i64, ptr %i.kf, align 8
  %i.lx = trunc i64 %.sroa.0.0.in.i.i66 to i32
  %i.ly = icmp ult i32 %i.lx, 13
  %i.lz = select i1 %i.ly, ptr %i.kg, ptr %.sroa.34.0.i.i64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #46
  store ptr %i.lz, ptr %38, align 8, !tbaa !2024
  store ptr %i.lz, ptr %i.kh, align 8, !tbaa !2026
  %i.ma = and i64 %.059.lcssa152.i, 4294967295
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.ma
  store ptr %i.mb, ptr %i.ki, align 8, !tbaa !2027
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 1)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %38, i32 3003)
  %i.mc = trunc nuw i64 %i.kv to i32
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %38, i32 %i.mc)
  br i1 %.not116.i, label %._crit_edge111.i, label %.lr.ph110.preheader.i

.lr.ph110.preheader.i:                            ; preds = %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i63
  %.pre.i69 = load ptr, ptr %i.kh, align 8, !tbaa !2026
  br label %.lr.ph110.i

scalar.ph672:                                     ; preds = %scalar.ph672.preheader, %scalar.ph672
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph672 ], [ %indvars.iv.i.ph, %scalar.ph672.preheader ] ; 2 uses
  %.05996.i = phi i64 [ %i.mi, %scalar.ph672 ], [ %.05996.i.ph, %scalar.ph672.preheader ]
  %i.md = getelementptr [16 x i8], ptr %i.kx, i64 %indvars.iv.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !550
  %i.mg = add i64 %.05996.i, 4
  %i.mh = shl i64 %i.mf, 5
  %i.mi = add i64 %i.mg, %i.mh                    ; 6 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.mj = and i64 %indvars.iv.next.i, 4294967295
  %i.mk = icmp ugt i64 %i.kv, %i.mj
  br i1 %i.mk, label %scalar.ph672, label %._crit_edge.i61, !llvm.loop !3027

._crit_edge111.i:                                 ; preds = %._crit_edge107.i, %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i63
  %i.ml = load i32, ptr %37, align 8, !tbaa !153  ; 2 uses
  %i.mm = icmp ult i32 %i.ml, 13
  br i1 %i.mm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge111.i
  %i.mn = zext nneg i32 %i.ml to i64              ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.mn
  %i.mp = sub nuw nsw i64 12, %i.mn
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mo, i8 0, i64 %i.mp, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i75

bb.af:                                            ; preds = %._crit_edge111.i
  %i.mq = load ptr, ptr %i.kf, align 8
  %i.mr = load i32, ptr %i.mq, align 1
  store i32 %i.mr, ptr %i.kg, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i75

_ZN6duckdb8string_t8FinalizeEv.exit.i75:          ; preds = %bb.af, %bb.ae
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ms = load ptr, ptr %i.kj, align 8, !tbaa !427
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr %i.ms, i64 %i.kk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mt, ptr noundef nonnull align 8 dereferenceable(16) %37, i64 16, i1 false), !tbaa.struct !707
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #46
  br label %bb.ao

.lr.ph110.i:                                      ; preds = %._crit_edge107.i, %.lr.ph110.preheader.i
  %i.mu = phi ptr [ %.lcssa97102.lcssa.i, %._crit_edge107.i ], [ %.pre.i69, %.lr.ph110.preheader.i ] ; 3 uses
  %i.mv = phi i64 [ %i.nt, %._crit_edge107.i ], [ 0, %.lr.ph110.preheader.i ]
  %.058109.i = phi i32 [ %i.ns, %._crit_edge107.i ], [ 0, %.lr.ph110.preheader.i ]
  %i.mw = load i64, ptr %i.kt, align 8, !tbaa !552
  %i.mx = getelementptr [16 x i8], ptr %i.is, i64 %i.mw
  %i.my = getelementptr [16 x i8], ptr %i.mx, i64 %i.mv ; 5 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !550 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mu, i64 4 ; 3 uses
  %i.nc = load ptr, ptr %i.ki, align 8, !tbaa !2027 ; 5 uses
  %i.nd = icmp ugt ptr %i.nb, %i.nc
  br i1 %i.nd, label %bb.ag, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i

bb.ag:                                            ; preds = %.lr.ph110.i
  %i.ne = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %36)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i77

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #46
  %i.nf = load ptr, ptr %38, align 8, !tbaa !2024
  %i.ng = ptrtoint ptr %i.mu to i64
  %i.nh = ptrtoint ptr %i.nf to i64
  %i.ni = sub i64 %i.ng, %i.nh
  store i64 %i.ni, ptr %i.q, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ne, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.ne, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ak unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i77: ; preds = %bb.ag
  %i.nj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #46
  br label %common.resume.sink.split.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.04.i.i78 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.nk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #46
  %i.nl = load ptr, ptr %35, align 8, !tbaa !89   ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.nn = icmp eq ptr %i.nl, %i.nm
  br i1 %i.nn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.nl) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #46
  br i1 %.04.i.i78, label %common.resume.sink.split.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i80: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #46
  br i1 %.04.i.i78, label %common.resume.sink.split.i, label %common.resume

common.resume.sink.split.i:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i77.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i77
  %.sink.i = phi ptr [ %i.nv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i77.i ], [ %i.nv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82.i ], [ %i.nv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81.i ], [ %i.ne, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i80 ], [ %i.ne, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79 ], [ %i.ne, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i77 ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.of, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i77.i ], [ %i.og, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i82.i ], [ %i.og, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81.i ], [ %i.nk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i80 ], [ %i.nk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i79 ], [ %i.nj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i77 ]
  call void @__cxa_free_exception(ptr %.sink.i) #46
  br label %common.resume

bb.ak:                                            ; preds = %bb.ai
  unreachable

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i: ; preds = %.lr.ph110.i
  %i.no = trunc i64 %i.na to i32
  store i32 %i.no, ptr %i.mu, align 1
  %.not118.i = icmp eq i64 %i.na, 0
  br i1 %.not118.i, label %._crit_edge107.i, label %.preheader.i70

.preheader.i70:                                   ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.3.i74
  %i.np = phi i64 [ %i.pc, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.3.i74 ], [ 0, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i ] ; 4 uses
  %.055106.i = phi i32 [ %i.pb, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.3.i74 ], [ 0, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i ]
  %.lcssa97102105.i = phi ptr [ %i.ow, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.3.i74 ], [ %i.nb, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i ] ; 6 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.lcssa97102105.i, i64 8 ; 3 uses
  %i.nr = icmp ugt ptr %i.nq, %i.nc
  br i1 %i.nr, label %.noexc.i.i, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i71

._crit_edge107.i:                                 ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.3.i74, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i
  %.lcssa97102.lcssa.i = phi ptr [ %i.nb, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i ], [ %i.ow, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.3.i74 ]
  %i.ns = add i32 %.058109.i, 1                   ; 2 uses
  %i.nt = zext i32 %i.ns to i64                   ; 2 uses
  %i.nu = icmp ugt i64 %i.kv, %i.nt
  br i1 %i.nu, label %.lr.ph110.i, label %._crit_edge111.i, !llvm.loop !3028

.noexc.i.i:                                       ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.2.i73, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.1.i72, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i71, %.preheader.i70
  %.lcssa121.i = phi ptr [ %.lcssa97102105.i, %.preheader.i70 ], [ %i.nq, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i71 ], [ %i.om, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.1.i72 ], [ %i.or, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.2.i73 ]
  %i.nv = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #46
end_hunk_10
begin_hunk_11_@_ZN6duckdbL28FromVectorizedFormatInternalINS_10VertexXYZMEEEvRNS_6VectorES3_mNS_12GeometryTypeEm:bb.a
          to label %.noexc102.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !inline_history !485

.noexc102.i:                                      ; preds = %_ZN6duckdb10ListVector16GetEntryInternalIKNS_6VectorEEERT_S5_.exit.i.i
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 48
  %i.ws = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.wr)
          to label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i125 unwind label %.loopexit.split-lp.loopexit.split-lp.i, !inline_history !485 ; 3 uses

_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i125: ; preds = %.noexc102.i
  %i.wt = load i8, ptr %i.ws, align 8, !tbaa !483
  %i.wu = icmp eq i8 %i.wt, 3
  br i1 %i.wu, label %tailrecurse.i.i.i152, label %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i

tailrecurse.i.i.i152:                             ; preds = %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i125, %.noexc105.i
  %.tr5.i.i.i153 = phi ptr [ %i.wx, %.noexc105.i ], [ %i.ws, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i125 ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i.i153)
          to label %.noexc104.i unwind label %.loopexit.i

.noexc104.i:                                      ; preds = %tailrecurse.i.i.i152
  %i.wv = getelementptr inbounds nuw i8, ptr %.tr5.i.i.i153, i64 88
  %i.ww = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wv)
          to label %.noexc105.i unwind label %.loopexit.i

.noexc105.i:                                      ; preds = %.noexc104.i
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 48 ; 3 uses
  %i.wy = load i8, ptr %i.wx, align 8, !tbaa !483
  %i.wz = icmp eq i8 %i.wy, 3
  br i1 %i.wz, label %tailrecurse.i.i.i152, label %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i

_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i: ; preds = %.noexc105.i, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i125
  %.tr.lcssa.i.i.i126 = phi ptr [ %i.ws, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i125 ], [ %i.wx, %.noexc105.i ]
  %i.xa = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i.i126, i64 88
  %i.xb = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xa)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.i

bb.bn:                                            ; preds = %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 48 ; 4 uses
  %i.xd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.xc, i64 noundef 0)
          to label %bb.bo unwind label %bb.bz

.lr.ph186.i:                                      ; preds = %.preheader142.i
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.xf = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %24, i64 4 ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.ca

.loopexit146.i:                                   ; preds = %.noexc.i154, %tailrecurse.i93.i
  %lpad.loopexit148.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp147.i:                          ; preds = %tailrecurse._crit_edge.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %.noexc104.i, %tailrecurse.i.i.i152
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc100.i, %tailrecurse.i98.i
  %lpad.loopexit143.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE.exit.i.i, %.noexc102.i, %_ZN6duckdb10ListVector16GetEntryInternalIKNS_6VectorEEERT_S5_.exit.i.i
  %lpad.loopexit.split-lp144.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.bo:                                            ; preds = %bb.bn
  %i.xk = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xd)
          to label %bb.bp unwind label %bb.bz     ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.xk)
          to label %bb.bq unwind label %bb.bz

bb.bq:                                            ; preds = %bb.bp
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 32
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !427
  %i.xn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.xc, i64 noundef 1)
          to label %bb.br unwind label %bb.bz

bb.br:                                            ; preds = %bb.bq
  %i.xo = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xn)
          to label %bb.bs unwind label %bb.bz     ; 2 uses

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.xo)
          to label %bb.bt unwind label %bb.bz

bb.bt:                                            ; preds = %bb.bs
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 32
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !427
  %i.xr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.xc, i64 noundef 2)
          to label %bb.bu unwind label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  %i.xs = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xr)
          to label %bb.bv unwind label %bb.bz     ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.xs)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 32
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !427
  %i.xv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.xc, i64 noundef 3)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.xw = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xv)
          to label %bb.by unwind label %bb.bz     ; 2 uses

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.xw)
          to label %.preheader142.i unwind label %bb.bz

.preheader142.i:                                  ; preds = %bb.by
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 32
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !427
  %.not.i127 = icmp eq i64 %2, 0
  br i1 %.not.i127, label %_ZN6duckdbL20FromMultiLineStringsINS_10VertexXYZMEEEvRNS_6VectorES3_mm.exit, label %.lr.ph186.i

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn
  %i.xz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.ca:                                            ; preds = %bb.dr, %.lr.ph186.i
  %.067184.i = phi i64 [ 0, %.lr.ph186.i ], [ %i.adx, %bb.dr ] ; 5 uses
  %i.ya = add i64 %.067184.i, %4                  ; 2 uses
  %i.yb = load ptr, ptr %i.xe, align 8, !tbaa !519 ; 2 uses
  %.not.i.i.i128 = icmp eq ptr %i.yb, null
  br i1 %.not.i.i.i128, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i130, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i129

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i129: ; preds = %bb.ca
  %i.yc = lshr i64 %.067184.i, 6
  %i.yd = and i64 %.067184.i, 63
  %i.ye = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %i.yc
  %i.yf = load i64, ptr %i.ye, align 8, !tbaa !108
  %i.yg = shl nuw i64 1, %i.yd
  %i.yh = and i64 %i.yf, %i.yg
  %i.yi = icmp eq i64 %i.yh, 0
  br i1 %i.yi, label %bb.cb, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i130

bb.cb:                                            ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i129
  invoke void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.ya, i1 noundef zeroext true)
          to label %bb.dr unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.yj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i130: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i129, %bb.ca
  %i.yk = getelementptr inbounds nuw [16 x i8], ptr %i.vn, i64 %.067184.i ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  %i.ym = load i64, ptr %i.yl, align 8, !tbaa !550 ; 8 uses
  %.not188.i = icmp eq i64 %i.ym, 0               ; 2 uses
  br i1 %.not188.i, label %._crit_edge.thread.i151, label %.lr.ph.i131

._crit_edge.thread.i151:                          ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i130
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #46
  br label %bb.ce

.lr.ph.i131:                                      ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i130
  %i.yn = load i64, ptr %i.yk, align 8, !tbaa !552
  %i.yo = getelementptr [16 x i8], ptr %i.wh, i64 %i.yn ; 3 uses
  %min.iters.check639 = icmp ult i64 %i.ym, 9
  br i1 %min.iters.check639, label %scalar.ph638.preheader, label %vector.scevcheck637

vector.scevcheck637:                              ; preds = %.lr.ph.i131
  %i.yp = add i64 %i.ym, -1                       ; 2 uses
  %i.yq = and i64 %i.yp, 4294967295
  %i.yr = icmp eq i64 %i.yq, 4294967295
  %i.ys = icmp ugt i64 %i.yp, 4294967295
  %i.yt = or i1 %i.yr, %i.ys
  br i1 %i.yt, label %scalar.ph638.preheader, label %vector.ph640

vector.ph640:                                     ; preds = %vector.scevcheck637
  %n.mod.vf641 = and i64 %i.ym, 3                 ; 2 uses
  %i.yu = icmp eq i64 %n.mod.vf641, 0
  %i.yv = select i1 %i.yu, i64 4, i64 %n.mod.vf641
  %n.vec642 = sub nsw i64 %i.ym, %i.yv            ; 2 uses
  br label %vector.body643

vector.body643:                                   ; preds = %vector.body643, %vector.ph640
  %index644 = phi i64 [ 0, %vector.ph640 ], [ %index.next651, %vector.body643 ] ; 3 uses
  %vec.phi645 = phi <2 x i64> [ <i64 9, i64 0>, %vector.ph640 ], [ %i.ze, %vector.body643 ]
  %vec.phi646 = phi <2 x i64> [ zeroinitializer, %vector.ph640 ], [ %i.zf, %vector.body643 ]
  %i.yw = getelementptr [16 x i8], ptr %i.yo, i64 %index644
  %i.yx = getelementptr [16 x i8], ptr %i.yo, i64 %index644
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.yz = getelementptr i8, ptr %i.yx, i64 40
  %50 = load <3 x i64>, ptr %i.yy, align 8, !tbaa !550
  %strided.vec648 = shufflevector <3 x i64> %50, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %51 = load <3 x i64>, ptr %i.yz, align 8, !tbaa !550
  %strided.vec650 = shufflevector <3 x i64> %51, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.za = add <2 x i64> %vec.phi645, splat (i64 9)
  %i.zb = add <2 x i64> %vec.phi646, splat (i64 9)
  %i.zc = shl <2 x i64> %strided.vec648, splat (i64 5)
  %i.zd = shl <2 x i64> %strided.vec650, splat (i64 5)
  %i.ze = add <2 x i64> %i.za, %i.zc              ; 2 uses
  %i.zf = add <2 x i64> %i.zb, %i.zd              ; 2 uses
  %index.next651 = add nuw i64 %index644, 4       ; 2 uses
  %i.zg = icmp eq i64 %index.next651, %n.vec642
  br i1 %i.zg, label %middle.block652, label %vector.body643, !llvm.loop !3035

middle.block652:                                  ; preds = %vector.body643
  %bin.rdx653 = add <2 x i64> %i.zf, %i.ze
  %i.zh = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx653)
  br label %scalar.ph638.preheader

scalar.ph638.preheader:                           ; preds = %vector.scevcheck637, %.lr.ph.i131, %middle.block652
  %indvars.iv.i132.ph = phi i64 [ 0, %vector.scevcheck637 ], [ 0, %.lr.ph.i131 ], [ %n.vec642, %middle.block652 ]
  %.069167.i.ph = phi i64 [ 9, %vector.scevcheck637 ], [ 9, %.lr.ph.i131 ], [ %i.zh, %middle.block652 ]
  br label %scalar.ph638

._crit_edge.i134:                                 ; preds = %scalar.ph638
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #46
  %i.zi = icmp ult i64 %i.zt, 13
  br i1 %i.zi, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %._crit_edge.i134
  %i.zj = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.noexc108.i unwind label %bb.cj

.noexc108.i:                                      ; preds = %bb.cd
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 48
  %i.zl = invoke { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.zk, i64 noundef %i.zt)
          to label %.noexc109.i unwind label %bb.cj ; 2 uses

.noexc109.i:                                      ; preds = %.noexc108.i
  %i.zm = extractvalue { i64, ptr } %i.zl, 0      ; 2 uses
  %.sroa.3.0.extract.shift.i.i135 = and i64 %i.zm, -4294967296
  %i.zn = extractvalue { i64, ptr } %i.zl, 1
  br label %bb.ce

scalar.ph638:                                     ; preds = %scalar.ph638.preheader, %scalar.ph638
  %indvars.iv.i132 = phi i64 [ %indvars.iv.next.i133, %scalar.ph638 ], [ %indvars.iv.i132.ph, %scalar.ph638.preheader ] ; 2 uses
  %.069167.i = phi i64 [ %i.zt, %scalar.ph638 ], [ %.069167.i.ph, %scalar.ph638.preheader ]
  %i.zo = getelementptr [16 x i8], ptr %i.yo, i64 %indvars.iv.i132
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.zq = load i64, ptr %i.zp, align 8, !tbaa !550
  %i.zr = add i64 %.069167.i, 9
  %i.zs = shl i64 %i.zq, 5
  %i.zt = add i64 %i.zr, %i.zs                    ; 6 uses
  %indvars.iv.next.i133 = add i64 %indvars.iv.i132, 1 ; 2 uses
  %i.zu = and i64 %indvars.iv.next.i133, 4294967295
  %i.zv = icmp ugt i64 %i.ym, %i.zu
  br i1 %i.zv, label %scalar.ph638, label %._crit_edge.i134, !llvm.loop !3036

bb.ce:                                            ; preds = %.noexc109.i, %._crit_edge.i134, %._crit_edge.thread.i151
  %.069.lcssa239.i = phi i64 [ %i.zt, %.noexc109.i ], [ %i.zt, %._crit_edge.i134 ], [ 9, %._crit_edge.thread.i151 ]
  %.sroa.34.0.i.i136 = phi ptr [ %i.zn, %.noexc109.i ], [ undef, %._crit_edge.i134 ], [ undef, %._crit_edge.thread.i151 ] ; 2 uses
  %.sroa.3.0.i.i137 = phi i64 [ %.sroa.3.0.extract.shift.i.i135, %.noexc109.i ], [ 0, %._crit_edge.i134 ], [ 0, %._crit_edge.thread.i151 ]
  %.sroa.0.0.in.i.i138 = phi i64 [ %i.zm, %.noexc109.i ], [ %i.zt, %._crit_edge.i134 ], [ 9, %._crit_edge.thread.i151 ] ; 2 uses
  %.sroa.0.0.insert.ext.i.i139 = and i64 %.sroa.0.0.in.i.i138, 4294967295
  %.sroa.0.0.insert.insert.i.i140 = or disjoint i64 %.sroa.0.0.insert.ext.i.i139, %.sroa.3.0.i.i137
  store i64 %.sroa.0.0.insert.insert.i.i140, ptr %24, align 8
  store ptr %.sroa.34.0.i.i136, ptr %i.xf, align 8
  %i.zw = trunc i64 %.sroa.0.0.in.i.i138 to i32
  %i.zx = icmp ult i32 %i.zw, 13
  %i.zy = select i1 %i.zx, ptr %i.xg, ptr %.sroa.34.0.i.i136 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #46
  store ptr %i.zy, ptr %25, align 8, !tbaa !2024
  store ptr %i.zy, ptr %i.xh, align 8, !tbaa !2026
  %i.zz = and i64 %.069.lcssa239.i, 4294967295
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.zz
  store ptr %i.aaa, ptr %i.xi, align 8, !tbaa !2027
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 1)
          to label %bb.cf unwind label %bb.ck

bb.cf:                                            ; preds = %bb.ce
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %25, i32 3005)
          to label %bb.cg unwind label %bb.cl

bb.cg:                                            ; preds = %bb.cf
  %i.aab = trunc nuw i64 %i.ym to i32
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %25, i32 %i.aab)
          to label %.preheader141.i unwind label %bb.cm

.preheader141.i:                                  ; preds = %bb.cg
  br i1 %.not188.i, label %._crit_edge183.i, label %.lr.ph182.preheader.i

.lr.ph182.preheader.i:                            ; preds = %.preheader141.i
  %.pre.i141 = load ptr, ptr %i.xh, align 8, !tbaa !2026
  br label %.lr.ph182.i

._crit_edge183.i:                                 ; preds = %._crit_edge179.i, %.preheader141.i
  %i.aac = load i32, ptr %24, align 8, !tbaa !153 ; 2 uses
  %i.aad = icmp ult i32 %i.aac, 13
  br i1 %i.aad, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %._crit_edge183.i
  %i.aae = zext nneg i32 %i.aac to i64            ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.aae
  %i.aag = sub nuw nsw i64 12, %i.aae
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aaf, i8 0, i64 %i.aag, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i143

bb.ci:                                            ; preds = %._crit_edge183.i
  %i.aah = load ptr, ptr %i.xf, align 8
  %i.aai = load i32, ptr %i.aah, align 1
  store i32 %i.aai, ptr %i.xg, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i143

bb.cj:                                            ; preds = %.noexc108.i, %bb.cd
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.ck:                                            ; preds = %bb.ce
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cl:                                            ; preds = %_ZN6duckdb8string_t8FinalizeEv.exit.i143, %bb.cf
  %i.aal = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cm:                                            ; preds = %bb.cg
  %i.aam = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph182.i:                                      ; preds = %._crit_edge179.i, %.lr.ph182.preheader.i
  %i.aan = phi ptr [ %.lcssa169174.lcssa.i, %._crit_edge179.i ], [ %.pre.i141, %.lr.ph182.preheader.i ] ; 5 uses
  %i.aao = phi i64 [ %i.ack, %._crit_edge179.i ], [ 0, %.lr.ph182.preheader.i ]
  %.065181.i = phi i32 [ %i.acj, %._crit_edge179.i ], [ 0, %.lr.ph182.preheader.i ]
  %i.aap = load i64, ptr %i.yk, align 8, !tbaa !552
  %i.aaq = getelementptr [16 x i8], ptr %i.wh, i64 %i.aap
  %i.aar = getelementptr [16 x i8], ptr %i.aaq, i64 %i.aao ; 5 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 8
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !550 ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aan, i64 1 ; 3 uses
  %i.aav = load ptr, ptr %i.xi, align 8, !tbaa !2027 ; 7 uses
  %i.aaw = icmp ugt ptr %i.aau, %i.aav
  br i1 %i.aaw, label %bb.cn, label %bb.ct

bb.cn:                                            ; preds = %.lr.ph182.i
  %i.aax = call ptr @__cxa_allocate_exception(i64 16) #46 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.co unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i146

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #46
  %i.aay = load ptr, ptr %25, align 8, !tbaa !2024
  %i.aaz = ptrtoint ptr %i.aan to i64
  %i.aba = ptrtoint ptr %i.aay to i64
  %i.abb = sub i64 %i.aaz, %i.aba
  store i64 %i.abb, ptr %i.k, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aax, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %bb.co
  invoke void @__cxa_throw(ptr nonnull %i.aax, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.cs unwind label %bb.cq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i146: ; preds = %bb.cn
  %i.abc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #46
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.04.i.i148 = phi i1 [ false, %bb.cp ], [ true, %bb.co ] ; 2 uses
  %i.abd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #46
  %i.abe = load ptr, ptr %21, align 8, !tbaa !89  ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.abg = icmp eq ptr %i.abe, %i.abf
  br i1 %i.abg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i149: ; preds = %bb.cq
  call void @_ZdlPv(ptr noundef %i.abe) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #46
  br i1 %.04.i.i148, label %bb.cr, label %.body.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i150: ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #46
  br i1 %.04.i.i148, label %bb.cr, label %.body.i

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i146
  %.pn4.i.i147 = phi { ptr, i32 } [ %i.abc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i146 ], [ %i.abd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i150 ], [ %i.abd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i149 ]
  call void @__cxa_free_exception(ptr %i.aax) #46
  br label %.body.i

bb.cs:                                            ; preds = %bb.cp
  unreachable

end_hunk_11
begin_hunk_12_@_ZN6duckdbL28FromVectorizedFormatInternalINS_10VertexXYZMEEEvRNS_6VectorES3_mNS_12GeometryTypeEm:bb.a
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 48 ; 3 uses
  %i.afr = load i8, ptr %i.afq, align 8, !tbaa !483
  %i.afs = icmp eq i8 %i.afr, 3
  br i1 %i.afs, label %tailrecurse.i103.i, label %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i

_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i: ; preds = %tailrecurse.i103.i, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i162
  %.tr.lcssa.i102.i = phi ptr [ %i.afl, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit.i162 ], [ %i.afq, %tailrecurse.i103.i ] ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKNS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i102.i), !inline_history !2953
  %i.aft = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i102.i, i64 32
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !427 ; 2 uses
  %i.afv = load i8, ptr %i.afl, align 8, !tbaa !483
  %i.afw = icmp eq i8 %i.afv, 3
  br i1 %i.afw, label %tailrecurse.i107.i, label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i

tailrecurse.i107.i:                               ; preds = %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i, %tailrecurse.i107.i
  %.tr1.i108.i = phi ptr [ %i.afz, %tailrecurse.i107.i ], [ %i.afl, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr1.i108.i), !inline_history !485
  %i.afx = getelementptr inbounds nuw i8, ptr %.tr1.i108.i, i64 88
  %i.afy = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.afx), !inline_history !485
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 48 ; 3 uses
  %i.aga = load i8, ptr %i.afz, align 8, !tbaa !483
  %i.agb = icmp eq i8 %i.aga, 3
  br i1 %i.agb, label %tailrecurse.i107.i, label %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i

_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i: ; preds = %tailrecurse.i107.i, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i
  %.tr.lcssa.i106.i = phi ptr [ %i.afl, %_ZN6duckdb10ListVector7GetDataERKNS_6VectorE.exit105.i ], [ %i.afz, %tailrecurse.i107.i ]
  %i.agc = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i106.i, i64 88
  %i.agd = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.agc), !inline_history !486
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 48
  %i.agf = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.age), !inline_history !485 ; 3 uses
  %i.agg = load i8, ptr %i.agf, align 8, !tbaa !483
  %i.agh = icmp eq i8 %i.agg, 3
  br i1 %i.agh, label %tailrecurse.i.i.i207, label %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i163

tailrecurse.i.i.i207:                             ; preds = %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i, %tailrecurse.i.i.i207
  %.tr5.i.i.i208 = phi ptr [ %i.agk, %tailrecurse.i.i.i207 ], [ %i.agf, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i ] ; 2 uses
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i.i.i208), !inline_history !506
  %i.agi = getelementptr inbounds nuw i8, ptr %.tr5.i.i.i208, i64 88
  %i.agj = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.agi), !inline_history !506
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 48 ; 3 uses
  %i.agl = load i8, ptr %i.agk, align 8, !tbaa !483
  %i.agm = icmp eq i8 %i.agl, 3
  br i1 %i.agm, label %tailrecurse.i.i.i207, label %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i163

_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i163: ; preds = %tailrecurse.i.i.i207, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i
  %.tr.lcssa.i.i.i164 = phi ptr [ %i.agf, %_ZN6duckdb10ListVector8GetEntryERKNS_6VectorE.exit109.i ], [ %i.agk, %tailrecurse.i.i.i207 ]
  %i.agn = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i.i.i164, i64 88
  %i.ago = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.agn), !inline_history !506
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 48 ; 4 uses
  %i.agq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.agp, i64 noundef 0)
  %i.agr = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.agq) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.agr)
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 32
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !427
  %i.agu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.agp, i64 noundef 1)
  %i.agv = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.agu) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.agv)
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 32
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !427
  %i.agy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.agp, i64 noundef 2)
  %i.agz = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.agy) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.agz)
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 32
  %i.ahb = load ptr, ptr %i.aha, align 8, !tbaa !427
  %i.ahc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.agp, i64 noundef 3)
  %i.ahd = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ahc) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ahd)
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 32
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !427
  %.not.i165 = icmp eq i64 %2, 0
  br i1 %.not.i165, label %_ZN6duckdbL10FromPointsINS_10VertexXYZMEEEvRNS_6VectorES3_mm.exit, label %.lr.ph193.i

.lr.ph193.i:                                      ; preds = %_ZN6duckdb12StructVector10GetEntriesERKNS_6VectorE.exit.i163
  %i.ahg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ahh = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 3 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.du

bb.du:                                            ; preds = %bb.ex, %.lr.ph193.i
  %.075191.i = phi i64 [ 0, %.lr.ph193.i ], [ %i.aol, %bb.ex ] ; 5 uses
  %i.ahm = add i64 %.075191.i, %4                 ; 2 uses
  %i.ahn = load ptr, ptr %i.ahg, align 8, !tbaa !519 ; 2 uses
  %.not.i.i.i166 = icmp eq ptr %i.ahn, null
  br i1 %.not.i.i.i166, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i168, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i167

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i167: ; preds = %bb.du
  %i.aho = lshr i64 %.075191.i, 6
  %i.ahp = and i64 %.075191.i, 63
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %i.ahn, i64 %i.aho
  %i.ahr = load i64, ptr %i.ahq, align 8, !tbaa !108
  %i.ahs = shl nuw i64 1, %i.ahp
  %i.aht = and i64 %i.ahr, %i.ahs
  %i.ahu = icmp eq i64 %i.aht, 0
  br i1 %i.ahu, label %bb.dv, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i168

bb.dv:                                            ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i167
  call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.ahm, i1 noundef zeroext true)
  br label %bb.ex

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i168: ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.i167, %bb.du
  %i.ahv = getelementptr inbounds nuw [16 x i8], ptr %i.aeg, i64 %.075191.i ; 3 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !550 ; 4 uses
  %.not195.i = icmp eq i64 %i.ahx, 0              ; 2 uses
  br i1 %.not195.i, label %._crit_edge171.thread.i, label %.lr.ph170.i

._crit_edge171.thread.i:                          ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i168
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #46
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i174

.lr.ph170.i:                                      ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread.i168
  %i.ahy = load i64, ptr %i.ahv, align 8, !tbaa !552
  %i.ahz = getelementptr [16 x i8], ptr %i.afa, i64 %i.ahy
  br label %bb.dx

._crit_edge171.i:                                 ; preds = %._crit_edge.i172
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #46
  %i.aia = icmp ult i64 %.1.lcssa.i, 13
  br i1 %i.aia, label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i174, label %bb.dw

bb.dw:                                            ; preds = %._crit_edge171.i
  %i.aib = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 48
  %i.aid = call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.aic, i64 noundef %.1.lcssa.i) ; 2 uses
  %i.aie = extractvalue { i64, ptr } %i.aid, 0    ; 2 uses
  %.sroa.3.0.extract.shift.i.i173 = and i64 %i.aie, -4294967296
  %i.aif = extractvalue { i64, ptr } %i.aid, 1
  br label %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i174

_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i174: ; preds = %bb.dw, %._crit_edge171.i, %._crit_edge171.thread.i
  %.077.lcssa265.i = phi i64 [ %.1.lcssa.i, %bb.dw ], [ %.1.lcssa.i, %._crit_edge171.i ], [ 9, %._crit_edge171.thread.i ]
  %.sroa.34.0.i.i175 = phi ptr [ %i.aif, %bb.dw ], [ undef, %._crit_edge171.i ], [ undef, %._crit_edge171.thread.i ] ; 2 uses
  %.sroa.3.0.i.i176 = phi i64 [ %.sroa.3.0.extract.shift.i.i173, %bb.dw ], [ 0, %._crit_edge171.i ], [ 0, %._crit_edge171.thread.i ]
  %.sroa.0.0.in.i.i177 = phi i64 [ %i.aie, %bb.dw ], [ %.1.lcssa.i, %._crit_edge171.i ], [ 9, %._crit_edge171.thread.i ] ; 2 uses
  %.sroa.0.0.insert.ext.i.i178 = and i64 %.sroa.0.0.in.i.i177, 4294967295
  %.sroa.0.0.insert.insert.i.i179 = or disjoint i64 %.sroa.0.0.insert.ext.i.i178, %.sroa.3.0.i.i176
  store i64 %.sroa.0.0.insert.insert.i.i179, ptr %14, align 8
  store ptr %.sroa.34.0.i.i175, ptr %i.ahh, align 8
  %i.aig = trunc i64 %.sroa.0.0.in.i.i177 to i32
  %i.aih = icmp ult i32 %i.aig, 13
  %i.aii = select i1 %i.aih, ptr %i.ahi, ptr %.sroa.34.0.i.i175 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #46
  store ptr %i.aii, ptr %15, align 8, !tbaa !2024
  store ptr %i.aii, ptr %i.ahj, align 8, !tbaa !2026
  %i.aij = and i64 %.077.lcssa265.i, 4294967295
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aii, i64 %i.aij
  store ptr %i.aik, ptr %i.ahk, align 8, !tbaa !2027
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 1)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %15, i32 3006)
  %i.ail = trunc nuw i64 %i.ahx to i32
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %15, i32 %i.ail)
  br i1 %.not195.i, label %._crit_edge190.i, label %.lr.ph189.preheader.i

.lr.ph189.preheader.i:                            ; preds = %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i174
  %.pre.i180 = load ptr, ptr %i.ahj, align 8, !tbaa !2026
  br label %.lr.ph189.i

bb.dx:                                            ; preds = %._crit_edge.i172, %.lr.ph170.i
  %indvars.iv232.i = phi i64 [ 0, %.lr.ph170.i ], [ %indvars.iv.next233.i, %._crit_edge.i172 ] ; 2 uses
  %.077169.i = phi i64 [ 9, %.lr.ph170.i ], [ %.1.lcssa.i, %._crit_edge.i172 ]
  %i.aim = getelementptr [16 x i8], ptr %i.ahz, i64 %indvars.iv232.i ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 8
  %i.aio = load i64, ptr %i.ain, align 8, !tbaa !550 ; 6 uses
  %i.aip = add i64 %.077169.i, 9                  ; 4 uses
  %.not196.i = icmp eq i64 %i.aio, 0
  br i1 %.not196.i, label %._crit_edge.i172, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %bb.dx
  %i.aiq = load i64, ptr %i.aim, align 8, !tbaa !552
  %i.air = getelementptr [16 x i8], ptr %i.afu, i64 %i.aiq ; 3 uses
  %min.iters.check = icmp ult i64 %i.aio, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i169
  %i.ais = add i64 %i.aio, -1                     ; 2 uses
  %i.ait = and i64 %i.ais, 4294967295
  %i.aiu = icmp eq i64 %i.ait, 4294967295
  %i.aiv = icmp ugt i64 %i.ais, 4294967295
  %i.aiw = or i1 %i.aiu, %i.aiv
  br i1 %i.aiw, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.mod.vf = and i64 %i.aio, 3                   ; 2 uses
  %i.aix = icmp eq i64 %n.mod.vf, 0
  %i.aiy = select i1 %i.aix, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.aio, %i.aiy             ; 2 uses
  %i.aiz = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.aip, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.aiz, %vector.ph ], [ %i.aji, %vector.body ]
  %vec.phi634 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ajj, %vector.body ]
  %i.aja = getelementptr [16 x i8], ptr %i.air, i64 %index
  %i.ajb = getelementptr [16 x i8], ptr %i.air, i64 %index
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aja, i64 8
  %i.ajd = getelementptr i8, ptr %i.ajb, i64 40
  %52 = load <3 x i64>, ptr %i.ajc, align 8, !tbaa !550
  %strided.vec = shufflevector <3 x i64> %52, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %53 = load <3 x i64>, ptr %i.ajd, align 8, !tbaa !550
  %strided.vec636 = shufflevector <3 x i64> %53, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.aje = add <2 x i64> %vec.phi, splat (i64 4)
  %i.ajf = add <2 x i64> %vec.phi634, splat (i64 4)
  %i.ajg = shl <2 x i64> %strided.vec, splat (i64 5)
  %i.ajh = shl <2 x i64> %strided.vec636, splat (i64 5)
  %i.aji = add <2 x i64> %i.aje, %i.ajg           ; 2 uses
  %i.ajj = add <2 x i64> %i.ajf, %i.ajh           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ajk = icmp eq i64 %index.next, %n.vec
  br i1 %i.ajk, label %middle.block, label %vector.body, !llvm.loop !3040

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ajj, %i.aji
  %i.ajl = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph.i169, %middle.block
  %indvars.iv.i170.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i169 ], [ %n.vec, %middle.block ]
  %.1167.i.ph = phi i64 [ %i.aip, %vector.scevcheck ], [ %i.aip, %.lr.ph.i169 ], [ %i.ajl, %middle.block ]
  br label %scalar.ph

._crit_edge.i172:                                 ; preds = %scalar.ph, %bb.dx
  %.1.lcssa.i = phi i64 [ %i.aip, %bb.dx ], [ %i.ajt, %scalar.ph ] ; 6 uses
  %indvars.iv.next233.i = add i64 %indvars.iv232.i, 1 ; 2 uses
  %i.ajm = and i64 %indvars.iv.next233.i, 4294967295
  %i.ajn = icmp ugt i64 %i.ahx, %i.ajm
  br i1 %i.ajn, label %bb.dx, label %._crit_edge171.i, !llvm.loop !3041

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i170 = phi i64 [ %indvars.iv.next.i171, %scalar.ph ], [ %indvars.iv.i170.ph, %scalar.ph.preheader ] ; 2 uses
  %.1167.i = phi i64 [ %i.ajt, %scalar.ph ], [ %.1167.i.ph, %scalar.ph.preheader ]
  %i.ajo = getelementptr [16 x i8], ptr %i.air, i64 %indvars.iv.i170
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  %i.ajq = load i64, ptr %i.ajp, align 8, !tbaa !550
  %i.ajr = add i64 %.1167.i, 4
  %i.ajs = shl i64 %i.ajq, 5
  %i.ajt = add i64 %i.ajr, %i.ajs                 ; 2 uses
  %indvars.iv.next.i171 = add i64 %indvars.iv.i170, 1 ; 2 uses
  %i.aju = and i64 %indvars.iv.next.i171, 4294967295
  %i.ajv = icmp ugt i64 %i.aio, %i.aju
  br i1 %i.ajv, label %scalar.ph, label %._crit_edge.i172, !llvm.loop !3042

._crit_edge190.i:                                 ; preds = %._crit_edge187.i, %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit.i174
  %i.ajw = load i32, ptr %14, align 8, !tbaa !153 ; 2 uses
  %i.ajx = icmp ult i32 %i.ajw, 13
  br i1 %i.ajx, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %._crit_edge190.i
  %i.ajy = zext nneg i32 %i.ajw to i64            ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %i.ajy
  %i.aka = sub nuw nsw i64 12, %i.ajy
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ajz, i8 0, i64 %i.aka, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i190

bb.dz:                                            ; preds = %._crit_edge190.i
  %i.akb = load ptr, ptr %i.ahh, align 8
  %i.akc = load i32, ptr %i.akb, align 1
  store i32 %i.akc, ptr %i.ahi, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit.i190

_ZN6duckdb8string_t8FinalizeEv.exit.i190:         ; preds = %bb.dz, %bb.dy
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.akd = load ptr, ptr %i.ahl, align 8, !tbaa !427
  %i.ake = getelementptr inbounds nuw [16 x i8], ptr %i.akd, i64 %i.ahm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ake, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !707
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  br label %bb.ex

.lr.ph189.i:                                      ; preds = %._crit_edge187.i, %.lr.ph189.preheader.i
  %i.akf = phi ptr [ %i.aly, %._crit_edge187.i ], [ %.pre.i180, %.lr.ph189.preheader.i ] ; 5 uses
  %i.akg = phi i64 [ %i.ama, %._crit_edge187.i ], [ 0, %.lr.ph189.preheader.i ]
  %.078188.i = phi i32 [ %i.alz, %._crit_edge187.i ], [ 0, %.lr.ph189.preheader.i ]
  %i.akh = load i64, ptr %i.ahv, align 8, !tbaa !552
  %i.aki = getelementptr [16 x i8], ptr %i.afa, i64 %i.akh
  %i.akj = getelementptr [16 x i8], ptr %i.aki, i64 %i.akg ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  %i.akl = load i64, ptr %i.akk, align 8, !tbaa !550 ; 3 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akf, i64 1 ; 3 uses
  %i.akn = load ptr, ptr %i.ahk, align 8, !tbaa !2027 ; 8 uses
  %i.ako = icmp ugt ptr %i.akm, %i.akn
  br i1 %i.ako, label %bb.ea, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_.exit.i181

bb.ea:                                            ; preds = %.lr.ph189.i
  %i.akp = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.eb unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i203

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  %i.akq = load ptr, ptr %15, align 8, !tbaa !2024
  %i.akr = ptrtoint ptr %i.akf to i64
  %i.aks = ptrtoint ptr %i.akq to i64
  %i.akt = sub i64 %i.akr, %i.aks
  store i64 %i.akt, ptr %i.f, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.akp, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.ec unwind label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  invoke void @__cxa_throw(ptr nonnull %i.akp, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ee unwind label %bb.ed

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i203: ; preds = %bb.ea
  %i.aku = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br label %common.resume.sink.split.i193

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.04.i.i204 = phi i1 [ false, %bb.ec ], [ true, %bb.eb ] ; 2 uses
  %i.akv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  %i.akw = load ptr, ptr %12, align 8, !tbaa !89  ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aky = icmp eq ptr %i.akw, %i.akx
  br i1 %i.aky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i205: ; preds = %bb.ed
  call void @_ZdlPv(ptr noundef %i.akw) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br i1 %.04.i.i204, label %common.resume.sink.split.i193, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i206: ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br i1 %.04.i.i204, label %common.resume.sink.split.i193, label %common.resume

common.resume.sink.split.i193:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i135.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i130.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i123.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i116.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i199, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i203
  %.sink.i194 = phi ptr [ %i.aml, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i123.i ], [ %i.aln, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i116.i ], [ %i.alb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i199 ], [ %i.anc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i130.i ], [ %i.alb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i202 ], [ %i.alb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i201 ], [ %i.aln, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i ], [ %i.aln, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i ], [ %i.aml, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128.i ], [ %i.aml, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i ], [ %i.anc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i135.i ], [ %i.anc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i ], [ %i.akp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i206 ], [ %i.akp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i205 ], [ %i.akp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i203 ]
  %common.resume.op.ph.i195 = phi { ptr, i32 } [ %i.amq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i123.i ], [ %i.als, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i116.i ], [ %i.alg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i199 ], [ %i.anm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i130.i ], [ %i.alh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i202 ], [ %i.alh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i201 ], [ %i.alt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i121.i ], [ %i.alt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120.i ], [ %i.amr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128.i ], [ %i.amr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i ], [ %i.ann, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i135.i ], [ %i.ann, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134.i ], [ %i.akv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i206 ], [ %i.akv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i205 ], [ %i.aku, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i203 ]
  call void @__cxa_free_exception(ptr %.sink.i194) #46
  br label %common.resume

bb.ee:                                            ; preds = %bb.ec
  unreachable

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_.exit.i181: ; preds = %.lr.ph189.i
  store i8 1, ptr %i.akf, align 1
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akf, i64 5 ; 3 uses
  %i.ala = icmp ugt ptr %i.akz, %i.akn
  br i1 %i.ala, label %bb.ef, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i182

bb.ef:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_.exit.i181
  %i.alb = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.350, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.eg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i199

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  %i.alc = load ptr, ptr %15, align 8, !tbaa !2024
  %i.ald = ptrtoint ptr %i.akm to i64
  %i.ale = ptrtoint ptr %i.alc to i64
  %i.alf = sub i64 %i.ald, %i.ale
  store i64 %i.alf, ptr %i.e, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.alb, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.eh unwind label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  invoke void @__cxa_throw(ptr nonnull %i.alb, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.ej unwind label %bb.ei

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i110.i199: ; preds = %bb.ef
  %i.alg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br label %common.resume.sink.split.i193

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.04.i113.i200 = phi i1 [ false, %bb.eh ], [ true, %bb.eg ] ; 2 uses
  %i.alh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  %i.ali = load ptr, ptr %10, align 8, !tbaa !89  ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.alk = icmp eq ptr %i.ali, %i.alj
  br i1 %i.alk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114.i201: ; preds = %bb.ei
  call void @_ZdlPv(ptr noundef %i.ali) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br i1 %.04.i113.i200, label %common.resume.sink.split.i193, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115.i202: ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  br i1 %.04.i113.i200, label %common.resume.sink.split.i193, label %common.resume

bb.ej:                                            ; preds = %bb.eh
  unreachable

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_.exit.i182: ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIhEEvRKT_.exit.i181
  store i32 3003, ptr %i.akm, align 1
end_hunk_12
