inline.NumInlined: 1883
inline.NumDeleted: 548
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6Assimp3FBX12MeshGeometry14ReadVertexDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS0_5ScopeE:.noexc.i
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %.not56 = icmp eq ptr %i.cm, null
  br i1 %.not56, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.cy = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN6Assimp3FBX16GetRequiredTokenERKNS0_7ElementEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i32 noundef 0)
          to label %bb.r unwind label %bb.z

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6Assimp3FBX18ParseTokenAsStringB5cxx11ERKNS0_5TokenE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(36) %i.cy)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.cz = load i32, ptr %i.h, align 4
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [32 x i8], ptr %i.cp, i64 %i.da ; 9 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  %i.df = load ptr, ptr %10, align 8              ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.dh = icmp eq ptr %i.df, %i.dg                ; 2 uses
  br i1 %i.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i96: ; preds = %bb.s
  br i1 %i.dh, label %bb.t, label %.thread.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i90: ; preds = %bb.s
  br i1 %i.dh, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i91

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i96
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8            ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 16
  call void @llvm.assume(i1 %i.dk)
  %.not21.i93 = icmp eq ptr %10, %i.db
  br i1 %.not21.i93, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit98, label %bb.u, !prof !62

bb.u:                                             ; preds = %bb.t
  switch i64 %i.dj, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i94
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.dl = load i8, ptr %i.df, align 1
  store i8 %i.dl, ptr %i.dc, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i94

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dc, ptr align 1 %i.df, i64 %i.dj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i94: ; preds = %bb.w, %bb.v, %bb.u
  %i.dm = load i64, ptr %i.di, align 8            ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i64 %i.dm, ptr %i.dn, align 8
  %i.do = load ptr, ptr %i.db, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm
  store i8 0, ptr %i.dp, align 1
  %.pre.i95 = load ptr, ptr %10, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit98

.thread.i97:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i96
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.df, ptr %i.db, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ds = load <2 x i64>, ptr %i.dr, align 8
  store <2 x i64> %i.ds, ptr %i.dq, align 8
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i91: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i90
  %i.dt = load i64, ptr %i.dd, align 8
  store ptr %i.df, ptr %i.db, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dw = load <2 x i64>, ptr %i.du, align 8
  store <2 x i64> %i.dw, ptr %i.dv, align 8
  %.not.i92 = icmp eq ptr %i.dc, null
  br i1 %.not.i92, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i91
  store ptr %i.dc, ptr %10, align 8
  store i64 %i.dt, ptr %i.dg, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit98

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i91, %.thread.i97
  store ptr %i.dg, ptr %10, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit98: ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i94, %bb.x, %bb.y
  %i.dx = phi ptr [ %.pre.i95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i94 ], [ %i.dc, %bb.x ], [ %i.dg, %bb.y ], [ %i.df, %bb.t ]
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.dy, align 8
  store i8 0, ptr %i.dx, align 1
  %i.dz = load ptr, ptr %10, align 8              ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit98
  %i.ec = load i64, ptr %i.ea, align 8
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.aa

bb.z:                                             ; preds = %bb.r, %bb.q
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ba

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.eg = load i32, ptr %i.h, align 4
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [24 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = load ptr, ptr %i.ej, align 8
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 12
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 976
  invoke void @_ZN6Assimp3FBX22ResolveVertexDataArrayI10aiVector2tIfEEEvRSt6vectorIT_SaIS5_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_PKcSL_mRKS4_IjSaIjEESP_SP_(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i64 noundef %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %_ZN6Assimp3FBX12MeshGeometry16ReadVertexDataUVERSt6vectorI10aiVector2tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  %bcmp.i106 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.25, i64 %i.aj)
  %i.ev = icmp eq i32 %bcmp.i106, 0
  br i1 %i.ev, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit132

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = load ptr, ptr %i.ew, align 8
  %.not50 = icmp eq ptr %i.ey, %i.ez
  br i1 %.not50, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107.thread
  %i.fa = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc108 unwind label %bb.m

.noexc108:                                        ; preds = %bb.ac
  br i1 %i.fa, label %_ZN6Assimp3FBX12MeshGeometry16ReadVertexDataUVERSt6vectorI10aiVector2tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.exit, label %bb.ad

bb.ad:                                            ; preds = %.noexc108
  %i.fb = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc109 unwind label %bb.m

.noexc109:                                        ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.fc = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc110 unwind label %bb.m

.noexc110:                                        ; preds = %.noexc109
  store ptr %i.fc, ptr %i.d, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA35_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.fb, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(35) @.str.26)
          to label %.noexc111 unwind label %bb.m

