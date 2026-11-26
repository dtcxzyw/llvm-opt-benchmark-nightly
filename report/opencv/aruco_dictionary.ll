Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/aruco_dictionary?download=true
inline.NumInlined: 339
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv5aruco10Dictionary14readDictionaryERKNS_8FileNodeE:bb.a
          to label %.noexc105 unwind label %bb.g

.noexc105:                                        ; preds = %._crit_edge.i.i99
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  br i1 %i.n, label %.critedge.i104, label %bb.d

bb.d:                                             ; preds = %.noexc105
  invoke void @_ZNK2cv8FileNodeixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc106 unwind label %bb.g

.noexc106:                                        ; preds = %bb.d
  %i.o = invoke noundef zeroext i1 @_ZNK2cv8FileNode5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc107 unwind label %bb.g

.noexc107:                                        ; preds = %.noexc106
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br i1 %i.o, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.noexc107
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  invoke void @_ZNK2cv8FileNodeixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::FileNode") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.noexc108 unwind label %bb.g

.noexc108:                                        ; preds = %bb.e
  invoke void @_ZN2cv4readERKNS_8FileNodeERii(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef 0)
          to label %.noexc109 unwind label %bb.g

.noexc109:                                        ; preds = %.noexc108
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.critedge

.critedge.i104:                                   ; preds = %.noexc105
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.critedge

.critedge:                                        ; preds = %.critedge.i104, %.noexc109, %.noexc107
  %i.p = phi i1 [ false, %.noexc109 ], [ true, %.critedge.i104 ], [ true, %.noexc107 ]
  %i.q = load ptr, ptr %9, align 8, !tbaa !26     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.k
  br i1 %i.r, label %.critedge85.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.s = load i64, ptr %i.k, align 8, !tbaa !25
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #16
  br label %.critedge85.thread

.critedge85.thread:                               ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %.critedge87

.critedge87:                                      ; preds = %.noexc96, %.critedge.i, %.critedge85.thread
  %i.u = phi i1 [ %i.p, %.critedge85.thread ], [ true, %.critedge.i ], [ true, %.noexc96 ]
  %i.v = load ptr, ptr %8, align 8, !tbaa !26     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.f
  br i1 %i.w, label %.critedge89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %.critedge87
  %i.x = load i64, ptr %i.f, align 8, !tbaa !25
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #16
  br label %.critedge89

.critedge89:                                      ; preds = %.critedge87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br i1 %i.u, label %.critedge89.thread, label %bb.i

bb.f:                                             ; preds = %.noexc97, %bb.c, %.noexc95, %bb.b, %._crit_edge.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %.noexc108, %bb.e, %.noexc106, %bb.d, %._crit_edge.i.i99
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.k
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.g
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !25
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %.pn.pn = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %i.z, %bb.f ]
  %i.af = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.f
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.h
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !25
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.ay

bb.i:                                             ; preds = %.critedge89
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %10, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !19  ; 2 uses
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef %i.aj, i32 noundef %i.aj, i32 noundef 0)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ak, ptr %12, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i64 0, ptr %i.al, align 8, !tbaa !24
  store i8 0, ptr %i.ak, align 8, !tbaa !25
  %i.am = load i32, ptr %i.b, align 4, !tbaa !19
  %.not197 = icmp slt i32 %i.am, 1
  br i1 %.not197, label %.critedge93, label %.lr.ph201

.lr.ph201:                                        ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 84
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 128 ; 2 uses
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.l:                                             ; preds = %.lr.ph201, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.034198 = phi i32 [ 0, %.lr.ph201 ], [ %i.ev, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %13)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef %.034198)
          to label %bb.n unwind label %bb.ad      ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  store ptr %i.an, ptr %15, align 8, !tbaa !21, !alias.scope !61
  store i64 0, ptr %i.ao, align 8, !tbaa !24, !alias.scope !61
  store i8 0, ptr %i.an, align 8, !tbaa !25, !alias.scope !61
  %i.bk = load ptr, ptr %i.ap, align 8, !tbaa !30, !noalias !61 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bk, null
  %i.bl = load ptr, ptr %i.aq, align 8, !noalias !61 ; 2 uses
  %i.bm = icmp ugt ptr %i.bk, %i.bl
  %.08.i.i.i = select i1 %i.bm, ptr %i.bk, ptr %i.bl ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %i.ar, align 8, !tbaa !31, !noalias !61 ; 2 uses
  %i.bo = ptrtoint ptr %.08.i.i.i to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef %i.bn, i64 noundef %i.bq)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %15, align 8, !tbaa !26, !alias.scope !61 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.an
  br i1 %i.bu, label %.body, label %.body.sink.split

