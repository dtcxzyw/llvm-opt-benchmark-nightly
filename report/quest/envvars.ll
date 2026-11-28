Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/envvars?download=true
inline.NumInlined: 106
inline.NumDeleted: 39
begin_hunk_0_@_Z42validateAndSetWhetherGpuSharingIsPermittedPKc:bb.a
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !17
  store i64 %i.ar, ptr %i.am, align 8, !tbaa !15
  br label %._crit_edge.i.i11

._crit_edge.i.i11:                                ; preds = %.noexc13, %bb.i
  %i.as = phi ptr [ %i.aq, %.noexc13 ], [ %i.am, %bb.i ] ; 2 uses
  switch i64 %i.ao, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i11
  %i.at = load i8, ptr %i.an, align 1, !tbaa !15
  store i8 %i.at, ptr %i.as, align 1, !tbaa !15
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.an, i64 %i.ao, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i11
  %i.au = load i64, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !18
  %i.aw = load ptr, ptr %4, align 8, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.ay = load ptr, ptr %4, align 8, !tbaa !14, !noalias !27
  %i.az = call ptr @getenv(ptr noundef %i.ay) #12, !noalias !27 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ba, ptr %3, align 8, !tbaa !16, !alias.scope !27
  %i.bb = icmp eq ptr %i.az, null
  br i1 %i.bb, label %.noexc.i15, label %bb.m

.noexc.i15:                                       ; preds = %bb.l
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #13
          to label %.noexc16 unwind label %bb.w

.noexc16:                                         ; preds = %.noexc.i15
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.bc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12, !noalias !27
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !17, !noalias !27
  %i.bd = icmp ugt i64 %i.bc, 15
  br i1 %i.bd, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.m
  %i.be = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc17 unwind label %bb.w   ; 2 uses

.noexc17:                                         ; preds = %.noexc.i.i
  store ptr %i.be, ptr %3, align 8, !tbaa !14, !alias.scope !27
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !27
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !15, !alias.scope !27
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc17, %bb.m
  %i.bg = phi ptr [ %i.be, %.noexc17 ], [ %i.ba, %bb.m ] ; 2 uses
  switch i64 %i.bc, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.bh = load i8, ptr %i.az, align 1, !tbaa !15
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !15
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr nonnull align 1 %i.az, i64 %i.bc, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !17, !noalias !27 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !18, !alias.scope !27
  %i.bk = load ptr, ptr %3, align 8, !tbaa !14, !alias.scope !27
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  store i8 0, ptr %i.bl, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12, !noalias !27
  %i.bm = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.am
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.p
  %i.bo = load i64, ptr %i.am, align 8, !tbaa !15
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.bq, ptr %5, align 8, !tbaa !16
  %i.br = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.bs = load i64, ptr %i.bj, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.bs, ptr %i.a, align 8, !tbaa !17
  %i.bt = icmp ugt i64 %i.bs, 15
  br i1 %i.bt, label %.noexc.i22, label %._crit_edge.i.i21

.noexc.i22:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc23 unwind label %bb.x   ; 2 uses

.noexc23:                                         ; preds = %.noexc.i22
  store ptr %i.bu, ptr %5, align 8, !tbaa !14
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.bv, ptr %i.bq, align 8, !tbaa !15
  br label %._crit_edge.i.i21

._crit_edge.i.i21:                                ; preds = %.noexc23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.bw = phi ptr [ %i.bu, %.noexc23 ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ] ; 2 uses
  switch i64 %i.bs, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i21
  %i.bx = load i8, ptr %i.br, align 1, !tbaa !15
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !15
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.br, i64 %i.bs, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i21
  %i.by = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !18
  %i.ca = load ptr, ptr %5, align 8, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 0, ptr %i.cb, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  invoke void @_Z36validate_envVarPermitNodesToShareGpuNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr nofree noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %0)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.cc = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bq
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.t
  %i.ce = load i64, ptr %i.bq, align 8, !tbaa !15
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.cg = load ptr, ptr %3, align 8, !tbaa !14    ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !15
  %i.ci = icmp eq i8 %i.ch, 49
  %i.cj = zext i1 %i.ci to i8
  store i8 %i.cj, ptr @_ZN13envvar_values25PERMIT_NODES_TO_SHARE_GPUE, align 1, !tbaa !20
  %i.ck = icmp eq ptr %i.cg, %i.ba
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.cl = load i64, ptr %i.ba, align 8, !tbaa !15
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cm) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.cn = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.f
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.u
  %i.cp = load i64, ptr %i.f, align 8, !tbaa !15
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void