.noexc111:                                        ; preds = %.noexc110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %_ZN6Assimp3FBX12MeshGeometry16ReadVertexDataUVERSt6vectorI10aiVector2tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.exit

bb.ae:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit107.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  invoke void @_ZN6Assimp3FBX12MeshGeometry23ReadVertexDataMaterialsERSt6vectorIiSaIiEERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.fd = load ptr, ptr %11, align 16             ; 7 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8            ; 5 uses
  %.not4.i.i = icmp eq ptr %i.fd, %i.ff
  br i1 %.not4.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN6Assimp3FBX12MeshGeometry14ReadVertexDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS8_5ScopeEE3$_0ENSt15iterator_traitsIT_E15difference_typeESN_SN_T0_.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.af
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %i.fd to i64
  %12 = sub i64 %i.fg, %i.fh
  %13 = add i64 %12, -4                           ; 2 uses
  %i.fi = lshr i64 %13, 2
  %i.fj = add nuw nsw i64 %i.fi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader205, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.fj, 9223372036854775804     ; 3 uses
  %i.fk = shl i64 %n.vec, 2
  %i.fl = getelementptr i8, ptr %i.fd, i64 %i.fk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.fs, %vector.body ]
  %vec.phi203 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ft, %vector.body ]
  %i.fm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.fd, i64 %i.fm ; 2 uses
  %i.fn = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4
  %wide.load204 = load <2 x i32>, ptr %i.fn, align 4
  %i.fo = lshr <2 x i32> %wide.load, splat (i32 31)
  %i.fp = lshr <2 x i32> %wide.load204, splat (i32 31)
  %i.fq = zext nneg <2 x i32> %i.fo to <2 x i64>
  %i.fr = zext nneg <2 x i32> %i.fp to <2 x i64>
  %i.fs = add <2 x i64> %vec.phi, %i.fq           ; 2 uses
  %i.ft = add <2 x i64> %vec.phi203, %i.fr        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ft, %i.fs
  %i.fv = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.fj, %n.vec
  br i1 %cmp.n, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN6Assimp3FBX12MeshGeometry14ReadVertexDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS8_5ScopeEE3$_0ENSt15iterator_traitsIT_E15difference_typeESN_SN_T0_.exit", label %.lr.ph.i.i.preheader205

.lr.ph.i.i.preheader205:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.06.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.fv, %middle.block ]
  %.sroa.02.05.i.i.ph = phi ptr [ %i.fd, %.lr.ph.i.i.preheader ], [ %i.fl, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader205, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.06.i.i.ph, %.lr.ph.i.i.preheader205 ]
  %.sroa.02.05.i.i = phi ptr [ %i.fy, %.lr.ph.i.i ], [ %.sroa.02.05.i.i.ph, %.lr.ph.i.i.preheader205 ] ; 2 uses
  %i.fw = load i32, ptr %.sroa.02.05.i.i, align 4
  %.lobit.i.i = lshr i32 %i.fw, 31
  %i.fx = zext nneg i32 %.lobit.i.i to i64
  %spec.select.i.i = add nuw nsw i64 %.06.i.i, %i.fx ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fy, %i.ff
  br i1 %.not.i.i, label %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN6Assimp3FBX12MeshGeometry14ReadVertexDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS8_5ScopeEE3$_0ENSt15iterator_traitsIT_E15difference_typeESN_SN_T0_.exit", label %.lr.ph.i.i, !llvm.loop !66

