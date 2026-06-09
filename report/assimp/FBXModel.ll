inline.NumInlined: 368
inline.NumDeleted: 198
begin_hunk_0_@_ZN6Assimp3FBX5Model12ResolveLinksERKNS0_7ElementERKNS0_8DocumentE:bb.a
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.r                       ; 4 uses
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #17
          to label %.noexc38 unwind label %bb.h   ; 7 uses

.noexc38:                                         ; preds = %_ZNSt12_Vector_baseIPKN6Assimp3FBX8MaterialESaIS4_EE11_M_allocateEm.exit.i
  %i.z = icmp sgt i64 %i.x, 0
  br i1 %i.z, label %bb.c, label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

bb.c:                                             ; preds = %.noexc38
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.p, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %bb.c, %.noexc38
  %.not.i8.i = icmp eq ptr %i.p, null
  br i1 %.not.i8.i, label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit.thread173, label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit

_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit.thread173: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.y, ptr %i.f, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store ptr %i.aa, ptr %i.u, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.l
  store ptr %i.ab, ptr %i.n, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit.thread

_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #16
  %.pre.pre = load ptr, ptr %i.g, align 8         ; 2 uses
  %.pre104.pre.a = load ptr, ptr %3, align 8      ; 2 uses
  %.pre127.a = ptrtoint ptr %.pre.pre to i64
  %.pre128.a = ptrtoint ptr %.pre104.pre.a to i64
  %.pre129.a = sub i64 %.pre127.a, %.pre128.a     ; 2 uses
  store ptr %i.y, ptr %i.f, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store ptr %i.ac, ptr %i.u, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.l
  store ptr %i.ad, ptr %i.n, align 8
  %i.ae = icmp ugt i64 %.pre129.a, 9223372036854775800
  br i1 %i.ae, label %.invoke, label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit.thread

_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit.thread: ; preds = %bb.b, %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit.thread173, %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit
  %i.af = phi ptr [ %i.h, %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit.thread173 ], [ %.pre.pre, %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit ], [ %i.h, %bb.b ] ; 2 uses
  %i.ag = phi ptr [ %i.i, %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit.thread173 ], [ %.pre104.pre.a, %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit ], [ %i.i, %bb.b ] ; 2 uses
  %.pre-phi120172 = phi i64 [ %i.l, %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit.thread173 ], [ %.pre129.a, %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit ], [ %i.l, %bb.b ] ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = icmp ult i64 %i.an, %.pre-phi120172
  br i1 %i.ao, label %_ZNSt12_Vector_baseIPKN6Assimp3FBX8GeometryESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit.thread

_ZNSt12_Vector_baseIPKN6Assimp3FBX8GeometryESaIS4_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.am                    ; 4 uses
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre-phi120172) #17
          to label %.noexc41 unwind label %bb.h   ; 7 uses

.noexc41:                                         ; preds = %_ZNSt12_Vector_baseIPKN6Assimp3FBX8GeometryESaIS4_EE11_M_allocateEm.exit.i
  %i.au = icmp sgt i64 %i.as, 0
  br i1 %i.au, label %bb.d, label %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

bb.d:                                             ; preds = %.noexc41
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 8 %i.ak, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %bb.d, %.noexc41
  %.not.i8.i39 = icmp eq ptr %i.ak, null
  br i1 %.not.i8.i39, label %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit.thread179, label %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit

_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit.thread179: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.at, ptr %i.ah, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store ptr %i.av, ptr %i.ap, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.pre-phi120172
  store ptr %i.aw, ptr %i.ai, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit.thread

_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #16
  %.pre105.pre.a = load ptr, ptr %i.g, align 8    ; 2 uses
  %.pre106.pre.a = load ptr, ptr %3, align 8      ; 2 uses
  %.pre130.a = ptrtoint ptr %.pre105.pre.a to i64
  %.pre131 = ptrtoint ptr %.pre106.pre.a to i64
  %.pre132 = sub i64 %.pre130.a, %.pre131         ; 2 uses
  store ptr %i.at, ptr %i.ah, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store ptr %i.ax, ptr %i.ap, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %.pre-phi120172
  store ptr %i.ay, ptr %i.ai, align 8
  %i.az = icmp ugt i64 %.pre132, 9223372036854775800
  br i1 %i.az, label %.invoke, label %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit.thread