bb.v:                                             ; preds = %.noexc.i12
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.w:                                             ; preds = %.noexc.i.i, %.noexc.i15
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.am
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.w
  %i.cv = load i64, ptr %i.am, align 8, !tbaa !15
  %6 = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %6) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.x:                                             ; preds = %.noexc.i22
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.y:                                             ; preds = %bb.s
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bq
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.y
  %i.da = load i64, ptr %i.bq, align 8, !tbaa !15
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.x ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.cx, %bb.y ] ; 2 uses
  %i.dc = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ba
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %7 = load i64, ptr %i.ba, align 8, !tbaa !15
  %i.de = add i64 %7, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.de) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.cr, %bb.v ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.a ], [ %i.cs, %bb.w ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.al, %bb.h ]
  %i.df = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.f
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.z
  %i.dh = load i64, ptr %i.f, align 8, !tbaa !15
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_Z36validate_envVarPermitNodesToShareGpuNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr nofree noundef align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z38validateAndSetDefaultValidationEpsilonPKc(ptr noundef %0) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !16
  %i.h = load ptr, ptr @_ZN12envvar_names26DEFAULT_VALIDATION_EPSILONB5cxx11E, align 8, !tbaa !14 ; 2 uses
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN12envvar_names26DEFAULT_VALIDATION_EPSILONB5cxx11E, i64 8), align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i64 %i.i, ptr %i.f, align 8, !tbaa !17
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !14
  %i.l = load i64, ptr %i.f, align 8, !tbaa !17
  store i64 %i.l, ptr %i.g, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.g, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.h, align 1, !tbaa !15
  store i8 %i.n, ptr %i.m, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.h, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !18
  %i.q = load ptr, ptr %1, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !16
  %i.t = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.u = load i64, ptr %i.p, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i64 %i.u, ptr %i.e, align 8, !tbaa !17
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i9, label %._crit_edge.i.i8

.noexc.i9:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i9
  store ptr %i.w, ptr %2, align 8, !tbaa !14
  %i.x = load i64, ptr %i.e, align 8, !tbaa !17
  store i64 %i.x, ptr %i.s, align 8, !tbaa !15
  br label %._crit_edge.i.i8

._crit_edge.i.i8:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i8
  %i.z = load i8, ptr %i.t, align 1, !tbaa !15
  store i8 %i.z, ptr %i.y, align 1, !tbaa !15
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.t, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i8
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !17  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !18
  %i.ac = load ptr, ptr %2, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.ae = load ptr, ptr %2, align 8, !tbaa !14    ; 3 uses
  %i.af = call ptr @getenv(ptr noundef %i.ae) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_Z17isEnvVarSpecifiedNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  %i.ah = icmp ne i8 %i.ag, 0
  br label %_Z17isEnvVarSpecifiedNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_Z17isEnvVarSpecifiedNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %bb.g
  %i.ai = phi i1 [ false, %bb.f ], [ %i.ah, %bb.g ]
  %i.aj = icmp eq ptr %i.ae, %i.s
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_Z17isEnvVarSpecifiedNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ak = load i64, ptr %i.s, align 8, !tbaa !15
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.al) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_Z17isEnvVarSpecifiedNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  br i1 %i.ai, label %bb.i, label %bb.y

bb.h:                                             ; preds = %.noexc.i9
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.an, ptr %4, align 8, !tbaa !16
  %i.ao = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !18  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i64 %i.ap, ptr %i.d, align 8, !tbaa !17
  %i.aq = icmp ugt i64 %i.ap, 15
  br i1 %i.aq, label %.noexc.i12, label %._crit_edge.i.i11

.noexc.i12:                                       ; preds = %bb.i
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc13 unwind label %bb.z   ; 2 uses

