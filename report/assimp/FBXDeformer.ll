inline.NumInlined: 842
inline.NumDeleted: 376
begin_hunk_0_@_ZN6Assimp3FBX7ClusterC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %9, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZN6Assimp3FBX10ReadMatrixERKNS0_7ElementE(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix4x4t) align 4 %10, ptr noundef nonnull align 8 dereferenceable(40) %i.cb)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 4 dereferenceable(64) %10, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.cg = icmp ne ptr %i.bo, null                 ; 2 uses
  %i.ch = icmp eq ptr %i.bp, null
  %.not = xor i1 %i.cg, %i.ch
  br i1 %.not, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6Assimp3FBX4Util8DOMErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %2) #20
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.a
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %7, align 8               ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.bq
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.n
  %i.cm = load i64, ptr %i.bq, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ar

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load ptr, ptr %8, align 8               ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.by
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.o
  %i.cr = load i64, ptr %i.by, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ar

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ar

bb.q:                                             ; preds = %bb.h
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.ar

bb.r:                                             ; preds = %bb.j
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

bb.s:                                             ; preds = %bb.k
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %11, align 8              ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.s
  %i.da = load i64, ptr %i.cy, align 8
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136, %bb.r
  %.pn67 = phi { ptr, i32 } [ %i.cv, %bb.r ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136 ], [ %i.cw, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ar

bb.t:                                             ; preds = %bb.i
  br i1 %i.cg, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorIjSaIjEERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.bo)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorIfSaIfEERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.bp)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.x:                                             ; preds = %bb.v, %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = load ptr, ptr %i.b, align 8
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = load ptr, ptr %i.a, align 8
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %.not58 = icmp eq i64 %i.di, %i.do
  br i1 %.not58, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6Assimp3FBX4Util8DOMErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull %2) #20
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.ac:                                            ; preds = %bb.z
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %13, align 8              ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.ac
  %i.du = load i64, ptr %i.ds, align 8
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.ab
  %.pn65 = phi { ptr, i32 } [ %i.dp, %bb.ab ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %i.dq, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.ar

bb.ad:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dx = load i64, ptr %i.dw, align 8
  invoke void @_ZNK6Assimp3FBX8Document36GetConnectionsByDestinationSequencedEmPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.67") align 8 %15, ptr noundef nonnull align 8 dereferenceable(368) %3, i64 noundef %i.dx, ptr noundef nonnull @.str.7)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.dy = load ptr, ptr %15, align 8              ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %.not157158 = icmp eq ptr %i.dy, %i.ea
  br i1 %.not157158, label %._crit_edge, label %.lr.ph

bb.af:                                            ; preds = %.critedge
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 8 ; 2 uses
  %.not157 = icmp eq ptr %i.eb, %i.ea
  br i1 %.not157, label %._crit_edge, label %.lr.ph

bb.ag:                                            ; preds = %bb.ad
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.lr.ph:                                           ; preds = %bb.ae, %bb.af
  %.sroa.0149.0159 = phi ptr [ %i.eb, %bb.af ], [ %i.dy, %bb.ae ] ; 2 uses
  %i.ed = load ptr, ptr %.sroa.0149.0159, align 8
  %i.ee = invoke noundef ptr @_ZN6Assimp3FBX4Util23ProcessSimpleConnectionINS0_5ModelEEEPKT_RKNS0_10ConnectionEbPKcRKNS0_7ElementEPSB_(ptr noundef nonnull align 8 dereferenceable(64) %i.ed, i1 noundef zeroext false, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null)
          to label %.critedge unwind label %bb.ah ; 2 uses

.critedge:                                        ; preds = %.lr.ph
  %.not59 = icmp eq ptr %i.ee, null
  br i1 %.not59, label %bb.af, label %.thread

.thread:                                          ; preds = %.critedge
  store ptr %i.ee, ptr %i.q, align 8
  br label %bb.an

bb.ah:                                            ; preds = %.lr.ph
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

._crit_edge:                                      ; preds = %bb.af, %bb.ae
  %.pr = load ptr, ptr %i.q, align 8
  %.not60 = icmp eq ptr %.pr, null
  br i1 %.not60, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN6Assimp3FBX4Util8DOMErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull %2) #20
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.ai
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.am:                                            ; preds = %bb.aj
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %16, align 8              ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.am
  %i.el = load i64, ptr %i.ej, align 8
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.al
  %.pn61 = phi { ptr, i32 } [ %i.eg, %bb.al ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %i.eh, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.ap

bb.an:                                            ; preds = %.thread, %._crit_edge
  %i.en = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eo = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.es) #21
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  ret void

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %bb.ah
  %.pn61.pn = phi { ptr, i32 } [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %i.ef, %bb.ah ]
  %i.et = load ptr, ptr %15, align 8              ; 3 uses
  %.not.i.i.i145.a = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i145.a, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit146, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #21
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit146

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit146: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %bb.ag, %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %bb.q, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %bb.m
  %.pn67.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.m ], [ %i.ec, %bb.ag ], [ %.pn61.pn, %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit146 ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %i.dc, %bb.w ], [ %i.cu, %bb.q ], [ %i.ct, %bb.p ]
  %i.ez = load ptr, ptr %i.b, align 8             ; 3 uses
  %.not.i.i.i147 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i147, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.ar, %bb.as
  %i.ff = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i148 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i148, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fk) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.at
  call void @_ZN6Assimp3FBX8DeformerD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  resume { ptr, i32 } %.pn67.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN6Assimp3FBX18GetRequiredElementERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

