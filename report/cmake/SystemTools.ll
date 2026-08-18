inline.NumInlined: 1630
inline.NumDeleted: 268
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5cmsysL9FileInDirERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_:bb.a
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.ag = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.o
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !23
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ak = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.c
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.am = load i64, ptr %i.c, align 8, !tbaa !23
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.l:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.l
  %i.au = load i64, ptr %i.as, align 8, !tbaa !23
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.aq, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.aw = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.o
  br i1 %i.ax, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %bb.f
  %.sink = phi ptr [ %i.z, %bb.f ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.y, %bb.f ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  %i.ay = load i64, ptr %i.o, align 8, !tbaa !23
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.az) #35
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.y, %bb.f ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.m

bb.m:                                             ; preds = %.body, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.ao, %bb.j ]
  %i.ba = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.c
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.m
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !23
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN5cmsys11SystemTools11ComparePathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.b, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !24
  %i.h = load ptr, ptr %0, align 8, !tbaa !24
  %bcmp.i = tail call i32 @bcmp(ptr %i.h, ptr %i.g, i64 %i.b)
  %i.i = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5cmsys11SystemTools11FilesDifferERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 5 uses
  %3 = alloca %struct.stat, align 8               ; 5 uses
  %4 = alloca %"class.std::basic_ifstream", align 8 ; 10 uses
  %5 = alloca %"class.std::basic_ifstream", align 8 ; 10 uses
  %i.a = alloca [4096 x i8], align 16             ; 5 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.c = load ptr, ptr %0, align 8, !tbaa !24
  %i.d = call i32 @stat(ptr noundef %i.c, ptr noundef nonnull %2) #33
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.e = load ptr, ptr %1, align 8, !tbaa !24
  %i.f = call i32 @stat(ptr noundef %i.e, ptr noundef nonnull %3) #33
  %.not26 = icmp eq i32 %i.f, 0
  br i1 %.not26, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !59   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !59
  %.not27 = icmp eq i64 %i.h, %i.j
  br i1 %.not27, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.l = load ptr, ptr %0, align 8, !tbaa !24
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %4, ptr noundef %i.l, i32 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.m = load ptr, ptr %1, align 8, !tbaa !24
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %5, ptr noundef %i.m, i32 noundef 8)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %4, align 8, !tbaa !105
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %4, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !107
  %i.t = and i32 %i.s, 5
  %.not34 = icmp eq i32 %i.t, 0
  br i1 %.not34, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %5, align 8, !tbaa !105
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %5, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !107
  %i.aa = and i32 %i.z, 5
  %.not35 = icmp eq i32 %i.aa, 0
  br i1 %.not35, label %bb.i, label %bb.p

bb.h:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.ac = icmp sgt i64 %i.h, 0
  br i1 %i.ac, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.k