bb.q:                                             ; preds = %bb.n
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.p

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.q, %bb.o
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.2, i64 noundef 7)
          to label %.noexc121 unwind label %bb.v  ; 6 uses

.noexc121:                                        ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store ptr %i.at, ptr %14, align 8, !tbaa !21, !alias.scope !62
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !26 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 5 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

bb.r:                                             ; preds = %.noexc121
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !24 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.ca, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.bx, i64 %i.cc, i1 false)
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %.noexc121
  store ptr %i.bw, ptr %14, align 8, !tbaa !26, !alias.scope !62
  %i.cd = load i64, ptr %i.bx, align 8, !tbaa !25
  store i64 %i.cd, ptr %i.at, align 8, !tbaa !25, !alias.scope !62
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120, %bb.r
  %i.ce = phi i64 [ %i.ca, %bb.r ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %i.ce, ptr %i.au, align 8, !tbaa !24, !alias.scope !62
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !26
  store i64 0, ptr %i.cf, align 8, !tbaa !24
  store i8 0, ptr %i.bx, align 8, !tbaa !25
  %i.cg = invoke noundef zeroext i1 @_ZN2cv5aruco13readParameterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS7_RT_RKNS_8FileNodeE(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ch = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.at
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.t
  %i.cj = load i64, ptr %i.at, align 8, !tbaa !25
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  %i.cl = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.an
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %i.cn = load i64, ptr %i.an, align 8, !tbaa !25
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br i1 %i.cg, label %.preheader, label %.critedge91

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.cp = load i64, ptr %i.al, align 8, !tbaa !24
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph, label %._crit_edge

bb.u:                                             ; preds = %bb.l
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.v:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.w:                                             ; preds = %bb.s
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.at
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.w
  %i.cx = load i64, ptr %i.at, align 8, !tbaa !25
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128, %bb.v
  %.pn68 = phi { ptr, i32 } [ %i.ct, %bb.v ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128 ], [ %i.cu, %bb.w ] ; 2 uses
  %i.cz = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.an
  br i1 %i.da, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %bb.p
  %.sink = phi ptr [ %i.bt, %bb.p ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ]
  %.pn68.pn.ph = phi { ptr, i32 } [ %i.bs, %bb.p ], [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ]
  %i.db = load i64, ptr %i.an, align 8, !tbaa !25
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dc) #16
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %bb.p
  %.pn68.pn = phi { ptr, i32 } [ %i.bs, %bb.p ], [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ], [ %.pn68.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %bb.aj

._crit_edge:                                      ; preds = %_ZN2cv3Mat2atIhEERT_i.exit, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  invoke void @_ZN2cv5aruco10Dictionary19getByteListFromBitsERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %16, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %bb.ae unwind label %bb.ag

.lr.ph:                                           ; preds = %.preheader, %_ZN2cv3Mat2atIhEERT_i.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2cv3Mat2atIhEERT_i.exit ], [ 0, %.preheader ] ; 6 uses
  %i.dd = load ptr, ptr %12, align 8, !tbaa !26
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !25
  %i.dg = load i32, ptr %i.av, align 4, !tbaa !32
  %i.dh = icmp slt i32 %i.dg, 2
  br i1 %i.dh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph
  %i.di = load ptr, ptr %i.az, align 8, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIhEERT_i.exit

bb.y:                                             ; preds = %.lr.ph
  %i.dk = load i32, ptr %11, align 8, !tbaa !34
  %i.dl = and i32 %i.dk, 16384
  %i.dm = icmp ne i32 %i.dl, 0
  %i.dn = load i32, ptr %i.aw, align 4
  %i.do = icmp eq i32 %i.dn, 1
  %or.cond.i = select i1 %i.dm, i1 true, i1 %i.do
  br i1 %or.cond.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dp = load ptr, ptr %i.az, align 8, !tbaa !33
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIhEERT_i.exit

bb.aa:                                            ; preds = %bb.y
  %i.dr = load i32, ptr %i.ax, align 8, !tbaa !19
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dt = load ptr, ptr %i.az, align 8, !tbaa !33
  %i.du = load i64, ptr %i.ba, align 8, !tbaa !35
  %i.dv = mul i64 %i.du, %indvars.iv
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv
  br label %_ZN2cv3Mat2atIhEERT_i.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dx = load i32, ptr %i.ay, align 4, !tbaa !36 ; 3 uses
  %i.dy = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.dz = sdiv i32 %i.dy, %i.dx                   ; 2 uses
  %i.ea = mul nsw i32 %i.dz, %i.dx                ; 0 uses
  %.recomposed = srem i32 %i.dy, %i.dx
  %i.eb = load ptr, ptr %i.az, align 8, !tbaa !33
  %i.ec = load i64, ptr %i.ba, align 8, !tbaa !35
  %i.ed = sext i32 %i.dz to i64
  %i.ee = mul i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ee
  %i.eg = sext i32 %.recomposed to i64
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 %i.eg
  br label %_ZN2cv3Mat2atIhEERT_i.exit

_ZN2cv3Mat2atIhEERT_i.exit:                       ; preds = %bb.ac, %bb.ab, %bb.z, %bb.x
  %.0.i134 = phi ptr [ %i.dj, %bb.x ], [ %i.dq, %bb.z ], [ %i.dw, %bb.ab ], [ %i.eh, %bb.ac ]
  %i.ei = icmp ne i8 %i.df, 48
  %i.ej = zext i1 %i.ei to i8
  store i8 %i.ej, ptr %.0.i134, align 1, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ek = load i64, ptr %i.al, align 8, !tbaa !24
  %i.el = shl i64 %i.ek, 32
  %i.em = ashr exact i64 %i.el, 32
  %i.en = icmp slt i64 %indvars.iv.next, %i.em
  br i1 %i.en, label %.lr.ph, label %._crit_edge, !llvm.loop !57

bb.ad:                                            ; preds = %bb.m
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ae:                                            ; preds = %._crit_edge
  invoke void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  store ptr %i.bb, ptr %13, align 8, !tbaa !39
  %i.ep = load i64, ptr %i.bd, align 8
  %i.eq = getelementptr inbounds i8, ptr %13, i64 %i.ep
  store ptr %i.bc, ptr %i.eq, align 8, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.be, align 8, !tbaa !39
end_hunk_0
begin_hunk_1_@_ZN2cv5aruco10Dictionary15writeDictionaryERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.29, i32 noundef 1173) #17
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40: ; preds = %bb.s
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !25
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i41: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %common.resume