declare void @_ZN6Assimp3FBX10ReadMatrixERKNS0_7ElementE(ptr dead_on_unwind writable sret(%class.aiMatrix4x4t) align 4, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZN6Assimp3FBX4Util8DOMErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare void @_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorIjSaIjEERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare void @_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorIfSaIfEERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare void @_ZNK6Assimp3FBX8Document36GetConnectionsByDestinationSequencedEmPKc(ptr dead_on_unwind writable sret(%"class.std::vector.67") align 8, ptr noundef nonnull align 8 dereferenceable(368), i64 noundef, ptr noundef) local_unnamed_addr #1
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX4SkinC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.v = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i.i = select i1 %i.v, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.b, !llvm.loop !13

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.w = icmp eq ptr %.19.i.i.i.i, %i.m
  br i1 %i.w, label %_ZNK6Assimp3FBX5ScopeixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.y, i64 %i.n) ; 2 uses
  %i.z = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #19 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.c
  %i.ad = sub i64 %i.n, %i.y
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ad, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ac, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ae = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.ae, label %_ZNK6Assimp3FBX5ScopeixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.ag = load ptr, ptr %i.af, align 8
  br label %_ZNK6Assimp3FBX5ScopeixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK6Assimp3FBX5ScopeixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %.noexc
  %i.ah = phi ptr [ %i.ag, %bb.d ], [ null, %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i ], [ null, %.noexc ], [ null, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ] ; 2 uses
  %i.ai = icmp eq ptr %.pre, %i.e
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK6Assimp3FBX5ScopeixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aj = load i64, ptr %i.e, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ak) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK6Assimp3FBX5ScopeixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN6Assimp3FBX16GetRequiredTokenERKNS0_7ElementEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i32 noundef 0)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.am = invoke noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.al)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  store float %i.am, ptr %i.b, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.i:                                             ; preds = %.noexc.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ad

bb.j:                                             ; preds = %bb.f, %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.k:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i64, ptr %i.aq, align 8
  invoke void @_ZNK6Assimp3FBX8Document36GetConnectionsByDestinationSequencedEmPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.67") align 8 %6, ptr noundef nonnull align 8 dereferenceable(368) %3, i64 noundef %i.ar, ptr noundef nonnull @.str.11)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  %i.au = load ptr, ptr %6, align 8               ; 3 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 4 uses
  %i.ay = icmp ugt i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #20
          to label %.noexc35 unwind label %bb.s

.noexc35:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.ax
  br i1 %i.bf, label %_ZNSt12_Vector_baseIPKN6Assimp3FBX7ClusterESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseIPKN6Assimp3FBX7ClusterESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.bd                    ; 3 uses
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #22
          to label %.noexc36 unwind label %bb.s   ; 4 uses

.noexc36:                                         ; preds = %_ZNSt12_Vector_baseIPKN6Assimp3FBX7ClusterESaIS4_EE11_M_allocateEm.exit.i
  %i.bl = icmp sgt i64 %i.bj, 0
  br i1 %i.bl, label %bb.o, label %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