bb.j:                                             ; preds = %bb.o
  %i.af = sub nsw i64 %.01937, %i.ag              ; 2 uses
  %6 = icmp sgt i64 %i.af, 0
  br i1 %6, label %bb.k, label %.critedge, !llvm.loop !116

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %.01937 = phi i64 [ %i.h, %.lr.ph ], [ %i.af, %bb.j ] ; 2 uses
  %i.ag = call i64 @llvm.umin.i64(i64 %.01937, i64 4096) ; 6 uses
  %i.ah = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.a, i64 noundef %i.ag)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ai = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.b, i64 noundef %i.ag)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !117
  %.not30 = icmp eq i64 %i.aj, %i.ag
  %i.ak = load i64, ptr %i.ae, align 8
  %.not31 = icmp eq i64 %i.ak, %i.ag
  %or.cond = select i1 %.not30, i1 %.not31, i1 false
  br i1 %or.cond, label %bb.o, label %.critedge

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %5) #33
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %bcmp = call i32 @bcmp(ptr nonnull %i.a, ptr nonnull %i.b, i64 %i.ag)
  %.not32 = icmp eq i32 %bcmp, 0
  br i1 %.not32, label %bb.j, label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.o, %bb.m, %bb.i
  %.lcssa = phi i1 [ false, %bb.i ], [ true, %bb.m ], [ true, %bb.o ], [ false, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.g, %.critedge
  %.3 = phi i1 [ %.lcssa, %.critedge ], [ true, %bb.g ], [ true, %bb.f ]
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.r

bb.q:                                             ; preds = %bb.n, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.al, %bb.n ], [ %i.ab, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.pn.pn

bb.r:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.p
  %.4 = phi i1 [ %.3, %bb.p ], [ true, %bb.b ], [ true, %bb.c ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  %.5 = phi i1 [ %.4, %bb.r ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define dso_local { i64, i32 } @_ZN5cmsys11SystemTools14CopyFileAlwaysERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 3 uses
  %3 = alloca %struct.stat, align 8               ; 7 uses
  %4 = alloca %struct.stat, align 8               ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %struct.stat, align 8               ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.c = load ptr, ptr %0, align 8, !tbaa !24
  %i.d = call i32 @stat(ptr noundef %i.c, ptr noundef nonnull %5) #33
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @_ZN5cmsys6Status11POSIX_errnoEv()
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 0
  br label %_ZN5cmsys11SystemTools14GetPermissionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !119
  br label %_ZN5cmsys11SystemTools14GetPermissionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit

_ZN5cmsys11SystemTools14GetPermissionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit: ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.b ], [ %i.j, %bb.c ]
  %.sroa.0.0.i = phi i1 [ %i.h, %bb.b ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.k, ptr %6, align 8, !tbaa !18
  %i.l = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 %i.n, ptr %i.b, align 8, !tbaa !28
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN5cmsys11SystemTools14GetPermissionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.p, ptr %6, align 8, !tbaa !24
  %i.q = load i64, ptr %i.b, align 8, !tbaa !28
  store i64 %i.q, ptr %i.k, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZN5cmsys11SystemTools14GetPermissionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit
  %i.r = phi ptr [ %i.p, %.noexc.i ], [ %i.k, %_ZN5cmsys11SystemTools14GetPermissionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERj.exit ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !23
  store i8 %i.s, ptr %i.r, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.t = load i64, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 %i.t, ptr %i.u, align 8, !tbaa !21
  %i.v = load ptr, ptr %6, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.x = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools15FileIsDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  br i1 %i.x, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.y = invoke i64 @_ZN5cmsys11SystemTools13MakeDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKj(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef null)
          to label %bb.h unwind label %bb.j       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.sroa.079.0.extract.trunc86 = trunc i64 %i.y to i32 ; 2 uses
  %.sroa.11.0.extract.shift93 = lshr i64 %i.y, 32 ; 2 uses
  %i.z = icmp eq i32 %.sroa.079.0.extract.trunc86, 0
  br i1 %i.z, label %bb.ay, label %bb.bd

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.j:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  store ptr %i.ac, ptr %7, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !21
  store i8 0, ptr %i.ac, align 8, !tbaa !23
  %i.ae = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools15FileIsDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %bb.k
  br i1 %i.ae, label %bb.m, label %bb.z

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.m
  invoke void @_ZN5cmsys11SystemTools20ConvertToUnixSlashesERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.af = load i64, ptr %i.u, align 8, !tbaa !21  ; 4 uses
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  %i.ah = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.k
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.n
  %i.aj = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.aj)
end_hunk_0
begin_hunk_1_@_ZN5cmsys11SystemTools5SplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EEc:bb.a

bb.r:                                             ; preds = %._crit_edge.i.i.i35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bm, i64 %spec.select.i.i.i, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i35
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !179 ; 2 uses
  store i64 %i.bt, ptr %i.t, align 8, !tbaa !21, !alias.scope !179
  %i.bu = load ptr, ptr %5, align 8, !tbaa !24, !alias.scope !179
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  store i8 0, ptr %i.bv, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33, !noalias !179
  %i.bw = load ptr, ptr %i.u, align 8, !tbaa !13  ; 6 uses
  %i.bx = load ptr, ptr %i.v, align 8, !tbaa !29
  %.not.i.i40 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i40, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 3 uses
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !18
  %i.bz = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.s
  br i1 %i.ca, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41

bb.u:                                             ; preds = %bb.t
  %i.cb = load i64, ptr %i.t, align 8, !tbaa !21  ; 3 uses
  %i.cc = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  %i.cd = add nuw nsw i64 %i.cb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.cd, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit44.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41: ; preds = %bb.t
  store ptr %i.bz, ptr %i.bw, align 8, !tbaa !24
  %i.ce = load i64, ptr %i.s, align 8, !tbaa !23
  store i64 %i.ce, ptr %i.by, align 8, !tbaa !23
  %.pre = load i64, ptr %i.t, align 8, !tbaa !21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit44.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit44.thread: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41
  %i.cf = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41 ], [ %i.cb, %bb.u ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !21
  store ptr %i.s, ptr %5, align 8, !tbaa !24
  store i64 0, ptr %i.t, align 8, !tbaa !21
  %i.ch = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store ptr %i.ci, ptr %i.u, align 8, !tbaa !13
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46

bb.v:                                             ; preds = %bb.s
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit44 unwind label %bb.w

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit44: ; preds = %bb.v
  %.pre82 = load ptr, ptr %5, align 8, !tbaa !24  ; 2 uses
  %i.cj = icmp eq ptr %.pre82, %i.s
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit44
  %i.ck = load i64, ptr %i.s, align 8, !tbaa !23
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %.pre82, i64 noundef %i.cl) #35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46

.loopexit58:                                      ; preds = %.noexc10.i.i36
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.w:                                             ; preds = %bb.v
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.s
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.w
  %i.cp = load i64, ptr %i.s, align 8, !tbaa !23
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.w, %.loopexit58, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %.pn = phi { ptr, i32 } [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit58 ], [ %i.cm, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit44, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit44.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.cr = add nuw i64 %i.w, 1                     ; 2 uses
  %i.cs = load i64, ptr %i.n, align 8, !tbaa !21
  %.not74 = icmp ult i64 %i.cr, %i.cs
  br i1 %.not74, label %bb.d, label %.loopexit, !llvm.loop !182

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ]
  %i.ct = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.d
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.x
  %i.cv = load i64, ptr %i.d, align 8, !tbaa !23
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn26.pn

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %.thread
  %i.cx = phi i1 [ false, %.thread ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46 ]
  %i.cy = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.d
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %.loopexit
  %i.da = load i64, ptr %i.d, align 8, !tbaa !23
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret i1 %i.cx
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5cmsys11SystemTools5SplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !18
  %i.f = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i64 %i.h, ptr %i.d, align 8, !tbaa !28
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !24
  %i.k = load i64, ptr %i.d, align 8, !tbaa !28
  store i64 %i.k, ptr %i.e, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !23
  store i8 %i.m, ptr %i.l, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !21
  %i.p = load ptr, ptr %2, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.r = load i64, ptr %i.o, align 8, !tbaa !21
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 11 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.ai
  %.026117 = phi i64 [ 0, %.lr.ph ], [ %i.eg, %bb.ai ] ; 16 uses
  %i.z = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 10, i64 noundef %.026117) #33 ; 5 uses
  %.not = icmp eq i64 %i.z, -1
  br i1 %.not, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !21, !noalias !183 ; 3 uses
  %i.ab = icmp ugt i64 %.026117, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.27, i64 noundef %.026117, i64 noundef %i.aa) #34
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !18, !alias.scope !183
  %i.ad = load ptr, ptr %2, align 8, !tbaa !24, !noalias !183
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.026117 ; 2 uses
  %i.af = sub nuw i64 %i.aa, %.026117             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33, !noalias !183
  store i64 %i.af, ptr %i.c, align 8, !tbaa !28, !noalias !183
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc38 unwind label %bb.m   ; 2 uses