.invoke:                                          ; preds = %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit, %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit, %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit.thread: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit.thread, %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit.thread179, %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit
  %i.ba = phi ptr [ %i.af, %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit.thread179 ], [ %.pre105.pre.a, %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit ], [ %i.af, %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit.thread ] ; 2 uses
  %i.bb = phi ptr [ %i.ag, %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit.thread179 ], [ %.pre106.pre.a, %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit ], [ %i.ag, %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit.thread ] ; 2 uses
  %.pre-phi126178 = phi i64 [ %.pre-phi120172, %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit.thread179 ], [ %.pre132, %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit ], [ %.pre-phi120172, %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE7reserveEm.exit.thread ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.bc, align 8            ; 4 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %.pre-phi126178
  br i1 %i.bj, label %_ZNSt12_Vector_baseIPKN6Assimp3FBX13NodeAttributeESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseIPKN6Assimp3FBX13NodeAttributeESaIS4_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.bh                    ; 3 uses
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre-phi126178) #17
          to label %.noexc44 unwind label %bb.h   ; 4 uses

.noexc44:                                         ; preds = %_ZNSt12_Vector_baseIPKN6Assimp3FBX13NodeAttributeESaIS4_EE11_M_allocateEm.exit.i
  %i.bp = icmp sgt i64 %i.bn, 0
  br i1 %i.bp, label %bb.e, label %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

bb.e:                                             ; preds = %.noexc44
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr align 8 %i.bf, i64 %i.bn, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %bb.e, %.noexc44
  %.not.i8.i42 = icmp eq ptr %i.bf, null
  br i1 %.not.i8.i42, label %_ZNSt12_Vector_baseIPKN6Assimp3FBX13NodeAttributeESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bi) #16
  %.pre107.pre = load ptr, ptr %3, align 8
  %.pre108.pre = load ptr, ptr %i.g, align 8
  br label %_ZNSt12_Vector_baseIPKN6Assimp3FBX13NodeAttributeESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIPKN6Assimp3FBX13NodeAttributeESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %.pre108 = phi ptr [ %.pre108.pre, %bb.f ], [ %i.ba, %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i ]
  %.pre107.a = phi ptr [ %.pre107.pre, %bb.f ], [ %i.bb, %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i ]
  store ptr %i.bo, ptr %i.bc, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store ptr %i.bq, ptr %i.bk, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.pre-phi126178
  store ptr %i.br, ptr %i.bd, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE7reserveEm.exit

_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPKN6Assimp3FBX13NodeAttributeESaIS4_EE13_M_deallocateEPS4_m.exit.i, %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit.thread
  %i.bs = phi ptr [ %.pre108, %_ZNSt12_Vector_baseIPKN6Assimp3FBX13NodeAttributeESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ %i.ba, %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit.thread ] ; 2 uses
  %i.bt = phi ptr [ %.pre107.a, %_ZNSt12_Vector_baseIPKN6Assimp3FBX13NodeAttributeESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ %i.bb, %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE7reserveEm.exit.thread ] ; 3 uses
  %.not86102 = icmp eq ptr %i.bt, %i.bs
  br i1 %.not86102, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE7reserveEm.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE9push_backERKS4_.exit
  %.pre109 = load ptr, ptr %3, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE7reserveEm.exit
  %i.cc = phi ptr [ %.pre109, %._crit_edge.loopexit ], [ %i.bt, %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE7reserveEm.exit ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #16
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  ret void

bb.h:                                             ; preds = %.invoke, %_ZNSt12_Vector_baseIPKN6Assimp3FBX13NodeAttributeESaIS4_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIPKN6Assimp3FBX8GeometryESaIS4_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseIPKN6Assimp3FBX8MaterialESaIS4_EE11_M_allocateEm.exit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.i:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE9push_backERKS4_.exit
  %.sroa.083.0103 = phi ptr [ %i.bt, %.lr.ph ], [ %i.gb, %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %i.cj = load ptr, ptr %.sroa.083.0103, align 8  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i64, ptr %i.ck, align 8
  %.not = icmp eq i64 %i.cl, 0
  br i1 %.not, label %bb.j, label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE9push_backERKS4_.exit

bb.j:                                             ; preds = %bb.i
  %i.cm = invoke noundef ptr @_ZNK6Assimp3FBX10Connection12SourceObjectEv(ptr noundef nonnull align 8 dereferenceable(64) %i.cj)
          to label %bb.k unwind label %bb.m       ; 4 uses

bb.k:                                             ; preds = %bb.j
  %.not23 = icmp eq ptr %i.cm, null
  br i1 %.not23, label %.noexc.i, label %bb.p

.noexc.i:                                         ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr %i.ca, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 62, ptr %i.b, align 8
  %i.cn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc45 unwind label %bb.n   ; 3 uses

.noexc45:                                         ; preds = %.noexc.i
  store ptr %i.cn, ptr %4, align 8
  %i.co = load i64, ptr %i.b, align 8             ; 3 uses
  store i64 %i.co, ptr %i.ca, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(62) %i.cn, ptr noundef nonnull align 1 dereferenceable(62) @.str.7, i64 62, i1 false)
  store i64 %i.co, ptr %i.cb, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.co
  store i8 0, ptr %i.cp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.cq = load ptr, ptr %i.bz, align 8, !nonnull !12, !align !13
  invoke void @_ZN6Assimp3FBX4Util10DOMWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.cq)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %.noexc45
  %i.cr = load ptr, ptr %4, align 8               ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ca
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.ct = load i64, ptr %i.ca, align 8
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE9push_backERKS4_.exit