bb.o:                                             ; preds = %.noexc36
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.bb, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %bb.o, %.noexc36
  %.not.i8.i = icmp eq ptr %i.bb, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIPKN6Assimp3FBX7ClusterESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.be) #21
  %.pre51.pre = load ptr, ptr %6, align 8
  %.pre52.pre = load ptr, ptr %i.as, align 8
  br label %_ZNSt12_Vector_baseIPKN6Assimp3FBX7ClusterESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIPKN6Assimp3FBX7ClusterESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.p, %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %.pre52 = phi ptr [ %.pre52.pre, %bb.p ], [ %i.at, %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i ]
  %.pre51 = phi ptr [ %.pre51.pre, %bb.p ], [ %i.au, %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i ]
  store ptr %i.bk, ptr %i.c, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store ptr %i.bm, ptr %i.bg, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ax
  store ptr %i.bn, ptr %i.az, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE7reserveEm.exit

_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPKN6Assimp3FBX7ClusterESaIS4_EE13_M_deallocateEPS4_m.exit.i, %bb.n
  %i.bo = phi ptr [ %.pre52, %_ZNSt12_Vector_baseIPKN6Assimp3FBX7ClusterESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ %i.at, %bb.n ] ; 2 uses
  %i.bp = phi ptr [ %.pre51, %_ZNSt12_Vector_baseIPKN6Assimp3FBX7ClusterESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ %i.au, %bb.n ] ; 3 uses
  %.not4849 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not4849, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE7reserveEm.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  br label %bb.t

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE9push_backERKS4_.exit
  %.pre53 = load ptr, ptr %6, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE7reserveEm.exit
  %i.br = phi ptr [ %.pre53, %._crit_edge.loopexit ], [ %i.bp, %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE7reserveEm.exit ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #21
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

bb.r:                                             ; preds = %bb.k
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIPKN6Assimp3FBX7ClusterESaIS4_EE11_M_allocateEm.exit.i, %bb.m
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.t:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE9push_backERKS4_.exit
  %.sroa.044.050 = phi ptr [ %i.bp, %.lr.ph ], [ %i.cv, %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %i.bz = load ptr, ptr %.sroa.044.050, align 8
  %i.ca = invoke noundef ptr @_ZN6Assimp3FBX4Util23ProcessSimpleConnectionINS0_7ClusterEEEPKT_RKNS0_10ConnectionEbPKcRKNS0_7ElementEPSB_(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i1 noundef zeroext false, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null)
          to label %bb.u unwind label %.loopexit  ; 3 uses

bb.u:                                             ; preds = %bb.t
  %.not26 = icmp eq ptr %i.ca, null
  br i1 %.not26, label %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE9push_backERKS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = load ptr, ptr %i.bq, align 8            ; 3 uses
  %i.cc = load ptr, ptr %i.az, align 8
  %.not.i = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.ca, ptr %i.cb, align 8
  %i.cd = load ptr, ptr %i.bq, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.ce, ptr %i.bq, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE9push_backERKS4_.exit

bb.x:                                             ; preds = %bb.v
  %i.cf = load ptr, ptr %i.c, align 8             ; 4 uses
  %i.cg = ptrtoint ptr %i.cb to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 6 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775800
  br i1 %i.cj, label %bb.y, label %_ZNKSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #20
          to label %.noexc38 unwind label %.loopexit.split-lp

.noexc38:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.ck = ashr exact i64 %i.ci, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  %i.cl = add nsw i64 %.sroa.speculated.i.i.i, %i.ck ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  %i.cn = call i64 @llvm.umin.i64(i64 %i.cl, i64 1152921504606846975)
  %i.co = select i1 %i.cm, i64 1152921504606846975, i64 %i.cn ; 3 uses
  %.not.i.i.i37 = icmp ne i64 %i.co, 0
  call void @llvm.assume(i1 %.not.i.i.i37)
  %i.cp = shl nuw nsw i64 %i.co, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #22
          to label %.noexc39 unwind label %.loopexit ; 4 uses

.noexc39:                                         ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.ci ; 2 uses
  store ptr %i.ca, ptr %i.cr, align 8
  %i.cs = icmp sgt i64 %i.ci, 0
  br i1 %i.cs, label %bb.z, label %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.z:                                             ; preds = %.noexc39
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cq, ptr align 8 %i.cf, i64 %i.ci, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.z, %.noexc39
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ci) #21
  br label %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.aa, %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.cq, ptr %i.c, align 8
  store ptr %i.ct, ptr %i.bq, align 8
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co
  store ptr %i.cu, ptr %i.az, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE9push_backERKS4_.exit

.loopexit:                                        ; preds = %bb.t, %_ZNKSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.w, %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.044.050, i64 8 ; 2 uses
  %.not48 = icmp eq ptr %i.cv, %i.bo
  br i1 %.not48, label %._crit_edge.loopexit, label %bb.t

bb.ab:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.s
  %.pn27 = phi { ptr, i32 } [ %i.by, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cw = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit41, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #21
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit41

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit41: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.i, %bb.j, %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit41, %bb.r, %bb.h
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.h ], [ %i.ao, %bb.i ], [ %i.ap, %bb.j ], [ %.pn27, %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit41 ], [ %i.bx, %bb.r ]
  %i.dc = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #21
  br label %_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX7ClusterESaIS4_EED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @_ZN6Assimp3FBX8DeformerD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  resume { ptr, i32 } %.pn27.pn.pn.pn
}