.noexc13:                                         ; preds = %.noexc.i12
  store ptr %i.ar, ptr %4, align 8, !tbaa !14
  %i.as = load i64, ptr %i.d, align 8, !tbaa !17
  store i64 %i.as, ptr %i.an, align 8, !tbaa !15
  br label %._crit_edge.i.i11

._crit_edge.i.i11:                                ; preds = %.noexc13, %bb.i
  %i.at = phi ptr [ %i.ar, %.noexc13 ], [ %i.an, %bb.i ] ; 2 uses
  switch i64 %i.ap, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i11
  %i.au = load i8, ptr %i.ao, align 1, !tbaa !15
  store i8 %i.au, ptr %i.at, align 1, !tbaa !15
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.ao, i64 %i.ap, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i11
  %i.av = load i64, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !18
  %i.ax = load ptr, ptr %4, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.az = load ptr, ptr %4, align 8, !tbaa !14, !noalias !30
  %i.ba = call ptr @getenv(ptr noundef %i.az) #12, !noalias !30 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.bb, ptr %3, align 8, !tbaa !16, !alias.scope !30
end_hunk_0
begin_hunk_1_@_Z38validateAndSetDefaultValidationEpsilonPKc:bb.a
  store ptr %i.bf, ptr %3, align 8, !tbaa !14, !alias.scope !30
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !17, !noalias !30
  store i64 %i.bg, ptr %i.bb, align 8, !tbaa !15, !alias.scope !30
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc17, %bb.m
  %i.bh = phi ptr [ %i.bf, %.noexc17 ], [ %i.bb, %bb.m ] ; 2 uses
  switch i64 %i.bd, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.bi = load i8, ptr %i.ba, align 1, !tbaa !15
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !15
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr nonnull align 1 %i.ba, i64 %i.bd, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !17, !noalias !30 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !18, !alias.scope !30
  %i.bl = load ptr, ptr %3, align 8, !tbaa !14, !alias.scope !30
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bm, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12, !noalias !30
  %i.bn = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.an
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.p
  %i.bp = load i64, ptr %i.an, align 8, !tbaa !15
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.br, ptr %5, align 8, !tbaa !16
  %i.bs = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.bt = load i64, ptr %i.bk, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 %i.bt, ptr %i.b, align 8, !tbaa !17
  %i.bu = icmp ugt i64 %i.bt, 15
  br i1 %i.bu, label %.noexc.i22, label %._crit_edge.i.i21

.noexc.i22:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.bv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc23 unwind label %bb.ab  ; 2 uses

.noexc23:                                         ; preds = %.noexc.i22
  store ptr %i.bv, ptr %5, align 8, !tbaa !14
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !17
  store i64 %i.bw, ptr %i.br, align 8, !tbaa !15
  br label %._crit_edge.i.i21

._crit_edge.i.i21:                                ; preds = %.noexc23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.bx = phi ptr [ %i.bv, %.noexc23 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ] ; 2 uses
  switch i64 %i.bt, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i21
  %i.by = load i8, ptr %i.bs, align 1, !tbaa !15
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !15
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr align 1 %i.bs, i64 %i.bt, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i21
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !18
  %i.cb = load ptr, ptr %5, align 8, !tbaa !14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  store i8 0, ptr %i.cc, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  invoke void @_Z39validate_envVarDefaultValidationEpsilonNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr nofree noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %0)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.cd = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.br
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.t
  %i.cf = load i64, ptr %i.br, align 8, !tbaa !15
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ch, ptr %6, align 8, !tbaa !16
  %i.ci = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.cj = load i64, ptr %i.bk, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.cj, ptr %i.a, align 8, !tbaa !17
  %i.ck = icmp ugt i64 %i.cj, 15
  br i1 %i.ck, label %.noexc.i29, label %._crit_edge.i.i28

.noexc.i29:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.cl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc30 unwind label %bb.ab  ; 2 uses

.noexc30:                                         ; preds = %.noexc.i29
  store ptr %i.cl, ptr %6, align 8, !tbaa !14
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.cm, ptr %i.ch, align 8, !tbaa !15
  br label %._crit_edge.i.i28