bb.t:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.az = load i32, ptr %i.ak, align 8, !tbaa !19
  tail call void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i32 noundef %i.az)
  %i.ba = load i32, ptr %i.ap, align 8, !tbaa !84
  %i.bb = and i32 %i.ba, 4
  %.not.i39 = icmp eq i32 %i.bb, 0
  br i1 %.not.i39, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit43, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 6, ptr %i.ap, align 8, !tbaa !84
  br label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit43

_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit43:     ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit, %bb.t, %bb.u
  %i.bc = tail call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.3) ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !39
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %i.bc), !inline_history !66
  br i1 %i.bh, label %bb.v, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit48

bb.v:                                             ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !84
  %i.bk = icmp eq i32 %i.bj, 6
  br i1 %i.bk, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.29, i32 noundef 1173) #17
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45: ; preds = %bb.y
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !25
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %common.resume

bb.z:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bs = load i32, ptr %i.bd, align 4, !tbaa !19
  tail call void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i32 noundef %i.bs)
  %i.bt = load i32, ptr %i.bi, align 8, !tbaa !84
  %i.bu = and i32 %i.bt, 4
  %.not.i44 = icmp eq i32 %i.bu, 0
  br i1 %.not.i44, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit48, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 6, ptr %i.bi, align 8, !tbaa !84
  br label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit48