declare noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6Assimp3FBX4Util23ProcessSimpleConnectionINS0_7ClusterEEEPKT_RKNS0_10ConnectionEbPKcRKNS0_7ElementEPSB_(ptr noundef nonnull align 8 dereferenceable(64) %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.e, 0                     ; 2 uses
  br i1 %1, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.c, label %bb.ai

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.f, ptr %7, align 8
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #20
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.h, ptr %i.c, align 8
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc48 unwind label %bb.o   ; 2 uses

.noexc48:                                         ; preds = %.noexc.i
  store ptr %i.j, ptr %7, align 8
  %i.k = load i64, ptr %i.c, align 8
  store i64 %i.k, ptr %i.f, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc48, %bb.e
  %i.l = phi ptr [ %i.j, %.noexc48 ], [ %i.f, %bb.e ] ; 2 uses
  switch i64 %i.h, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %2, align 1
  store i8 %i.m, ptr %i.l, align 1
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX4Util23ProcessSimpleConnectionINS0_7ClusterEEEPKT_RKNS0_10ConnectionEbPKcRKNS0_7ElementEPSB_:bb.a
  store ptr %i.fv, ptr %i.fs, align 8
  store i64 0, ptr %i.gd, align 8
  store i8 0, ptr %i.fv, align 8
  invoke void @_ZN6Assimp3FBX4Util10DOMWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %3)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.gf = load ptr, ptr %11, align 8              ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.ft
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %bb.av
  %i.gh = load i64, ptr %i.ft, align 8
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  %i.gj = load ptr, ptr %12, align 8              ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.fd
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %i.gl = load i64, ptr %i.fd, align 8
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gj, i64 noundef %i.gm) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  %i.gn = load ptr, ptr %13, align 8              ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.eq
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.gp = load i64, ptr %i.eq, align 8
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.bb

bb.aw:                                            ; preds = %.noexc.i107, %bb.al
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

bb.ax:                                            ; preds = %bb.ap
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i116, %bb.as
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

bb.az:                                            ; preds = %bb.au
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gv = load ptr, ptr %11, align 8              ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.ft
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.az
  %i.gx = load i64, ptr %i.ft, align 8
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132, %bb.ay
  %.pn43 = phi { ptr, i32 } [ %i.gt, %bb.ay ], [ %i.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132 ], [ %i.gu, %bb.az ] ; 2 uses
  %i.gz = load ptr, ptr %12, align 8              ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.fd
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.hb = load i64, ptr %i.fd, align 8
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, %bb.ax
  %.pn43.pn = phi { ptr, i32 } [ %i.gs, %bb.ax ], [ %.pn43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135 ], [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ] ; 2 uses
  %i.hd = load ptr, ptr %13, align 8              ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.eq
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.hf = load i64, ptr %i.eq, align 8
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %bb.aw
  %.pn43.pn.pn = phi { ptr, i32 } [ %i.gr, %bb.aw ], [ %.pn43.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ], [ %.pn43.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.bc

bb.ba:                                            ; preds = %.thread
  %i.hh = tail call ptr @__dynamic_cast(ptr nonnull %i.ep, ptr nonnull @_ZTIN6Assimp3FBX6ObjectE, ptr nonnull @_ZTIN6Assimp3FBX7ClusterE, i64 0) #19
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.1 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %i.hh, %bb.ba ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ]
  ret ptr %.1

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %.pn38.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  resume { ptr, i32 } %.pn43.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX10BlendShapeC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(368) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %6 = alloca %"class.std::vector.67", align 8    ; 11 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  tail call void @_ZN6Assimp3FBX8DeformerC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(368) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3FBX10BlendShapeE, i64 16), ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i64, ptr %i.j, align 8
  invoke void @_ZNK6Assimp3FBX8Document36GetConnectionsByDestinationSequencedEmPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.67") align 8 %6, ptr noundef nonnull align 8 dereferenceable(368) %3, i64 noundef %i.k, ptr noundef nonnull @.str.11)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %6, align 8
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = uitofp i64 %i.r to double
  %i.t = load float, ptr %i.h, align 8
  %i.u = fpext float %i.t to double
  %i.v = fdiv double %i.s, %i.u
  %i.w = call double @llvm.ceil.f64(double %i.v)
  %i.x = fptoui double %i.w to i64
  invoke void @_ZNSt10_HashtableIPKN6Assimp3FBX17BlendShapeChannelES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 noundef %i.x)
          to label %_ZNSt13unordered_setIPKN6Assimp3FBX17BlendShapeChannelESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE7reserveEm.exit unwind label %bb.e