"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN6Assimp3FBX12MeshGeometry14ReadVertexDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS8_5ScopeEE3$_0ENSt15iterator_traitsIT_E15difference_typeESN_SN_T0_.exit": ; preds = %.lr.ph.i.i, %middle.block, %bb.af
  %.0.lcssa.i.i = phi i64 [ 0, %bb.af ], [ %i.fv, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.fz = ptrtoint ptr %i.ff to i64
  %i.ga = ptrtoint ptr %i.fd to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = ashr exact i64 %i.gb, 2
  %.not53 = icmp eq i64 %.0.lcssa.i.i, %i.gc
  br i1 %.not53, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN6Assimp3FBX12MeshGeometry14ReadVertexDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS8_5ScopeEE3$_0ENSt15iterator_traitsIT_E15difference_typeESN_SN_T0_.exit"
  %i.gd = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc112 unwind label %bb.aj

.noexc112:                                        ; preds = %bb.ag
  br i1 %i.gd, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA47_KcEEEvDpOT_.exit, label %bb.ah

bb.ah:                                            ; preds = %.noexc112
  %i.ge = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc113 unwind label %bb.aj

.noexc113:                                        ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.gf = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc114 unwind label %bb.aj

.noexc114:                                        ; preds = %.noexc113
  store ptr %i.gf, ptr %i.c, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA47_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ge, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(47) @.str.27)
          to label %.noexc115 unwind label %bb.aj

.noexc115:                                        ; preds = %.noexc114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA47_KcEEEvDpOT_.exit

bb.ai:                                            ; preds = %bb.ae
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aj:                                            ; preds = %.noexc114, %.noexc113, %bb.ah, %bb.ag
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ak:                                            ; preds = %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEZN6Assimp3FBX12MeshGeometry14ReadVertexDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNS8_5ScopeEE3$_0ENSt15iterator_traitsIT_E15difference_typeESN_SN_T0_.exit"
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 16
  %i.gk = load <2 x ptr>, ptr %i.ew, align 8
  store <2 x ptr> %i.gk, ptr %11, align 16
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8
  store ptr %i.gm, ptr %i.gi, align 16
  store ptr %i.fd, ptr %i.ew, align 8
  store ptr %i.ff, ptr %i.ex, align 8
  store ptr %i.gj, ptr %i.gl, align 8
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA47_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA47_KcEEEvDpOT_.exit: ; preds = %.noexc115, %.noexc112, %bb.ak
  %i.gn = load ptr, ptr %11, align 16             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA47_KcEEEvDpOT_.exit
  %i.go = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gp = load ptr, ptr %i.go, align 16
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.gn to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gs) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA47_KcEEEvDpOT_.exit, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %_ZN6Assimp3FBX12MeshGeometry16ReadVertexDataUVERSt6vectorI10aiVector2tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.exit

bb.am:                                            ; preds = %bb.aj, %bb.ai
  %.pn51 = phi { ptr, i32 } [ %i.gh, %bb.aj ], [ %i.gg, %bb.ai ]
  %i.gt = load ptr, ptr %11, align 16             ; 3 uses
  %.not.i.i.i116 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorIiSaIiEED2Ev.exit117, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gv = load ptr, ptr %i.gu, align 16
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gy) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit117

_ZNSt6vectorIiSaIiEED2Ev.exit117:                 ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.ba

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %.pre155 = load ptr, ptr %1, align 8
  %bcmp.i118 = call i32 @bcmp(ptr %.pre155, ptr nonnull @.str.28, i64 %i.aj)
  %i.gz = icmp eq i32 %bcmp.i118, 0
  br i1 %i.gz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119.thread, label %_ZN6Assimp3FBX12MeshGeometry16ReadVertexDataUVERSt6vectorI10aiVector2tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = load ptr, ptr %i.ha, align 8
  %.not49 = icmp eq ptr %i.hc, %i.hd
  br i1 %.not49, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119.thread
  %i.he = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc120 unwind label %bb.m

.noexc120:                                        ; preds = %bb.ao
  br i1 %i.he, label %_ZN6Assimp3FBX12MeshGeometry16ReadVertexDataUVERSt6vectorI10aiVector2tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.exit, label %bb.ap

bb.ap:                                            ; preds = %.noexc120
  %i.hf = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc121 unwind label %bb.m

.noexc121:                                        ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.hg = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc122 unwind label %bb.m

.noexc122:                                        ; preds = %.noexc121
  store ptr %i.hg, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA33_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.hf, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(33) @.str.29)
          to label %.noexc123 unwind label %bb.m