_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit48:     ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit43, %bb.z, %bb.aa
  %i.bv = load i32, ptr %i.r, align 8, !tbaa !41
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph89, label %._crit_edge90

.lr.ph89:                                         ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit48
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 80 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 84
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 88
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 128 ; 2 uses
  %i.co = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cq = getelementptr i8, ptr %i.co, i64 -24
  %i.cr = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 96 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %15, i64 112
  br label %bb.ab

._crit_edge90:                                    ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit48
  %i.cv = load i64, ptr %i.l, align 8, !tbaa !24
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.bc, label %bb.bb

bb.ab:                                            ; preds = %.lr.ph89, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.01988 = phi i32 [ 0, %.lr.ph89 ], [ %i.cx, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !85
  %i.cx = add nuw nsw i32 %.01988, 1              ; 3 uses
  store i32 %.01988, ptr %3, align 4, !tbaa !43, !noalias !85
  store i32 %i.cx, ptr %i.bx, align 4, !tbaa !44, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !85
  store i64 9223372034707292160, ptr %4, align 8, !noalias !85
  call void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.cy = load i32, ptr %i.ak, align 8, !tbaa !17
  invoke void @_ZN2cv5aruco10Dictionary19getBitsFromByteListERKNS_3MatEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %14, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef %i.cy, i32 noundef 0)
          to label %bb.ac unwind label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15)
          to label %bb.ad unwind label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.cz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef %.01988)
          to label %bb.ae unwind label %bb.am     ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  store ptr %i.by, ptr %17, align 8, !tbaa !21, !alias.scope !88
  store i64 0, ptr %i.bz, align 8, !tbaa !24, !alias.scope !88
  store i8 0, ptr %i.by, align 8, !tbaa !25, !alias.scope !88
  %i.da = load ptr, ptr %i.ca, align 8, !tbaa !30, !noalias !88 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.da, null
  %i.db = load ptr, ptr %i.cb, align 8, !noalias !88 ; 2 uses
  %i.dc = icmp ugt ptr %i.da, %i.db
  %.08.i.i.i = select i1 %i.dc, ptr %i.da, ptr %i.db ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dd = load ptr, ptr %i.cc, align 8, !tbaa !31, !noalias !88 ; 2 uses
  %i.de = ptrtoint ptr %.08.i.i.i to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef %i.dd, i64 noundef %i.dg)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ag ; 0 uses

bb.ag:                                            ; preds = %bb.ah, %bb.af
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %17, align 8, !tbaa !26, !alias.scope !88 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.by
  br i1 %i.dk, label %.body, label %.body.sink.split

bb.ah:                                            ; preds = %bb.ae
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.cd)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ag

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ah, %bb.af
  %i.dl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.2, i64 noundef 7)
          to label %.noexc unwind label %bb.an    ; 6 uses

.noexc:                                           ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  store ptr %i.ce, ptr %16, align 8, !tbaa !21, !alias.scope !89
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !26 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 5 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

bb.ai:                                            ; preds = %.noexc
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !24 ; 3 uses
  %i.dr = icmp ult i64 %i.dq, 16
  call void @llvm.assume(i1 %i.dr)
  %i.ds = add nuw nsw i64 %i.dq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ce, ptr noundef nonnull align 8 dereferenceable(1) %i.dn, i64 %i.ds, i1 false)
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %.noexc
  store ptr %i.dm, ptr %16, align 8, !tbaa !26, !alias.scope !89
  %i.dt = load i64, ptr %i.dn, align 8, !tbaa !25
  store i64 %i.dt, ptr %i.ce, align 8, !tbaa !25, !alias.scope !89
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.ai
  %i.du = phi i64 [ %i.dq, %bb.ai ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %i.du, ptr %i.cf, align 8, !tbaa !24, !alias.scope !89
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !26
  store i64 0, ptr %i.dv, align 8, !tbaa !24
  store i8 0, ptr %i.dn, align 8, !tbaa !25
  %i.dw = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.by
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.aj
  %i.dy = load i64, ptr %i.by, align 8, !tbaa !25
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  store ptr %i.cg, ptr %18, align 8, !tbaa !21
  store i64 0, ptr %i.ch, align 8, !tbaa !24
  store i8 0, ptr %i.cg, align 8, !tbaa !25
  %i.ea = load i32, ptr %i.ak, align 8, !tbaa !17
  %.not = icmp eq i32 %i.ea, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.eb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.ab
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.al:                                            ; preds = %bb.ac
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.am:                                            ; preds = %bb.ad
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.an:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.by
  br i1 %i.eh, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.an, %bb.ag
  %.sink = phi ptr [ %i.dj, %bb.ag ], [ %i.eg, %bb.an ]
  %.pn30.ph = phi { ptr, i32 } [ %i.di, %bb.ag ], [ %i.ef, %bb.an ]
  %i.ei = load i64, ptr %i.by, align 8, !tbaa !25
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ej) #16
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.an, %bb.ag
  %.pn30 = phi { ptr, i32 } [ %i.di, %bb.ag ], [ %i.ef, %bb.an ], [ %.pn30.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %bb.av
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.av ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ] ; 5 uses
  %i.ek = load i32, ptr %i.ci, align 4, !tbaa !32
  %i.el = icmp slt i32 %i.ek, 2
  br i1 %i.el, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph
  %i.em = load ptr, ptr %i.cm, align 8, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIhEERT_i.exit