_ZNSt13unordered_setIPKN6Assimp3FBX17BlendShapeChannelESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE7reserveEm.exit: ; preds = %bb.b
  %i.y = load ptr, ptr %6, align 8                ; 3 uses
  %i.z = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not3031 = icmp eq ptr %i.y, %i.z
  br i1 %.not3031, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.n
  %.pre = load ptr, ptr %6, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt13unordered_setIPKN6Assimp3FBX17BlendShapeChannelESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE7reserveEm.exit
  %i.aa = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.y, %_ZNSt13unordered_setIPKN6Assimp3FBX17BlendShapeChannelESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE7reserveEm.exit ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #21
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

bb.d:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.lr.ph:                                           ; preds = %_ZNSt13unordered_setIPKN6Assimp3FBX17BlendShapeChannelESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE7reserveEm.exit, %bb.n
  %.sroa.027.032 = phi ptr [ %i.av, %bb.n ], [ %i.y, %_ZNSt13unordered_setIPKN6Assimp3FBX17BlendShapeChannelESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE7reserveEm.exit ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.027.032, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.aj = invoke noundef ptr @_ZN6Assimp3FBX4Util23ProcessSimpleConnectionINS0_17BlendShapeChannelEEEPKT_RKNS0_10ConnectionEbPKcRKNS0_7ElementEPSB_(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i1 noundef zeroext false, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null)
          to label %bb.f unwind label %bb.k       ; 2 uses

bb.f:                                             ; preds = %.lr.ph
  store ptr %i.aj, ptr %i.b, align 8
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.d, ptr %5, align 8
  %i.ak = invoke { ptr, i8 } @_ZNSt10_HashtableIPKN6Assimp3FBX17BlendShapeChannelES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS4_SK_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.fca.1.extract = extractvalue { ptr, i8 } %i.ak, 1
  %i.al = trunc i8 %.fca.1.extract to i1
  br i1 %i.al, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.am = load ptr, ptr %i.b, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load i64, ptr %i.an, align 8
  store i64 %i.ao, ptr %i.c, align 8
  %i.ap = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.i
  br i1 %i.ap, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA40_KcmEEEvDpOT_.exit, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.aq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc22 unwind label %bb.m

.noexc22:                                         ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ar = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc23 unwind label %bb.m

.noexc23:                                         ; preds = %.noexc22
  store ptr %i.ar, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA40_S2_mEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(40) @.str.14, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc24 unwind label %bb.m

.noexc24:                                         ; preds = %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA40_KcmEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA40_KcmEEEvDpOT_.exit: ; preds = %.noexc24, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.m:                                             ; preds = %.noexc23, %.noexc22, %bb.j, %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.o

bb.n:                                             ; preds = %bb.h, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA40_KcmEEEvDpOT_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.027.032, i64 8 ; 2 uses
  %.not30 = icmp eq ptr %i.av, %i.z
  br i1 %.not30, label %._crit_edge.loopexit, label %.lr.ph

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.au, %bb.m ], [ %i.at, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.o ], [ %i.ah, %bb.e ]
  %i.aw = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit26, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #21
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit26

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit26: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit26, %bb.d
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit26 ], [ %i.ag, %bb.d ]
  call void @_ZNSt13unordered_setIPKN6Assimp3FBX17BlendShapeChannelESt4hashIS4_ESt8equal_toIS4_ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #19
  call void @_ZN6Assimp3FBX8DeformerD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6Assimp3FBX4Util23ProcessSimpleConnectionINS0_17BlendShapeChannelEEEPKT_RKNS0_10ConnectionEbPKcRKNS0_7ElementEPSB_(ptr noundef nonnull align 8 dereferenceable(64) %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.e, 0                     ; 2 uses
  br i1 %1, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.c, label %bb.ai

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.f, ptr %7, align 8
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #20
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.h, ptr %i.c, align 8
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc48 unwind label %bb.o   ; 2 uses

.noexc48:                                         ; preds = %.noexc.i
  store ptr %i.j, ptr %7, align 8
  %i.k = load i64, ptr %i.c, align 8
  store i64 %i.k, ptr %i.f, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc48, %bb.e
  %i.l = phi ptr [ %i.j, %.noexc48 ], [ %i.f, %bb.e ] ; 2 uses
  switch i64 %i.h, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %2, align 1
  store i8 %i.m, ptr %i.l, align 1
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %2, i64 %i.h, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.n = load i64, ptr %i.c, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr %7, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.22, i64 noundef 18)
          to label %.noexc49 unwind label %bb.p   ; 6 uses