bb.m:                                             ; preds = %bb.j
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.n:                                             ; preds = %.noexc.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.o:                                             ; preds = %.noexc45
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %4, align 8               ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ca
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.o
  %i.da = load i64, ptr %i.ca, align 8
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.n ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %i.cx, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.an

bb.p:                                             ; preds = %bb.k
  %i.dc = call ptr @__dynamic_cast(ptr nonnull %i.cm, ptr nonnull @_ZTIN6Assimp3FBX6ObjectE, ptr nonnull @_ZTIN6Assimp3FBX8MaterialE, i64 0) #15 ; 3 uses
  %.not25 = icmp eq ptr %i.dc, null
  br i1 %.not25, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dd = load ptr, ptr %i.bu, align 8            ; 3 uses
  %i.de = load ptr, ptr %i.n, align 8
  %.not.i = icmp eq ptr %i.dd, %i.de
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.dc, ptr %i.dd, align 8
  %i.df = load ptr, ptr %i.bu, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.dg, ptr %i.bu, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE9push_backERKS4_.exit

bb.s:                                             ; preds = %bb.q
  %i.dh = load ptr, ptr %i.f, align 8             ; 4 uses
  %i.di = ptrtoint ptr %i.dd to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 6 uses
  %i.dl = icmp eq i64 %i.dk, 9223372036854775800
  br i1 %i.dl, label %bb.t, label %_ZNKSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
          to label %.noexc50 unwind label %.loopexit.split-lp

.noexc50:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.dm = ashr exact i64 %i.dk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dm, i64 1)
  %i.dn = add nsw i64 %.sroa.speculated.i.i.i, %i.dm ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dm
  %i.dp = call i64 @llvm.umin.i64(i64 %i.dn, i64 1152921504606846975)
  %i.dq = select i1 %i.do, i64 1152921504606846975, i64 %i.dp ; 3 uses
  %.not.i.i.i49 = icmp ne i64 %i.dq, 0
  call void @llvm.assume(i1 %.not.i.i.i49)
  %i.dr = shl nuw nsw i64 %i.dq, 3
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #17
          to label %.noexc51 unwind label %.loopexit ; 4 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 %i.dk ; 2 uses
  store ptr %i.dc, ptr %i.dt, align 8
  %i.du = icmp sgt i64 %i.dk, 0
  br i1 %i.du, label %bb.u, label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.u:                                             ; preds = %.noexc51
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr align 8 %i.dh, i64 %i.dk, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.u, %.noexc51
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.not.i17.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dk) #16
  br label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.ds, ptr %i.f, align 8
  store ptr %i.dv, ptr %i.bu, align 8
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dq
  store ptr %i.dw, ptr %i.n, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE9push_backERKS4_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.w:                                             ; preds = %bb.p
  %i.dx = call ptr @__dynamic_cast(ptr nonnull %i.cm, ptr nonnull @_ZTIN6Assimp3FBX6ObjectE, ptr nonnull @_ZTIN6Assimp3FBX8GeometryE, i64 0) #15 ; 3 uses
  %.not26 = icmp eq ptr %i.dx, null
  br i1 %.not26, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dy = load ptr, ptr %i.bv, align 8            ; 3 uses
  %i.dz = load ptr, ptr %i.ai, align 8
  %.not.i52 = icmp eq ptr %i.dy, %i.dz
  br i1 %.not.i52, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.dx, ptr %i.dy, align 8
  %i.ea = load ptr, ptr %i.bv, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.eb, ptr %i.bv, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE9push_backERKS4_.exit