._crit_edge.i.i28:                                ; preds = %.noexc30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.cn = phi ptr [ %i.cl, %.noexc30 ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ] ; 2 uses
  switch i64 %i.cj, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i28
  %i.co = load i8, ptr %i.ci, align 1, !tbaa !15
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !15
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %i.ci, i64 %i.cj, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i28
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !18
  %i.cr = load ptr, ptr %6, align 8, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cp
  store i8 0, ptr %i.cs, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ct = invoke noundef double @_Z16parser_parseRealNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  store double %i.ct, ptr @_ZN13envvar_values26DEFAULT_VALIDATION_EPSILONE, align 8, !tbaa !24
  %i.cu = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ch
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.x
  %i.cw = load i64, ptr %i.ch, align 8, !tbaa !15
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  %i.cy = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bb
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.da = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.dc = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.g
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.y
  %i.de = load i64, ptr %i.g, align 8, !tbaa !15
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void

bb.z:                                             ; preds = %.noexc.i12
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.aa:                                            ; preds = %.noexc.i.i, %.noexc.i15
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.an
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.aa
  %i.dk = load i64, ptr %i.an, align 8, !tbaa !15
  %7 = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %7) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.ab:                                            ; preds = %.noexc.i29, %.noexc.i22
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.ac:                                            ; preds = %bb.s
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.br
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.ac
  %i.dp = load i64, ptr %i.br, align 8, !tbaa !15
  %8 = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %8) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.ad:                                            ; preds = %bb.w
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.ch
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.a: ; preds = %bb.ad
  %9 = load i64, ptr %i.ch, align 8, !tbaa !15
  %i.dt = add i64 %9, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dt) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.ad, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.dl, %bb.ab ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.a ], [ %i.dm, %bb.ac ], [ %i.dq, %bb.ad ] ; 2 uses
  %i.du = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.bb
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %10 = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.dw = add i64 %10, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dw) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.dg, %bb.z ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.a ], [ %i.dh, %bb.aa ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.am, %bb.h ]
  %i.dx = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.g
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.ae
  %i.dz = load i64, ptr %i.g, align 8, !tbaa !15
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_Z39validate_envVarDefaultValidationEpsilonNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr nofree noundef align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

declare noundef double @_Z16parser_parseRealNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z30envvars_validateAndLoadEnvVarsPKc(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr @global_areEnvVarsLoaded, align 1, !tbaa !20, !range !21, !noundef !22
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z26error_envVarsAlreadyLoadedv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Z42validateAndSetWhetherGpuSharingIsPermittedPKc(ptr noundef %0)
  tail call void @_Z38validateAndSetDefaultValidationEpsilonPKc(ptr noundef %0)
  store i8 1, ptr @global_areEnvVarsLoaded, align 1, !tbaa !20
  ret void
}

declare void @_Z26error_envVarsAlreadyLoadedv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z39envvars_getWhetherGpuSharingIsPermittedv() local_unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr @global_areEnvVarsLoaded, align 1, !tbaa !20, !range !21, !noundef !22
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_Z22assertEnvVarsAreLoadedv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z25error_envVarsNotYetLoadedv()
  br label %_Z22assertEnvVarsAreLoadedv.exit

_Z22assertEnvVarsAreLoadedv.exit:                 ; preds = %bb.a, %bb.b
  %i.c = load i8, ptr @_ZN13envvar_values25PERMIT_NODES_TO_SHARE_GPUE, align 1, !tbaa !20, !range !21, !noundef !22
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef double @_Z35envvars_getDefaultValidationEpsilonv() local_unnamed_addr #9 {
bb.a:
  %i.a = load i8, ptr @global_areEnvVarsLoaded, align 1, !tbaa !20, !range !21, !noundef !22
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_Z22assertEnvVarsAreLoadedv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z25error_envVarsNotYetLoadedv()
  br label %_Z22assertEnvVarsAreLoadedv.exit