.noexc49:                                         ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.s, ptr %6, align 8, !alias.scope !51
  %i.t = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_2
begin_hunk_3_@_ZN6Assimp3FBX17BlendShapeChannelC2EmRKNS0_7ElementERKNS0_8DocumentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ah = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i, %._crit_edge.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %._crit_edge.i.i48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %._crit_edge.i.i48, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN6Assimp3FBX16GetRequiredTokenERKNS0_7ElementEj(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i32 noundef 0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.al = invoke noundef float @_ZN6Assimp3FBX17ParseTokenAsFloatERKNS0_5TokenE(ptr noundef nonnull align 8 dereferenceable(36) %i.ak)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %i.al, ptr %i.am, align 8
  %.pre = load ptr, ptr %i.o, align 8
  br label %._crit_edge.i.i48

bb.f:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

._crit_edge.i.i48:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = phi ptr [ %.pre, %bb.e ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.aq, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.aq, ptr noundef nonnull align 1 dereferenceable(11) @.str.16, i64 11, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 11, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 27
  store i8 0, ptr %i.as, align 1
  %.not10.i.i.i.i52 = icmp eq ptr %i.ap, null
  br i1 %.not10.i.i.i.i52, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread, label %.lr.ph.i.i.i.i53

.lr.ph.i.i.i.i53:                                 ; preds = %._crit_edge.i.i48, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i59
  %.012.i.i.i.i54 = phi ptr [ %.1.i.i.i.i64, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i59 ], [ %i.ap, %._crit_edge.i.i48 ] ; 4 uses
  %.0811.i.i.i.i55 = phi ptr [ %.19.i.i.i.i61, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i59 ], [ %i.q, %._crit_edge.i.i48 ]
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i54, i64 40
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i76, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i57

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i57: ; preds = %.lr.ph.i.i.i.i53
  %.sroa.speculated.i.i.i.i.i.i.i56 = call i64 @llvm.umin.i64(i64 %i.au, i64 11)
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i54, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call i32 @memcmp(ptr noundef %i.ax, ptr noundef nonnull %i.aq, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i56) #19 ; 2 uses
  %.not.i.i.i.i.i.i.i58 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i.i58, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i76, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i59

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i76: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i57, %.lr.ph.i.i.i.i53
  %i.az = add i64 %i.au, -11
  %spec.select7.i.i.i.i.i.i.i.i77 = call i64 @llvm.smax.i64(i64 %i.az, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i78 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i77, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i79 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i78 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i59

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i59: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i76, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i57
  %.0.i.i.i.i.i.i.i60 = phi i32 [ %i.ay, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i57 ], [ %.0.i6.i.i.i.i.i.i.i79, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i76 ]
  %i.ba = icmp slt i32 %.0.i.i.i.i.i.i.i60, 0     ; 2 uses
  %.19.i.i.i.i61 = select i1 %i.ba, ptr %.0811.i.i.i.i55, ptr %.012.i.i.i.i54 ; 5 uses
  %.1.in.v.i.i.i.i62 = select i1 %i.ba, i64 24, i64 16
  %.1.in.i.i.i.i63 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i54, i64 %.1.in.v.i.i.i.i62
  %.1.i.i.i.i64 = load ptr, ptr %.1.in.i.i.i.i63, align 8 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %.1.i.i.i.i64, null
  br i1 %.not.i.i.i.i65, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i66, label %.lr.ph.i.i.i.i53, !llvm.loop !13

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i66: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i59
  %i.bb = icmp eq ptr %.19.i.i.i.i61, %i.q
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i66
  %i.bc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i61, i64 40
  %i.bd = load i64, ptr %i.bc, align 8            ; 3 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i72, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i68

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i68: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i.i67 = call i64 @llvm.umin.i64(i64 %i.bd, i64 11)
  %i.bf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i61, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call i32 @memcmp(ptr noundef nonnull %i.aq, ptr noundef %i.bg, i64 noundef %.sroa.speculated.i.i.i.i.i.i67) #19 ; 2 uses
  %.not.i.i.i.i.i.i69 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i69, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i72, label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i70

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i72: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i68, %bb.h
  %i.bi = sub i64 11, %i.bd
  %spec.select7.i.i.i.i.i.i.i73 = call i64 @llvm.smax.i64(i64 %i.bi, i64 -2147483648)
  %.08.i.i.i.i.i.i.i74 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i73, i64 2147483647)
  %.0.i6.i.i.i.i.i.i75 = trunc nsw i64 %.08.i.i.i.i.i.i.i74 to i32
  br label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i70

_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i70: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i72, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i68
  %.0.i.i.i.i.i.i71 = phi i32 [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i68 ], [ %.0.i6.i.i.i.i.i.i75, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i72 ]
  %i.bj = icmp slt i32 %.0.i.i.i.i.i.i71, 0
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread: ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i70, %._crit_edge.i.i48, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i70
  %i.bk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i61, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.not35 = icmp eq ptr %i.bl, null
  br i1 %.not35, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  invoke void @_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorIfSaIfEERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.bl)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.thread, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = load i64, ptr %i.bn, align 8
  invoke void @_ZNK6Assimp3FBX8Document36GetConnectionsByDestinationSequencedEmPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.67") align 8 %8, ptr noundef nonnull align 8 dereferenceable(368) %3, i64 noundef %i.bo, ptr noundef nonnull @.str.17)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = load ptr, ptr %8, align 8
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 3
  %i.bw = uitofp i64 %i.bv to double
  %i.bx = load float, ptr %i.i, align 8
  %i.by = fpext float %i.bx to double
  %i.bz = fdiv double %i.bw, %i.by
  %i.ca = call double @llvm.ceil.f64(double %i.bz)
  %i.cb = fptoui double %i.ca to i64
  invoke void @_ZNSt10_HashtableIPKN6Assimp3FBX13ShapeGeometryES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 noundef %i.cb)
          to label %_ZNSt13unordered_setIPKN6Assimp3FBX13ShapeGeometryESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE7reserveEm.exit unwind label %bb.o