.noexc123:                                        ; preds = %.noexc122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6Assimp3FBX12MeshGeometry16ReadVertexDataUVERSt6vectorI10aiVector2tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.exit

bb.aq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit119.thread
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = load ptr, ptr %i.hh, align 8
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = sdiv exact i64 %i.hn, 12
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 976
  invoke void @_ZN6Assimp3FBX22ResolveVertexDataArrayI10aiVector3tIfEEEvRSt6vectorIT_SaIS5_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_PKcSL_mRKS4_IjSaIjEESP_SP_(ptr noundef nonnull align 8 dereferenceable(24) %i.ha, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i64 noundef %i.ho, ptr noundef nonnull align 8 dereferenceable(24) %i.hp, ptr noundef nonnull align 8 dereferenceable(24) %i.hq, ptr noundef nonnull align 8 dereferenceable(24) %i.hr)
          to label %_ZN6Assimp3FBX12MeshGeometry16ReadVertexDataUVERSt6vectorI10aiVector2tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.exit unwind label %bb.m

end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12MeshGeometry23ReadVertexDataMaterialsERSt6vectorIiSaIiEERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_:bb.a
_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 9)
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call i32 @memcmp(ptr noundef nonnull %i.p, ptr noundef %i.ai, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.ak = sub i64 9, %i.af
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ak, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i

_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.aj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.al = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i, %._crit_edge.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN6Assimp3FBX7ElementESt4lessIS5_ESaISt4pairIKS5_S9_EEE4findERSD_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.an, null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.ao, label %bb.f, label %._crit_edge.i.i29

._crit_edge.i.i29:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ap, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ap, ptr noundef nonnull align 1 dereferenceable(9) @.str.46, i64 9, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 0, ptr %i.ar, align 1
  %i.as = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6Assimp3FBX18GetRequiredElementERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef null)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.i29
  invoke void @_ZN6Assimp3FBX20ParseVectorDataArrayERSt6vectorIiSaIiEERKNS0_7ElementE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.as)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = load ptr, ptr %6, align 8               ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ap
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.d
  %i.av = load i64, ptr %i.ap, align 8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %._crit_edge.i.i29
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %6, align 8               ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ap
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.e
  %i.ba = load i64, ptr %i.ap, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  resume { ptr, i32 } %i.ax

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = load i64, ptr %i.bc, align 8
  switch i64 %i.bd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56 [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %i.be = load ptr, ptr %3, align 8               ; 2 uses
  %i.bf = load i32, ptr %i.be, align 1
  %i.bg = xor i32 %i.bf, 1399614529
  %i.bh = getelementptr i8, ptr %i.be, i64 3
  %i.bi = load i32, ptr %i.bh, align 1
  %i.bj = xor i32 %i.bi, 1701667155
  %i.bk = or i32 %i.bg, %i.bj
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bo = load ptr, ptr %1, align 8               ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bs = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.bs, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.bu = call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.bu, ptr %i.d, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA34_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(34) @.str.48)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bv = ptrtoint ptr %i.bq to i64
  %i.bw = ptrtoint ptr %i.bo to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp ugt i64 %i.bx, 4
  br i1 %i.by, label %bb.j, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