_Z22assertEnvVarsAreLoadedv.exit:                 ; preds = %bb.a, %bb.b
  %i.c = load double, ptr @_ZN13envvar_values26DEFAULT_VALIDATION_EPSILONE, align 8, !tbaa !24
  ret double %i.c
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_envvars.cpp() #10 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL29parser_RECOGNISED_PAULI_CHARSB5cxx11, i64 16), ptr @_ZL29parser_RECOGNISED_PAULI_CHARSB5cxx11, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @_ZL29parser_RECOGNISED_PAULI_CHARSB5cxx11, i64 16), ptr noundef nonnull align 1 dereferenceable(12) @.str, i64 12, i1 false)
  store i64 12, ptr getelementptr inbounds nuw (i8, ptr @_ZL29parser_RECOGNISED_PAULI_CHARSB5cxx11, i64 8), align 8, !tbaa !18
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL29parser_RECOGNISED_PAULI_CHARSB5cxx11, i64 28), align 4, !tbaa !15
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL29parser_RECOGNISED_PAULI_CHARSB5cxx11, ptr nonnull @__dso_handle) #12 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12envvar_names25PERMIT_NODES_TO_SHARE_GPUB5cxx11E, i64 16), ptr @_ZN12envvar_names25PERMIT_NODES_TO_SHARE_GPUB5cxx11E, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 25, ptr %i.b, align 8, !tbaa !17
  %i.d = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN12envvar_names25PERMIT_NODES_TO_SHARE_GPUB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.d, ptr @_ZN12envvar_names25PERMIT_NODES_TO_SHARE_GPUB5cxx11E, align 8, !tbaa !14
  %i.e = load i64, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  store i64 %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZN12envvar_names25PERMIT_NODES_TO_SHARE_GPUB5cxx11E, i64 16), align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.d, ptr noundef nonnull align 1 dereferenceable(25) @.str.3, i64 25, i1 false)
  store i64 %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZN12envvar_names25PERMIT_NODES_TO_SHARE_GPUB5cxx11E, i64 8), align 8, !tbaa !18
  %i.f = load ptr, ptr @_ZN12envvar_names25PERMIT_NODES_TO_SHARE_GPUB5cxx11E, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.h = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN12envvar_names25PERMIT_NODES_TO_SHARE_GPUB5cxx11E, ptr nonnull @__dso_handle) #12 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12envvar_names26DEFAULT_VALIDATION_EPSILONB5cxx11E, i64 16), ptr @_ZN12envvar_names26DEFAULT_VALIDATION_EPSILONB5cxx11E, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 26, ptr %i.a, align 8, !tbaa !17
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN12envvar_names26DEFAULT_VALIDATION_EPSILONB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr @_ZN12envvar_names26DEFAULT_VALIDATION_EPSILONB5cxx11E, align 8, !tbaa !14
  %i.j = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @_ZN12envvar_names26DEFAULT_VALIDATION_EPSILONB5cxx11E, i64 16), align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.i, ptr noundef nonnull align 1 dereferenceable(26) @.str.5, i64 26, i1 false)
  store i64 %i.j, ptr getelementptr inbounds nuw (i8, ptr @_ZN12envvar_names26DEFAULT_VALIDATION_EPSILONB5cxx11E, i64 8), align 8, !tbaa !18
  %i.k = load ptr, ptr @_ZN12envvar_names26DEFAULT_VALIDATION_EPSILONB5cxx11E, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.m = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN12envvar_names26DEFAULT_VALIDATION_EPSILONB5cxx11E, ptr nonnull @__dso_handle) #12 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !12, i64 8, !5, i64 16}
!14 = !{!13, !10, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!11, !10, i64 0}
!17 = !{!12, !12, i64 0}
!18 = !{!13, !12, i64 8}
!19 = !{!"bool", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{!"double", !5, i64 0}
!24 = !{!23, !23, i64 0}
!25 = distinct !{!25, i1 true, !"_Z23getSpecifiedEnvVarValueNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!26 = distinct !{!26, !25, !"_Z23getSpecifiedEnvVarValueNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!27 = !{!26}
!28 = distinct !{!28, i1 true, !"_Z23getSpecifiedEnvVarValueNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!29 = distinct !{!29, !28, !"_Z23getSpecifiedEnvVarValueNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!30 = !{!29}
end_hunk_1