bb.ap:                                            ; preds = %.lr.ph
  %i.eo = load i32, ptr %14, align 8, !tbaa !34
  %i.ep = and i32 %i.eo, 16384
  %i.eq = icmp ne i32 %i.ep, 0
  %i.er = load i32, ptr %i.cj, align 4
  %i.es = icmp eq i32 %i.er, 1
  %or.cond.i = select i1 %i.eq, i1 true, i1 %i.es
  br i1 %or.cond.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.et = load ptr, ptr %i.cm, align 8, !tbaa !33
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIhEERT_i.exit

bb.ar:                                            ; preds = %bb.ap
  %i.ev = load i32, ptr %i.ck, align 8, !tbaa !19
  %i.ew = icmp eq i32 %i.ev, 1
  br i1 %i.ew, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ex = load ptr, ptr %i.cm, align 8, !tbaa !33
  %i.ey = load i64, ptr %i.cn, align 8, !tbaa !35
  %i.ez = mul i64 %i.ey, %indvars.iv
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ez
  br label %_ZN2cv3Mat2atIhEERT_i.exit

bb.at:                                            ; preds = %bb.ar
  %i.fb = load i32, ptr %i.cl, align 4, !tbaa !36 ; 3 uses
  %i.fc = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.fd = sdiv i32 %i.fc, %i.fb                   ; 2 uses
  %i.fe = mul nsw i32 %i.fd, %i.fb                ; 0 uses
  %.recomposed = srem i32 %i.fc, %i.fb
  %i.ff = load ptr, ptr %i.cm, align 8, !tbaa !33
  %i.fg = load i64, ptr %i.cn, align 8, !tbaa !35
  %i.fh = sext i32 %i.fd to i64
  %i.fi = mul i64 %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fi
  %i.fk = sext i32 %.recomposed to i64
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 %i.fk
  br label %_ZN2cv3Mat2atIhEERT_i.exit