bb.z:                                             ; preds = %bb.x
  %i.ec = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.ed = ptrtoint ptr %i.dy to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 6 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775800
  br i1 %i.eg, label %bb.aa, label %_ZNKSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
          to label %.noexc56.a unwind label %.loopexit.split-lp88

.noexc56.a:                                       ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.eh = ashr exact i64 %i.ef, 3                 ; 3 uses
  %.sroa.speculated.i.i.i53 = call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i53, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = call i64 @llvm.umin.i64(i64 %i.ei, i64 1152921504606846975)
  %i.el = select i1 %i.ej, i64 1152921504606846975, i64 %i.ek ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX5Model12ResolveLinksERKNS0_7ElementERKNS0_8DocumentE:bb.a
bb.ac:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ef) #16
  br label %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.en, ptr %i.ah, align 8
  store ptr %i.eq, ptr %i.bv, align 8
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el
  store ptr %i.er, ptr %i.ai, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE9push_backERKS4_.exit

.loopexit87:                                      ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit89 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp88:                             ; preds = %bb.aa
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ad:                                            ; preds = %bb.w
  %i.es = call ptr @__dynamic_cast(ptr nonnull %i.cm, ptr nonnull @_ZTIN6Assimp3FBX6ObjectE, ptr nonnull @_ZTIN6Assimp3FBX13NodeAttributeE, i64 0) #15 ; 3 uses
  %.not27 = icmp eq ptr %i.es, null
  br i1 %.not27, label %.noexc.i65, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.et = load ptr, ptr %i.bw, align 8            ; 3 uses
  %i.eu = load ptr, ptr %i.bd, align 8
  %.not.i58 = icmp eq ptr %i.et, %i.eu
  br i1 %.not.i58, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr %i.es, ptr %i.et, align 8
  %i.ev = load ptr, ptr %i.bw, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr %i.ew, ptr %i.bw, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE9push_backERKS4_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ex = load ptr, ptr %i.bc, align 8            ; 4 uses
  %i.ey = ptrtoint ptr %i.et to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 6 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %bb.ah, label %_ZNKSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
          to label %.noexc62 unwind label %.loopexit.split-lp93

.noexc62:                                         ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.fc = ashr exact i64 %i.fa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i59 = call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add nsw i64 %.sroa.speculated.i.i.i59, %i.fc ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.fc
  %i.ff = call i64 @llvm.umin.i64(i64 %i.fd, i64 1152921504606846975)
  %i.fg = select i1 %i.fe, i64 1152921504606846975, i64 %i.ff ; 3 uses
  %.not.i.i.i60 = icmp ne i64 %i.fg, 0
  call void @llvm.assume(i1 %.not.i.i.i60)
  %i.fh = shl nuw nsw i64 %i.fg, 3
  %i.fi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #17
          to label %.noexc63 unwind label %.loopexit92 ; 4 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 %i.fa ; 2 uses
  store ptr %i.es, ptr %i.fj, align 8
  %i.fk = icmp sgt i64 %i.fa, 0
  br i1 %i.fk, label %bb.ai, label %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.ai:                                            ; preds = %.noexc63
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fi, ptr align 8 %i.ex, i64 %i.fa, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.ai, %.noexc63
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %.not.i17.i.i61 = icmp eq ptr %i.ex, null
  br i1 %.not.i17.i.i61, label %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fa) #16
  br label %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.fi, ptr %i.bc, align 8
  store ptr %i.fl, ptr %i.bw, align 8
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fg
  store ptr %i.fm, ptr %i.bd, align 8
  br label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE9push_backERKS4_.exit

.loopexit92:                                      ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit94 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp93:                             ; preds = %bb.ah
  %lpad.loopexit.split-lp95 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.noexc.i65:                                       ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %i.bx, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 86, ptr %i.a, align 8
  %i.fn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc66 unwind label %bb.al  ; 3 uses

.noexc66:                                         ; preds = %.noexc.i65
  store ptr %i.fn, ptr %5, align 8
  %i.fo = load i64, ptr %i.a, align 8             ; 3 uses
  store i64 %i.fo, ptr %i.bx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(86) %i.fn, ptr noundef nonnull align 1 dereferenceable(86) @.str.8, i64 86, i1 false)
  store i64 %i.fo, ptr %i.by, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fo
  store i8 0, ptr %i.fp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.fq = load ptr, ptr %i.bz, align 8, !nonnull !12, !align !13
  invoke void @_ZN6Assimp3FBX4Util10DOMWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %i.fq)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %.noexc66
  %i.fr = load ptr, ptr %5, align 8               ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.bx
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.ak
  %i.ft = load i64, ptr %i.bx, align 8
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE9push_backERKS4_.exit