.noexc38:                                         ; preds = %.noexc10.i.i
  store ptr %i.ah, ptr %3, align 8, !tbaa !24, !alias.scope !183
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !28, !noalias !183
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !23, !alias.scope !183
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.aj = phi ptr [ %i.ah, %.noexc38 ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.af, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = load i8, ptr %i.ae, align 1, !tbaa !23
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !23
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.ae, i64 %i.af, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.al = load i64, ptr %i.c, align 8, !tbaa !28, !noalias !183 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.al, ptr %i.am, align 8, !tbaa !21, !alias.scope !183
  %i.an = load ptr, ptr %3, align 8, !tbaa !24, !alias.scope !183
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33, !noalias !183
  %i.ap = load ptr, ptr %i.v, align 8, !tbaa !13  ; 6 uses
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !29
  %.not.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !18
  %i.as = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ac
  br i1 %i.at, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.au = load i64, ptr %i.am, align 8, !tbaa !21 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !24
  %i.ax = load i64, ptr %i.ac, align 8, !tbaa !23
  store i64 %i.ax, ptr %i.ar, align 8, !tbaa !23
  %.pre134 = load i64, ptr %i.am, align 8, !tbaa !21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ay = phi i64 [ %.pre134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.au, %bb.k ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !21
  store ptr %i.ac, ptr %3, align 8, !tbaa !24
  store i64 0, ptr %i.am, align 8, !tbaa !21
  %i.ba = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !13
  br label %.thread

bb.l:                                             ; preds = %bb.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.n

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.l
  %.pre135 = load ptr, ptr %3, align 8, !tbaa !24 ; 2 uses
  %i.bc = icmp eq ptr %.pre135, %i.ac
  br i1 %i.bc, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.bd = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %.pre135, i64 noundef %i.be) #35
  br label %.thread

.thread:                                          ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %.loopexit

bb.m:                                             ; preds = %.noexc10.i.i, %bb.f
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.n:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ac
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.n
  %i.bj = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.m
  %.pn35 = phi { ptr, i32 } [ %i.bf, %bb.m ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.bg, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.aj

bb.o:                                             ; preds = %bb.d
  %i.bl = icmp ugt i64 %i.z, %.026117
  br i1 %i.bl, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.bm = add i64 %i.z, -1                        ; 2 uses
  %i.bn = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !23
  %i.bq = icmp eq i8 %i.bp, 13
  br i1 %i.bq, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.br = load i64, ptr %i.o, align 8, !tbaa !21, !noalias !186 ; 3 uses
  %i.bs = icmp ugt i64 %.026117, %i.br
  br i1 %i.bs, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i43

bb.r:                                             ; preds = %bb.q
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.27, i64 noundef %.026117, i64 noundef %i.br) #34
          to label %.noexc46 unwind label %.loopexit.split-lp87

.noexc46:                                         ; preds = %bb.r
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i43: ; preds = %bb.q
  %6 = sub i64 %i.bm, %.026117
  store ptr %i.x, ptr %4, align 8, !tbaa !18, !alias.scope !186
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.026117 ; 2 uses
  %7 = sub nuw i64 %i.br, %.026117
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %6, i64 %7) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !186
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !28, !noalias !186
  %i.bu = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.bu, label %.noexc10.i.i45, label %._crit_edge.i.i.i44