_ZN2cv3Mat2atIhEERT_i.exit:                       ; preds = %bb.at, %bb.as, %bb.aq, %bb.ao
  %.0.i = phi ptr [ %i.en, %bb.ao ], [ %i.eu, %bb.aq ], [ %i.fa, %bb.as ], [ %i.fl, %bb.at ]
  %i.fm = load i8, ptr %.0.i, align 1, !tbaa !25
  %i.fn = add i8 %i.fm, 48
  %i.fo = load i64, ptr %i.ch, align 8, !tbaa !24 ; 4 uses
  %i.fp = add i64 %i.fo, 1                        ; 3 uses
  %i.fq = load ptr, ptr %18, align 8, !tbaa !26   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.cg
  br i1 %i.fr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58: ; preds = %_ZN2cv3Mat2atIhEERT_i.exit
  %i.fs = icmp ult i64 %i.fo, 16
  call void @llvm.assume(i1 %i.fs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZN2cv3Mat2atIhEERT_i.exit
  %i.ft = load i64, ptr %i.cg, align 8, !tbaa !25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58
  %i.fu = phi i64 [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58 ]
  %i.fv = icmp ugt i64 %i.fp, %i.fu
  br i1 %i.fv, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %i.fo, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.au
  %.pre.i57 = load ptr, ptr %18, align 8, !tbaa !26
  br label %bb.av

bb.av:                                            ; preds = %.noexc59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.fw = phi ptr [ %.pre.i57, %.noexc59 ], [ %i.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fo
  store i8 %i.fn, ptr %i.fx, align 1, !tbaa !25
  store i64 %i.fp, ptr %i.ch, align 8, !tbaa !24
  %i.fy = load ptr, ptr %18, align 8, !tbaa !26
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fp
  store i8 0, ptr %i.fz, align 1, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ga = load i32, ptr %i.ak, align 8, !tbaa !17 ; 2 uses
  %i.gb = mul nsw i32 %i.ga, %i.ga
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = icmp samesign ult i64 %indvars.iv.next, %i.gc
  br i1 %i.gd, label %.lr.ph, label %._crit_edge, !llvm.loop !75

bb.aw:                                            ; preds = %._crit_edge
  %i.ge = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ax:                                            ; preds = %bb.aw
  %i.gf = load ptr, ptr %18, align 8, !tbaa !26   ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.cg
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.ax
end_hunk_1
begin_hunk_2_@_ZNK2cv5aruco10Dictionary19generateImageMarkerEiiRKNS_12_OutputArrayEi:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZNK2cv5aruco10Dictionary19generateImageMarkerEiiRKNS_12_OutputArrayEi, ptr noundef nonnull @.str.5, i32 noundef 157) #17
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.r:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %15, align 8, !tbaa !26    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.r
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !25
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.q
  %.pn39 = phi { ptr, i32 } [ %i.w, %bb.q ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.x, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.bi

bb.s:                                             ; preds = %bb.m
  tail call void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %2, i32 noundef %2, i32 noundef 0, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !17
  %i.ae = add nsw i32 %i.ad, %i.c                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  call void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef %i.ae, i32 noundef %i.ae, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !40
  %i.ah = sub nsw i32 %i.ag, %4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15, !noalias !128
  store i32 %4, ptr %9, align 4, !tbaa !43, !noalias !128
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !44, !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15, !noalias !128
  store i64 9223372034707292160, ptr %10, align 8, !noalias !128
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.t unwind label %bb.z

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15, !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !128
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !36
  %i.al = sub nsw i32 %i.ak, %4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !129
  store i64 9223372034707292160, ptr %7, align 8, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !129
  store i32 %4, ptr %8, align 4, !tbaa !43, !noalias !129
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.al, ptr %i.am, align 4, !tbaa !44, !noalias !129
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !129
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  invoke void @_ZNK2cv5aruco10Dictionary13getMarkerBitsEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %21, ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, i32 noundef 0)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  %i.an = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 0, ptr %i.ao, align 8
  store i32 33619968, ptr %22, align 8, !tbaa !47
  store ptr %21, ptr %i.an, align 8, !tbaa !48
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, i32 noundef 0, double noundef 2.550000e+02, double noundef 0.000000e+00)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  %i.ap = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.aq = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.ak, label %bb.af

bb.z:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn41 = phi { ptr, i32 } [ %i.at, %bb.aa ], [ %i.as, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %bb.bh

bb.ac:                                            ; preds = %bb.u
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ad:                                            ; preds = %bb.v
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %bb.bf

bb.ae:                                            ; preds = %bb.x, %bb.w
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.af:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__func__._ZNK2cv5aruco10Dictionary19generateImageMarkerEiiRKNS_12_OutputArrayEi, ptr noundef nonnull @.str.5, i32 noundef 169) #17
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %bb.af
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.aj:                                            ; preds = %bb.ag
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %23, align 8, !tbaa !26   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.aj
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !25
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.ai
  %.pn45 = phi { ptr, i32 } [ %i.ax, %bb.ai ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.ay, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  br label %bb.bf

bb.ak:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  %i.be = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i64 0, ptr %i.bf, align 8
  store i32 33619968, ptr %25, align 8, !tbaa !47
  store ptr %19, ptr %i.be, align 8, !tbaa !48
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(24) %25)
          to label %bb.al unwind label %bb.az

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  %i.bg = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i32 0, ptr %i.bg, align 8, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %26, i64 20
  store i32 0, ptr %i.bh, align 4, !tbaa !50
  store i32 16842752, ptr %26, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %17, ptr %i.bi, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  %i.bj = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc unwind label %bb.ba