bb.al:                                            ; preds = %.noexc.i65
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.am:                                            ; preds = %.noexc66
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %5, align 8               ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.bx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.am
  %i.fz = load i64, ptr %i.bx, align 8
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.al
  %.pn28 = phi { ptr, i32 } [ %i.fv, %bb.al ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %i.fw, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.an

_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.r, %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %bb.af, %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.083.0103, i64 8 ; 2 uses
  %.not86 = icmp eq ptr %i.gb, %i.bs
  br i1 %.not86, label %._crit_edge.loopexit, label %bb.i

bb.an:                                            ; preds = %.loopexit92, %.loopexit.split-lp93, %.loopexit87, %.loopexit.split-lp88, %.loopexit, %.loopexit.split-lp, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.h
  %.pn34.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.h ], [ %i.cv, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp90, %.loopexit.split-lp88 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit89, %.loopexit87 ], [ %lpad.loopexit94, %.loopexit92 ], [ %lpad.loopexit.split-lp95, %.loopexit.split-lp93 ]
  %i.gc = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit75, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %i.gc to i64
  %i.gh = sub i64 %i.gf, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gh) #16
  br label %_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit75

_ZNSt6vectorIPKN6Assimp3FBX10ConnectionESaIS4_EED2Ev.exit75: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  resume { ptr, i32 } %.pn34.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZNK6Assimp3FBX8Document36GetConnectionsByDestinationSequencedEmPKPKcm(ptr dead_on_unwind writable sret(%"class.std::vector.72") align 8, ptr noundef nonnull align 8 dereferenceable(368), i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6Assimp3FBX10Connection12SourceObjectEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN6Assimp3FBX4Util10DOMWarningERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp3FBX5Model6IsNullEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge15
  %.sroa.016.019 = phi ptr [ %i.i, %.critedge15 ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.016.019, align 8    ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.critedge15, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call ptr @__dynamic_cast(ptr nonnull %i.e, ptr nonnull @_ZTIN6Assimp3FBX13NodeAttributeE, ptr nonnull @_ZTIN6Assimp3FBX4NullE, i64 0) #15
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge15, label %.critedge

.critedge15:                                      ; preds = %.lr.ph, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.016.019, i64 8 ; 2 uses
  %.not22 = icmp eq ptr %i.i, %i.d
  br i1 %.not22, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.b, %.critedge15, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ false, %.critedge15 ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX5ModelD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !10
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !10
  br label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !8

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15
  br label %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #16
  br label %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #16
  br label %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX13NodeAttributeESaIS4_EED2Ev.exit, %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EED2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #16
  br label %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX8GeometryESaIS4_EED2Ev.exit, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3FBX6ObjectE, i64 16), ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN6Assimp3FBX6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EED2Ev.exit
  %i.bc = load i64, ptr %i.ba, align 8
  %i.bd = add i64 %i.bc, 1
  tail call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #16, !inline_history !11
  br label %_ZN6Assimp3FBX6ObjectD2Ev.exit

_ZN6Assimp3FBX6ObjectD2Ev.exit:                   ; preds = %_ZNSt6vectorIPKN6Assimp3FBX8MaterialESaIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX5ModelD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN6Assimp3FBX5ModelD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !inline_history !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !inline_history !14
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3FBX6ObjectE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3FBX6ObjectD0Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp3FBX6ObjectE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6Assimp3FBX6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #16, !inline_history !11
  br label %_ZN6Assimp3FBX6ObjectD2Ev.exit

_ZN6Assimp3FBX6ObjectD2Ev.exit:                   ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !15
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !15
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !8

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZNK6Assimp3FBX5Token14StringContentsB5cxx11Ev: argument 0"}
!7 = distinct !{!7, !"_ZNK6Assimp3FBX5Token14StringContentsB5cxx11Ev"}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!10 = distinct !{ptr @_ZNSt12__shared_ptrIKN6Assimp3FBX13PropertyTableELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!11 = !{ptr @_ZN6Assimp3FBX6ObjectD2Ev}
!12 = !{}
!13 = !{i64 8}
!14 = distinct !{null}
!15 = distinct !{null, null}
end_hunk_1