_ZNSt13unordered_setIPKN6Assimp3FBX13ShapeGeometryESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE7reserveEm.exit: ; preds = %bb.l
  %i.cc = load ptr, ptr %8, align 8               ; 3 uses
  %i.cd = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not101102 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not101102, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre104 = load ptr, ptr %8, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt13unordered_setIPKN6Assimp3FBX13ShapeGeometryESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE7reserveEm.exit
  %i.ce = phi ptr [ %.pre104, %._crit_edge.loopexit ], [ %i.cc, %_ZNSt13unordered_setIPKN6Assimp3FBX13ShapeGeometryESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE7reserveEm.exit ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #21
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret void

bb.n:                                             ; preds = %bb.k
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.o:                                             ; preds = %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.lr.ph:                                           ; preds = %_ZNSt13unordered_setIPKN6Assimp3FBX13ShapeGeometryESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE7reserveEm.exit, %bb.x
  %.sroa.096.0103 = phi ptr [ %i.cz, %bb.x ], [ %i.cc, %_ZNSt13unordered_setIPKN6Assimp3FBX13ShapeGeometryESt4hashIS4_ESt8equal_toIS4_ESaIS4_EE7reserveEm.exit ] ; 2 uses
  %i.cm = load ptr, ptr %.sroa.096.0103, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.cn = invoke noundef ptr @_ZN6Assimp3FBX4Util23ProcessSimpleConnectionINS0_13ShapeGeometryEEEPKT_RKNS0_10ConnectionEbPKcRKNS0_7ElementEPSB_(ptr noundef nonnull align 8 dereferenceable(64) %i.cm, i1 noundef zeroext false, ptr noundef nonnull @.str.18, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef null)
          to label %bb.p unwind label %bb.u       ; 2 uses

bb.p:                                             ; preds = %.lr.ph
  store ptr %i.cn, ptr %i.b, align 8
  %.not36 = icmp eq ptr %i.cn, null
  br i1 %.not36, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.e, ptr %5, align 8
  %i.co = invoke { ptr, i8 } @_ZNSt10_HashtableIPKN6Assimp3FBX13ShapeGeometryES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS4_SK_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %.fca.1.extract = extractvalue { ptr, i8 } %i.co, 1
  %i.cp = trunc i8 %.fca.1.extract to i1
  br i1 %i.cp, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.cq = load ptr, ptr %i.b, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cs = load i64, ptr %i.cr, align 8
  store i64 %i.cs, ptr %i.c, align 8
  %i.ct = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc89.a unwind label %bb.w

.noexc89.a:                                       ; preds = %bb.s
  br i1 %i.ct, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA37_KcmEEEvDpOT_.exit, label %bb.t

bb.t:                                             ; preds = %.noexc89.a
  %i.cu = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc90.a unwind label %bb.w

.noexc90.a:                                       ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.cv = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc91 unwind label %bb.w

.noexc91:                                         ; preds = %.noexc90.a
  store ptr %i.cv, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA37_S2_mEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cu, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(37) @.str.19, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc92 unwind label %bb.w

.noexc92:                                         ; preds = %.noexc91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA37_KcmEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA37_KcmEEEvDpOT_.exit: ; preds = %.noexc92, %.noexc89.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.x

bb.u:                                             ; preds = %.lr.ph
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %bb.q
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.w:                                             ; preds = %.noexc91, %.noexc90.a, %bb.t, %bb.s
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.y

bb.x:                                             ; preds = %bb.r, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA37_KcmEEEvDpOT_.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.096.0103, i64 8 ; 2 uses
  %.not101 = icmp eq ptr %i.cz, %i.cd
  br i1 %.not101, label %._crit_edge.loopexit, label %.lr.ph

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.u
  %.pn37.pn = phi { ptr, i32 } [ %i.cw, %bb.u ], [ %i.cy, %bb.w ], [ %i.cx, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.o
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %bb.y ], [ %i.cl, %bb.o ]
  %i.da = load ptr, ptr %8, align 8               ; 3 uses
  %.not.i.i.i93.a = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i93.a, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit94, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.df) #21
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit94

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit94: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ab