.noexc:                                           ; preds = %bb.al
  %i.bk = icmp eq i32 %i.bj, 65536
  br i1 %i.bk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.noexc
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !48, !noalias !130
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %28, ptr noundef nonnull align 8 dereferenceable(208) %i.bm)
          to label %bb.ao unwind label %bb.ba

bb.an:                                            ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %28, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %bb.ao unwind label %bb.ba

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.bn = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 0, ptr %i.bo, align 8
  store i32 -1040121856, ptr %27, align 8, !tbaa !47
  store ptr %28, ptr %i.bn, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  %i.bp = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc69 unwind label %bb.bb

.noexc69:                                         ; preds = %bb.ao
  %i.bq = icmp eq i32 %i.bp, 65536
  br i1 %i.bq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.noexc69
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !48, !noalias !131
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(208) %i.bs)
          to label %_ZNK2cv11_InputArray6getMatEi.exit72 unwind label %bb.bb

bb.aq:                                            ; preds = %.noexc69
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %29, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit72 unwind label %bb.bb

_ZNK2cv11_InputArray6getMatEi.exit72:             ; preds = %bb.ap, %bb.aq
  %i.bt = getelementptr inbounds nuw i8, ptr %29, i64 72
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !132 ; 6 uses
  %i.bv = icmp slt i32 %i.bu, 3
  br i1 %i.bv, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit72
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc73 unwind label %bb.bc

.noexc73:                                         ; preds = %bb.ar
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.24, i32 noundef 109) #17
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %.noexc73
  unreachable

bb.at:                                            ; preds = %.noexc73
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.at
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !25
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.body

bb.au:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit72
  %i.cc = icmp sgt i32 %i.bu, 0
  br i1 %i.cc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.cd = icmp eq i32 %i.bu, 2
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cd, i64 88, i64 84
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %29, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.ce = load i32, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !19
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.cf = icmp eq i32 %i.bu, 0
  %i.cg = zext i1 %i.cf to i32
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ch = phi i32 [ %i.ce, %bb.av ], [ %i.cg, %bb.aw ]
  %i.ci = icmp eq i32 %i.bu, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %29, i64 84
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = icmp sgt i32 %i.bu, -1
  %i.cm = zext i1 %i.cl to i32
  %i.cn = select i1 %i.ci, i32 %i.ck, i32 %i.cm
  %.sroa.2.0.insert.ext.i = zext i32 %i.cn to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ch to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %27, i64 %.sroa.0.0.insert.insert.i, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 0)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  ret void

bb.az:                                            ; preds = %bb.ak
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  br label %bb.bf

bb.ba:                                            ; preds = %bb.an, %bb.am, %bb.al
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bb:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ar, %bb.ax
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bc
  %eh.lpad-body = phi { ptr, i32 } [ %i.cr, %bb.bc ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #15
  br label %bb.bd

bb.bd:                                            ; preds = %.body, %bb.bb
  %.pn49 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cq, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #15
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ba
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49, %bb.bd ], [ %i.cp, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %bb.ae, %bb.ad
  %.pn49.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn, %bb.be ], [ %i.co, %bb.az ], [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.aw, %bb.ae ], [ %i.av, %bb.ad ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #15
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ac
  %.pn49.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn, %bb.bf ], [ %i.au, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #15
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.ab
  %.pn49.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn.pn, %bb.bg ], [ %.pn41, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn49.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn.pn.pn, %bb.bh ], [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn49.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv5aruco10Dictionary13getMarkerBitsEii(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Range", align 4         ; 5 uses
  %5 = alloca %"class.cv::Range", align 8         ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.cv::Scalar_", align 8      ; 4 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  %i.c = icmp slt i32 %2, %i.b
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv5aruco10Dictionary13getMarkerBitsEii, ptr noundef nonnull @.str.5, i32 noundef 218) #17
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
end_hunk_2