.noexc10.i.i45:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i43
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc47 unwind label %.loopexit86 ; 2 uses

.noexc47:                                         ; preds = %.noexc10.i.i45
  store ptr %i.bv, ptr %4, align 8, !tbaa !24, !alias.scope !186
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !28, !noalias !186
  store i64 %i.bw, ptr %i.x, align 8, !tbaa !23, !alias.scope !186
  br label %._crit_edge.i.i.i44

._crit_edge.i.i.i44:                              ; preds = %.noexc47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i43
  %i.bx = phi ptr [ %i.bv, %.noexc47 ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i43 ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i44
  %i.by = load i8, ptr %i.bt, align 1, !tbaa !23
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !23
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i.i44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr align 1 %i.bt, i64 %spec.select.i.i.i, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i.i44
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !28, !noalias !186 ; 2 uses
  store i64 %i.bz, ptr %i.y, align 8, !tbaa !21, !alias.scope !186
  %i.ca = load ptr, ptr %4, align 8, !tbaa !24, !alias.scope !186
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  store i8 0, ptr %i.cb, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33, !noalias !186
  %i.cc = load ptr, ptr %i.v, align 8, !tbaa !13  ; 6 uses
  %i.cd = load ptr, ptr %i.w, align 8, !tbaa !29
  %.not.i.i49 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i.i49, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !18
  %i.cf = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.x
  br i1 %i.cg, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50

bb.w:                                             ; preds = %bb.v
  %i.ch = load i64, ptr %i.y, align 8, !tbaa !21  ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ce, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit53.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50: ; preds = %bb.v
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !24
  %i.ck = load i64, ptr %i.x, align 8, !tbaa !23
  store i64 %i.ck, ptr %i.ce, align 8, !tbaa !23
  %.pre132 = load i64, ptr %i.y, align 8, !tbaa !21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit53.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit53.thread: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50
  %i.cl = phi i64 [ %.pre132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i50 ], [ %i.ch, %bb.w ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !21
  store ptr %i.x, ptr %4, align 8, !tbaa !24
  store i64 0, ptr %i.y, align 8, !tbaa !21
  %i.cn = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  store ptr %i.co, ptr %i.v, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.x:                                             ; preds = %bb.u
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit53 unwind label %bb.y

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit53: ; preds = %bb.x
  %.pre133 = load ptr, ptr %4, align 8, !tbaa !24 ; 2 uses
  %i.cp = icmp eq ptr %.pre133, %i.x
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit53
  %i.cq = load i64, ptr %i.x, align 8, !tbaa !23
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %.pre133, i64 noundef %i.cr) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit53, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit53.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.ai

.loopexit86:                                      ; preds = %.noexc10.i.i45
  %lpad.loopexit88 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

.loopexit.split-lp87:                             ; preds = %bb.r
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.y:                                             ; preds = %bb.x
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.x
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.y
  %i.cv = load i64, ptr %i.x, align 8, !tbaa !23
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.y, %.loopexit86, %.loopexit.split-lp87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  %.pn33 = phi { ptr, i32 } [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %lpad.loopexit.split-lp89, %.loopexit.split-lp87 ], [ %lpad.loopexit88, %.loopexit86 ], [ %i.cs, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.aj

bb.z:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.cx = load i64, ptr %i.o, align 8, !tbaa !21, !noalias !189 ; 3 uses
  %i.cy = icmp ugt i64 %.026117, %i.cx
  br i1 %i.cy, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i60

bb.aa:                                            ; preds = %bb.z
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.27, i64 noundef %.026117, i64 noundef %i.cx) #34
          to label %.noexc64 unwind label %.loopexit.split-lp

.noexc64:                                         ; preds = %bb.aa
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i60: ; preds = %bb.z
  %i.cz = sub i64 %i.z, %.026117
  store ptr %i.t, ptr %5, align 8, !tbaa !18, !alias.scope !189
  %i.da = load ptr, ptr %2, align 8, !tbaa !24, !noalias !189
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.026117 ; 2 uses
  %i.dc = sub nuw i64 %i.cx, %.026117
  %spec.select.i.i.i61 = call noundef i64 @llvm.umin.i64(i64 %i.cz, i64 %i.dc) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !189
  store i64 %spec.select.i.i.i61, ptr %i.a, align 8, !tbaa !28, !noalias !189
  %i.dd = icmp ugt i64 %spec.select.i.i.i61, 15
  br i1 %i.dd, label %.noexc10.i.i63, label %._crit_edge.i.i.i62

.noexc10.i.i63:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i60
  %i.de = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc65 unwind label %.loopexit85 ; 2 uses

.noexc65:                                         ; preds = %.noexc10.i.i63
  store ptr %i.de, ptr %5, align 8, !tbaa !24, !alias.scope !189
  %i.df = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !189
  store i64 %i.df, ptr %i.t, align 8, !tbaa !23, !alias.scope !189
  br label %._crit_edge.i.i.i62

._crit_edge.i.i.i62:                              ; preds = %.noexc65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i60
  %i.dg = phi ptr [ %i.de, %.noexc65 ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i60 ] ; 2 uses
  switch i64 %spec.select.i.i.i61, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i62
  %i.dh = load i8, ptr %i.db, align 1, !tbaa !23
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !23
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i.i62
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr align 1 %i.db, i64 %spec.select.i.i.i61, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i.i62
  %i.di = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !189 ; 2 uses
  store i64 %i.di, ptr %i.u, align 8, !tbaa !21, !alias.scope !189
  %i.dj = load ptr, ptr %5, align 8, !tbaa !24, !alias.scope !189
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.di
  store i8 0, ptr %i.dk, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33, !noalias !189
  %i.dl = load ptr, ptr %i.v, align 8, !tbaa !13  ; 6 uses
  %i.dm = load ptr, ptr %i.w, align 8, !tbaa !29
  %.not.i.i67 = icmp eq ptr %i.dl, %i.dm
  br i1 %.not.i.i67, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 3 uses
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !18
  %i.do = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.t
  br i1 %i.dp, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68

bb.af:                                            ; preds = %bb.ae
  %i.dq = load i64, ptr %i.u, align 8, !tbaa !21  ; 3 uses
  %i.dr = icmp ult i64 %i.dq, 16
  call void @llvm.assume(i1 %i.dr)
  %i.ds = add nuw nsw i64 %i.dq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dn, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.ds, i1 false)
end_hunk_1