bb.ab:                                            ; preds = %bb.g, %bb.n, %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit94, %bb.j, %bb.f
  %.pn37.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.f ], [ %i.ck, %bb.n ], [ %i.ao, %bb.g ], [ %.pn37.pn.pn, %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit94 ], [ %i.bm, %bb.j ]
  call void @_ZNSt13unordered_setIPKN6Assimp3FBX13ShapeGeometryESt4hashIS4_ESt8equal_toIS4_ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.e) #19
  %i.dg = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not.i.i.i95 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i95, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dl) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.ab, %bb.ac
  call void @_ZN6Assimp3FBX8DeformerD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #19
  resume { ptr, i32 } %.pn37.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6Assimp3FBX4Util23ProcessSimpleConnectionINS0_13ShapeGeometryEEEPKT_RKNS0_10ConnectionEbPKcRKNS0_7ElementEPSB_(ptr noundef nonnull align 8 dereferenceable(64) %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp eq i64 %i.e, 0                     ; 2 uses
  br i1 %1, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.c, label %bb.ai

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.f, ptr %7, align 8
  %i.g = icmp eq ptr %2, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #20
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.h, ptr %i.c, align 8
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc48 unwind label %bb.o   ; 2 uses

.noexc48:                                         ; preds = %.noexc.i
  store ptr %i.j, ptr %7, align 8
  %i.k = load i64, ptr %i.c, align 8
  store i64 %i.k, ptr %i.f, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc48, %bb.e
  %i.l = phi ptr [ %i.j, %.noexc48 ], [ %i.f, %bb.e ] ; 2 uses
  switch i64 %i.h, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %2, align 1
  store i8 %i.m, ptr %i.l, align 1
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %2, i64 %i.h, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.n = load i64, ptr %i.c, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr %7, align 8
end_hunk_3