bb.j:                                             ; preds = %bb.i
  %i.bz = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.bz, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.cb = call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.cb, ptr %i.c, align 8
  call void @_ZN6Assimp6Logger4warnIJPKcRA73_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(73) @.str.49)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit: ; preds = %bb.j, %bb.k
  %i.cc = load ptr, ptr %1, align 8               ; 6 uses
  %i.cd = load ptr, ptr %i.bp, align 8
  %.not.i.i = icmp eq ptr %i.cd, %i.cc
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit
  store ptr %i.cc, ptr %i.bp, align 8
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit, %bb.i
  %i.ce = phi ptr [ %i.cc, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.cc, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit ], [ %i.bo, %bb.i ] ; 5 uses
  %i.cf = phi ptr [ %i.cc, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.cc, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA73_KcEEEvDpOT_.exit ], [ %i.bq, %bb.i ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = load ptr, ptr %i.cg, align 8
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 12                ; 4 uses
  %i.co = ptrtoint ptr %i.cf to i64
  %i.cp = ptrtoint ptr %i.ce to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2                 ; 3 uses
  %i.cs = icmp ugt i64 %i.cn, %i.cr
  br i1 %i.cs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.ct = sub nuw nsw i64 %i.cn, %i.cr
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ct)
  %.pre59 = load ptr, ptr %1, align 8
  %.pre60 = load ptr, ptr %i.bp, align 8
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.cu = icmp ult i64 %i.cn, %i.cr
  br i1 %i.cu, label %bb.n, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.n:                                             ; preds = %bb.m
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cn ; 3 uses
  %.not.i.i42 = icmp eq ptr %i.cf, %i.cv
  br i1 %.not.i.i42, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i43

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i43:      ; preds = %bb.n
  store ptr %i.cv, ptr %i.bp, align 8
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.l, %bb.m, %bb.n, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i43
  %i.cw = phi ptr [ %.pre60, %bb.l ], [ %i.cf, %bb.m ], [ %i.cf, %bb.n ], [ %i.cv, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i43 ] ; 3 uses
  %i.cx = phi ptr [ %.pre59, %bb.l ], [ %i.ce, %bb.m ], [ %i.ce, %bb.n ], [ %i.ce, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i43 ] ; 6 uses
  %.not.i.i44.not = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.i.i44.not, label %bb.o, label %_ZNSt6vectorIiSaIiEE2atEm.exit

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.88, i64 noundef 0, i64 noundef 0) #26
  unreachable

_ZNSt6vectorIiSaIiEE2atEm.exit:                   ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %7 = load i32, ptr %i.cx, align 4               ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %8 = ptrtoint ptr %i.cx to i64
  %9 = sub i64 %i.cy, %8
  %10 = add i64 %9, -4                            ; 2 uses
  %i.cz = lshr i64 %10, 2
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i45.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit
  %n.vec = and i64 %i.da, 9223372036854775800     ; 3 uses
  %i.db = shl i64 %n.vec, 2
  %i.dc = getelementptr i8, ptr %i.cx, i64 %i.db
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cx, i64 %i.dd ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.de, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit, label %.lr.ph.i.i.i.i45.preheader

.lr.ph.i.i.i.i45.preheader:                       ; preds = %_ZNSt6vectorIiSaIiEE2atEm.exit, %middle.block
  %.06.i.i.i.i.ph = phi ptr [ %i.cx, %_ZNSt6vectorIiSaIiEE2atEm.exit ], [ %i.dc, %middle.block ]
  br label %.lr.ph.i.i.i.i45

.lr.ph.i.i.i.i45:                                 ; preds = %.lr.ph.i.i.i.i45.preheader, %.lr.ph.i.i.i.i45
  %.06.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i45 ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i45.preheader ] ; 2 uses
  store i32 %7, ptr %.06.i.i.i.i, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.dg, %i.cw
  br i1 %.not.i.i.i.i46, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit, label %.lr.ph.i.i.i.i45, !llvm.loop !68

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48: ; preds = %bb.f
  %i.dh = load ptr, ptr %3, align 8               ; 2 uses
  %i.di = load i64, ptr %i.dh, align 1
  %i.dj = xor i64 %i.di, 8027518367442172226
  %i.dk = getelementptr i8, ptr %i.dh, i64 8
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = zext i8 %i.dl to i64
  %i.dn = xor i64 %i.dm, 110
  %i.do = or i64 %i.dj, %i.dn
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = zext i1 %i.dp to i32
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = icmp eq i64 %i.dt, 13
  br i1 %i.du, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread
  %i.dv = load ptr, ptr %4, align 8               ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 1
  %i.dx = xor i64 %i.dw, 4931252993067871817
  %i.dy = getelementptr i8, ptr %i.dv, i64 5
  %i.dz = load i64, ptr %i.dy, align 1
  %i.ea = xor i64 %i.dz, 8386658473160765268
  %i.eb = or i64 %i.dx, %i.ea
  %i.ec = icmp ne i64 %i.eb, 0
  %i.ed = zext i1 %i.ec to i32
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8            ; 4 uses
  %i.eh = load ptr, ptr %1, align 8               ; 2 uses
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64               ; 4 uses
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 2                 ; 3 uses
  %i.em = icmp ugt i64 %i.n, %i.el
  br i1 %i.em, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread
  %i.en = sub nuw nsw i64 %i.n, %i.el
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.en)
  %.pre = load ptr, ptr %i.ef, align 8
  %.pre58 = load ptr, ptr %1, align 8
  %.pre61 = ptrtoint ptr %.pre58 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit53

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50.thread
  %i.eo = icmp ult i64 %i.n, %i.el
  br i1 %i.eo, label %bb.r, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit53

bb.r:                                             ; preds = %bb.q
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.m ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.eg, %i.ep
  br i1 %.not.i.i51, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit53, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i52

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i52:      ; preds = %bb.r
  store ptr %i.ep, ptr %i.ef, align 8
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit53

_ZNSt6vectorIiSaIiEE6resizeEm.exit53:             ; preds = %bb.p, %bb.q, %bb.r, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i52
  %.pre-phi = phi i64 [ %.pre61, %bb.p ], [ %i.ej, %bb.q ], [ %i.ej, %bb.r ], [ %i.ej, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i52 ]
  %i.eq = phi ptr [ %.pre, %bb.p ], [ %i.eg, %bb.q ], [ %i.eg, %bb.r ], [ %i.ep, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i52 ]
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = sub i64 %i.er, %.pre-phi
  %i.et = ashr exact i64 %i.es, 2                 ; 2 uses
  %.not28 = icmp eq i64 %i.et, %i.n
  br i1 %.not28, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i64 %i.et, ptr %i.f, align 8
  %i.eu = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.eu, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA56_KcmRA12_S4_RKmEEEvDpOT_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ev = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ew = call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.ew, ptr %i.b, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA56_S2_mRA12_S2_RKmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ev, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(56) @.str.52, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(12) @.str.53, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA56_KcmRA12_S4_RKmEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA56_KcmRA12_S4_RKmEEEvDpOT_.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit50, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48
  %i.ex = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.ex, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit, label %bb.u

bb.u:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56
  %i.ey = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ez = call noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
  store ptr %i.ez, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA61_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_SD_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ey, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(61) @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(2) @.str.55, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA34_KcEEEvDpOT_.exit: ; preds = %.lr.ph.i.i.i.i45, %middle.block, %bb.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread56, %bb.h, %bb.g, %_ZNSt6vectorIiSaIiEE6resizeEm.exit53, %bb.a, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA56_KcmRA12_S4_RKmEEEvDpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12MeshGeometry21ReadVertexDataNormalsERSt6vectorI10aiVector3tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 976
  tail call void @_ZN6Assimp3FBX22ResolveVertexDataArrayI10aiVector3tIfEEEvRSt6vectorIT_SaIS5_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_PKcSL_mRKS4_IjSaIjEESP_SP_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12MeshGeometry22ReadVertexDataTangentsERSt6vectorI10aiVector3tIfESaIS4_EERKNS0_5ScopeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8
  store i64 8319395793466188116, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.c, align 8
  %i.d = invoke { ptr, ptr } @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc18 unwind label %bb.a   ; 2 uses

.noexc18:                                         ; preds = %._crit_edge.i.i
  %i.e = load ptr, ptr %5, align 8                ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc18
  %i.g = load i64, ptr %i.a, align 8
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.i, ptr %6, align 8
  store i64 8319395793466188116, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 8, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.k, align 8
  %i.l = invoke { ptr, ptr } @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN6Assimp3FBX7ElementEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc29 unwind label %bb.b   ; 2 uses

.noexc29:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = load ptr, ptr %6, align 8                ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.i
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %.noexc29
  %i.o = load i64, ptr %i.i, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %.noexc29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.q = extractvalue { ptr, ptr } %i.l, 0
  %i.r = extractvalue { ptr, ptr } %i.l, 1
  %.not4.i.i.i23 = icmp eq ptr %i.q, %i.r
  %.str.62..str.61 = select i1 %.not4.i.i.i23, ptr @.str.62, ptr @.str.61
  %i.s = extractvalue { ptr, ptr } %i.d, 0
  %i.t = extractvalue { ptr, ptr } %i.d, 1
  %.not4.i.i.i = icmp eq ptr %i.s, %i.t
  %i.u = select i1 %.not4.i.i.i, ptr @.str.43, ptr @.str.42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.v, align 8
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
end_hunk_1
